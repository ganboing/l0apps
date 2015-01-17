class Program
{
    function sort
    {
            mul __temp_1$0xd82450, 0x8:i8, 0x2800:i8
            call pralloc$0xcfc020, __temp_0$0xd82450, __temp_1$0xd82450
            mov stack$0xd82450, __temp_0$0xd82450
            mov stop$0xd82450, 0x0:i8
            stelem stack$0xd82450, stop$0xd82450, start$0xd82090
            add stop$0xd82450, stop$0xd82450, 0x1:i8
            stelem stack$0xd82450, stop$0xd82450, end$0xd82090
            add stop$0xd82450, stop$0xd82450, 0x1:i8
        __temp_4$0xd82450:
            ble stop$0xd82450, 0x0:i8, __temp_6$0xd82450
            sub stop$0xd82450, stop$0xd82450, 0x1:i8
            ldelem end$0xd82090, stack$0xd82450, stop$0xd82450
            sub stop$0xd82450, stop$0xd82450, 0x1:i8
            ldelem start$0xd82090, stack$0xd82450, stop$0xd82450
            sub i$0xd82450, end$0xd82090, start$0xd82090
            blt 0x0:i8, i$0xd82450, __temp_15$0xd86350
            br __temp_13$0xd86350
        __temp_15$0xd86350:
            ldelem __temp_16$0xd88480, idx$0xd82090, end$0xd82090
            ldelem pivot$0xd82450, value$0xd82090, __temp_16$0xd88480
            mov p$0xd82450, start$0xd82090
            mov i$0xd82450, start$0xd82090
        __temp_18$0xd88480:
            ble end$0xd82090, i$0xd82450, __temp_20$0xd88480
            ldelem __temp_23$0xd8a120, idx$0xd82090, i$0xd82450
            ldelem __temp_24$0xd8a120, value$0xd82090, __temp_23$0xd8a120
            blt __temp_24$0xd8a120, pivot$0xd82450, __temp_26$0xd8a120
            br __temp_22$0xd8a120
        __temp_26$0xd8a120:
            ldelem tmp$0xd82450, idx$0xd82090, p$0xd82450
            ldelem __temp_28$0xd8a9b0, idx$0xd82090, i$0xd82450
            stelem idx$0xd82090, p$0xd82450, __temp_28$0xd8a9b0
            stelem idx$0xd82090, i$0xd82450, tmp$0xd82450
            add p$0xd82450, p$0xd82450, 0x1:i8
        __temp_22$0xd8a120:
        __temp_19$0xd88480:
            add i$0xd82450, i$0xd82450, 0x1:i8
            br __temp_18$0xd88480
        __temp_20$0xd88480:
            ldelem tmp$0xd82450, idx$0xd82090, p$0xd82450
            ldelem __temp_32$0xd88480, idx$0xd82090, end$0xd82090
            stelem idx$0xd82090, p$0xd82450, __temp_32$0xd88480
            stelem idx$0xd82090, end$0xd82090, tmp$0xd82450
            add __temp_33$0xd88480, p$0xd82450, 0x1:i8
            stelem stack$0xd82450, stop$0xd82450, __temp_33$0xd88480
            add stop$0xd82450, stop$0xd82450, 0x1:i8
            stelem stack$0xd82450, stop$0xd82450, end$0xd82090
            add stop$0xd82450, stop$0xd82450, 0x1:i8
            stelem stack$0xd82450, stop$0xd82450, start$0xd82090
            add stop$0xd82450, stop$0xd82450, 0x1:i8
            sub __temp_37$0xd88480, p$0xd82450, 0x1:i8
            stelem stack$0xd82450, stop$0xd82450, __temp_37$0xd88480
            add stop$0xd82450, stop$0xd82450, 0x1:i8
            blt 0x2800:i8, stop$0xd82450, __temp_41$0xd88480
            br __temp_39$0xd88480
        __temp_41$0xd88480:
            call output_char$0xcfc020, <missing>, 0x73:i1
            call output_char$0xcfc020, <missing>, 0x6F:i1
            call output_char$0xcfc020, <missing>, 0x72:i1
            call output_char$0xcfc020, <missing>, 0x74:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x73:i1
            call output_char$0xcfc020, <missing>, 0x74:i1
            call output_char$0xcfc020, <missing>, 0x61:i1
            call output_char$0xcfc020, <missing>, 0x63:i1
            call output_char$0xcfc020, <missing>, 0x6B:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x6F:i1
            call output_char$0xcfc020, <missing>, 0x76:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x72:i1
            call output_char$0xcfc020, <missing>, 0x66:i1
            call output_char$0xcfc020, <missing>, 0x6C:i1
            call output_char$0xcfc020, <missing>, 0x6F:i1
            call output_char$0xcfc020, <missing>, 0x77:i1
            call output_char$0xcfc020, <missing>, 0xA:i8
            asm "exit:a"
        __temp_39$0xd88480:
        __temp_13$0xd86350:
        __temp_5$0xd82450:
            br __temp_4$0xd82450
        __temp_6$0xd82450:
            ret
    }
    function select_topk
    {
        __temp_42$0xdb41d0:
            bz 0x1:i8, __temp_44$0xdb41d0
            sub __temp_45$0xdb5360, end$0xdb3db0, start$0xdb3db0
            add i$0xdb41d0, __temp_45$0xdb5360, 0x1:i8
            blt k$0xdb3db0, i$0xdb41d0, __temp_49$0xdb5360
            ret
            br __temp_47$0xdb5360
        __temp_49$0xdb5360:
            ldelem __temp_50$0xdb60c0, idx$0xdb3db0, end$0xdb3db0
            ldelem pivot$0xdb41d0, value$0xdb3db0, __temp_50$0xdb60c0
            mov p$0xdb41d0, start$0xdb3db0
            mov i$0xdb41d0, start$0xdb3db0
        __temp_52$0xdb60c0:
            ble end$0xdb3db0, i$0xdb41d0, __temp_54$0xdb60c0
            ldelem __temp_57$0xdb7970, idx$0xdb3db0, i$0xdb41d0
            ldelem __temp_58$0xdb7970, value$0xdb3db0, __temp_57$0xdb7970
            blt __temp_58$0xdb7970, pivot$0xdb41d0, __temp_60$0xdb7970
            br __temp_56$0xdb7970
        __temp_60$0xdb7970:
            ldelem tmp$0xdb41d0, idx$0xdb3db0, p$0xdb41d0
            ldelem __temp_62$0xdb8200, idx$0xdb3db0, i$0xdb41d0
            stelem idx$0xdb3db0, p$0xdb41d0, __temp_62$0xdb8200
            stelem idx$0xdb3db0, i$0xdb41d0, tmp$0xdb41d0
            add p$0xdb41d0, p$0xdb41d0, 0x1:i8
        __temp_56$0xdb7970:
        __temp_53$0xdb60c0:
            add i$0xdb41d0, i$0xdb41d0, 0x1:i8
            br __temp_52$0xdb60c0
        __temp_54$0xdb60c0:
            ldelem tmp$0xdb41d0, idx$0xdb3db0, p$0xdb41d0
            ldelem __temp_66$0xdb60c0, idx$0xdb3db0, end$0xdb3db0
            stelem idx$0xdb3db0, p$0xdb41d0, __temp_66$0xdb60c0
            stelem idx$0xdb3db0, end$0xdb3db0, tmp$0xdb41d0
            sub __temp_67$0xdb60c0, end$0xdb3db0, p$0xdb41d0
            add i$0xdb41d0, __temp_67$0xdb60c0, 0x1:i8
            beq i$0xdb41d0, k$0xdb3db0, __temp_71$0xdb60c0
            blt i$0xdb41d0, k$0xdb3db0, __temp_74$0xdbbbb0
            add start$0xdb3db0, p$0xdb41d0, 0x1:i8
        __temp_76$0xdbcd70:
            ldelem __temp_79$0xdbcd70, idx$0xdb3db0, start$0xdb3db0
            ldelem __temp_80$0xdbcd70, value$0xdb3db0, __temp_79$0xdbcd70
            bne __temp_80$0xdbcd70, pivot$0xdb41d0, __temp_78$0xdbcd70
            add start$0xdb3db0, start$0xdb3db0, 0x1:i8
            ble end$0xdb3db0, start$0xdb3db0, __temp_85$0xdbdc60
            br __temp_83$0xdbdc60
        __temp_85$0xdbdc60:
            br __temp_78$0xdbcd70
        __temp_83$0xdbdc60:
        __temp_77$0xdbcd70:
            br __temp_76$0xdbcd70
        __temp_78$0xdbcd70:
            br __temp_72$0xdbbbb0
        __temp_74$0xdbbbb0:
            sub end$0xdb3db0, p$0xdb41d0, 0x1:i8
            sub k$0xdb3db0, k$0xdb3db0, i$0xdb41d0
        __temp_72$0xdbbbb0:
            br __temp_69$0xdb60c0
        __temp_71$0xdb60c0:
            ret
        __temp_69$0xdb60c0:
        __temp_47$0xdb5360:
        __temp_43$0xdb41d0:
            br __temp_42$0xdb41d0
        __temp_44$0xdb41d0:
            ret
    }
    function topk
    {
            cgt __temp_89$0xdfac90, 0x64:i8, vertices_cnt$0xcfc020
            bnz __temp_89$0xdfac90, __temp_90$0xdfac90
            mov topk_k$0xdfac90, 0x64:i8
            br __temp_88$0xdfac90
        __temp_90$0xdfac90:
            mov topk_k$0xdfac90, vertices_cnt$0xcfc020
        __temp_88$0xdfac90:
            mul __temp_92$0xdfac90, 0x8:i8, vertices_cnt$0xcfc020
            call pralloc$0xcfc020, __temp_91$0xdfac90, __temp_92$0xdfac90
            mov idx$0xdfac90, __temp_91$0xdfac90
            mov i$0xdfac90, 0x0:i8
        __temp_93$0xdfac90:
            ble vertices_cnt$0xcfc020, i$0xdfac90, __temp_95$0xdfac90
            stelem idx$0xdfac90, i$0xdfac90, i$0xdfac90
        __temp_94$0xdfac90:
            add i$0xdfac90, i$0xdfac90, 0x1:i8
            br __temp_93$0xdfac90
        __temp_95$0xdfac90:
            mov value$0xdfac90, 0x202A00000:i
            add __temp_99$0xdfac90, iter$0xdfaa60, 0x1:i8
            call pc_sync$0xcfc020, __temp_98$0xdfac90, __temp_99$0xdfac90
            add __temp_101$0xdfac90, iter$0xdfaa60, 0x1:i8
            mul __temp_102$0xdfac90, 0x400:i8, 0x400:i8
            mul __temp_103$0xdfac90, __temp_102$0xdfac90, 0x5:i8
            mul __temp_104$0xdfac90, __temp_103$0xdfac90, 0x8:i8
            add __temp_105$0xdfac90, 0x200200000:i8, __temp_104$0xdfac90
            mul __temp_106$0xdfac90, 0x400:i8, 0x400:i8
            mul __temp_107$0xdfac90, __temp_106$0xdfac90, 0x5:i8
            mul __temp_108$0xdfac90, 0x8:i8, __temp_107$0xdfac90
            mul __temp_109$0xdfac90, 0x400:i8, 0x400:i8
            mul __temp_110$0xdfac90, __temp_109$0xdfac90, 0x5:i8
            mul __temp_111$0xdfac90, __temp_110$0xdfac90, 0x8:i8
            add __temp_112$0xdfac90, 0x200200000:i8, __temp_111$0xdfac90
            call pc_get$0xcfc020, __temp_100$0xdfac90, __temp_101$0xdfac90, __temp_105$0xdfac90, __temp_108$0xdfac90, __temp_112$0xdfac90
            mov i$0xdfac90, 0x0:i8
        __temp_113$0xdfac90:
            ble vertices_cnt$0xcfc020, i$0xdfac90, __temp_115$0xdfac90
            ldelem __temp_117$0xe03280, value$0xdfac90, i$0xdfac90
            mul __temp_119$0xe03280, 0x3:i8, i$0xdfac90
            add __temp_120$0xe03280, __temp_119$0xe03280, 0x1:i8
            ldelema __temp_118$0xe03280, vertices$0xcfc020, __temp_120$0xe03280
            ldi __temp_121$0xe03280, __temp_118$0xe03280
            div __temp_122$0xe03280, __temp_117$0xe03280, __temp_121$0xe03280
            stelem value$0xdfac90, i$0xdfac90, __temp_122$0xe03280
        __temp_114$0xdfac90:
            add i$0xdfac90, i$0xdfac90, 0x1:i8
            br __temp_113$0xdfac90
        __temp_115$0xdfac90:
            sub __temp_124$0xdfac90, vertices_cnt$0xcfc020, 0x1:i8
            call select_topk$0xcfc020, <missing>, idx$0xdfac90, 0x0:i8, __temp_124$0xdfac90, value$0xdfac90, topk_k$0xdfac90
            sub __temp_125$0xdfac90, vertices_cnt$0xcfc020, topk_k$0xdfac90
            sub __temp_126$0xdfac90, vertices_cnt$0xcfc020, 0x1:i8
            call sort$0xcfc020, <missing>, idx$0xdfac90, __temp_125$0xdfac90, __temp_126$0xdfac90, value$0xdfac90
            call output_char$0xcfc020, <missing>, 0x54:i1
            call output_char$0xcfc020, <missing>, 0x6F:i1
            call output_char$0xcfc020, <missing>, 0x70:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_q$0xcfc020, <missing>, topk_k$0xdfac90
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x61:i1
            call output_char$0xcfc020, <missing>, 0x66:i1
            call output_char$0xcfc020, <missing>, 0x74:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x72:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x69:i1
            call output_char$0xcfc020, <missing>, 0x74:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x72:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_q$0xcfc020, <missing>, iter$0xdfaa60
            call output_char$0xcfc020, <missing>, 0x3A:i1
            call output_char$0xcfc020, <missing>, 0xA:i8
            sub i$0xdfac90, vertices_cnt$0xcfc020, 0x1:i8
        __temp_127$0xdfac90:
            sub __temp_131$0xdfac90, vertices_cnt$0xcfc020, 0x1:i8
            sub __temp_132$0xdfac90, __temp_131$0xdfac90, topk_k$0xdfac90
            ble i$0xdfac90, __temp_132$0xdfac90, __temp_129$0xdfac90
            call output_char$0xcfc020, <missing>, 0x28:i1
            ldelem __temp_134$0xe0cb60, idx$0xdfac90, i$0xdfac90
            call output_q$0xcfc020, <missing>, __temp_134$0xe0cb60
            call output_char$0xcfc020, <missing>, 0x2C:i1
            ldelem __temp_135$0xe0cb60, idx$0xdfac90, i$0xdfac90
            ldelem __temp_136$0xe0cb60, value$0xdfac90, __temp_135$0xe0cb60
            call output_double$0xcfc020, <missing>, __temp_136$0xe0cb60
            call output_char$0xcfc020, <missing>, 0x29:i1
            call output_char$0xcfc020, <missing>, 0xA:i8
        __temp_128$0xdfac90:
            sub i$0xdfac90, i$0xdfac90, 0x1:i8
            br __temp_127$0xdfac90
        __temp_129$0xdfac90:
            ret
    }
    function topk_task
    {
            call topk$0xcfc020, <missing>, iter$0xe10eb0
            asm "exit:c"
    }
    function get_vertices_range
    {
            mul __temp_138$0xe17b80, id$0xe17810, 0x4:i8
            add __temp_139$0xe17b80, __temp_138$0xe17b80, 0x0:i8
            ldelem __temp_140$0xe17b80, partitions$0xcfc020, __temp_139$0xe17b80
            sti v_begin$0xe17810, __temp_140$0xe17b80
            mul __temp_141$0xe17b80, id$0xe17810, 0x4:i8
            add __temp_142$0xe17b80, __temp_141$0xe17b80, 0x1:i8
            ldelem __temp_143$0xe17b80, partitions$0xcfc020, __temp_142$0xe17b80
            sti v_end$0xe17810, __temp_143$0xe17b80
            ret
    }
    function get_in_neighbors_range
    {
            mul __temp_144$0xe1f5c0, id$0xe1f2a0, 0x4:i8
            add __temp_145$0xe1f5c0, __temp_144$0xe1f5c0, 0x2:i8
            ldelem __temp_146$0xe1f5c0, partitions$0xcfc020, __temp_145$0xe1f5c0
            sti n_begin$0xe1f2a0, __temp_146$0xe1f5c0
            mul __temp_147$0xe1f5c0, id$0xe1f2a0, 0x4:i8
            add __temp_148$0xe1f5c0, __temp_147$0xe1f5c0, 0x3:i8
            ldelem __temp_149$0xe1f5c0, partitions$0xcfc020, __temp_148$0xe1f5c0
            sti n_end$0xe1f2a0, __temp_149$0xe1f5c0
            ret
    }
    function _get_in_neighbors_range
    {
            sub v_last$0xe2a230, v_end$0xe29e90, 0x1:i8
            mul __temp_151$0xe2a230, 0x3:i8, v_begin$0xe29e90
            add __temp_152$0xe2a230, __temp_151$0xe2a230, 0x2:i8
            ldelem __temp_153$0xe2a230, vertices$0xcfc020, __temp_152$0xe2a230
            sti n_begin$0xe29e90, __temp_153$0xe2a230
            mul __temp_154$0xe2a230, 0x3:i8, v_last$0xe2a230
            add __temp_155$0xe2a230, __temp_154$0xe2a230, 0x2:i8
            ldelem __temp_156$0xe2a230, vertices$0xcfc020, __temp_155$0xe2a230
            mul __temp_157$0xe2a230, 0x3:i8, v_last$0xe2a230
            add __temp_158$0xe2a230, __temp_157$0xe2a230, 0x0:i8
            ldelem __temp_159$0xe2a230, vertices$0xcfc020, __temp_158$0xe2a230
            add __temp_160$0xe2a230, __temp_156$0xe2a230, __temp_159$0xe2a230
            sti n_end$0xe29e90, __temp_160$0xe2a230
            ret
    }
    function build_partitions
    {
            stelem cnt$0xe61080, 0x0:i8, 0x4200:i8
            stelem cnt$0xe61080, 0x1:i8, 0x4200:i8
            stelem cnt$0xe61080, 0x2:i8, 0x7000:i8
            stelem cnt$0xe61080, 0x3:i8, 0x5C00:i8
            stelem cnt$0xe61080, 0x4:i8, 0xA000:i8
            stelem cnt$0xe61080, 0x5:i8, 0xA000:i8
            stelem cnt$0xe61080, 0x6:i8, 0xC800:i8
            stelem cnt$0xe61080, 0x7:i8, 0xF000:i8
            stelem cnt$0xe61080, 0x8:i8, 0x11800:i8
            stelem cnt$0xe61080, 0x9:i8, 0xF000:i8
            stelem cnt$0xe61080, 0xA:i8, 0x14000:i8
            stelem cnt$0xe61080, 0xB:i8, 0xC800:i8
            stelem cnt$0xe61080, 0xC:i8, 0xA000:i8
            stelem cnt$0xe61080, 0xD:i8, 0x14000:i8
            stelem cnt$0xe61080, 0xE:i8, 0x14000:i8
            stelem cnt$0xe61080, 0xF:i8, 0x19000:i8
            stelem cnt$0xe61080, 0x10:i8, 0x1B800:i8
            stelem cnt$0xe61080, 0x11:i8, 0x16800:i8
            stelem cnt$0xe61080, 0x12:i8, 0x1E000:i8
            stelem cnt$0xe61080, 0x13:i8, 0x23000:i8
            stelem cnt$0xe61080, 0x14:i8, 0x25800:i8
            stelem cnt$0xe61080, 0x15:i8, 0x20800:i8
            stelem cnt$0xe61080, 0x16:i8, 0x2A800:i8
            stelem cnt$0xe61080, 0x17:i8, 0x2F800:i8
            stelem cnt$0xe61080, 0x18:i8, 0x41000:i8
            stelem cnt$0xe61080, 0x19:i8, 0x4B000:i8
            stelem cnt$0xe61080, 0x1A:i8, 0x5B800:i8
            stelem cnt$0xe61080, 0x1B:i8, 0x65800:i8
            stelem cnt$0xe61080, 0x1C:i8, 0x9F000:i8
            stelem cnt$0xe61080, 0x1D:i8, 0xCFFD3:i8
            mov cur$0xe61080, 0x0:i8
            mov i$0xe61080, 0x0:i8
        __temp_161$0xe61080:
            ble num_tasks$0xcfc020, i$0xe61080, __temp_163$0xe61080
            mov v_begin$0xe61080, cur$0xe61080
            ldelem __temp_165$0xe6fbf0, cnt$0xe61080, i$0xe61080
            add cur$0xe61080, cur$0xe61080, __temp_165$0xe6fbf0
            blt vertices_cnt$0xcfc020, cur$0xe61080, __temp_169$0xe6fbf0
            br __temp_167$0xe6fbf0
        __temp_169$0xe6fbf0:
            mov cur$0xe61080, vertices_cnt$0xcfc020
        __temp_167$0xe6fbf0:
            mov v_end$0xe61080, cur$0xe61080
            lda __temp_170$0xe6fbf0, n_begin$0xe61080
            lda __temp_171$0xe6fbf0, n_end$0xe61080
            call _get_in_neighbors_range$0xcfc020, <missing>, v_begin$0xe61080, v_end$0xe61080, __temp_170$0xe6fbf0, __temp_171$0xe6fbf0
            mul __temp_172$0xe6fbf0, i$0xe61080, 0x4:i8
            add __temp_173$0xe6fbf0, __temp_172$0xe6fbf0, 0x0:i8
            stelem partitions$0xcfc020, __temp_173$0xe6fbf0, v_begin$0xe61080
            mul __temp_174$0xe6fbf0, i$0xe61080, 0x4:i8
            add __temp_175$0xe6fbf0, __temp_174$0xe6fbf0, 0x1:i8
            stelem partitions$0xcfc020, __temp_175$0xe6fbf0, v_end$0xe61080
            mul __temp_176$0xe6fbf0, i$0xe61080, 0x4:i8
            add __temp_177$0xe6fbf0, __temp_176$0xe6fbf0, 0x2:i8
            stelem partitions$0xcfc020, __temp_177$0xe6fbf0, n_begin$0xe61080
            mul __temp_178$0xe6fbf0, i$0xe61080, 0x4:i8
            add __temp_179$0xe6fbf0, __temp_178$0xe6fbf0, 0x3:i8
            stelem partitions$0xcfc020, __temp_179$0xe6fbf0, n_end$0xe61080
        __temp_162$0xe61080:
            add i$0xe61080, i$0xe61080, 0x1:i8
            br __temp_161$0xe61080
        __temp_163$0xe61080:
            ret
    }
    function create_new_iter_task
    {
            mov space$0xe81630, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x7:msq, 0x200001010:msq"
            lda __temp_184$0xe81630, iter$0xcfc020
            mov __temp_185$0xe81630, 0x8:i
            sti 0x200001018:i, __temp_184$0xe81630
            sti 0x200001020:i, __temp_185$0xe81630
            lda __temp_186$0xe81630, num_tasks$0xcfc020
            mov __temp_187$0xe81630, 0x8:i
            sti 0x200001028:i, __temp_186$0xe81630
            sti 0x200001030:i, __temp_187$0xe81630
            mul __temp_190$0xe81630, num_tasks$0xcfc020, 0x200:i8
            ldelema __temp_188$0xe81630, task_status$0xcfc020, 0x0:i8
            sub __temp_189$0xe81630, __temp_190$0xe81630, 0x0:i8
            mul __temp_189$0xe81630, 0x8:i, __temp_189$0xe81630
            sti 0x200001038:i, __temp_188$0xe81630
            sti 0x200001040:i, __temp_189$0xe81630
            lda __temp_191$0xe81630, vertices_cnt$0xcfc020
            mov __temp_192$0xe81630, 0x8:i
            sti 0x200001048:i, __temp_191$0xe81630
            sti 0x200001050:i, __temp_192$0xe81630
            lda __temp_193$0xe81630, vertices$0xcfc020
            mov __temp_194$0xe81630, 0x8:i
            sti 0x200001058:i, __temp_193$0xe81630
            sti 0x200001060:i, __temp_194$0xe81630
            lda __temp_195$0xe81630, in_neighbors$0xcfc020
            mov __temp_196$0xe81630, 0x8:i
            sti 0x200001068:i, __temp_195$0xe81630
            sti 0x200001070:i, __temp_196$0xe81630
            mul __temp_199$0xe81630, 0x40:i8, 0x4:i8
            ldelema __temp_197$0xe81630, partitions$0xcfc020, 0x0:i8
            sub __temp_198$0xe81630, __temp_199$0xe81630, 0x0:i8
            mul __temp_198$0xe81630, 0x8:i, __temp_198$0xe81630
            sti 0x200001078:i, __temp_197$0xe81630
            sti 0x200001080:i, __temp_198$0xe81630
            asm "mov $0x0:msq, 0x200001088:msq"
            asm "mov $__newr0:msq, 0x200001090:msq"
            mov __temp_200$0xe81630, space$0xe81630
            sti 0x200001098:i, __temp_200$0xe81630
            asm "mov $0x200001000:msq, 0x2000010a0:msq"
            asm "mov $0x200001010:msq, 0x2000010a8:msq"
            asm "mov $0x200001088:msq, 0x2000010b0:msq"
            asm "mov $0x200001090:msq, 0x2000010b8:msq"
            asm "mov $0x200001098:msq, 0x2000010c0:msq"
            asm "spawnx 0x2000010a0, 0x2000010a8, 0x2000010b0, 0x2000010b8, 0x2000010c0"
            ldi __temp_181$0xe81630, 0x100000400:i
            ldi __temp_182$0xe81630, 0x100000408:i
            add __temp_183$0xe81630, __temp_181$0xe81630, __temp_182$0xe81630
            lda __temp_201$0xe81630, new_iter_task$0xcfc020
            sub __temp_183$0xe81630, __temp_183$0xe81630, 0x8:i8
            sti __temp_183$0xe81630, __temp_201$0xe81630
            sub __temp_183$0xe81630, __temp_183$0xe81630, 0x8:i8
            sti __temp_183$0xe81630, 0x0:i8
            ret
    }
    function barrier_task
    {
            cne __temp_203$0xeb8fb0, cur_iter$0xeb8d90, iter$0xcfc020
            bnz __temp_203$0xeb8fb0, __temp_204$0xeb8fb0
            br __temp_202$0xeb8fb0
        __temp_204$0xeb8fb0:
            asm "exit:ad"
        __temp_202$0xeb8fb0:
            mov i$0xeb8fb0, 0x0:i8
        __temp_205$0xeb8fb0:
            ble num_tasks$0xcfc020, i$0xeb8fb0, __temp_207$0xeb8fb0
            mul __temp_210$0xeba890, i$0xeb8fb0, 0x200:i8
            ldelem __temp_211$0xeba890, task_status$0xcfc020, __temp_210$0xeba890
            bne __temp_211$0xeba890, 0x1:i8, __temp_213$0xeba890
            br __temp_209$0xeba890
        __temp_213$0xeba890:
            asm "exit:a"
        __temp_209$0xeba890:
        __temp_206$0xeb8fb0:
            add i$0xeb8fb0, i$0xeb8fb0, 0x1:i8
            br __temp_205$0xeb8fb0
        __temp_207$0xeb8fb0:
            add iter$0xcfc020, iter$0xcfc020, 0x1:i8
            beq iter$0xcfc020, 0x1F:i8, __temp_218$0xeb8fb0
            br __temp_216$0xeb8fb0
        __temp_218$0xeb8fb0:
            call output_char$0xcfc020, <missing>, 0x52:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x61:i1
            call output_char$0xcfc020, <missing>, 0x63:i1
            call output_char$0xcfc020, <missing>, 0x68:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x64:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x6D:i1
            call output_char$0xcfc020, <missing>, 0x61:i1
            call output_char$0xcfc020, <missing>, 0x78:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x69:i1
            call output_char$0xcfc020, <missing>, 0x74:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x72:i1
            call output_char$0xcfc020, <missing>, 0x3A:i1
            call output_q$0xcfc020, <missing>, 0x1E:i8
            call output_char$0xcfc020, <missing>, 0x2E:i1
            call output_char$0xcfc020, <missing>, 0xA:i8
            call output_char$0xcfc020, <missing>, 0x54:i1
            call output_char$0xcfc020, <missing>, 0x69:i1
            call output_char$0xcfc020, <missing>, 0x6D:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x75:i1
            call output_char$0xcfc020, <missing>, 0x73:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x64:i1
            call output_char$0xcfc020, <missing>, 0x3A:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            lda __temp_220$0xebc1e0, begin_time_sec$0xcfc020
            lda __temp_221$0xebc1e0, begin_time_nsec$0xcfc020
            call print_time_diff_and_update$0xcfc020, __temp_219$0xebc1e0, __temp_220$0xebc1e0, __temp_221$0xebc1e0
            mov i$0xeb8fb0, __temp_219$0xebc1e0
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_char$0xcfc020, <missing>, 0x73:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x63:i1
            call output_char$0xcfc020, <missing>, 0x6F:i1
            call output_char$0xcfc020, <missing>, 0x6E:i1
            call output_char$0xcfc020, <missing>, 0x64:i1
            call output_char$0xcfc020, <missing>, 0x73:i1
            call output_char$0xcfc020, <missing>, 0x2E:i1
            call output_char$0xcfc020, <missing>, 0xA:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x3:msq, 0x200001010:msq"
            lda __temp_225$0xebc1e0, vertices_cnt$0xcfc020
            mov __temp_226$0xebc1e0, 0x8:i
            sti 0x200001018:i, __temp_225$0xebc1e0
            sti 0x200001020:i, __temp_226$0xebc1e0
            lda __temp_227$0xebc1e0, vertices$0xcfc020
            mov __temp_228$0xebc1e0, 0x8:i
            sti 0x200001028:i, __temp_227$0xebc1e0
            sti 0x200001030:i, __temp_228$0xebc1e0
            mul __temp_231$0xebc1e0, 0x400:i8, 0x400:i8
            mul __temp_232$0xebc1e0, __temp_231$0xebc1e0, 0x5:i8
            mul __temp_233$0xebc1e0, __temp_232$0xebc1e0, 0x3:i8
            ldelema __temp_229$0xebc1e0, vertices$0xcfc020, 0x0:i8
            sub __temp_230$0xebc1e0, __temp_233$0xebc1e0, 0x0:i8
            mul __temp_230$0xebc1e0, 0x8:i, __temp_230$0xebc1e0
            sti 0x200001038:i, __temp_229$0xebc1e0
            sti 0x200001040:i, __temp_230$0xebc1e0
            asm "mov $0x0:msq, 0x200001048:msq"
            asm "mov $__newr0:msq, 0x200001050:msq"
            asm "mov $0x200001000:msq, 0x200001058:msq"
            asm "mov $0x200001010:msq, 0x200001060:msq"
            asm "mov $0x200001048:msq, 0x200001068:msq"
            asm "mov $0x200001050:msq, 0x200001070:msq"
            asm "newr 0x200001058, 0x200001060, 0x200001068, 0x200001070"
            ldi __temp_222$0xebc1e0, 0x100000400:i
            ldi __temp_223$0xebc1e0, 0x100000408:i
            add __temp_224$0xebc1e0, __temp_222$0xebc1e0, __temp_223$0xebc1e0
            lda __temp_234$0xebc1e0, topk_task$0xcfc020
            sub __temp_224$0xebc1e0, __temp_224$0xebc1e0, 0x8:i8
            sti __temp_224$0xebc1e0, __temp_234$0xebc1e0
            sub __temp_224$0xebc1e0, __temp_224$0xebc1e0, 0x8:i8
            sti __temp_224$0xebc1e0, 0x8:i8
            sub __temp_235$0xebc1e0, iter$0xcfc020, 0x1:i8
            sub __temp_224$0xebc1e0, __temp_224$0xebc1e0, 0x8:i8
            sti __temp_224$0xebc1e0, __temp_235$0xebc1e0
            asm "exit:cd"
        __temp_216$0xeb8fb0:
            call create_new_iter_task$0xcfc020, <missing>
            asm "exit:cd"
    }
    function calc_task
    {
            lda __temp_236$0xf2b610, v_begin$0xf2b610
            lda __temp_237$0xf2b610, v_end$0xf2b610
            call get_vertices_range$0xcfc020, <missing>, id$0xf2b3f0, __temp_236$0xf2b610, __temp_237$0xf2b610
            lda __temp_238$0xf2b610, n_begin$0xf2b610
            lda __temp_239$0xf2b610, n_end$0xf2b610
            call get_in_neighbors_range$0xcfc020, <missing>, id$0xf2b3f0, __temp_238$0xf2b610, __temp_239$0xf2b610
            mov pre_changed$0xf2b610, 0x205200000:i
            mov cur_changed$0xf2b610, 0x205700000:i
            mul __temp_241$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_242$0xf2b610, __temp_241$0xf2b610, 0x5:i8
            mul __temp_243$0xf2b610, __temp_242$0xf2b610, 0x8:i8
            add __temp_244$0xf2b610, 0x200200000:i8, __temp_243$0xf2b610
            mul __temp_245$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_246$0xf2b610, __temp_245$0xf2b610, 0x5:i8
            mul __temp_247$0xf2b610, __temp_246$0xf2b610, 0x8:i8
            add __temp_248$0xf2b610, __temp_244$0xf2b610, __temp_247$0xf2b610
            mul __temp_249$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_250$0xf2b610, __temp_249$0xf2b610, 0x5:i8
            mul __temp_251$0xf2b610, __temp_250$0xf2b610, 0x1:i8
            add __temp_252$0xf2b610, __temp_248$0xf2b610, __temp_251$0xf2b610
            mul __temp_253$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_254$0xf2b610, __temp_253$0xf2b610, 0x5:i8
            mul __temp_255$0xf2b610, 0x1:i8, __temp_254$0xf2b610
            mul __temp_256$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_257$0xf2b610, __temp_256$0xf2b610, 0x5:i8
            mul __temp_258$0xf2b610, __temp_257$0xf2b610, 0x8:i8
            add __temp_259$0xf2b610, 0x200200000:i8, __temp_258$0xf2b610
            mul __temp_260$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_261$0xf2b610, __temp_260$0xf2b610, 0x5:i8
            mul __temp_262$0xf2b610, __temp_261$0xf2b610, 0x8:i8
            add __temp_263$0xf2b610, __temp_259$0xf2b610, __temp_262$0xf2b610
            call pc_get$0xcfc020, __temp_240$0xf2b610, iter$0xcfc020, __temp_252$0xf2b610, __temp_255$0xf2b610, __temp_263$0xf2b610
            mov pre_pr$0xf2b610, 0x200200000:i
            mov cur_pr$0xf2b610, 0x202A00000:i
            mul __temp_265$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_266$0xf2b610, __temp_265$0xf2b610, 0x5:i8
            mul __temp_267$0xf2b610, __temp_266$0xf2b610, 0x8:i8
            add __temp_268$0xf2b610, 0x200200000:i8, __temp_267$0xf2b610
            mul __temp_269$0xf2b610, 0x400:i8, 0x400:i8
            mul __temp_270$0xf2b610, __temp_269$0xf2b610, 0x5:i8
            mul __temp_271$0xf2b610, 0x8:i8, __temp_270$0xf2b610
            call pc_get$0xcfc020, __temp_264$0xf2b610, iter$0xcfc020, __temp_268$0xf2b610, __temp_271$0xf2b610, 0x200200000:i8
            mov v$0xf2b610, 0x400000008:i
            mov n$0xf2b610, 0x407800008:i
            ldi __temp_273$0xf2b610, 0x400000000:i
            bne __temp_273$0xf2b610, 0x8829EFF20:i8, __temp_275$0xf2b610
            br __temp_272$0xf2b610
        __temp_275$0xf2b610:
            mul __temp_277$0xf3c770, v_begin$0xf2b610, 0x3:i8
            ldelema __temp_276$0xf3c770, vertices$0xcfc020, __temp_277$0xf3c770
            sub __temp_278$0xf3c770, v_end$0xf2b610, v_begin$0xf2b610
            add __temp_279$0xf3c770, __temp_278$0xf3c770, 0x1:i8
            mul __temp_280$0xf3c770, __temp_279$0xf3c770, 0x3:i8
            mul __temp_281$0xf3c770, 0x8:i8, __temp_280$0xf3c770
            mul __temp_283$0xf3c770, v_begin$0xf2b610, 0x3:i8
            ldelema __temp_282$0xf3c770, v$0xf2b610, __temp_283$0xf3c770
            call memcpy$0xcfc020, <missing>, __temp_276$0xf3c770, __temp_281$0xf3c770, __temp_282$0xf3c770
            ldelema __temp_284$0xf3c770, in_neighbors$0xcfc020, n_begin$0xf2b610
            sub __temp_285$0xf3c770, n_end$0xf2b610, n_begin$0xf2b610
            add __temp_286$0xf3c770, __temp_285$0xf3c770, 0x1:i8
            mul __temp_287$0xf3c770, 0x8:i8, __temp_286$0xf3c770
            ldelema __temp_288$0xf3c770, n$0xf2b610, n_begin$0xf2b610
            call memcpy$0xcfc020, <missing>, __temp_284$0xf3c770, __temp_287$0xf3c770, __temp_288$0xf3c770
            sti 0x400000000:i, 0x8829EFF20:i8
        __temp_272$0xf2b610:
            beq iter$0xcfc020, 0x0:i8, __temp_291$0xf2b610
            mov i$0xf2b610, v_begin$0xf2b610
        __temp_292$0xf42d90:
            ble v_end$0xf2b610, i$0xf2b610, __temp_294$0xf42d90
            mov changed$0xf2b610, 0x6E:i1
            mov new_pr$0xf2b610, 0.000000:r8
            mul __temp_296$0xf43b10, 0x3:i8, i$0xf2b610
            add __temp_297$0xf43b10, __temp_296$0xf43b10, 0x2:i8
            ldelem n_begin$0xf2b610, v$0xf2b610, __temp_297$0xf43b10
            mul __temp_299$0xf43b10, 0x3:i8, i$0xf2b610
            add __temp_300$0xf43b10, __temp_299$0xf43b10, 0x0:i8
            ldelem __temp_301$0xf43b10, v$0xf2b610, __temp_300$0xf43b10
            add n_end$0xf2b610, n_begin$0xf2b610, __temp_301$0xf43b10
            mov j$0xf2b610, n_begin$0xf2b610
        __temp_303$0xf43b10:
            ble n_end$0xf2b610, j$0xf2b610, __temp_305$0xf43b10
            ldelem nbr$0xf2b610, n$0xf2b610, j$0xf2b610
            ldelem __temp_309$0xf466c0, pre_changed$0xf2b610, nbr$0xf2b610
            beq __temp_309$0xf466c0, 0x79:i1, __temp_311$0xf466c0
            br __temp_308$0xf466c0
        __temp_311$0xf466c0:
            mov changed$0xf2b610, 0x79:i1
            ldelema __temp_312$0xf473f0, pre_pr$0xf2b610, nbr$0xf2b610
            ldi __temp_313$0xf473f0, __temp_312$0xf473f0
            add new_pr$0xf2b610, new_pr$0xf2b610, __temp_313$0xf473f0
        __temp_308$0xf466c0:
        __temp_304$0xf43b10:
            add j$0xf2b610, j$0xf2b610, 0x1:i8
            br __temp_303$0xf43b10
        __temp_305$0xf43b10:
            beq changed$0xf2b610, 0x79:i1, __temp_318$0xf43b10
            br __temp_316$0xf43b10
        __temp_318$0xf43b10:
            mul new_pr$0xf2b610, new_pr$0xf2b610, 0.850000:r8
            add new_pr$0xf2b610, new_pr$0xf2b610, 0.150000:r8
            mul __temp_322$0xf48980, 0x3:i8, i$0xf2b610
            add __temp_323$0xf48980, __temp_322$0xf48980, 0x1:i8
            ldelema __temp_321$0xf48980, v$0xf2b610, __temp_323$0xf48980
            ldi __temp_324$0xf48980, __temp_321$0xf48980
            mul new_pr$0xf2b610, new_pr$0xf2b610, __temp_324$0xf48980
            ldelema __temp_326$0xf48980, cur_pr$0xf2b610, i$0xf2b610
            sti __temp_326$0xf48980, new_pr$0xf2b610
        __temp_316$0xf43b10:
            stelem cur_changed$0xf2b610, i$0xf2b610, changed$0xf2b610
        __temp_293$0xf42d90:
            add i$0xf2b610, i$0xf2b610, 0x1:i8
            br __temp_292$0xf42d90
        __temp_294$0xf42d90:
            br __temp_289$0xf2b610
        __temp_291$0xf2b610:
            mov i$0xf2b610, v_begin$0xf2b610
        __temp_328$0xf401d0:
            ble v_end$0xf2b610, i$0xf2b610, __temp_330$0xf401d0
            mul __temp_333$0xf40f30, 0x3:i8, i$0xf2b610
            add __temp_334$0xf40f30, __temp_333$0xf40f30, 0x1:i8
            ldelema __temp_332$0xf40f30, v$0xf2b610, __temp_334$0xf40f30
            ldi __temp_335$0xf40f30, __temp_332$0xf40f30
            mul new_pr$0xf2b610, 0.150000:r8, __temp_335$0xf40f30
            stelem cur_changed$0xf2b610, i$0xf2b610, 0x79:i1
            ldelema __temp_337$0xf40f30, cur_pr$0xf2b610, i$0xf2b610
            sti __temp_337$0xf40f30, new_pr$0xf2b610
        __temp_329$0xf401d0:
            add i$0xf2b610, i$0xf2b610, 0x1:i8
            br __temp_328$0xf401d0
        __temp_330$0xf401d0:
        __temp_289$0xf2b610:
            add __temp_340$0xf2b610, iter$0xcfc020, 0x1:i8
            ldelema __temp_341$0xf2b610, cur_changed$0xf2b610, v_begin$0xf2b610
            sub __temp_342$0xf2b610, v_end$0xf2b610, v_begin$0xf2b610
            mul __temp_343$0xf2b610, 0x1:i8, __temp_342$0xf2b610
            call pc_write$0xcfc020, __temp_339$0xf2b610, __temp_340$0xf2b610, __temp_341$0xf2b610, __temp_343$0xf2b610
            add __temp_345$0xf2b610, iter$0xcfc020, 0x1:i8
            ldelema __temp_346$0xf2b610, cur_pr$0xf2b610, v_begin$0xf2b610
            sub __temp_347$0xf2b610, v_end$0xf2b610, v_begin$0xf2b610
            mul __temp_348$0xf2b610, 0x8:i8, __temp_347$0xf2b610
            call pc_write$0xcfc020, __temp_344$0xf2b610, __temp_345$0xf2b610, __temp_346$0xf2b610, __temp_348$0xf2b610
            mul __temp_349$0xf2b610, id$0xf2b3f0, 0x200:i8
            stelem task_status$0xcfc020, __temp_349$0xf2b610, 0x1:i8
            asm "exit:c"
    }
    function new_iter_task
    {
            cgt __temp_351$0xf78630, iter$0xcfc020, 0x0:i8
            bnz __temp_351$0xf78630, __temp_352$0xf78630
            br __temp_350$0xf78630
        __temp_352$0xf78630:
            call pc_sync$0xcfc020, __temp_353$0xf7a2f0, iter$0xcfc020
        __temp_350$0xf78630:
            mov i$0xf78630, 0x0:i8
        __temp_354$0xf78630:
            ble num_tasks$0xcfc020, i$0xf78630, __temp_356$0xf78630
            lda __temp_358$0xf7b790, v_begin$0xf78630
            lda __temp_359$0xf7b790, v_end$0xf78630
            call get_vertices_range$0xcfc020, <missing>, i$0xf78630, __temp_358$0xf7b790, __temp_359$0xf7b790
            lda __temp_360$0xf7b790, n_begin$0xf78630
            lda __temp_361$0xf7b790, n_end$0xf78630
            call get_in_neighbors_range$0xcfc020, <missing>, i$0xf78630, __temp_360$0xf7b790, __temp_361$0xf7b790
            add __temp_362$0xf7b790, i$0xf78630, 0x1:i8
            mul space$0xf78630, 0x400000000000:i8, __temp_362$0xf7b790
            beq iter$0xcfc020, 0x0:i8, __temp_366$0xf7b790
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x7:msq, 0x200001010:msq"
            lda __temp_370$0xf81720, iter$0xcfc020
            mov __temp_371$0xf81720, 0x8:i
            sti 0x200001018:i, __temp_370$0xf81720
            sti 0x200001020:i, __temp_371$0xf81720
            lda __temp_372$0xf81720, num_tasks$0xcfc020
            mov __temp_373$0xf81720, 0x8:i
            sti 0x200001028:i, __temp_372$0xf81720
            sti 0x200001030:i, __temp_373$0xf81720
            lda __temp_374$0xf81720, vertices_cnt$0xcfc020
            mov __temp_375$0xf81720, 0x8:i
            sti 0x200001038:i, __temp_374$0xf81720
            sti 0x200001040:i, __temp_375$0xf81720
            lda __temp_376$0xf81720, vertices$0xcfc020
            mov __temp_377$0xf81720, 0x8:i
            sti 0x200001048:i, __temp_376$0xf81720
            sti 0x200001050:i, __temp_377$0xf81720
            lda __temp_378$0xf81720, in_neighbors$0xcfc020
            mov __temp_379$0xf81720, 0x8:i
            sti 0x200001058:i, __temp_378$0xf81720
            sti 0x200001060:i, __temp_379$0xf81720
            mul __temp_382$0xf81720, i$0xf78630, 0x200:i8
            mul __temp_383$0xf81720, i$0xf78630, 0x200:i8
            add __temp_384$0xf81720, __temp_383$0xf81720, 0x1:i8
            ldelema __temp_380$0xf81720, task_status$0xcfc020, __temp_382$0xf81720
            sub __temp_381$0xf81720, __temp_384$0xf81720, __temp_382$0xf81720
            mul __temp_381$0xf81720, 0x8:i, __temp_381$0xf81720
            sti 0x200001068:i, __temp_380$0xf81720
            sti 0x200001070:i, __temp_381$0xf81720
            mul __temp_387$0xf81720, 0x40:i8, 0x4:i8
            ldelema __temp_385$0xf81720, partitions$0xcfc020, 0x0:i8
            sub __temp_386$0xf81720, __temp_387$0xf81720, 0x0:i8
            mul __temp_386$0xf81720, 0x8:i, __temp_386$0xf81720
            sti 0x200001078:i, __temp_385$0xf81720
            sti 0x200001080:i, __temp_386$0xf81720
            asm "mov $0x0:msq, 0x200001088:msq"
            asm "mov $__newr0:msq, 0x200001090:msq"
            mov __temp_388$0xf81720, space$0xf78630
            sti 0x200001098:i, __temp_388$0xf81720
            asm "mov $0x200001000:msq, 0x2000010a0:msq"
            asm "mov $0x200001010:msq, 0x2000010a8:msq"
            asm "mov $0x200001088:msq, 0x2000010b0:msq"
            asm "mov $0x200001090:msq, 0x2000010b8:msq"
            asm "mov $0x200001098:msq, 0x2000010c0:msq"
            asm "spawnx 0x2000010a0, 0x2000010a8, 0x2000010b0, 0x2000010b8, 0x2000010c0"
            ldi __temp_367$0xf81720, 0x100000400:i
            ldi __temp_368$0xf81720, 0x100000408:i
            add __temp_369$0xf81720, __temp_367$0xf81720, __temp_368$0xf81720
            lda __temp_389$0xf81720, calc_task$0xcfc020
            sub __temp_369$0xf81720, __temp_369$0xf81720, 0x8:i8
            sti __temp_369$0xf81720, __temp_389$0xf81720
            sub __temp_369$0xf81720, __temp_369$0xf81720, 0x8:i8
            sti __temp_369$0xf81720, 0x8:i8
            sub __temp_369$0xf81720, __temp_369$0xf81720, 0x8:i8
            sti __temp_369$0xf81720, i$0xf78630
            br __temp_364$0xf7b790
        __temp_366$0xf7b790:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x9:msq, 0x200001010:msq"
            lda __temp_393$0xf7d5e0, iter$0xcfc020
            mov __temp_394$0xf7d5e0, 0x8:i
            sti 0x200001018:i, __temp_393$0xf7d5e0
            sti 0x200001020:i, __temp_394$0xf7d5e0
            lda __temp_395$0xf7d5e0, num_tasks$0xcfc020
            mov __temp_396$0xf7d5e0, 0x8:i
            sti 0x200001028:i, __temp_395$0xf7d5e0
            sti 0x200001030:i, __temp_396$0xf7d5e0
            lda __temp_397$0xf7d5e0, vertices_cnt$0xcfc020
            mov __temp_398$0xf7d5e0, 0x8:i
            sti 0x200001038:i, __temp_397$0xf7d5e0
            sti 0x200001040:i, __temp_398$0xf7d5e0
            lda __temp_399$0xf7d5e0, vertices$0xcfc020
            mov __temp_400$0xf7d5e0, 0x8:i
            sti 0x200001048:i, __temp_399$0xf7d5e0
            sti 0x200001050:i, __temp_400$0xf7d5e0
            lda __temp_401$0xf7d5e0, in_neighbors$0xcfc020
            mov __temp_402$0xf7d5e0, 0x8:i
            sti 0x200001058:i, __temp_401$0xf7d5e0
            sti 0x200001060:i, __temp_402$0xf7d5e0
            mul __temp_405$0xf7d5e0, 0x400:i8, 0x400:i8
            mul __temp_406$0xf7d5e0, __temp_405$0xf7d5e0, 0x46:i8
            mul __temp_407$0xf7d5e0, __temp_406$0xf7d5e0, 0x2:i8
            div __temp_408$0xf7d5e0, __temp_407$0xf7d5e0, 0x2:i8
            add __temp_409$0xf7d5e0, __temp_408$0xf7d5e0, 0x1:i8
            ldelema __temp_403$0xf7d5e0, in_neighbors$0xcfc020, 0x0:i8
            sub __temp_404$0xf7d5e0, __temp_409$0xf7d5e0, 0x0:i8
            mul __temp_404$0xf7d5e0, 0x8:i, __temp_404$0xf7d5e0
            sti 0x200001068:i, __temp_403$0xf7d5e0
            sti 0x200001070:i, __temp_404$0xf7d5e0
            mul __temp_412$0xf7d5e0, 0x400:i8, 0x400:i8
            mul __temp_413$0xf7d5e0, __temp_412$0xf7d5e0, 0x5:i8
            mul __temp_414$0xf7d5e0, __temp_413$0xf7d5e0, 0x3:i8
            ldelema __temp_410$0xf7d5e0, vertices$0xcfc020, 0x0:i8
            sub __temp_411$0xf7d5e0, __temp_414$0xf7d5e0, 0x0:i8
            mul __temp_411$0xf7d5e0, 0x8:i, __temp_411$0xf7d5e0
            sti 0x200001078:i, __temp_410$0xf7d5e0
            sti 0x200001080:i, __temp_411$0xf7d5e0
            mul __temp_417$0xf7d5e0, i$0xf78630, 0x200:i8
            mul __temp_418$0xf7d5e0, i$0xf78630, 0x200:i8
            add __temp_419$0xf7d5e0, __temp_418$0xf7d5e0, 0x1:i8
            ldelema __temp_415$0xf7d5e0, task_status$0xcfc020, __temp_417$0xf7d5e0
            sub __temp_416$0xf7d5e0, __temp_419$0xf7d5e0, __temp_417$0xf7d5e0
            mul __temp_416$0xf7d5e0, 0x8:i, __temp_416$0xf7d5e0
            sti 0x200001088:i, __temp_415$0xf7d5e0
            sti 0x200001090:i, __temp_416$0xf7d5e0
            mul __temp_422$0xf7d5e0, 0x40:i8, 0x4:i8
            ldelema __temp_420$0xf7d5e0, partitions$0xcfc020, 0x0:i8
            sub __temp_421$0xf7d5e0, __temp_422$0xf7d5e0, 0x0:i8
            mul __temp_421$0xf7d5e0, 0x8:i, __temp_421$0xf7d5e0
            sti 0x200001098:i, __temp_420$0xf7d5e0
            sti 0x2000010A0:i, __temp_421$0xf7d5e0
            asm "mov $0x0:msq, 0x2000010a8:msq"
            asm "mov $__newr0:msq, 0x2000010b0:msq"
            mov __temp_423$0xf7d5e0, space$0xf78630
            sti 0x2000010B8:i, __temp_423$0xf7d5e0
            asm "mov $0x200001000:msq, 0x2000010c0:msq"
            asm "mov $0x200001010:msq, 0x2000010c8:msq"
            asm "mov $0x2000010a8:msq, 0x2000010d0:msq"
            asm "mov $0x2000010b0:msq, 0x2000010d8:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e0:msq"
            asm "spawnx 0x2000010c0, 0x2000010c8, 0x2000010d0, 0x2000010d8, 0x2000010e0"
            ldi __temp_390$0xf7d5e0, 0x100000400:i
            ldi __temp_391$0xf7d5e0, 0x100000408:i
            add __temp_392$0xf7d5e0, __temp_390$0xf7d5e0, __temp_391$0xf7d5e0
            lda __temp_424$0xf7d5e0, calc_task$0xcfc020
            sub __temp_392$0xf7d5e0, __temp_392$0xf7d5e0, 0x8:i8
            sti __temp_392$0xf7d5e0, __temp_424$0xf7d5e0
            sub __temp_392$0xf7d5e0, __temp_392$0xf7d5e0, 0x8:i8
            sti __temp_392$0xf7d5e0, 0x8:i8
            sub __temp_392$0xf7d5e0, __temp_392$0xf7d5e0, 0x8:i8
            sti __temp_392$0xf7d5e0, i$0xf78630
        __temp_364$0xf7b790:
            mul __temp_425$0xf7b790, i$0xf78630, 0x200:i8
            stelem task_status$0xcfc020, __temp_425$0xf7b790, 0x0:i8
        __temp_355$0xf78630:
            add i$0xf78630, i$0xf78630, 0x1:i8
            br __temp_354$0xf78630
        __temp_356$0xf78630:
            mov space$0xf78630, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x7:msq, 0x200001010:msq"
            lda __temp_430$0xf78630, iter$0xcfc020
            mov __temp_431$0xf78630, 0x8:i
            sti 0x200001018:i, __temp_430$0xf78630
            sti 0x200001020:i, __temp_431$0xf78630
            lda __temp_432$0xf78630, num_tasks$0xcfc020
            mov __temp_433$0xf78630, 0x8:i
            sti 0x200001028:i, __temp_432$0xf78630
            sti 0x200001030:i, __temp_433$0xf78630
            lda __temp_434$0xf78630, vertices_cnt$0xcfc020
            mov __temp_435$0xf78630, 0x8:i
            sti 0x200001038:i, __temp_434$0xf78630
            sti 0x200001040:i, __temp_435$0xf78630
            lda __temp_436$0xf78630, vertices$0xcfc020
            mov __temp_437$0xf78630, 0x8:i
            sti 0x200001048:i, __temp_436$0xf78630
            sti 0x200001050:i, __temp_437$0xf78630
            lda __temp_438$0xf78630, in_neighbors$0xcfc020
            mov __temp_439$0xf78630, 0x8:i
            sti 0x200001058:i, __temp_438$0xf78630
            sti 0x200001060:i, __temp_439$0xf78630
            lda __temp_440$0xf78630, begin_time_sec$0xcfc020
            mov __temp_441$0xf78630, 0x8:i
            sti 0x200001068:i, __temp_440$0xf78630
            sti 0x200001070:i, __temp_441$0xf78630
            lda __temp_442$0xf78630, begin_time_nsec$0xcfc020
            mov __temp_443$0xf78630, 0x8:i
            sti 0x200001078:i, __temp_442$0xf78630
            sti 0x200001080:i, __temp_443$0xf78630
            asm "mov $0x1:msq, 0x200001088:msq"
            mul __temp_446$0xf78630, num_tasks$0xcfc020, 0x200:i8
            ldelema __temp_444$0xf78630, task_status$0xcfc020, 0x0:i8
            sub __temp_445$0xf78630, __temp_446$0xf78630, 0x0:i8
            mul __temp_445$0xf78630, 0x8:i, __temp_445$0xf78630
            sti 0x200001090:i, __temp_444$0xf78630
            sti 0x200001098:i, __temp_445$0xf78630
            asm "mov $__newr0:msq, 0x2000010a0:msq"
            mov __temp_447$0xf78630, space$0xf78630
            sti 0x2000010A8:i, __temp_447$0xf78630
            asm "mov $0x200001000:msq, 0x2000010b0:msq"
            asm "mov $0x200001010:msq, 0x2000010b8:msq"
            asm "mov $0x200001088:msq, 0x2000010c0:msq"
            asm "mov $0x2000010a0:msq, 0x2000010c8:msq"
            asm "mov $0x2000010a8:msq, 0x2000010d0:msq"
            asm "spawnx 0x2000010b0, 0x2000010b8, 0x2000010c0, 0x2000010c8, 0x2000010d0"
            ldi __temp_427$0xf78630, 0x100000400:i
            ldi __temp_428$0xf78630, 0x100000408:i
            add __temp_429$0xf78630, __temp_427$0xf78630, __temp_428$0xf78630
            lda __temp_448$0xf78630, barrier_task$0xcfc020
            sub __temp_429$0xf78630, __temp_429$0xf78630, 0x8:i8
            sti __temp_429$0xf78630, __temp_448$0xf78630
            sub __temp_429$0xf78630, __temp_429$0xf78630, 0x8:i8
            sti __temp_429$0xf78630, 0x8:i8
            sub __temp_429$0xf78630, __temp_429$0xf78630, 0x8:i8
            sti __temp_429$0xf78630, iter$0xcfc020
            asm "exit:c"
    }
    function init_task
    {
            lda __temp_450$0xfb0f30, begin_time_sec$0xcfc020
            lda __temp_451$0xfb0f30, begin_time_nsec$0xcfc020
            call gettime$0xcfc020, __temp_449$0xfb0f30, __temp_450$0xfb0f30, __temp_451$0xfb0f30
            mov i$0xfb0f30, __temp_449$0xfb0f30
            ldi vertices_cnt$0xcfc020, 0x40846000000:i
            call output_char$0xcfc020, <missing>, 0x76:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x72:i1
            call output_char$0xcfc020, <missing>, 0x74:i1
            call output_char$0xcfc020, <missing>, 0x69:i1
            call output_char$0xcfc020, <missing>, 0x63:i1
            call output_char$0xcfc020, <missing>, 0x65:i1
            call output_char$0xcfc020, <missing>, 0x73:i1
            call output_char$0xcfc020, <missing>, 0x5F:i1
            call output_char$0xcfc020, <missing>, 0x63:i1
            call output_char$0xcfc020, <missing>, 0x6E:i1
            call output_char$0xcfc020, <missing>, 0x74:i1
            call output_char$0xcfc020, <missing>, 0x3A:i1
            call output_char$0xcfc020, <missing>, 0x20:i1
            call output_q$0xcfc020, <missing>, vertices_cnt$0xcfc020
            call output_char$0xcfc020, <missing>, 0xA:i8
            mov vertices$0xcfc020, 0x40846000008:i
            mov in_neighbors$0xcfc020, 0x4084D800000:i
            mov iter$0xcfc020, 0x0:i8
            mov num_tasks$0xcfc020, 0x1E:i8
            call build_partitions$0xcfc020, <missing>
            call create_new_iter_task$0xcfc020, <missing>
            asm "exit:c"
    }
    function main
    {
            mov space$0xfdbc90, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            lda __temp_456$0xfdbc90, iter$0xcfc020
            mov __temp_457$0xfdbc90, 0x8:i
            sti 0x200001018:i, __temp_456$0xfdbc90
            sti 0x200001020:i, __temp_457$0xfdbc90
            lda __temp_458$0xfdbc90, num_tasks$0xcfc020
            mov __temp_459$0xfdbc90, 0x8:i
            sti 0x200001028:i, __temp_458$0xfdbc90
            sti 0x200001030:i, __temp_459$0xfdbc90
            lda __temp_460$0xfdbc90, vertices_cnt$0xcfc020
            mov __temp_461$0xfdbc90, 0x8:i
            sti 0x200001038:i, __temp_460$0xfdbc90
            sti 0x200001040:i, __temp_461$0xfdbc90
            lda __temp_462$0xfdbc90, vertices$0xcfc020
            mov __temp_463$0xfdbc90, 0x8:i
            sti 0x200001048:i, __temp_462$0xfdbc90
            sti 0x200001050:i, __temp_463$0xfdbc90
            lda __temp_464$0xfdbc90, in_neighbors$0xcfc020
            mov __temp_465$0xfdbc90, 0x8:i
            sti 0x200001058:i, __temp_464$0xfdbc90
            sti 0x200001060:i, __temp_465$0xfdbc90
            lda __temp_466$0xfdbc90, begin_time_sec$0xcfc020
            mov __temp_467$0xfdbc90, 0x8:i
            sti 0x200001068:i, __temp_466$0xfdbc90
            sti 0x200001070:i, __temp_467$0xfdbc90
            lda __temp_468$0xfdbc90, begin_time_nsec$0xcfc020
            mov __temp_469$0xfdbc90, 0x8:i
            sti 0x200001078:i, __temp_468$0xfdbc90
            sti 0x200001080:i, __temp_469$0xfdbc90
            add __temp_472$0xfdbc90, 0x800000000:i8, 0x20000000000:i8
            sub __temp_473$0xfdbc90, __temp_472$0xfdbc90, 0x1:i8
            add __temp_474$0xfdbc90, __temp_473$0xfdbc90, 0x1:i8
            add __temp_475$0xfdbc90, __temp_474$0xfdbc90, 0x20000000000:i8
            sub __temp_476$0xfdbc90, __temp_475$0xfdbc90, 0x1:i8
            add __temp_477$0xfdbc90, __temp_476$0xfdbc90, 0x1:i8
            mul __temp_478$0xfdbc90, 0x400:i8, 0x400:i8
            mul __temp_479$0xfdbc90, __temp_478$0xfdbc90, 0x46:i8
            mul __temp_480$0xfdbc90, __temp_479$0xfdbc90, 0x2:i8
            mul __temp_481$0xfdbc90, __temp_480$0xfdbc90, 0x8:i8
            add __temp_482$0xfdbc90, __temp_477$0xfdbc90, __temp_481$0xfdbc90
            conv __temp_483$0xfdbc90, __temp_482$0xfdbc90
            mul __temp_484$0xfdbc90, 0x400:i8, 0x400:i8
            mul __temp_485$0xfdbc90, __temp_484$0xfdbc90, 0x5:i8
            mul __temp_486$0xfdbc90, __temp_485$0xfdbc90, 0x3:i8
            ldelema __temp_470$0xfdbc90, __temp_483$0xfdbc90, 0x0:i8
            sub __temp_471$0xfdbc90, __temp_486$0xfdbc90, 0x0:i8
            mul __temp_471$0xfdbc90, 0x8:i, __temp_471$0xfdbc90
            sti 0x200001088:i, __temp_470$0xfdbc90
            sti 0x200001090:i, __temp_471$0xfdbc90
            add __temp_489$0xfdbc90, 0x800000000:i8, 0x20000000000:i8
            sub __temp_490$0xfdbc90, __temp_489$0xfdbc90, 0x1:i8
            add __temp_491$0xfdbc90, __temp_490$0xfdbc90, 0x1:i8
            add __temp_492$0xfdbc90, __temp_491$0xfdbc90, 0x20000000000:i8
            sub __temp_493$0xfdbc90, __temp_492$0xfdbc90, 0x1:i8
            add __temp_494$0xfdbc90, __temp_493$0xfdbc90, 0x1:i8
            mul __temp_495$0xfdbc90, 0x400:i8, 0x400:i8
            mul __temp_496$0xfdbc90, __temp_495$0xfdbc90, 0x46:i8
            mul __temp_497$0xfdbc90, __temp_496$0xfdbc90, 0x2:i8
            mul __temp_498$0xfdbc90, __temp_497$0xfdbc90, 0x8:i8
            add __temp_499$0xfdbc90, __temp_494$0xfdbc90, __temp_498$0xfdbc90
            mul __temp_500$0xfdbc90, 0x400:i8, 0x400:i8
            mul __temp_501$0xfdbc90, __temp_500$0xfdbc90, 0x5:i8
            mul __temp_502$0xfdbc90, __temp_501$0xfdbc90, 0x3:i8
            mul __temp_503$0xfdbc90, __temp_502$0xfdbc90, 0x8:i8
            add __temp_504$0xfdbc90, __temp_499$0xfdbc90, __temp_503$0xfdbc90
            conv __temp_505$0xfdbc90, __temp_504$0xfdbc90
            mul __temp_506$0xfdbc90, 0x400:i8, 0x400:i8
            mul __temp_507$0xfdbc90, __temp_506$0xfdbc90, 0x46:i8
            mul __temp_508$0xfdbc90, __temp_507$0xfdbc90, 0x2:i8
            div __temp_509$0xfdbc90, __temp_508$0xfdbc90, 0x2:i8
            add __temp_510$0xfdbc90, __temp_509$0xfdbc90, 0x1:i8
            ldelema __temp_487$0xfdbc90, __temp_505$0xfdbc90, 0x0:i8
            sub __temp_488$0xfdbc90, __temp_510$0xfdbc90, 0x0:i8
            mul __temp_488$0xfdbc90, 0x8:i, __temp_488$0xfdbc90
            sti 0x200001098:i, __temp_487$0xfdbc90
            sti 0x2000010A0:i, __temp_488$0xfdbc90
            mul __temp_513$0xfdbc90, 0x40:i8, 0x4:i8
            ldelema __temp_511$0xfdbc90, partitions$0xcfc020, 0x0:i8
            sub __temp_512$0xfdbc90, __temp_513$0xfdbc90, 0x0:i8
            mul __temp_512$0xfdbc90, 0x8:i, __temp_512$0xfdbc90
            sti 0x2000010A8:i, __temp_511$0xfdbc90
            sti 0x2000010B0:i, __temp_512$0xfdbc90
            asm "mov $0x0:msq, 0x2000010b8:msq"
            asm "mov $__newr0:msq, 0x2000010c0:msq"
            mov __temp_514$0xfdbc90, space$0xfdbc90
            sti 0x2000010C8:i, __temp_514$0xfdbc90
            asm "mov $0x200001000:msq, 0x2000010d0:msq"
            asm "mov $0x200001010:msq, 0x2000010d8:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e0:msq"
            asm "mov $0x2000010c0:msq, 0x2000010e8:msq"
            asm "mov $0x2000010c8:msq, 0x2000010f0:msq"
            asm "spawnx 0x2000010d0, 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_453$0xfdbc90, 0x100000400:i
            ldi __temp_454$0xfdbc90, 0x100000408:i
            add __temp_455$0xfdbc90, __temp_453$0xfdbc90, __temp_454$0xfdbc90
            lda __temp_515$0xfdbc90, init_task$0xcfc020
            sub __temp_455$0xfdbc90, __temp_455$0xfdbc90, 0x8:i8
            sti __temp_455$0xfdbc90, __temp_515$0xfdbc90
            sub __temp_455$0xfdbc90, __temp_455$0xfdbc90, 0x8:i8
            sti __temp_455$0xfdbc90, 0x0:i8
            asm "exit:c"
    }
}
