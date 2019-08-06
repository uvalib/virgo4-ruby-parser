# Generated from ../../v4-api/query-syntax/VirgoQuery.g4 by ANTLR 4.7.2

require 'antlr4/runtime'

module VirgoQuery

@@theVirgoQueryListener = VirgoQueryListener.new
@@theVirgoQueryVisitor = VirgoQueryVisitor.new



class VirgoQuery < Antlr4::Runtime::Parser

	class << self
		@@_decisionToDFA = []
	end
	@@_sharedContextCache = Antlr4::Runtime::PredictionContextCache.new()
		LPAREN=1
		RPAREN=2
		BOOLEAN=3
		COLON=4
		TITLE=5
		AUTHOR=6
		SUBJECT=7
		KEYWORD=8
		IDENTIFIER=9
		DATE=10
		LBRACE=11
		WS1=12
		QUOTE=13
		LBRACKET=14
		RBRACKET=15
		RBRACE=16
		SEARCH_WORD=17
		WS2=18
		TO=19
		AFTER=20
		BEFORE=21
		DATE_STRING=22
		WS3=23
		RULE_query = 0
		RULE_query_parts = 1
		RULE_field_query = 2
		RULE_field_type = 3
		RULE_range_field_type = 4
		RULE_boolean_op = 5
		RULE_range_search_string = 6
		RULE_date_string = 7
		RULE_search_string = 8
		RULE_search_part = 9

	@@ruleNames = [
			"query", "query_parts", "field_query", "field_type", "range_field_type", 
			"boolean_op", "range_search_string", "date_string", "search_string", 
			"search_part"
	]

	@@_LITERAL_NAMES = [
			nil, nil, nil, nil, nil, "'title'", "'author'", "'subject'", "'keyword'", 
			"'identifier'", "'date'", nil, nil, "'\"'", "'['", "']'"
	]

	@@_SYMBOLIC_NAMES = [
			nil, "LPAREN", "RPAREN", "BOOLEAN", "COLON", "TITLE", "AUTHOR", "SUBJECT", 
			"KEYWORD", "IDENTIFIER", "DATE", "LBRACE", "WS1", "QUOTE", "LBRACKET", 
			"RBRACKET", "RBRACE", "SEARCH_WORD", "WS2", "TO", "AFTER", "BEFORE", 
			"DATE_STRING", "WS3"
	]

	@@VOCABULARY =  Antlr4::Runtime::VocabularyImpl.new(@@_LITERAL_NAMES, @@_SYMBOLIC_NAMES)

	def get_vocabulary
		@@VOCABULARY
	end

	def getGrammarFileName()
	 return "VirgoQuery.g4"
	end

	def rule_names()
	 return @@ruleNames
	end

	def serialized_atn()
	 return @@_serializedATN
	end

	def atn()
	 return @@_ATN
	end

	def initialize( input)
		super(input)
		i = 0
		while i < @@_ATN.number_of_decisions()
			@@_decisionToDFA[i] = Antlr4::Runtime::DFA.new(@@_ATN.decision_state(i), i)
			i+=1
		end

		@_interp =  Antlr4::Runtime::ParserATNSimulator.new(self,@@_ATN,@@_decisionToDFA,@@_sharedContextCache)
	end

	 class QueryContext < Antlr4::Runtime::ParserRuleContext
		def query_parts()
			return rule_context("Query_partsContext",0)
		end
		def EOF()
		  return token(VirgoQuery::EOF, 0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_query
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterQuery) )
			  listener.enterQuery(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitQuery) )
			  listener.exitQuery(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitQuery) )
			  return visitor.visitQuery(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	def query()
		_localctx =  QueryContext.new(@_ctx, @_state_number)
		enter_rule(_localctx, 0, RULE_query)
		begin
			enter_outer_alt(_localctx, 1)

			@_state_number = 20
			query_parts(0)
			@_state_number = 21
			match(EOF)
		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)
		ensure
			exit_rule()
		end
		return _localctx
	end

	 class Query_partsContext < Antlr4::Runtime::ParserRuleContext
		def LPAREN()
		  return token(VirgoQuery::LPAREN, 0)
		end
		def query_parts()
			return rule_contexts("Query_partsContext")
		end
		def query_parts_i( i)
			return rule_context("Query_partsContext",i)
		end
		def RPAREN()
		  return token(VirgoQuery::RPAREN, 0)
		end
		def field_query()
			return rule_context("Field_queryContext",0)
		end
		def boolean_op()
			return rule_context("Boolean_opContext",0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_query_parts
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterQuery_parts) )
			  listener.enterQuery_parts(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitQuery_parts) )
			  listener.exitQuery_parts(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitQuery_parts) )
			  return visitor.visitQuery_parts(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	defquery_parts()
		return query_parts(0)
	end

	def query_parts( _p)
		 _parentctx = _ctx
		 _parentState = @_state_number
		_localctx =  Query_partsContext.new(_ctx, _parentState)
		 @_prevctx = _localctx
		 _startState = 2
		enterRecursionRule(_localctx, 2, RULE_query_parts, _p)
		begin
			 _alt
			enter_outer_alt(_localctx, 1)

			@_state_number = 29
			@_err_handler.sync(self)
			case (@_input.la(1))
			when VirgoQuery::LPAREN

				@_state_number = 24
				match(LPAREN)
				@_state_number = 25
				query_parts(0)
				@_state_number = 26
				match(RPAREN)

			when VirgoQuery::TITLE, VirgoQuery::AUTHOR, VirgoQuery::SUBJECT, VirgoQuery::KEYWORD, VirgoQuery::IDENTIFIER, VirgoQuery::DATE

				@_state_number = 28
				field_query()
			else
				raise Antlr4::Runtime::NoViableAltException, self
			end
			@_ctx.stop = @_input.LT(-1)
			@_state_number = 37
			@_err_handler.sync(self);
			_alt = @_interp.adaptive_predict(@_input,1,@_ctx)
			while ( _alt!=2 && _alt!=Antlr4::Runtime::ATN::INVALID_ALT_NUMBER )
				if ( _alt==1 )
					if ( @_parseListeners!=nil )
					 triggerExitRuleEvent()
					end
					@_prevctx = _localctx


					_localctx =  Query_partsContext.new(_parentctx, _parentState)
					pushNewRecursionContext(_localctx,@ _startState, RULE_query_parts)
					@_state_number = 31
					if (!(precpred(@_ctx, 3)))
					  raise Antlr4::Runtime::FailedPredicateException, self, "precpred(@_ctx, 3)")
					end
					@_state_number = 32
					boolean_op()
					@_state_number = 33
					query_parts(4) 
				end
				@_state_number = 39
				@_err_handler.sync(self)
				_alt = @_interp.adaptive_predict(@_input,1,@_ctx)
			end

		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)

		ensure
			unrollRecursionContexts(_parentctx)
		end
		return _localctx
	end

	 class Field_queryContext < Antlr4::Runtime::ParserRuleContext
		def field_type()
			return rule_context("Field_typeContext",0)
		end
		def COLON()
		  return token(VirgoQuery::COLON, 0)
		end
		def LBRACE()
		  return token(VirgoQuery::LBRACE, 0)
		end
		def search_string()
			return rule_context("Search_stringContext",0)
		end
		def RBRACE()
		  return token(VirgoQuery::RBRACE, 0)
		end
		def range_field_type()
			return rule_context("Range_field_typeContext",0)
		end
		def range_search_string()
			return rule_context("Range_search_stringContext",0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_field_query
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterField_query) )
			  listener.enterField_query(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitField_query) )
			  listener.exitField_query(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitField_query) )
			  return visitor.visitField_query(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	def field_query()
		_localctx =  Field_queryContext.new(@_ctx, @_state_number)
		enter_rule(_localctx, 4, RULE_field_query)
		begin
			@_state_number = 52
			@_err_handler.sync(self)
			case (@_input.la(1))
			when VirgoQuery::TITLE, VirgoQuery::AUTHOR, VirgoQuery::SUBJECT, VirgoQuery::KEYWORD, VirgoQuery::IDENTIFIER
				enter_outer_alt(_localctx, 1)

				@_state_number = 40
				field_type()
				@_state_number = 41
				match(COLON)
				@_state_number = 42
				match(LBRACE)
				@_state_number = 43
				search_string(0)
				@_state_number = 44
				match(RBRACE)

			when VirgoQuery::DATE
				enter_outer_alt(_localctx, 2)

				@_state_number = 46
				range_field_type()
				@_state_number = 47
				match(COLON)
				@_state_number = 48
				match(LBRACE)
				@_state_number = 49
				range_search_string()
				@_state_number = 50
				match(RBRACE)
			else
				raise Antlr4::Runtime::NoViableAltException, self
			end
		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)
		ensure
			exit_rule()
		end
		return _localctx
	end

	 class Field_typeContext < Antlr4::Runtime::ParserRuleContext
		def TITLE()
		  return token(VirgoQuery::TITLE, 0)
		end
		def AUTHOR()
		  return token(VirgoQuery::AUTHOR, 0)
		end
		def SUBJECT()
		  return token(VirgoQuery::SUBJECT, 0)
		end
		def KEYWORD()
		  return token(VirgoQuery::KEYWORD, 0)
		end
		def IDENTIFIER()
		  return token(VirgoQuery::IDENTIFIER, 0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_field_type
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterField_type) )
			  listener.enterField_type(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitField_type) )
			  listener.exitField_type(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitField_type) )
			  return visitor.visitField_type(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	def field_type()
		_localctx =  Field_typeContext.new(@_ctx, @_state_number)
		enter_rule(_localctx, 6, RULE_field_type)
		_la = 0
		begin
			enter_outer_alt(_localctx, 1)

			@_state_number = 54
			_la = @_input.la(1)
			if ( !((((_la) & ~0x3f) == 0 && ((1 << _la) & ((1 << TITLE) | (1 << AUTHOR) | (1 << SUBJECT) | (1 << KEYWORD) | (1 << IDENTIFIER))) != 0)) )
			@_err_handler.recover_in_line(self)

			else
				if ( @_input.la(1)==Antlr4::Runtime::Token::EOF )
				  @matchedEOF = true
				end
				@_err_handler.report_match(self)
				consume()
			end
		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)
		ensure
			exit_rule()
		end
		return _localctx
	end

	 class Range_field_typeContext < Antlr4::Runtime::ParserRuleContext
		def DATE()
		  return token(VirgoQuery::DATE, 0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_range_field_type
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterRange_field_type) )
			  listener.enterRange_field_type(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitRange_field_type) )
			  listener.exitRange_field_type(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitRange_field_type) )
			  return visitor.visitRange_field_type(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	def range_field_type()
		_localctx =  Range_field_typeContext.new(@_ctx, @_state_number)
		enter_rule(_localctx, 8, RULE_range_field_type)
		begin
			enter_outer_alt(_localctx, 1)

			@_state_number = 56
			match(DATE)
		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)
		ensure
			exit_rule()
		end
		return _localctx
	end

	 class Boolean_opContext < Antlr4::Runtime::ParserRuleContext
		def BOOLEAN()
		  return token(VirgoQuery::BOOLEAN, 0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_boolean_op
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterBoolean_op) )
			  listener.enterBoolean_op(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitBoolean_op) )
			  listener.exitBoolean_op(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitBoolean_op) )
			  return visitor.visitBoolean_op(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	def boolean_op()
		_localctx =  Boolean_opContext.new(@_ctx, @_state_number)
		enter_rule(_localctx, 10, RULE_boolean_op)
		begin
			enter_outer_alt(_localctx, 1)

			@_state_number = 58
			match(BOOLEAN)
		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)
		ensure
			exit_rule()
		end
		return _localctx
	end

	 class Range_search_stringContext < Antlr4::Runtime::ParserRuleContext
		def date_string()
			return rule_contexts("Date_stringContext")
		end
		def date_string_i( i)
			return rule_context("Date_stringContext",i)
		end
		def TO()
		  return token(VirgoQuery::TO, 0)
		end
		def BEFORE()
		  return token(VirgoQuery::BEFORE, 0)
		end
		def AFTER()
		  return token(VirgoQuery::AFTER, 0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_range_search_string
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterRange_search_string) )
			  listener.enterRange_search_string(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitRange_search_string) )
			  listener.exitRange_search_string(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitRange_search_string) )
			  return visitor.visitRange_search_string(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	def range_search_string()
		_localctx =  Range_search_stringContext.new(@_ctx, @_state_number)
		enter_rule(_localctx, 12, RULE_range_search_string)
		begin
			@_state_number = 69
			@_err_handler.sync(self)
			case ( @_interp.adaptive_predict(@_input,3,@_ctx) )
			when 1
				enter_outer_alt(_localctx, 1)

				@_state_number = 60
				date_string()
				@_state_number = 61
				match(TO)
				@_state_number = 62
				date_string()

			when 2
				enter_outer_alt(_localctx, 2)

				@_state_number = 64
				match(BEFORE)
				@_state_number = 65
				date_string()

			when 3
				enter_outer_alt(_localctx, 3)

				@_state_number = 66
				match(AFTER)
				@_state_number = 67
				date_string()

			when 4
				enter_outer_alt(_localctx, 4)

				@_state_number = 68
				date_string()

			end
		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)
		ensure
			exit_rule()
		end
		return _localctx
	end

	 class Date_stringContext < Antlr4::Runtime::ParserRuleContext
		def DATE_STRING()
		  return token(VirgoQuery::DATE_STRING, 0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_date_string
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterDate_string) )
			  listener.enterDate_string(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitDate_string) )
			  listener.exitDate_string(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitDate_string) )
			  return visitor.visitDate_string(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	def date_string()
		_localctx =  Date_stringContext.new(@_ctx, @_state_number)
		enter_rule(_localctx, 14, RULE_date_string)
		begin
			enter_outer_alt(_localctx, 1)

			@_state_number = 71
			match(DATE_STRING)
		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)
		ensure
			exit_rule()
		end
		return _localctx
	end

	 class Search_stringContext < Antlr4::Runtime::ParserRuleContext
		def LPAREN()
		  return token(VirgoQuery::LPAREN, 0)
		end
		def search_string()
			return rule_contexts("Search_stringContext")
		end
		def search_string_i( i)
			return rule_context("Search_stringContext",i)
		end
		def RPAREN()
		  return token(VirgoQuery::RPAREN, 0)
		end
		def search_part()
			return rule_context("Search_partContext",0)
		end
		def boolean_op()
			return rule_context("Boolean_opContext",0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_search_string
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterSearch_string) )
			  listener.enterSearch_string(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitSearch_string) )
			  listener.exitSearch_string(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitSearch_string) )
			  return visitor.visitSearch_string(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	defsearch_string()
		return search_string(0)
	end

	def search_string( _p)
		 _parentctx = _ctx
		 _parentState = @_state_number
		_localctx =  Search_stringContext.new(_ctx, _parentState)
		 @_prevctx = _localctx
		 _startState = 16
		enterRecursionRule(_localctx, 16, RULE_search_string, _p)
		begin
			 _alt
			enter_outer_alt(_localctx, 1)

			@_state_number = 79
			@_err_handler.sync(self)
			case (@_input.la(1))
			when VirgoQuery::LPAREN

				@_state_number = 74
				match(LPAREN)
				@_state_number = 75
				search_string(0)
				@_state_number = 76
				match(RPAREN)

			when VirgoQuery::QUOTE, VirgoQuery::SEARCH_WORD

				@_state_number = 78
				search_part(0)
			else
				raise Antlr4::Runtime::NoViableAltException, self
			end
			@_ctx.stop = @_input.LT(-1)
			@_state_number = 89
			@_err_handler.sync(self);
			_alt = @_interp.adaptive_predict(@_input,6,@_ctx)
			while ( _alt!=2 && _alt!=Antlr4::Runtime::ATN::INVALID_ALT_NUMBER )
				if ( _alt==1 )
					if ( @_parseListeners!=nil )
					 triggerExitRuleEvent()
					end
					@_prevctx = _localctx

					@_state_number = 87
					@_err_handler.sync(self)
					case ( @_interp.adaptive_predict(@_input,5,@_ctx) )
					when 1

						_localctx =  Search_stringContext.new(_parentctx, _parentState)
						pushNewRecursionContext(_localctx,@ _startState, RULE_search_string)
						@_state_number = 81
						if (!(precpred(@_ctx, 3)))
						  raise Antlr4::Runtime::FailedPredicateException, self, "precpred(@_ctx, 3)")
						end
						@_state_number = 82
						boolean_op()
						@_state_number = 83
						search_string(4)

					when 2

						_localctx =  Search_stringContext.new(_parentctx, _parentState)
						pushNewRecursionContext(_localctx,@ _startState, RULE_search_string)
						@_state_number = 85
						if (!(precpred(@_ctx, 2)))
						  raise Antlr4::Runtime::FailedPredicateException, self, "precpred(@_ctx, 2)")
						end
						@_state_number = 86
						search_part(0)

					end 
				end
				@_state_number = 91
				@_err_handler.sync(self)
				_alt = @_interp.adaptive_predict(@_input,6,@_ctx)
			end

		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)

		ensure
			unrollRecursionContexts(_parentctx)
		end
		return _localctx
	end

	 class Search_partContext < Antlr4::Runtime::ParserRuleContext
		def QUOTE()
		 return tokens(VirgoQuery::QUOTE)
		end
		def QUOTE_i( i)
			return token(VirgoQuery::QUOTE, i)
		end
		def search_part()
			return rule_context("Search_partContext",0)
		end
		def SEARCH_WORD()
		  return token(VirgoQuery::SEARCH_WORD, 0)
		end
		def initialize( parent,  invokingState)
			super(parent, invokingState)
		end
		def getRuleIndex()
		 return RULE_search_part
		end
		def enter_rule( listener)
			if ( listener.respond_to?(:enterSearch_part) )
			  listener.enterSearch_part(self)
			end
		end
		def exit_rule( listener)
			if ( listener.respond_to?(:exitSearch_part) )
			  listener.exitSearch_part(self)
			end
		end

		def accept(visitor)
			if ( visitor.respond_to?(:visitSearch_part) )
			  return visitor.visitSearch_part(self)
			else
			 return visitor.visit_children(self)
			end
		end
	end

	defsearch_part()
		return search_part(0)
	end

	def search_part( _p)
		 _parentctx = _ctx
		 _parentState = @_state_number
		_localctx =  Search_partContext.new(_ctx, _parentState)
		 @_prevctx = _localctx
		 _startState = 18
		enterRecursionRule(_localctx, 18, RULE_search_part, _p)
		begin
			 _alt
			enter_outer_alt(_localctx, 1)

			@_state_number = 98
			@_err_handler.sync(self)
			case (@_input.la(1))
			when VirgoQuery::QUOTE

				@_state_number = 93
				match(QUOTE)
				@_state_number = 94
				search_part(0)
				@_state_number = 95
				match(QUOTE)

			when VirgoQuery::SEARCH_WORD

				@_state_number = 97
				match(SEARCH_WORD)
			else
				raise Antlr4::Runtime::NoViableAltException, self
			end
			@_ctx.stop = @_input.LT(-1)
			@_state_number = 104
			@_err_handler.sync(self);
			_alt = @_interp.adaptive_predict(@_input,8,@_ctx)
			while ( _alt!=2 && _alt!=Antlr4::Runtime::ATN::INVALID_ALT_NUMBER )
				if ( _alt==1 )
					if ( @_parseListeners!=nil )
					 triggerExitRuleEvent()
					end
					@_prevctx = _localctx


					_localctx =  Search_partContext.new(_parentctx, _parentState)
					pushNewRecursionContext(_localctx,@ _startState, RULE_search_part)
					@_state_number = 100
					if (!(precpred(@_ctx, 2)))
					  raise Antlr4::Runtime::FailedPredicateException, self, "precpred(@_ctx, 2)")
					end
					@_state_number = 101
					match(SEARCH_WORD) 
				end
				@_state_number = 106
				@_err_handler.sync(self)
				_alt = @_interp.adaptive_predict(@_input,8,@_ctx)
			end

		rescue Antlr4::Runtime::RecognitionException => re
			_localctx.exception = re
			@_err_handler.report_error(self, re)
			@_err_handler.recover(self, re)

		ensure
			unrollRecursionContexts(_parentctx)
		end
		return _localctx
	end

	def sempred( _localctx,  ruleIndex,  predIndex)
		case (ruleIndex)
		when 1
			return query_parts_sempred(_localctx, predIndex)
		when 8
			return search_string_sempred(_localctx, predIndex)
		when 9
			return search_part_sempred(_localctx, predIndex)
		end
		return true
	end
	def query_parts_sempred( _localctx,  predIndex)
		case (predIndex)
		when 0
			return precpred(@_ctx, 3)
		end
		return true
	end
	def search_string_sempred( _localctx,  predIndex)
		case (predIndex)
		when 1
			return precpred(@_ctx, 3)
		when 2
			return precpred(@_ctx, 2)
		end
		return true
	end
	def search_part_sempred( _localctx,  predIndex)
		case (predIndex)
		when 3
			return precpred(@_ctx, 2)
		end
		return true
	end

	@@_serializedATN = ["\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964",
	    "\3\31n\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t",
	    "\t\t\4\n\t\n\4\13\t\13\3\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\5\3 \n\3",
	    "\3\3\3\3\3\3\3\3\7\3&\n\3\f\3\16\3)\13\3\3\4\3\4\3\4\3\4\3\4\3\4\3",
	    "\4\3\4\3\4\3\4\3\4\3\4\5\4\67\n\4\3\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3",
	    "\b\3\b\3\b\3\b\3\b\3\b\3\b\5\bH\n\b\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n",
	    "\5\nR\n\n\3\n\3\n\3\n\3\n\3\n\3\n\7\nZ\n\n\f\n\16\n]\13\n\3\13\3\13",
	    "\3\13\3\13\3\13\3\13\5\13e\n\13\3\13\3\13\7\13i\n\13\f\13\16\13l\13",
	    "\13\3\13\2\5\4\22\24\f\2\4\6\b\n\f\16\20\22\24\2\3\3\2\7\13\2n\2\26",
	    "\3\2\2\2\4\37\3\2\2\2\6\66\3\2\2\2\b8\3\2\2\2\n:\3\2\2\2\f<\3\2\2\2",
	    "\16G\3\2\2\2\20I\3\2\2\2\22Q\3\2\2\2\24d\3\2\2\2\26\27\5\4\3\2\27\30",
	    "\7\2\2\3\30\3\3\2\2\2\31\32\b\3\1\2\32\33\7\3\2\2\33\34\5\4\3\2\34",
	    "\35\7\4\2\2\35 \3\2\2\2\36 \5\6\4\2\37\31\3\2\2\2\37\36\3\2\2\2 \'",
	    "\3\2\2\2!\"\f\5\2\2\"#\5\f\7\2#$\5\4\3\6$&\3\2\2\2%!\3\2\2\2&)\3\2",
	    "\2\2\'%\3\2\2\2\'(\3\2\2\2(\5\3\2\2\2)\'\3\2\2\2*+\5\b\5\2+,\7\6\2",
	    "\2,-\7\r\2\2-.\5\22\n\2./\7\22\2\2/\67\3\2\2\2\60\61\5\n\6\2\61\62",
	    "\7\6\2\2\62\63\7\r\2\2\63\64\5\16\b\2\64\65\7\22\2\2\65\67\3\2\2\2",
	    "\66*\3\2\2\2\66\60\3\2\2\2\67\7\3\2\2\289\t\2\2\29\t\3\2\2\2:;\7\f",
	    "\2\2;\13\3\2\2\2<=\7\5\2\2=\r\3\2\2\2>?\5\20\t\2?@\7\25\2\2@A\5\20",
	    "\t\2AH\3\2\2\2BC\7\27\2\2CH\5\20\t\2DE\7\26\2\2EH\5\20\t\2FH\5\20\t",
	    "\2G>\3\2\2\2GB\3\2\2\2GD\3\2\2\2GF\3\2\2\2H\17\3\2\2\2IJ\7\30\2\2J",
	    "\21\3\2\2\2KL\b\n\1\2LM\7\3\2\2MN\5\22\n\2NO\7\4\2\2OR\3\2\2\2PR\5",
	    "\24\13\2QK\3\2\2\2QP\3\2\2\2R[\3\2\2\2ST\f\5\2\2TU\5\f\7\2UV\5\22\n",
	    "\6VZ\3\2\2\2WX\f\4\2\2XZ\5\24\13\2YS\3\2\2\2YW\3\2\2\2Z]\3\2\2\2[Y",
	    "\3\2\2\2[\\\3\2\2\2\\\23\3\2\2\2][\3\2\2\2^_\b\13\1\2_`\7\17\2\2`a",
	    "\5\24\13\2ab\7\17\2\2be\3\2\2\2ce\7\23\2\2d^\3\2\2\2dc\3\2\2\2ej\3",
	    "\2\2\2fg\f\4\2\2gi\7\23\2\2hf\3\2\2\2il\3\2\2\2jh\3\2\2\2jk\3\2\2\2",
	    "k\25\3\2\2\2lj\3\2\2\2\13\37\'\66GQY[dj"].join("")

	@@_ATN = Antlr4::Runtime::ATNDeserializer.new().deserialize(@@_serializedATN)

end

end
