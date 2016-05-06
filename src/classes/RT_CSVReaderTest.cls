@isTest class RT_CSVReaderTest {

	@isTest static void testCSVReader() {
		String csvString = 'fieldName1,fieldName2,fieldName3,fieldName4\r\n' +
		                   '"valu,e1-1","value2\n-1",value3-1,\n'+
		                   'value1-2,"value\"2-2",value3-2,';

		List<List<String>> data = RT_CSVReader.read(csvString);

		System.assertEquals('valu,e1-1', data[1][0]);
		System.assertEquals('value2\n-1', data[1][1]);
		System.assertEquals('value3-1', data[1][2]);
		System.assertEquals('', data[1][3]);
		System.assertEquals('value1-2', data[2][0]);
		System.assertEquals('value"2-2', data[2][1]);
		System.assertEquals('value3-2', data[2][2]);
	}
}