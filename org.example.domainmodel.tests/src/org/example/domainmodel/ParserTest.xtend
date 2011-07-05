package org.example.domainmodel

import org.eclipse.xtext.junit4.InjectWith
import org.junit.runner.RunWith
import org.eclipse.xtext.junit4.XtextRunner
import com.google.inject.Inject
import org.eclipse.xtext.junit4.util.ParseHelper
import org.example.domainmodel.domainmodel.Domainmodel
import org.junit.Test
import org.example.domainmodel.domainmodel.Entity
import static junit.framework.Assert.*

@InjectWith(typeof(DomainmodelInjectorProvider))
@RunWith(typeof(XtextRunner))
class ParserTest {
	@Inject
	ParseHelper<Domainmodel> parser
	
	@Test 
	def void parseEmptyEntity() {
		val model = parser.parse(
			"entity MyEntity {
			}")
		val entity = model.elements.head as Entity
		assertTrue(entity.features.isEmpty)
	}
}