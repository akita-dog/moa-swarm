package com.akita.moa.model;

import java.util.ArrayList;
import java.util.List;

public class OmsEssaySetRelationExample {
    protected String orderByClause;

    protected boolean distinct;

    protected List<Criteria> oredCriteria;

    public OmsEssaySetRelationExample() {
        oredCriteria = new ArrayList<>();
    }

    public void setOrderByClause(String orderByClause) {
        this.orderByClause = orderByClause;
    }

    public String getOrderByClause() {
        return orderByClause;
    }

    public void setDistinct(boolean distinct) {
        this.distinct = distinct;
    }

    public boolean isDistinct() {
        return distinct;
    }

    public List<Criteria> getOredCriteria() {
        return oredCriteria;
    }

    public void or(Criteria criteria) {
        oredCriteria.add(criteria);
    }

    public Criteria or() {
        Criteria criteria = createCriteriaInternal();
        oredCriteria.add(criteria);
        return criteria;
    }

    public Criteria createCriteria() {
        Criteria criteria = createCriteriaInternal();
        if (oredCriteria.size() == 0) {
            oredCriteria.add(criteria);
        }
        return criteria;
    }

    protected Criteria createCriteriaInternal() {
        Criteria criteria = new Criteria();
        return criteria;
    }

    public void clear() {
        oredCriteria.clear();
        orderByClause = null;
        distinct = false;
    }

    protected abstract static class GeneratedCriteria {
        protected List<Criterion> criteria;

        protected GeneratedCriteria() {
            super();
            criteria = new ArrayList<>();
        }

        public boolean isValid() {
            return criteria.size() > 0;
        }

        public List<Criterion> getAllCriteria() {
            return criteria;
        }

        public List<Criterion> getCriteria() {
            return criteria;
        }

        protected void addCriterion(String condition) {
            if (condition == null) {
                throw new RuntimeException("Value for condition cannot be null");
            }
            criteria.add(new Criterion(condition));
        }

        protected void addCriterion(String condition, Object value, String property) {
            if (value == null) {
                throw new RuntimeException("Value for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value));
        }

        protected void addCriterion(String condition, Object value1, Object value2, String property) {
            if (value1 == null || value2 == null) {
                throw new RuntimeException("Between values for " + property + " cannot be null");
            }
            criteria.add(new Criterion(condition, value1, value2));
        }

        public Criteria andIdIsNull() {
            addCriterion("ID is null");
            return (Criteria) this;
        }

        public Criteria andIdIsNotNull() {
            addCriterion("ID is not null");
            return (Criteria) this;
        }

        public Criteria andIdEqualTo(Long value) {
            addCriterion("ID =", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotEqualTo(Long value) {
            addCriterion("ID <>", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThan(Long value) {
            addCriterion("ID >", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdGreaterThanOrEqualTo(Long value) {
            addCriterion("ID >=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThan(Long value) {
            addCriterion("ID <", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdLessThanOrEqualTo(Long value) {
            addCriterion("ID <=", value, "id");
            return (Criteria) this;
        }

        public Criteria andIdIn(List<Long> values) {
            addCriterion("ID in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotIn(List<Long> values) {
            addCriterion("ID not in", values, "id");
            return (Criteria) this;
        }

        public Criteria andIdBetween(Long value1, Long value2) {
            addCriterion("ID between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andIdNotBetween(Long value1, Long value2) {
            addCriterion("ID not between", value1, value2, "id");
            return (Criteria) this;
        }

        public Criteria andSetIdIsNull() {
            addCriterion("SET_ID is null");
            return (Criteria) this;
        }

        public Criteria andSetIdIsNotNull() {
            addCriterion("SET_ID is not null");
            return (Criteria) this;
        }

        public Criteria andSetIdEqualTo(Long value) {
            addCriterion("SET_ID =", value, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdNotEqualTo(Long value) {
            addCriterion("SET_ID <>", value, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdGreaterThan(Long value) {
            addCriterion("SET_ID >", value, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdGreaterThanOrEqualTo(Long value) {
            addCriterion("SET_ID >=", value, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdLessThan(Long value) {
            addCriterion("SET_ID <", value, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdLessThanOrEqualTo(Long value) {
            addCriterion("SET_ID <=", value, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdIn(List<Long> values) {
            addCriterion("SET_ID in", values, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdNotIn(List<Long> values) {
            addCriterion("SET_ID not in", values, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdBetween(Long value1, Long value2) {
            addCriterion("SET_ID between", value1, value2, "setId");
            return (Criteria) this;
        }

        public Criteria andSetIdNotBetween(Long value1, Long value2) {
            addCriterion("SET_ID not between", value1, value2, "setId");
            return (Criteria) this;
        }

        public Criteria andEssayIdIsNull() {
            addCriterion("ESSAY_ID is null");
            return (Criteria) this;
        }

        public Criteria andEssayIdIsNotNull() {
            addCriterion("ESSAY_ID is not null");
            return (Criteria) this;
        }

        public Criteria andEssayIdEqualTo(Long value) {
            addCriterion("ESSAY_ID =", value, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdNotEqualTo(Long value) {
            addCriterion("ESSAY_ID <>", value, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdGreaterThan(Long value) {
            addCriterion("ESSAY_ID >", value, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdGreaterThanOrEqualTo(Long value) {
            addCriterion("ESSAY_ID >=", value, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdLessThan(Long value) {
            addCriterion("ESSAY_ID <", value, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdLessThanOrEqualTo(Long value) {
            addCriterion("ESSAY_ID <=", value, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdIn(List<Long> values) {
            addCriterion("ESSAY_ID in", values, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdNotIn(List<Long> values) {
            addCriterion("ESSAY_ID not in", values, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdBetween(Long value1, Long value2) {
            addCriterion("ESSAY_ID between", value1, value2, "essayId");
            return (Criteria) this;
        }

        public Criteria andEssayIdNotBetween(Long value1, Long value2) {
            addCriterion("ESSAY_ID not between", value1, value2, "essayId");
            return (Criteria) this;
        }
    }

    public static class Criteria extends GeneratedCriteria {
        protected Criteria() {
            super();
        }
    }

    public static class Criterion {
        private String condition;

        private Object value;

        private Object secondValue;

        private boolean noValue;

        private boolean singleValue;

        private boolean betweenValue;

        private boolean listValue;

        private String typeHandler;

        public String getCondition() {
            return condition;
        }

        public Object getValue() {
            return value;
        }

        public Object getSecondValue() {
            return secondValue;
        }

        public boolean isNoValue() {
            return noValue;
        }

        public boolean isSingleValue() {
            return singleValue;
        }

        public boolean isBetweenValue() {
            return betweenValue;
        }

        public boolean isListValue() {
            return listValue;
        }

        public String getTypeHandler() {
            return typeHandler;
        }

        protected Criterion(String condition) {
            super();
            this.condition = condition;
            this.typeHandler = null;
            this.noValue = true;
        }

        protected Criterion(String condition, Object value, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.typeHandler = typeHandler;
            if (value instanceof List<?>) {
                this.listValue = true;
            } else {
                this.singleValue = true;
            }
        }

        protected Criterion(String condition, Object value) {
            this(condition, value, null);
        }

        protected Criterion(String condition, Object value, Object secondValue, String typeHandler) {
            super();
            this.condition = condition;
            this.value = value;
            this.secondValue = secondValue;
            this.typeHandler = typeHandler;
            this.betweenValue = true;
        }

        protected Criterion(String condition, Object value, Object secondValue) {
            this(condition, value, secondValue, null);
        }
    }
}