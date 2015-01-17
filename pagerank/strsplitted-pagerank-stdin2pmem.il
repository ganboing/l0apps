class Program
{
    function pr_build_graph
    {
            mov cnt$0x1e2dc30, vertices_cnt$0x1d89840
            sti p_vertices_cnt$0x1d89840, cnt$0x1e2dc30
            cle __temp_1$0x1e2dc30, cnt$0x1e2dc30, 0x0:i8
            bnz __temp_1$0x1e2dc30, __temp_2$0x1e2dc30
            br __temp_0$0x1e2dc30
        __temp_2$0x1e2dc30:
            call output_char$0x1d89840, <missing>, 0x49:i1
            call output_char$0x1d89840, <missing>, 0x74:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x73:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x6D:i1
            call output_char$0x1d89840, <missing>, 0x73:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x74:i1
            call output_char$0x1d89840, <missing>, 0x68:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x69:i1
            call output_char$0x1d89840, <missing>, 0x6E:i1
            call output_char$0x1d89840, <missing>, 0x70:i1
            call output_char$0x1d89840, <missing>, 0x75:i1
            call output_char$0x1d89840, <missing>, 0x74:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x69:i1
            call output_char$0x1d89840, <missing>, 0x73:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x6E:i1
            call output_char$0x1d89840, <missing>, 0x6F:i1
            call output_char$0x1d89840, <missing>, 0x74:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x69:i1
            call output_char$0x1d89840, <missing>, 0x6E:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x70:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x72:i1
            call output_char$0x1d89840, <missing>, 0x73:i1
            call output_char$0x1d89840, <missing>, 0x69:i1
            call output_char$0x1d89840, <missing>, 0x73:i1
            call output_char$0x1d89840, <missing>, 0x74:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x6E:i1
            call output_char$0x1d89840, <missing>, 0x74:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x6D:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x6D:i1
            call output_char$0x1d89840, <missing>, 0x6F:i1
            call output_char$0x1d89840, <missing>, 0x72:i1
            call output_char$0x1d89840, <missing>, 0x79:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x79:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x74:i1
            call output_char$0x1d89840, <missing>, 0x2E:i1
            call output_char$0x1d89840, <missing>, 0xA:i8
            asm "exit:a"
        __temp_0$0x1e2dc30:
            mov i$0x1e2dc30, 0x0:i8
        __temp_3$0x1e2dc30:
            clt __temp_6$0x1e2dc30, i$0x1e2dc30, cnt$0x1e2dc30
            bz __temp_6$0x1e2dc30, __temp_5$0x1e2dc30
            mul __temp_7$0x1e40250, i$0x1e2dc30, 0x3:i8
            add __temp_8$0x1e40250, __temp_7$0x1e40250, 0x0:i8
            stelem vertices$0x1d89840, __temp_8$0x1e40250, 0x0:i8
            mul __temp_9$0x1e40250, i$0x1e2dc30, 0x3:i8
            add __temp_10$0x1e40250, __temp_9$0x1e40250, 0x1:i8
            stelem vertices$0x1d89840, __temp_10$0x1e40250, 0x0:i8
            mul __temp_11$0x1e40250, i$0x1e2dc30, 0x3:i8
            add __temp_12$0x1e40250, __temp_11$0x1e40250, 0x2:i8
            stelem vertices$0x1d89840, __temp_12$0x1e40250, 0x0:i8
        __temp_4$0x1e2dc30:
            add __temp_13$0x1e2dc30, i$0x1e2dc30, 0x1:i8
            mov i$0x1e2dc30, __temp_13$0x1e2dc30
            br __temp_3$0x1e2dc30
        __temp_5$0x1e2dc30:
            mov i$0x1e2dc30, 0x0:i8
        __temp_14$0x1e2dc30:
            clt __temp_17$0x1e2dc30, i$0x1e2dc30, edges_cnt$0x1d89840
            bz __temp_17$0x1e2dc30, __temp_16$0x1e2dc30
            mul __temp_18$0x1e43100, i$0x1e2dc30, 0x2:i8
            add __temp_19$0x1e43100, __temp_18$0x1e43100, 0x0:i8
            ldelem __temp_20$0x1e43100, edges$0x1d89840, __temp_19$0x1e43100
            mov src$0x1e2dc30, __temp_20$0x1e43100
            mul __temp_21$0x1e43100, i$0x1e2dc30, 0x2:i8
            add __temp_22$0x1e43100, __temp_21$0x1e43100, 0x1:i8
            ldelem __temp_23$0x1e43100, edges$0x1d89840, __temp_22$0x1e43100
            mov dst$0x1e2dc30, __temp_23$0x1e43100
            mul __temp_24$0x1e43100, 0x3:i8, src$0x1e2dc30
            add __temp_25$0x1e43100, __temp_24$0x1e43100, 0x1:i8
            mov tmp1$0x1e2dc30, __temp_25$0x1e43100
            ldelem __temp_26$0x1e43100, vertices$0x1d89840, tmp1$0x1e2dc30
            add __temp_27$0x1e43100, __temp_26$0x1e43100, 0x1:i8
            stelem vertices$0x1d89840, tmp1$0x1e2dc30, __temp_27$0x1e43100
            mul __temp_28$0x1e43100, 0x3:i8, dst$0x1e2dc30
            add __temp_29$0x1e43100, __temp_28$0x1e43100, 0x0:i8
            mov tmp1$0x1e2dc30, __temp_29$0x1e43100
            ldelem __temp_30$0x1e43100, vertices$0x1d89840, tmp1$0x1e2dc30
            add __temp_31$0x1e43100, __temp_30$0x1e43100, 0x1:i8
            stelem vertices$0x1d89840, tmp1$0x1e2dc30, __temp_31$0x1e43100
        __temp_15$0x1e2dc30:
            add __temp_32$0x1e2dc30, i$0x1e2dc30, 0x1:i8
            mov i$0x1e2dc30, __temp_32$0x1e2dc30
            br __temp_14$0x1e2dc30
        __temp_16$0x1e2dc30:
            mov i$0x1e2dc30, 0x0:i8
        __temp_33$0x1e2dc30:
            clt __temp_36$0x1e2dc30, i$0x1e2dc30, cnt$0x1e2dc30
            bz __temp_36$0x1e2dc30, __temp_35$0x1e2dc30
            mul __temp_38$0x1e47770, i$0x1e2dc30, 0x3:i8
            add __temp_39$0x1e47770, __temp_38$0x1e47770, 0x1:i8
            ldelem __temp_40$0x1e47770, vertices$0x1d89840, __temp_39$0x1e47770
            ceq __temp_41$0x1e47770, __temp_40$0x1e47770, 0x0:i8
            bnz __temp_41$0x1e47770, __temp_42$0x1e47770
            mul __temp_43$0x1e49100, i$0x1e2dc30, 0x3:i8
            add __temp_44$0x1e49100, __temp_43$0x1e49100, 0x1:i8
            ldelem __temp_45$0x1e49100, vertices$0x1d89840, __temp_44$0x1e49100
            conv __temp_46$0x1e49100, __temp_45$0x1e49100
            div __temp_47$0x1e49100, 1.000000:r8, __temp_46$0x1e49100
            mul __temp_49$0x1e49100, i$0x1e2dc30, 0x3:i8
            add __temp_50$0x1e49100, __temp_49$0x1e49100, 0x1:i8
            ldelema __temp_48$0x1e49100, vertices$0x1d89840, __temp_50$0x1e49100
            sti __temp_48$0x1e49100, __temp_47$0x1e49100
            br __temp_37$0x1e47770
        __temp_42$0x1e47770:
            mul __temp_52$0x1e48310, i$0x1e2dc30, 0x3:i8
            add __temp_53$0x1e48310, __temp_52$0x1e48310, 0x1:i8
            ldelema __temp_51$0x1e48310, vertices$0x1d89840, __temp_53$0x1e48310
            sti __temp_51$0x1e48310, 1.000000:r8
        __temp_37$0x1e47770:
        __temp_34$0x1e2dc30:
            add __temp_54$0x1e2dc30, i$0x1e2dc30, 0x1:i8
            mov i$0x1e2dc30, __temp_54$0x1e2dc30
            br __temp_33$0x1e2dc30
        __temp_35$0x1e2dc30:
            mov tmp1$0x1e2dc30, 0x0:i8
            mov i$0x1e2dc30, 0x0:i8
        __temp_55$0x1e2dc30:
            clt __temp_58$0x1e2dc30, i$0x1e2dc30, cnt$0x1e2dc30
            bz __temp_58$0x1e2dc30, __temp_57$0x1e2dc30
            mul __temp_59$0x1e4ba00, 0x3:i8, i$0x1e2dc30
            add __temp_60$0x1e4ba00, __temp_59$0x1e4ba00, 0x2:i8
            stelem vertices$0x1d89840, __temp_60$0x1e4ba00, tmp1$0x1e2dc30
            mul __temp_61$0x1e4ba00, 0x3:i8, i$0x1e2dc30
            add __temp_62$0x1e4ba00, __temp_61$0x1e4ba00, 0x0:i8
            ldelem __temp_63$0x1e4ba00, vertices$0x1d89840, __temp_62$0x1e4ba00
            add __temp_64$0x1e4ba00, tmp1$0x1e2dc30, __temp_63$0x1e4ba00
            mov tmp1$0x1e2dc30, __temp_64$0x1e4ba00
        __temp_56$0x1e2dc30:
            add __temp_65$0x1e2dc30, i$0x1e2dc30, 0x1:i8
            mov i$0x1e2dc30, __temp_65$0x1e2dc30
            br __temp_55$0x1e2dc30
        __temp_57$0x1e2dc30:
            mul __temp_67$0x1e2dc30, cnt$0x1e2dc30, 0x8:i8
            call pralloc$0x1d89840, __temp_66$0x1e2dc30, __temp_67$0x1e2dc30
            mov filled$0x1e2dc30, __temp_66$0x1e2dc30
            mov i$0x1e2dc30, 0x0:i8
        __temp_68$0x1e2dc30:
            clt __temp_71$0x1e2dc30, i$0x1e2dc30, cnt$0x1e2dc30
            bz __temp_71$0x1e2dc30, __temp_70$0x1e2dc30
            stelem filled$0x1e2dc30, i$0x1e2dc30, 0x0:i8
        __temp_69$0x1e2dc30:
            add __temp_72$0x1e2dc30, i$0x1e2dc30, 0x1:i8
            mov i$0x1e2dc30, __temp_72$0x1e2dc30
            br __temp_68$0x1e2dc30
        __temp_70$0x1e2dc30:
            mov i$0x1e2dc30, 0x0:i8
        __temp_73$0x1e2dc30:
            clt __temp_76$0x1e2dc30, i$0x1e2dc30, edges_cnt$0x1d89840
            bz __temp_76$0x1e2dc30, __temp_75$0x1e2dc30
            mul __temp_77$0x1dbf580, i$0x1e2dc30, 0x2:i8
            add __temp_78$0x1dbf580, __temp_77$0x1dbf580, 0x0:i8
            ldelem __temp_79$0x1dbf580, edges$0x1d89840, __temp_78$0x1dbf580
            mov src$0x1e2dc30, __temp_79$0x1dbf580
            mul __temp_80$0x1dbf580, i$0x1e2dc30, 0x2:i8
            add __temp_81$0x1dbf580, __temp_80$0x1dbf580, 0x1:i8
            ldelem __temp_82$0x1dbf580, edges$0x1d89840, __temp_81$0x1dbf580
            mov dst$0x1e2dc30, __temp_82$0x1dbf580
            mul __temp_83$0x1dbf580, 0x3:i8, dst$0x1e2dc30
            add __temp_84$0x1dbf580, __temp_83$0x1dbf580, 0x2:i8
            ldelem __temp_85$0x1dbf580, vertices$0x1d89840, __temp_84$0x1dbf580
            mov tmp1$0x1e2dc30, __temp_85$0x1dbf580
            ldelem __temp_86$0x1dbf580, filled$0x1e2dc30, dst$0x1e2dc30
            mov tmp4$0x1e2dc30, __temp_86$0x1dbf580
            add __temp_87$0x1dbf580, tmp1$0x1e2dc30, tmp4$0x1e2dc30
            stelem in_neighbors$0x1d89840, __temp_87$0x1dbf580, src$0x1e2dc30
            add __temp_88$0x1dbf580, tmp4$0x1e2dc30, 0x1:i8
            mov tmp4$0x1e2dc30, __temp_88$0x1dbf580
            stelem filled$0x1e2dc30, dst$0x1e2dc30, tmp4$0x1e2dc30
        __temp_74$0x1e2dc30:
            add __temp_89$0x1e2dc30, i$0x1e2dc30, 0x1:i8
            mov i$0x1e2dc30, __temp_89$0x1e2dc30
            br __temp_73$0x1e2dc30
        __temp_75$0x1e2dc30:
            ret
    }
    function read_input
    {
            mov vertices_cnt$0x1d89840, 0x0:i8
        __temp_90$0x1e96180:
            lda __temp_94$0x1e98a20, len$0x1e96180
            call input_line$0x1d89840, __temp_93$0x1e98a20, buf$0x1e96180, 0xFF:i8, __temp_94$0x1e98a20
            mov rt$0x1e96180, __temp_93$0x1e98a20
            mov cont$0x1e96180, 0x0:i8
            ceq __temp_96$0x1e98a20, rt$0x1e96180, 0x0:i8
            bnz __temp_96$0x1e98a20, __temp_97$0x1e98a20
            br __temp_95$0x1e98a20
        __temp_97$0x1e98a20:
            cgt __temp_99$0x1e98a20, len$0x1e96180, 0x0:i8
            bnz __temp_99$0x1e98a20, __temp_100$0x1e98a20
            br __temp_98$0x1e98a20
        __temp_100$0x1e98a20:
            ldelem __temp_102$0x1e98a20, buf$0x1e96180, 0x0:i8
            ceq __temp_103$0x1e98a20, __temp_102$0x1e98a20, 0x23:i1
            bnz __temp_103$0x1e98a20, __temp_104$0x1e98a20
            br __temp_101$0x1e98a20
        __temp_104$0x1e98a20:
            mov cont$0x1e96180, 0x1:i8
        __temp_101$0x1e98a20:
        __temp_98$0x1e98a20:
        __temp_95$0x1e98a20:
        __temp_91$0x1e96180:
            ceq __temp_105$0x1e96180, cont$0x1e96180, 0x1:i8
            bnz __temp_105$0x1e96180, __temp_90$0x1e96180
        __temp_92$0x1e96180:
            mov cnt$0x1e96180, 0x0:i8
        __temp_106$0x1e96180:
            mov maxlen$0x1e96180, len$0x1e96180
            lda __temp_110$0x1e9b830, len$0x1e96180
            lda __temp_111$0x1e9b830, src$0x1e96180
            call str_to_long$0x1d89840, __temp_109$0x1e9b830, buf$0x1e96180, maxlen$0x1e96180, __temp_110$0x1e9b830, __temp_111$0x1e9b830
            mov rt$0x1e96180, __temp_109$0x1e9b830
            cne __temp_113$0x1e9b830, rt$0x1e96180, 0x0:i8
            bnz __temp_113$0x1e9b830, __temp_114$0x1e9b830
            ldelema __temp_116$0x1ea1900, buf$0x1e96180, len$0x1e96180
            sub __temp_117$0x1ea1900, maxlen$0x1e96180, len$0x1e96180
            lda __temp_118$0x1ea1900, len$0x1e96180
            lda __temp_119$0x1ea1900, dst$0x1e96180
            call str_to_long$0x1d89840, __temp_115$0x1ea1900, __temp_116$0x1ea1900, __temp_117$0x1ea1900, __temp_118$0x1ea1900, __temp_119$0x1ea1900
            mov rt$0x1e96180, __temp_115$0x1ea1900
            cne __temp_121$0x1ea1900, rt$0x1e96180, 0x0:i8
            bnz __temp_121$0x1ea1900, __temp_122$0x1ea1900
            mul __temp_123$0x1ea7af0, 0x2:i8, cnt$0x1e96180
            add __temp_124$0x1ea7af0, __temp_123$0x1ea7af0, 0x0:i8
            stelem edges$0x1d89840, __temp_124$0x1ea7af0, src$0x1e96180
            mul __temp_125$0x1ea7af0, 0x2:i8, cnt$0x1e96180
            add __temp_126$0x1ea7af0, __temp_125$0x1ea7af0, 0x1:i8
            stelem edges$0x1d89840, __temp_126$0x1ea7af0, dst$0x1e96180
            cgt __temp_128$0x1ea7af0, src$0x1e96180, vertices_cnt$0x1d89840
            bnz __temp_128$0x1ea7af0, __temp_129$0x1ea7af0
            br __temp_127$0x1ea7af0
        __temp_129$0x1ea7af0:
            mov vertices_cnt$0x1d89840, src$0x1e96180
        __temp_127$0x1ea7af0:
            cgt __temp_131$0x1ea7af0, dst$0x1e96180, vertices_cnt$0x1d89840
            bnz __temp_131$0x1ea7af0, __temp_132$0x1ea7af0
            br __temp_130$0x1ea7af0
        __temp_132$0x1ea7af0:
            mov vertices_cnt$0x1d89840, dst$0x1e96180
        __temp_130$0x1ea7af0:
            add __temp_133$0x1ea7af0, cnt$0x1e96180, 0x1:i8
            mov cnt$0x1e96180, __temp_133$0x1ea7af0
            br __temp_120$0x1ea1900
        __temp_122$0x1ea1900:
            call output_char$0x1d89840, <missing>, 0x47:i1
            call output_char$0x1d89840, <missing>, 0x61:i1
            call output_char$0x1d89840, <missing>, 0x72:i1
            call output_char$0x1d89840, <missing>, 0x62:i1
            call output_char$0x1d89840, <missing>, 0x61:i1
            call output_char$0x1d89840, <missing>, 0x67:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x6C:i1
            call output_char$0x1d89840, <missing>, 0x69:i1
            call output_char$0x1d89840, <missing>, 0x6E:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x3A:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char_str$0x1d89840, <missing>, buf$0x1e96180, maxlen$0x1e96180
            call output_char$0x1d89840, <missing>, 0xA:i8
            br __temp_108$0x1e96180
        __temp_120$0x1ea1900:
            br __temp_112$0x1e9b830
        __temp_114$0x1e9b830:
            call output_char$0x1d89840, <missing>, 0x47:i1
            call output_char$0x1d89840, <missing>, 0x61:i1
            call output_char$0x1d89840, <missing>, 0x72:i1
            call output_char$0x1d89840, <missing>, 0x62:i1
            call output_char$0x1d89840, <missing>, 0x61:i1
            call output_char$0x1d89840, <missing>, 0x67:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char$0x1d89840, <missing>, 0x6C:i1
            call output_char$0x1d89840, <missing>, 0x69:i1
            call output_char$0x1d89840, <missing>, 0x6E:i1
            call output_char$0x1d89840, <missing>, 0x65:i1
            call output_char$0x1d89840, <missing>, 0x3A:i1
            call output_char$0x1d89840, <missing>, 0x20:i1
            call output_char_str$0x1d89840, <missing>, buf$0x1e96180, maxlen$0x1e96180
            call output_char$0x1d89840, <missing>, 0xA:i8
            br __temp_108$0x1e96180
        __temp_112$0x1e9b830:
            lda __temp_135$0x1e9b830, len$0x1e96180
            call input_line$0x1d89840, __temp_134$0x1e9b830, buf$0x1e96180, 0xFF:i8, __temp_135$0x1e9b830
            mov rt$0x1e96180, __temp_134$0x1e9b830
        __temp_107$0x1e96180:
            neg __temp_136$0x1e96180, 0x1:i8
            cne __temp_137$0x1e96180, rt$0x1e96180, __temp_136$0x1e96180
            bnz __temp_137$0x1e96180, __temp_106$0x1e96180
        __temp_108$0x1e96180:
            add __temp_138$0x1e96180, vertices_cnt$0x1d89840, 0x1:i8
            mov vertices_cnt$0x1d89840, __temp_138$0x1e96180
            mov edges_cnt$0x1d89840, cnt$0x1e96180
            sti pedges_cnt$0x1d89840, edges_cnt$0x1d89840
            ret
    }
    function shuffle
    {
            ceq __temp_140$0x1ed9eb0, id$0x1ed9c80, 0x3:i8
            bnz __temp_140$0x1ed9eb0, __temp_141$0x1ed9eb0
            ceq __temp_143$0x1ed9eb0, id$0x1ed9c80, 0x2:i8
            bnz __temp_143$0x1ed9eb0, __temp_144$0x1ed9eb0
            mov start$0x1ed9eb0, 0x2EAAAAB:i8
            mov end$0x1ed9eb0, 0x4600000:i8
            mov vstart$0x1ed9eb0, 0xA00000:i8
            mov vend$0x1ed9eb0, 0xEFFFFF:i8
            br __temp_142$0x1ed9eb0
        __temp_144$0x1ed9eb0:
            mov start$0x1ed9eb0, 0x1755555:i8
            mov end$0x1ed9eb0, 0x2EAA6AB:i8
            mov vstart$0x1ed9eb0, 0x500000:i8
            mov vend$0x1ed9eb0, 0x9FFC00:i8
        __temp_142$0x1ed9eb0:
            br __temp_139$0x1ed9eb0
        __temp_141$0x1ed9eb0:
            mov start$0x1ed9eb0, 0x0:i8
            mov end$0x1ed9eb0, 0x1755155:i8
            mov vstart$0x1ed9eb0, 0x0:i8
            mov vend$0x1ed9eb0, 0x4FFC00:i8
        __temp_139$0x1ed9eb0:
            mov i$0x1ed9eb0, start$0x1ed9eb0
        __temp_145$0x1ed9eb0:
            clt __temp_148$0x1ed9eb0, i$0x1ed9eb0, end$0x1ed9eb0
            bz __temp_148$0x1ed9eb0, __temp_147$0x1ed9eb0
            ldelem __temp_149$0x1ee8d00, in_neighbors$0x1d89840, i$0x1ed9eb0
            stelem in_neighbors$0x1d89840, i$0x1ed9eb0, __temp_149$0x1ee8d00
        __temp_146$0x1ed9eb0:
            add __temp_150$0x1ed9eb0, i$0x1ed9eb0, 0x200:i8
            mov i$0x1ed9eb0, __temp_150$0x1ed9eb0
            br __temp_145$0x1ed9eb0
        __temp_147$0x1ed9eb0:
            mov i$0x1ed9eb0, vstart$0x1ed9eb0
        __temp_151$0x1ed9eb0:
            clt __temp_154$0x1ed9eb0, i$0x1ed9eb0, vend$0x1ed9eb0
            bz __temp_154$0x1ed9eb0, __temp_153$0x1ed9eb0
            ldelem __temp_155$0x1eea300, vertices$0x1d89840, i$0x1ed9eb0
            stelem vertices$0x1d89840, i$0x1ed9eb0, __temp_155$0x1eea300
        __temp_152$0x1ed9eb0:
            add __temp_156$0x1ed9eb0, i$0x1ed9eb0, 0x200:i8
            mov i$0x1ed9eb0, __temp_156$0x1ed9eb0
            br __temp_151$0x1ed9eb0
        __temp_153$0x1ed9eb0:
            asm "exit:c"
    }
    function init
    {
            mov pedges_cnt$0x1d89840, 0x40800000000:i
            mov edges$0x1d89840, 0x40800000008:i
            mov p_vertices_cnt$0x1d89840, 0x40846000000:i
            mov vertices$0x1d89840, 0x40846000008:i
            mov in_neighbors$0x1d89840, 0x4084D800000:i
            call read_input$0x1d89840, <missing>
            call pr_build_graph$0x1d89840, <missing>
            mov space$0x1f56570, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x4:msq, 0x200001010:msq"
            lda __temp_160$0x1f56570, in_neighbors$0x1d89840
            mov __temp_161$0x1f56570, 0x8:i
            sti 0x200001018:i, __temp_160$0x1f56570
            sti 0x200001020:i, __temp_161$0x1f56570
            lda __temp_162$0x1f56570, vertices$0x1d89840
            mov __temp_163$0x1f56570, 0x8:i
            sti 0x200001028:i, __temp_162$0x1f56570
            sti 0x200001030:i, __temp_163$0x1f56570
            add __temp_166$0x1f56570, 0x800000000:i8, 0x20000000000:i8
            sub __temp_167$0x1f56570, __temp_166$0x1f56570, 0x1:i8
            add __temp_168$0x1f56570, __temp_167$0x1f56570, 0x1:i8
            add __temp_169$0x1f56570, __temp_168$0x1f56570, 0x20000000000:i8
            sub __temp_170$0x1f56570, __temp_169$0x1f56570, 0x1:i8
            add __temp_171$0x1f56570, __temp_170$0x1f56570, 0x1:i8
            mul __temp_172$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_173$0x1f56570, __temp_172$0x1f56570, 0x46:i8
            mul __temp_174$0x1f56570, __temp_173$0x1f56570, 0x2:i8
            mul __temp_175$0x1f56570, __temp_174$0x1f56570, 0x8:i8
            add __temp_176$0x1f56570, __temp_171$0x1f56570, __temp_175$0x1f56570
            mul __temp_177$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_178$0x1f56570, __temp_177$0x1f56570, 0x5:i8
            mul __temp_179$0x1f56570, __temp_178$0x1f56570, 0x3:i8
            mul __temp_180$0x1f56570, __temp_179$0x1f56570, 0x8:i8
            add __temp_181$0x1f56570, __temp_176$0x1f56570, __temp_180$0x1f56570
            conv __temp_182$0x1f56570, __temp_181$0x1f56570
            mul __temp_183$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_184$0x1f56570, __temp_183$0x1f56570, 0x46:i8
            mul __temp_185$0x1f56570, __temp_184$0x1f56570, 0x2:i8
            div __temp_186$0x1f56570, __temp_185$0x1f56570, 0x2:i8
            add __temp_187$0x1f56570, __temp_186$0x1f56570, 0x1:i8
            ldelema __temp_164$0x1f56570, __temp_182$0x1f56570, 0x0:i8
            sub __temp_165$0x1f56570, __temp_187$0x1f56570, 0x0:i8
            mul __temp_165$0x1f56570, 0x8:i, __temp_165$0x1f56570
            sti 0x200001038:i, __temp_164$0x1f56570
            sti 0x200001040:i, __temp_165$0x1f56570
            add __temp_190$0x1f56570, 0x800000000:i8, 0x20000000000:i8
            sub __temp_191$0x1f56570, __temp_190$0x1f56570, 0x1:i8
            add __temp_192$0x1f56570, __temp_191$0x1f56570, 0x1:i8
            add __temp_193$0x1f56570, __temp_192$0x1f56570, 0x20000000000:i8
            sub __temp_194$0x1f56570, __temp_193$0x1f56570, 0x1:i8
            add __temp_195$0x1f56570, __temp_194$0x1f56570, 0x1:i8
            mul __temp_196$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_197$0x1f56570, __temp_196$0x1f56570, 0x46:i8
            mul __temp_198$0x1f56570, __temp_197$0x1f56570, 0x2:i8
            mul __temp_199$0x1f56570, __temp_198$0x1f56570, 0x8:i8
            add __temp_200$0x1f56570, __temp_195$0x1f56570, __temp_199$0x1f56570
            conv __temp_201$0x1f56570, __temp_200$0x1f56570
            mul __temp_202$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_203$0x1f56570, __temp_202$0x1f56570, 0x5:i8
            mul __temp_204$0x1f56570, __temp_203$0x1f56570, 0x3:i8
            ldelema __temp_188$0x1f56570, __temp_201$0x1f56570, 0x0:i8
            sub __temp_189$0x1f56570, __temp_204$0x1f56570, 0x0:i8
            mul __temp_189$0x1f56570, 0x8:i, __temp_189$0x1f56570
            sti 0x200001048:i, __temp_188$0x1f56570
            sti 0x200001050:i, __temp_189$0x1f56570
            asm "mov $0x0:msq, 0x200001058:msq"
            asm "mov $__newr0:msq, 0x200001060:msq"
            mov __temp_205$0x1f56570, space$0x1f56570
            sti 0x200001068:i, __temp_205$0x1f56570
            asm "mov $0x200001000:msq, 0x200001070:msq"
            asm "mov $0x200001010:msq, 0x200001078:msq"
            asm "mov $0x200001058:msq, 0x200001080:msq"
            asm "mov $0x200001060:msq, 0x200001088:msq"
            asm "mov $0x200001068:msq, 0x200001090:msq"
            asm "spawnx 0x200001070, 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_157$0x1f56570, 0x100000400:i
            ldi __temp_158$0x1f56570, 0x100000408:i
            add __temp_159$0x1f56570, __temp_157$0x1f56570, __temp_158$0x1f56570
            lda __temp_206$0x1f56570, shuffle$0x1d89840
            sub __temp_159$0x1f56570, __temp_159$0x1f56570, 0x8:i8
            sti __temp_159$0x1f56570, __temp_206$0x1f56570
            sub __temp_159$0x1f56570, __temp_159$0x1f56570, 0x8:i8
            sti __temp_159$0x1f56570, 0x8:i8
            sub __temp_159$0x1f56570, __temp_159$0x1f56570, 0x8:i8
            sti __temp_159$0x1f56570, 0x0:i8
            mov space$0x1f56570, 0x400000000000:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x4:msq, 0x200001010:msq"
            lda __temp_210$0x1f56570, in_neighbors$0x1d89840
            mov __temp_211$0x1f56570, 0x8:i
            sti 0x200001018:i, __temp_210$0x1f56570
            sti 0x200001020:i, __temp_211$0x1f56570
            lda __temp_212$0x1f56570, vertices$0x1d89840
            mov __temp_213$0x1f56570, 0x8:i
            sti 0x200001028:i, __temp_212$0x1f56570
            sti 0x200001030:i, __temp_213$0x1f56570
            add __temp_216$0x1f56570, 0x800000000:i8, 0x20000000000:i8
            sub __temp_217$0x1f56570, __temp_216$0x1f56570, 0x1:i8
            add __temp_218$0x1f56570, __temp_217$0x1f56570, 0x1:i8
            add __temp_219$0x1f56570, __temp_218$0x1f56570, 0x20000000000:i8
            sub __temp_220$0x1f56570, __temp_219$0x1f56570, 0x1:i8
            add __temp_221$0x1f56570, __temp_220$0x1f56570, 0x1:i8
            mul __temp_222$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_223$0x1f56570, __temp_222$0x1f56570, 0x46:i8
            mul __temp_224$0x1f56570, __temp_223$0x1f56570, 0x2:i8
            mul __temp_225$0x1f56570, __temp_224$0x1f56570, 0x8:i8
            add __temp_226$0x1f56570, __temp_221$0x1f56570, __temp_225$0x1f56570
            mul __temp_227$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_228$0x1f56570, __temp_227$0x1f56570, 0x5:i8
            mul __temp_229$0x1f56570, __temp_228$0x1f56570, 0x3:i8
            mul __temp_230$0x1f56570, __temp_229$0x1f56570, 0x8:i8
            add __temp_231$0x1f56570, __temp_226$0x1f56570, __temp_230$0x1f56570
            conv __temp_232$0x1f56570, __temp_231$0x1f56570
            mul __temp_233$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_234$0x1f56570, __temp_233$0x1f56570, 0x46:i8
            mul __temp_235$0x1f56570, __temp_234$0x1f56570, 0x2:i8
            div __temp_236$0x1f56570, __temp_235$0x1f56570, 0x2:i8
            add __temp_237$0x1f56570, __temp_236$0x1f56570, 0x1:i8
            ldelema __temp_214$0x1f56570, __temp_232$0x1f56570, 0x0:i8
            sub __temp_215$0x1f56570, __temp_237$0x1f56570, 0x0:i8
            mul __temp_215$0x1f56570, 0x8:i, __temp_215$0x1f56570
            sti 0x200001038:i, __temp_214$0x1f56570
            sti 0x200001040:i, __temp_215$0x1f56570
            add __temp_240$0x1f56570, 0x800000000:i8, 0x20000000000:i8
            sub __temp_241$0x1f56570, __temp_240$0x1f56570, 0x1:i8
            add __temp_242$0x1f56570, __temp_241$0x1f56570, 0x1:i8
            add __temp_243$0x1f56570, __temp_242$0x1f56570, 0x20000000000:i8
            sub __temp_244$0x1f56570, __temp_243$0x1f56570, 0x1:i8
            add __temp_245$0x1f56570, __temp_244$0x1f56570, 0x1:i8
            mul __temp_246$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_247$0x1f56570, __temp_246$0x1f56570, 0x46:i8
            mul __temp_248$0x1f56570, __temp_247$0x1f56570, 0x2:i8
            mul __temp_249$0x1f56570, __temp_248$0x1f56570, 0x8:i8
            add __temp_250$0x1f56570, __temp_245$0x1f56570, __temp_249$0x1f56570
            conv __temp_251$0x1f56570, __temp_250$0x1f56570
            mul __temp_252$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_253$0x1f56570, __temp_252$0x1f56570, 0x5:i8
            mul __temp_254$0x1f56570, __temp_253$0x1f56570, 0x3:i8
            ldelema __temp_238$0x1f56570, __temp_251$0x1f56570, 0x0:i8
            sub __temp_239$0x1f56570, __temp_254$0x1f56570, 0x0:i8
            mul __temp_239$0x1f56570, 0x8:i, __temp_239$0x1f56570
            sti 0x200001048:i, __temp_238$0x1f56570
            sti 0x200001050:i, __temp_239$0x1f56570
            asm "mov $0x0:msq, 0x200001058:msq"
            asm "mov $__newr0:msq, 0x200001060:msq"
            mov __temp_255$0x1f56570, space$0x1f56570
            sti 0x200001068:i, __temp_255$0x1f56570
            asm "mov $0x200001000:msq, 0x200001070:msq"
            asm "mov $0x200001010:msq, 0x200001078:msq"
            asm "mov $0x200001058:msq, 0x200001080:msq"
            asm "mov $0x200001060:msq, 0x200001088:msq"
            asm "mov $0x200001068:msq, 0x200001090:msq"
            asm "spawnx 0x200001070, 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_207$0x1f56570, 0x100000400:i
            ldi __temp_208$0x1f56570, 0x100000408:i
            add __temp_209$0x1f56570, __temp_207$0x1f56570, __temp_208$0x1f56570
            lda __temp_256$0x1f56570, shuffle$0x1d89840
            sub __temp_209$0x1f56570, __temp_209$0x1f56570, 0x8:i8
            sti __temp_209$0x1f56570, __temp_256$0x1f56570
            sub __temp_209$0x1f56570, __temp_209$0x1f56570, 0x8:i8
            sti __temp_209$0x1f56570, 0x8:i8
            sub __temp_209$0x1f56570, __temp_209$0x1f56570, 0x8:i8
            sti __temp_209$0x1f56570, 0x1:i8
            mov space$0x1f56570, 0x800000000000:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x4:msq, 0x200001010:msq"
            lda __temp_260$0x1f56570, in_neighbors$0x1d89840
            mov __temp_261$0x1f56570, 0x8:i
            sti 0x200001018:i, __temp_260$0x1f56570
            sti 0x200001020:i, __temp_261$0x1f56570
            lda __temp_262$0x1f56570, vertices$0x1d89840
            mov __temp_263$0x1f56570, 0x8:i
            sti 0x200001028:i, __temp_262$0x1f56570
            sti 0x200001030:i, __temp_263$0x1f56570
            add __temp_266$0x1f56570, 0x800000000:i8, 0x20000000000:i8
            sub __temp_267$0x1f56570, __temp_266$0x1f56570, 0x1:i8
            add __temp_268$0x1f56570, __temp_267$0x1f56570, 0x1:i8
            add __temp_269$0x1f56570, __temp_268$0x1f56570, 0x20000000000:i8
            sub __temp_270$0x1f56570, __temp_269$0x1f56570, 0x1:i8
            add __temp_271$0x1f56570, __temp_270$0x1f56570, 0x1:i8
            mul __temp_272$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_273$0x1f56570, __temp_272$0x1f56570, 0x46:i8
            mul __temp_274$0x1f56570, __temp_273$0x1f56570, 0x2:i8
            mul __temp_275$0x1f56570, __temp_274$0x1f56570, 0x8:i8
            add __temp_276$0x1f56570, __temp_271$0x1f56570, __temp_275$0x1f56570
            mul __temp_277$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_278$0x1f56570, __temp_277$0x1f56570, 0x5:i8
            mul __temp_279$0x1f56570, __temp_278$0x1f56570, 0x3:i8
            mul __temp_280$0x1f56570, __temp_279$0x1f56570, 0x8:i8
            add __temp_281$0x1f56570, __temp_276$0x1f56570, __temp_280$0x1f56570
            conv __temp_282$0x1f56570, __temp_281$0x1f56570
            mul __temp_283$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_284$0x1f56570, __temp_283$0x1f56570, 0x46:i8
            mul __temp_285$0x1f56570, __temp_284$0x1f56570, 0x2:i8
            div __temp_286$0x1f56570, __temp_285$0x1f56570, 0x2:i8
            add __temp_287$0x1f56570, __temp_286$0x1f56570, 0x1:i8
            ldelema __temp_264$0x1f56570, __temp_282$0x1f56570, 0x0:i8
            sub __temp_265$0x1f56570, __temp_287$0x1f56570, 0x0:i8
            mul __temp_265$0x1f56570, 0x8:i, __temp_265$0x1f56570
            sti 0x200001038:i, __temp_264$0x1f56570
            sti 0x200001040:i, __temp_265$0x1f56570
            add __temp_290$0x1f56570, 0x800000000:i8, 0x20000000000:i8
            sub __temp_291$0x1f56570, __temp_290$0x1f56570, 0x1:i8
            add __temp_292$0x1f56570, __temp_291$0x1f56570, 0x1:i8
            add __temp_293$0x1f56570, __temp_292$0x1f56570, 0x20000000000:i8
            sub __temp_294$0x1f56570, __temp_293$0x1f56570, 0x1:i8
            add __temp_295$0x1f56570, __temp_294$0x1f56570, 0x1:i8
            mul __temp_296$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_297$0x1f56570, __temp_296$0x1f56570, 0x46:i8
            mul __temp_298$0x1f56570, __temp_297$0x1f56570, 0x2:i8
            mul __temp_299$0x1f56570, __temp_298$0x1f56570, 0x8:i8
            add __temp_300$0x1f56570, __temp_295$0x1f56570, __temp_299$0x1f56570
            conv __temp_301$0x1f56570, __temp_300$0x1f56570
            mul __temp_302$0x1f56570, 0x400:i8, 0x400:i8
            mul __temp_303$0x1f56570, __temp_302$0x1f56570, 0x5:i8
            mul __temp_304$0x1f56570, __temp_303$0x1f56570, 0x3:i8
            ldelema __temp_288$0x1f56570, __temp_301$0x1f56570, 0x0:i8
            sub __temp_289$0x1f56570, __temp_304$0x1f56570, 0x0:i8
            mul __temp_289$0x1f56570, 0x8:i, __temp_289$0x1f56570
            sti 0x200001048:i, __temp_288$0x1f56570
            sti 0x200001050:i, __temp_289$0x1f56570
            asm "mov $0x0:msq, 0x200001058:msq"
            asm "mov $__newr0:msq, 0x200001060:msq"
            mov __temp_305$0x1f56570, space$0x1f56570
            sti 0x200001068:i, __temp_305$0x1f56570
            asm "mov $0x200001000:msq, 0x200001070:msq"
            asm "mov $0x200001010:msq, 0x200001078:msq"
            asm "mov $0x200001058:msq, 0x200001080:msq"
            asm "mov $0x200001060:msq, 0x200001088:msq"
            asm "mov $0x200001068:msq, 0x200001090:msq"
            asm "spawnx 0x200001070, 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_257$0x1f56570, 0x100000400:i
            ldi __temp_258$0x1f56570, 0x100000408:i
            add __temp_259$0x1f56570, __temp_257$0x1f56570, __temp_258$0x1f56570
            lda __temp_306$0x1f56570, shuffle$0x1d89840
            sub __temp_259$0x1f56570, __temp_259$0x1f56570, 0x8:i8
            sti __temp_259$0x1f56570, __temp_306$0x1f56570
            sub __temp_259$0x1f56570, __temp_259$0x1f56570, 0x8:i8
            sti __temp_259$0x1f56570, 0x8:i8
            sub __temp_259$0x1f56570, __temp_259$0x1f56570, 0x8:i8
            sti __temp_259$0x1f56570, 0x2:i8
            asm "exit:c"
    }
    function main
    {
            mov space$0x1f9c910, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            lda __temp_310$0x1f9c910, edges$0x1d89840
            mov __temp_311$0x1f9c910, 0x8:i
            sti 0x200001018:i, __temp_310$0x1f9c910
            sti 0x200001020:i, __temp_311$0x1f9c910
            lda __temp_312$0x1f9c910, edges_cnt$0x1d89840
            mov __temp_313$0x1f9c910, 0x8:i
            sti 0x200001028:i, __temp_312$0x1f9c910
            sti 0x200001030:i, __temp_313$0x1f9c910
            lda __temp_314$0x1f9c910, pedges_cnt$0x1d89840
            mov __temp_315$0x1f9c910, 0x8:i
            sti 0x200001038:i, __temp_314$0x1f9c910
            sti 0x200001040:i, __temp_315$0x1f9c910
            lda __temp_316$0x1f9c910, vertices$0x1d89840
            mov __temp_317$0x1f9c910, 0x8:i
            sti 0x200001048:i, __temp_316$0x1f9c910
            sti 0x200001050:i, __temp_317$0x1f9c910
            lda __temp_318$0x1f9c910, vertices_cnt$0x1d89840
            mov __temp_319$0x1f9c910, 0x8:i
            sti 0x200001058:i, __temp_318$0x1f9c910
            sti 0x200001060:i, __temp_319$0x1f9c910
            lda __temp_320$0x1f9c910, p_vertices_cnt$0x1d89840
            mov __temp_321$0x1f9c910, 0x8:i
            sti 0x200001068:i, __temp_320$0x1f9c910
            sti 0x200001070:i, __temp_321$0x1f9c910
            lda __temp_322$0x1f9c910, in_neighbors$0x1d89840
            mov __temp_323$0x1f9c910, 0x8:i
            sti 0x200001078:i, __temp_322$0x1f9c910
            sti 0x200001080:i, __temp_323$0x1f9c910
            add __temp_326$0x1f9c910, 0x800000000:i8, 0x20000000000:i8
            sub __temp_327$0x1f9c910, __temp_326$0x1f9c910, 0x1:i8
            add __temp_328$0x1f9c910, __temp_327$0x1f9c910, 0x1:i8
            add __temp_329$0x1f9c910, __temp_328$0x1f9c910, 0x20000000000:i8
            sub __temp_330$0x1f9c910, __temp_329$0x1f9c910, 0x1:i8
            add __temp_331$0x1f9c910, __temp_330$0x1f9c910, 0x1:i8
            conv __temp_332$0x1f9c910, __temp_331$0x1f9c910
            mul __temp_333$0x1f9c910, 0x400:i8, 0x400:i8
            mul __temp_334$0x1f9c910, __temp_333$0x1f9c910, 0x46:i8
            mul __temp_335$0x1f9c910, __temp_334$0x1f9c910, 0x2:i8
            ldelema __temp_324$0x1f9c910, __temp_332$0x1f9c910, 0x0:i8
            sub __temp_325$0x1f9c910, __temp_335$0x1f9c910, 0x0:i8
            mul __temp_325$0x1f9c910, 0x8:i, __temp_325$0x1f9c910
            sti 0x200001088:i, __temp_324$0x1f9c910
            sti 0x200001090:i, __temp_325$0x1f9c910
            add __temp_338$0x1f9c910, 0x800000000:i8, 0x20000000000:i8
            sub __temp_339$0x1f9c910, __temp_338$0x1f9c910, 0x1:i8
            add __temp_340$0x1f9c910, __temp_339$0x1f9c910, 0x1:i8
            add __temp_341$0x1f9c910, __temp_340$0x1f9c910, 0x20000000000:i8
            sub __temp_342$0x1f9c910, __temp_341$0x1f9c910, 0x1:i8
            add __temp_343$0x1f9c910, __temp_342$0x1f9c910, 0x1:i8
            mul __temp_344$0x1f9c910, 0x400:i8, 0x400:i8
            mul __temp_345$0x1f9c910, __temp_344$0x1f9c910, 0x46:i8
            mul __temp_346$0x1f9c910, __temp_345$0x1f9c910, 0x2:i8
            mul __temp_347$0x1f9c910, __temp_346$0x1f9c910, 0x8:i8
            add __temp_348$0x1f9c910, __temp_343$0x1f9c910, __temp_347$0x1f9c910
            conv __temp_349$0x1f9c910, __temp_348$0x1f9c910
            mul __temp_350$0x1f9c910, 0x400:i8, 0x400:i8
            mul __temp_351$0x1f9c910, __temp_350$0x1f9c910, 0x5:i8
            mul __temp_352$0x1f9c910, __temp_351$0x1f9c910, 0x3:i8
            ldelema __temp_336$0x1f9c910, __temp_349$0x1f9c910, 0x0:i8
            sub __temp_337$0x1f9c910, __temp_352$0x1f9c910, 0x0:i8
            mul __temp_337$0x1f9c910, 0x8:i, __temp_337$0x1f9c910
            sti 0x200001098:i, __temp_336$0x1f9c910
            sti 0x2000010A0:i, __temp_337$0x1f9c910
            add __temp_355$0x1f9c910, 0x800000000:i8, 0x20000000000:i8
            sub __temp_356$0x1f9c910, __temp_355$0x1f9c910, 0x1:i8
            add __temp_357$0x1f9c910, __temp_356$0x1f9c910, 0x1:i8
            add __temp_358$0x1f9c910, __temp_357$0x1f9c910, 0x20000000000:i8
            sub __temp_359$0x1f9c910, __temp_358$0x1f9c910, 0x1:i8
            add __temp_360$0x1f9c910, __temp_359$0x1f9c910, 0x1:i8
            mul __temp_361$0x1f9c910, 0x400:i8, 0x400:i8
            mul __temp_362$0x1f9c910, __temp_361$0x1f9c910, 0x46:i8
            mul __temp_363$0x1f9c910, __temp_362$0x1f9c910, 0x2:i8
            mul __temp_364$0x1f9c910, __temp_363$0x1f9c910, 0x8:i8
            add __temp_365$0x1f9c910, __temp_360$0x1f9c910, __temp_364$0x1f9c910
            mul __temp_366$0x1f9c910, 0x400:i8, 0x400:i8
            mul __temp_367$0x1f9c910, __temp_366$0x1f9c910, 0x5:i8
            mul __temp_368$0x1f9c910, __temp_367$0x1f9c910, 0x3:i8
            mul __temp_369$0x1f9c910, __temp_368$0x1f9c910, 0x8:i8
            add __temp_370$0x1f9c910, __temp_365$0x1f9c910, __temp_369$0x1f9c910
            conv __temp_371$0x1f9c910, __temp_370$0x1f9c910
            mul __temp_372$0x1f9c910, 0x400:i8, 0x400:i8
            mul __temp_373$0x1f9c910, __temp_372$0x1f9c910, 0x46:i8
            mul __temp_374$0x1f9c910, __temp_373$0x1f9c910, 0x2:i8
            div __temp_375$0x1f9c910, __temp_374$0x1f9c910, 0x2:i8
            add __temp_376$0x1f9c910, __temp_375$0x1f9c910, 0x1:i8
            ldelema __temp_353$0x1f9c910, __temp_371$0x1f9c910, 0x0:i8
            sub __temp_354$0x1f9c910, __temp_376$0x1f9c910, 0x0:i8
            mul __temp_354$0x1f9c910, 0x8:i, __temp_354$0x1f9c910
            sti 0x2000010A8:i, __temp_353$0x1f9c910
            sti 0x2000010B0:i, __temp_354$0x1f9c910
            asm "mov $0x0:msq, 0x2000010b8:msq"
            asm "mov $__newr0:msq, 0x2000010c0:msq"
            mov __temp_377$0x1f9c910, space$0x1f9c910
            sti 0x2000010C8:i, __temp_377$0x1f9c910
            asm "mov $0x200001000:msq, 0x2000010d0:msq"
            asm "mov $0x200001010:msq, 0x2000010d8:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e0:msq"
            asm "mov $0x2000010c0:msq, 0x2000010e8:msq"
            asm "mov $0x2000010c8:msq, 0x2000010f0:msq"
            asm "spawnx 0x2000010d0, 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_307$0x1f9c910, 0x100000400:i
            ldi __temp_308$0x1f9c910, 0x100000408:i
            add __temp_309$0x1f9c910, __temp_307$0x1f9c910, __temp_308$0x1f9c910
            lda __temp_378$0x1f9c910, init$0x1d89840
            sub __temp_309$0x1f9c910, __temp_309$0x1f9c910, 0x8:i8
            sti __temp_309$0x1f9c910, __temp_378$0x1f9c910
            sub __temp_309$0x1f9c910, __temp_309$0x1f9c910, 0x8:i8
            sti __temp_309$0x1f9c910, 0x0:i8
            asm "exit:c"
    }
}
