<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:edbcf040-cb27-47a6-8b7b-904858a1ceaa(de.slisson.mps.editor.multiline.sandbox.sandbox)" concise="true">
  <persistence version="9" />
  <languages>
    <use id="26a9201d-e70b-4755-acd6-40baf7a63b3a" name="de.slisson.mps.editor.multiline.demolang" version="-1" />
  </languages>
  <imports>
    <import index="kyaz" ref="r:711fe6f5-9341-4fad-8566-f7d70e151a24(de.slisson.mps.editor.multiline.demolang.structure)" implicit="true" />
  </imports>
  <registry>
    <language id="26a9201d-e70b-4755-acd6-40baf7a63b3a" name="de.slisson.mps.editor.multiline.demolang">
      <concept id="5701977940639193194" name="de.slisson.mps.editor.multiline.demolang.structure.ConceptB" flags="ng" index="1bMerg">
        <property id="5701977940639193195" name="text" index="1bMerh" />
      </concept>
      <concept id="8006371471054141137" name="de.slisson.mps.editor.multiline.demolang.structure.ConceptA" flags="ng" index="2v7aUZ">
        <property id="5701977940639428400" name="showConceptB" index="1bN56a" />
        <property id="8006371471054141138" name="text" index="2v7aUW" />
        <child id="5701977940639193207" name="conceptB" index="1bMerd" />
      </concept>
      <concept id="8006371471054143776" name="de.slisson.mps.editor.multiline.demolang.structure.RootConcept" flags="ng" index="2v7l_e">
        <child id="8006371471054143777" name="conceptA" index="2v7l_f" />
      </concept>
    </language>
  </registry>
  <node concept="2v7l_e" id="7Pi_Fu5SqN8">
    <node concept="2v7aUZ" id="7Pi_Fu5Sr2w" role="2v7l_f">
      <property role="2v7aUW" value="Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam emagna aliquyamrat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.   \nsdf dhfgh fghsdf gf dfg\n\nAbcdef Ghijkl\nAbcde  Ghijkl\nAbcd   Ghijkl\nAbc    Ghijkl\nAb     Ghijkl\nA      Ghijkl\n\n\nfd gdg \nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.   \n\nUt wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi.   \n\nNam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit ut aliquip ex ea commodo consequat.   \n\nDuis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis.   \n\nAt vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, At accusam aliquyam diam diam dolore dolores duo eirmod eos erat, et nonumy sed tempor et et invidunt justo labore Stet clita ea et gubergren, kasd magna no rebum. sanctus sea sed takimata ut vero voluptua. est Lorem ipsum dolor sitamet." />
      <property role="1bN56a" value="true" />
      <node concept="1bMerg" id="4WxvFC4Vh2G" role="1bMerd">
        <property role="1bMerh" value="abc" />
      </node>
      <node concept="1bMerg" id="4WxvFC4Vh2H" role="1bMerd">
        <property role="1bMerh" value="def" />
      </node>
    </node>
  </node>
</model>

