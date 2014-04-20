<?php

class Denkmal_Elasticsearch_Query_Event extends CM_SearchQuery_Abstract {

    /**
     * @param string $terms
     */
    public function queryText($terms) {
        $this->queryMatch(array('description', 'title'), $terms);
    }

    /**
     * @param string|null $order
     */
    public function sortFrom($order = null) {
        $this->_sort(array('from' => $order));
    }

}
