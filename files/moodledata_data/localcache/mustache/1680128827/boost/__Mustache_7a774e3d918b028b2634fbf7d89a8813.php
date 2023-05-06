<?php

class __Mustache_7a774e3d918b028b2634fbf7d89a8813 extends Mustache_Template
{
    private $lambdaHelper;

    public function renderInternal(Mustache_Context $context, $indent = '')
    {
        $this->lambdaHelper = new Mustache_LambdaHelper($this->mustache, $context);
        $buffer = '';

        $buffer .= $indent . '
';
        if ($partial = $this->mustache->loadPartial('core_analytics/notification_styles')) {
            $buffer .= $partial->renderInternal($context);
        }
        $buffer .= $indent . '
';
        $value = $this->resolveValue($context->find('insightinfomessage'), $context);
        $buffer .= $indent . ($value === null ? '' : $value);
        $buffer .= '
';
        $buffer .= $indent . '<br/><br/>
';
        $buffer .= $indent . '<a class="btn btn-outline-primary btn-insight" href="';
        $value = $this->resolveValue($context->find('url'), $context);
        $buffer .= ($value === null ? '' : call_user_func($this->mustache->getEscape(), $value));
        $buffer .= '">';
        $value = $context->find('str');
        $buffer .= $this->section6463048ddcf84bbed91a5e7d9b39b002($context, $indent, $value);
        $buffer .= '</a>';

        return $buffer;
    }

    private function section6463048ddcf84bbed91a5e7d9b39b002(Mustache_Context $context, $indent, $value)
    {
        $buffer = '';
    
        if (!is_string($value) && is_callable($value)) {
            $source = ' viewinsight, analytics ';
            $result = (string) call_user_func($value, $source, $this->lambdaHelper);
            $buffer .= $result;
        } elseif (!empty($value)) {
            $values = $this->isIterable($value) ? $value : array($value);
            foreach ($values as $value) {
                $context->push($value);
                
                $buffer .= ' viewinsight, analytics ';
                $context->pop();
            }
        }
    
        return $buffer;
    }

}
