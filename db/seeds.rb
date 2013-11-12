# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

unbis = Vocabulary.create(name: 'unbis thesaurus')
unbis.labels.create([
	{value: 'UNBIS Thesarus', language: 'AR', label_type: 'Preferred'},
	{value: 'UNBIS Thesarus', language: 'ZH', label_type: 'Preferred'},
	{value: 'UNBIS Thesarus', language: 'EN', label_type: 'Preferred'},
	{value: 'UNBIS Thesarus', language: 'FR', label_type: 'Preferred'},
	{value: 'UNBIS Thesarus', language: 'RU', label_type: 'Preferred'},
	{value: 'UNBIS Thesarus', language: 'ES', label_type: 'Preferred'}])
unbis.categories.create([
	{name: '01 political and legal questions'},
	{name: '02 economic development and development finance'},
        {name: '03 natural resources and the environment'},
        {name: '04 agriculture forestry and fishing'},
        {name: '05 industry'},
        {name: '06 transport and communications'},
        {name: '07 international trade'},
        {name: '08 population'},
        {name: '09 human settlements'},
        {name: '10 health'},
        {name: '11 education'},
        {name: '12 employment'},
        {name: '13 humanitarian aid and relief'},
        {name: '14 social conditions and equity'},
        {name: '15 culture'},
        {name: '16 science and technology'},
        {name: '17 geographical descriptors'},
        {name: '18 organizational questions'}])
unbis.categories.find(1).labels.create([
	{value: 'مسائل قانونية وسياسية - .01', language: 'AR', label_type: 'Preferred'},
        {value: '01. - 政治和法律问题', language: 'ZH', label_type: 'Preferred'},
        {value: '01. - POLITICAL AND LEGAL QUESTIONS', language: 'EN', label_type: 'Preferred'},
        {value: '01. - QUESTIONS POLITIQUES ET JURIDIQUES', language: 'FR', label_type: 'Preferred'},
        {value: '01. - ПОЛИТИЧЕСКИЕ И ЮРИДИЧЕСКИЕ ВОПРОСЫ', language: 'RU', label_type: 'Preferred'},
        {value: '01. - CUESTIONES POLITICAS Y JURIDICAS', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(2).labels.create([
        {value: 'تنمية إقتصادية وتمويل التنمية - .02', language: 'AR', label_type: 'Preferred'},
        {value: '02. - 经济发展和发展资金', language: 'ZH', label_type: 'Preferred'},
        {value: '02. - ECONOMIC DEVELOPMENT AND DEVELOPMENT FINANCE', language: 'EN', label_type: 'Preferred'},
        {value: '02. - DEVELOPPEMENT ECONOMIQUE ET FINANCEMENT DU DEVELOPPEMENT', language: 'FR', label_type: 'Preferred'},
        {value: '02. - ЭКОНОМИЧЕСКОЕ РАЗВИТИЕ И ФИНАНСИРОВАНИЕ РАЗВИТИЯ', language: 'RU', label_type: 'Preferred'},
        {value: '02. - DESARROLLO ECONOMICO Y FINANCIACION DEL DESARROLLO', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(3).labels.create([
        {value: 'موارد طبيعية وبيئة - .03', language: 'AR', label_type: 'Preferred'},
        {value: '03. - 自然资源和环境', language: 'ZH', label_type: 'Preferred'},
        {value: '03. - NATURAL RESOURCES AND THE ENVIRONMENT', language: 'EN', label_type: 'Preferred'},
        {value: '03. - RESSOURCES NATURELLES ET ENVIRONNEMENT', language: 'FR', label_type: 'Preferred'},
        {value: '03. - ПРИРОДНЫЕ РЕСУРСЫ И ОКРУЖАЮЩАЯ СРЕДА', language: 'RU', label_type: 'Preferred'},
        {value: '03. - RECURSOS NATURALES Y MEDIO AMBIENTE', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(4).labels.create([
        {value: 'زراعة وعلم غابات وصيد أسماك - .04', language: 'AR', label_type: 'Preferred'},
        {value: '04. - 农业，林业和渔业', language: 'ZH', label_type: 'Preferred'},
        {value: '04. - AGRICULTURE, FORESTRY AND FISHING', language: 'EN', label_type: 'Preferred'},
        {value: '04. - AGRICULTURE, FORESTERIE ET PECHE', language: 'FR', label_type: 'Preferred'},
        {value: '04. - СЕЛЬСКОЕ ХОЗЯЙСТВО, ЛЕСНОЕ ХОЗЯЙСТВО И РЫБОЛОВСТВО', language: 'RU', label_type: 'Preferred'},
        {value: '04. - AGRICULTURA, CIENCIAS FORESTALES Y PESCA', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(5).labels.create([
        {value: 'صناعة - .05', language: 'AR', label_type: 'Preferred'},
        {value: '05. - 工业', language: 'ZH', label_type: 'Preferred'},
        {value: '05. - INDUSTRY', language: 'EN', label_type: 'Preferred'},
        {value: '05. - INDUSTRIE', language: 'FR', label_type: 'Preferred'},
        {value: '05. - ПРОИЗВОДСТВО', language: 'RU', label_type: 'Preferred'},
        {value: '05. - INDUSTRIA', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(6).labels.create([
        {value: 'نقل وإتصالات - .06', language: 'AR', label_type: 'Preferred'},
        {value: '06. - 运输和通讯', language: 'ZH', label_type: 'Preferred'},
        {value: '06. - TRANSPORT AND COMMUNICATIONS', language: 'EN', label_type: 'Preferred'},
        {value: '06. - TRANSPORTS ET COMMUNICATIONS', language: 'FR', label_type: 'Preferred'},
        {value: '06. - ТРАНСПОРТ И СВЯЗЬ', language: 'RU', label_type: 'Preferred'},
        {value: '06. - TRANSPORTE Y COMUNICACIONES', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(7).labels.create([
        {value: 'تجارة دولية - .07', language: 'AR', label_type: 'Preferred'},
        {value: '07. - 国际贸易', language: 'ZH', label_type: 'Preferred'},
        {value: '07. - INTERNATIONAL TRADE', language: 'EN', label_type: 'Preferred'},
        {value: '07. - COMMERCE INTERNATIONAL', language: 'FR', label_type: 'Preferred'},
        {value: '07. - МЕЖДУНАРОДНАЯ ТОРГОВЛЯ', language: 'RU', label_type: 'Preferred'},
        {value: '07. - COMERCIO INTERNACIONAL', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(8).labels.create([
        {value: 'سكان - .08', language: 'AR', label_type: 'Preferred'},
        {value: '08. - 人口', language: 'ZH', label_type: 'Preferred'},
        {value: '08. - POPULATION', language: 'EN', label_type: 'Preferred'},
        {value: '08. - POPULATION', language: 'FR', label_type: 'Preferred'},
        {value: '08. - НАСЕЛЕНИЕ', language: 'RU', label_type: 'Preferred'},
        {value: '08. - POBLACION', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(9).labels.create([
        {value: 'مستوطنات بشرية - .09', language: 'AR', label_type: 'Preferred'},
        {value: '09. - 人类住区', language: 'ZH', label_type: 'Preferred'},
        {value: '09. - HUMAN SETTLEMENTS', language: 'EN', label_type: 'Preferred'},
        {value: '09. - ETABLISSEMENTS HUMAINS', language: 'FR', label_type: 'Preferred'},
        {value: '09. - НАСЕЛЕННЫЕ ПУНКТЫ', language: 'RU', label_type: 'Preferred'},
        {value: '09. - ASENTAMIENTOS HUMANOS', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(10).labels.create([
        {value: 'صحة - .10', language: 'AR', label_type: 'Preferred'},
        {value: '10. - 健康', language: 'ZH', label_type: 'Preferred'},
        {value: '10. - HEALTH', language: 'EN', label_type: 'Preferred'},
        {value: '10. - SANTE', language: 'FR', label_type: 'Preferred'},
        {value: '10. - ЗДОРОВЬЕ', language: 'RU', label_type: 'Preferred'},
        {value: '10. - SALUD', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(11).labels.create([
        {value: 'تعليم - .11', language: 'AR', label_type: 'Preferred'},
        {value: '11. - 教育', language: 'ZH', label_type: 'Preferred'},
        {value: '11. - EDUCATION', language: 'EN', label_type: 'Preferred'},
        {value: '11. - EDUCATION', language: 'FR', label_type: 'Preferred'},
        {value: '11. - ОБРАЗОВАНИЕ', language: 'RU', label_type: 'Preferred'},
        {value: '11. - EDUCACION', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(12).labels.create([
        {value: 'عمالة - .12', language: 'AR', label_type: 'Preferred'},
        {value: '12. - 就业', language: 'ZH', label_type: 'Preferred'},
        {value: '12. - EMPLOYMENT', language: 'EN', label_type: 'Preferred'},
        {value: '12. - EMPLOI', language: 'FR', label_type: 'Preferred'},
        {value: '12. - РАБОТА', language: 'RU', label_type: 'Preferred'},
        {value: '12. - EMPLEO', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(13).labels.create([
        {value: 'معونات إنسانية وإغاثة - .13', language: 'AR', label_type: 'Preferred'},
        {value: '13. - 人道主义救援', language: 'ZH', label_type: 'Preferred'},
        {value: '13. - HUMANITARIAN AID AND RELIEF', language: 'EN', label_type: 'Preferred'},
        {value: '13. - ASSISTANCE HUMANITAIRE', language: 'FR', label_type: 'Preferred'},
        {value: '13. - ГУМАНИТАРНАЯ ПОМОЩЬ', language: 'RU', label_type: 'Preferred'},
        {value: '13. - ASISTENCIA HUMANITARIA', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(14).labels.create([
        {value: 'أوضاع إجتماعية ومساواة - .14', language: 'AR', label_type: 'Preferred'},
        {value: '14. - 社会状态和公正', language: 'ZH', label_type: 'Preferred'},
        {value: '14. - SOCIAL CONDITIONS AND EQUITY', language: 'EN', label_type: 'Preferred'},
        {value: '14. - QUESTIONS SOCIALES', language: 'FR', label_type: 'Preferred'},
        {value: '14. - СОЦИАЛЬНЫЕ УСЛОВИЯ И ПРАВО СПРАВЕДЛИВОСТИ', language: 'RU', label_type: 'Preferred'},
        {value: '14. - CUESTIONES SOCIALES', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(15).labels.create([
        {value: 'ثقافة - .15', language: 'AR', label_type: 'Preferred'},
        {value: '15. - 文化', language: 'ZH', label_type: 'Preferred'},
        {value: '15. - CULTURE', language: 'EN', label_type: 'Preferred'},
        {value: '15. - CULTURE', language: 'FR', label_type: 'Preferred'},
        {value: '15. - КУЛЬТУРА', language: 'RU', label_type: 'Preferred'},
        {value: '15. - CULTURA', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(16).labels.create([
        {value: 'علوم وتكنولوجيا - .16', language: 'AR', label_type: 'Preferred'},
        {value: '16. - 科学和技术', language: 'ZH', label_type: 'Preferred'},
        {value: '16. - SCIENCE AND TECHNOLOGY', language: 'EN', label_type: 'Preferred'},
        {value: '16. - SCIENCES ET TECHNIQUES', language: 'FR', label_type: 'Preferred'},
        {value: '16. - НАУКА И ТЕХНОЛОГИЯ', language: 'RU', label_type: 'Preferred'},
        {value: '16. - CIENCIA Y TECNOLOGIA', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(17).labels.create([
        {value: 'واصفات جغرافية - .17', language: 'AR', label_type: 'Preferred'},
        {value: '17. - 地理区划', language: 'ZH', label_type: 'Preferred'},
        {value: '17. - GEOGRAPHICAL DESCRIPTORS', language: 'EN', label_type: 'Preferred'},
        {value: '17. - DESCRIPTEURS GEOGRAPHIQUES', language: 'FR', label_type: 'Preferred'},
        {value: '17. - ГЕОГРАФИЧЕСКИЕ ОПИСАНИЯ', language: 'RU', label_type: 'Preferred'},
        {value: '17. - DESCRIPTORES GEOGRAFICOS', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(18).labels.create([
        {value: 'مسائل تنظيمية - .18', language: 'AR', label_type: 'Preferred'},
        {value: '18. - 组织内事务', language: 'ZH', label_type: 'Preferred'},
        {value: '18. - ORGANIZATIONAL QUESTIONS', language: 'EN', label_type: 'Preferred'},
        {value: '18. - QUESTIONS ORGANISATIONNELLES', language: 'FR', label_type: 'Preferred'},
        {value: '18. - ОРГАНИЗАЦИОННЫЕ ВОПРОСЫ', language: 'RU', label_type: 'Preferred'},
        {value: '18. - CUESTIONES DE ORGANIZACION', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(1).children.create([
	{name: '01.06.02 historical periods'}])
unbis.categories.find(1).children.first.labels.create([
	{value: 'فترات تاريخية - 01.06.02', language: 'AR', label_type: 'Preferred'},
        {value: '01.06.02 - 历史时期', language: 'ZH', label_type: 'Preferred'},
        {value: '01.06.02 - HISTORICAL PERIODS', language: 'EN', label_type: 'Preferred'},
        {value: '01.06.02 - EPOQUES HISTORIQUES', language: 'FR', label_type: 'Preferred'},
        {value: '01.06.02 - ИСТОРИЧЕСКИЕ ПЕРИОДЫ', language: 'RU', label_type: 'Preferred'},
        {value: '01.06.02 - EPOCAS HISTORICAS', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(1).children.first.concepts.create([
	{name: 'middle ages'},
        {name: 'nineteenth century'},
        {name: 'renaissance'},
        {name: 'twentieth century'},
        {name: 'twenty-first century'}])
Concept.find(1).labels.create([
	{value: 'العصور الوسطى', language: 'AR', label_type: 'Preferred'},
        {value: '中世纪', language: 'ZH', label_type: 'Preferred'},
        {value: 'MIDDLE AGES', language: 'EN', label_type: 'Preferred'},
        {value: 'MOYEN AGE', language: 'FR', label_type: 'Preferred'},
        {value: 'Средние века', language: 'RU', label_type: 'Preferred'},
        {value: 'EDAD MEDIA', language: 'ES', label_type: 'Preferred'}])
Concept.find(2).labels.create([
        {value: 'القرن التاسع عشر', language: 'AR', label_type: 'Preferred'},
        {value: '十九世纪', language: 'ZH', label_type: 'Preferred'},
        {value: 'NINETEENTH CENTURY', language: 'EN', label_type: 'Preferred'},
        {value: 'DIX-NEUVIEME SIECLE', language: 'FR', label_type: 'Preferred'},
        {value: 'Девятнадцатый век', language: 'RU', label_type: 'Preferred'},
        {value: 'SIGLO XIX', language: 'ES', label_type: 'Preferred'}])
Concept.find(3).labels.create([
        {value: 'النهضة', language: 'AR', label_type: 'Preferred'},
        {value: '文艺复兴时期', language: 'ZH', label_type: 'Preferred'},
        {value: 'RENAISSANCE', language: 'EN', label_type: 'Preferred'},
        {value: 'RENAISSANCE', language: 'FR', label_type: 'Preferred'},
        {value: 'Эпоха Возрождения', language: 'RU', label_type: 'Preferred'},
        {value: 'RENACIMIENTO', language: 'ES', label_type: 'Preferred'}])
Concept.find(4).labels.create([
        {value: 'القرن العشرون', language: 'AR', label_type: 'Preferred'},
        {value: '二十世纪', language: 'ZH', label_type: 'Preferred'},
        {value: 'TWENTIETH CENTURY', language: 'EN', label_type: 'Preferred'},
        {value: 'VINGTIEME SIECLE', language: 'FR', label_type: 'Preferred'},
        {value: 'Двадцатый век', language: 'RU', label_type: 'Preferred'},
        {value: 'SIGLO XX', language: 'ES', label_type: 'Preferred'}])
Concept.find(5).labels.create([
        {value: 'القرن الحادي والعشرون', language: 'AR', label_type: 'Preferred'},
        {value: '二十一世纪', language: 'ZH', label_type: 'Preferred'},
        {value: 'TWENTY-FIRST CENTURY', language: 'EN', label_type: 'Preferred'},
        {value: 'VINGT ET UNIEME SIECLE', language: 'FR', label_type: 'Preferred'},
        {value: 'Двадцать первый век', language: 'RU', label_type: 'Preferred'},
        {value: 'SIGLO XXI', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(1).children.create([
	{name: '01.01.00 political conditions institutions movements'}])
unbis.categories.find(1).children.last.labels.create([
	{value: 'أوضاع سياسية, مؤسسات, حركات - 01.01.00', language: 'AR', label_type: 'Preferred'},
        {value: '01.01.00 - 政治条件，制度，运动', language: 'ZH', label_type: 'Preferred'},
        {value: '01.01.00 - POLITICAL CONDITIONS, INSTITUTIONS, MOVEMENTS', language: 'EN', label_type: 'Preferred'},
        {value: '01.01.00 - INSTITUTIONS ET MOUVEMENTS POLITIQUES', language: 'FR', label_type: 'Preferred'},
        {value: '01.01.00 - ПОЛИТИЧЕСКИЕ УСЛОВИЯ, ИНСТИТУТЫ, ДВИЖЕНИЯ', language: 'RU', label_type: 'Preferred'},
        {value: '01.01.00 - INSTITUCIONES Y MOVIMIENTOS POLITICOS', language: 'ES', label_type: 'Preferred'}])
unbis.categories.find(1).children.last.concepts.create([
	{name: 'feudalism'}])
Concept.find(6).labels.create([
	{value: 'الإقطاعية', language: 'AR', label_type: 'Preferred'},
        {value: '封建主义', language: 'ZH', label_type: 'Preferred'},
        {value: 'FEUDALISM', language: 'EN', label_type: 'Preferred'},
        {value: 'FEODALISME', language: 'FR', label_type: 'Preferred'},
        {value: 'Феодализм', language: 'RU', label_type: 'Preferred'},
        {value: 'FEUDALISMO', language: 'ES', label_type: 'Preferred'}])
Concept.find(1).related.create(relationship_type: 'related', related_concept_id: 6)
Concept.find(6).related.create(relationship_type: 'related', related_concept_id: 1)
