class Program
{
    function srand
    {
            ceq __temp_1$0x25a30c0, seed$0x25a2e80, 0x0:i8
            bnz __temp_1$0x25a30c0, __temp_2$0x25a30c0
            br __temp_0$0x25a30c0
        __temp_2$0x25a30c0:
            mov seed$0x25a2e80, 0x1:i8
        __temp_0$0x25a30c0:
            sti 0x300000000:i, seed$0x25a2e80
            ret
    }
    function rand
    {
            ldi __temp_3$0x25a8da0, 0x300000000:i
            mov r$0x25a8da0, __temp_3$0x25a8da0
            mul __temp_4$0x25a8da0, r$0x25a8da0, 0xFEF3F6F4F3F2F1:i8
            mov r$0x25a8da0, __temp_4$0x25a8da0
            sti 0x300000000:i, r$0x25a8da0
            ret r$0x25a8da0
    }
    function _output_centroids
    {
            mov npt$0x25cc860, 0x300000040:i
            call output_q$0x2556d40, <missing>, 0x2:i8
            call output_char$0x2556d40, <missing>, 0x20:i1
            call output_char$0x2556d40, <missing>, 0x63:i1
            call output_char$0x2556d40, <missing>, 0x65:i1
            call output_char$0x2556d40, <missing>, 0x6E:i1
            call output_char$0x2556d40, <missing>, 0x74:i1
            call output_char$0x2556d40, <missing>, 0x72:i1
            call output_char$0x2556d40, <missing>, 0x6F:i1
            call output_char$0x2556d40, <missing>, 0x69:i1
            call output_char$0x2556d40, <missing>, 0x64:i1
            call output_char$0x2556d40, <missing>, 0x73:i1
            call output_char$0x2556d40, <missing>, 0x3A:i1
            call output_char$0x2556d40, <missing>, 0xA:i8
            mov i$0x25cc860, 0x0:i8
        __temp_5$0x25cc860:
            clt __temp_8$0x25cc860, i$0x25cc860, 0x2:i8
            bz __temp_8$0x25cc860, __temp_7$0x25cc860
            ldelem __temp_9$0x25d23e0, cx$0x2556d40, i$0x25cc860
            call output_q$0x2556d40, <missing>, __temp_9$0x25d23e0
            call output_char$0x2556d40, <missing>, 0x20:i1
            ldelem __temp_10$0x25d23e0, cy$0x2556d40, i$0x25cc860
            call output_q$0x2556d40, <missing>, __temp_10$0x25d23e0
            call output_char$0x2556d40, <missing>, 0x20:i1
            ldelem __temp_11$0x25d23e0, cz$0x2556d40, i$0x25cc860
            call output_q$0x2556d40, <missing>, __temp_11$0x25d23e0
            call output_char$0x2556d40, <missing>, 0x20:i1
            ldelem __temp_12$0x25d23e0, cw$0x2556d40, i$0x25cc860
            call output_q$0x2556d40, <missing>, __temp_12$0x25d23e0
            ceq __temp_14$0x25d23e0, with_point_num$0x25cc630, 0x1:i8
            bnz __temp_14$0x25d23e0, __temp_15$0x25d23e0
            br __temp_13$0x25d23e0
        __temp_15$0x25d23e0:
            call output_char$0x2556d40, <missing>, 0x2F:i1
            ldelem __temp_16$0x25d4df0, npt$0x25cc860, i$0x25cc860
            call output_q$0x2556d40, <missing>, __temp_16$0x25d4df0
        __temp_13$0x25d23e0:
            call output_char$0x2556d40, <missing>, 0xA:i8
        __temp_6$0x25cc860:
            add __temp_17$0x25cc860, i$0x25cc860, 0x1:i8
            mov i$0x25cc860, __temp_17$0x25cc860
            br __temp_5$0x25cc860
        __temp_7$0x25cc860:
            call output_char$0x2556d40, <missing>, 0xA:i8
            ret
    }
    function output_centroids_with_point_num
    {
            call _output_centroids$0x2556d40, <missing>, 0x1:i8
            ret
    }
    function output_centroids
    {
            call _output_centroids$0x2556d40, <missing>, 0x0:i8
            ret
    }
    function kmeans_finish
    {
            call output_centroids$0x2556d40, <missing>
            ret
    }
    function on_recluster_finished
    {
            clt __temp_19$0x262c300, expected_iter$0x262c0e0, iter$0x2556d40
            bnz __temp_19$0x262c300, __temp_20$0x262c300
            br __temp_18$0x262c300
        __temp_20$0x262c300:
            asm "exit:ad"
        __temp_18$0x262c300:
            cgt __temp_22$0x262c300, expected_iter$0x262c0e0, iter$0x2556d40
            bnz __temp_22$0x262c300, __temp_23$0x262c300
            br __temp_21$0x262c300
        __temp_23$0x262c300:
            asm "exit:a"
        __temp_21$0x262c300:
            mov i$0x262c300, 0x0:i8
        __temp_24$0x262c300:
            clt __temp_27$0x262c300, i$0x262c300, 0x200:i8
            bz __temp_27$0x262c300, __temp_26$0x262c300
            ldelem __temp_29$0x2631030, trigger$0x2556d40, i$0x262c300
            cne __temp_30$0x2631030, __temp_29$0x2631030, 0x2:i8
            bnz __temp_30$0x2631030, __temp_31$0x2631030
            br __temp_28$0x2631030
        __temp_31$0x2631030:
            asm "exit:a"
        __temp_28$0x2631030:
        __temp_25$0x262c300:
            add __temp_32$0x262c300, i$0x262c300, 0x200:i8
            mov i$0x262c300, __temp_32$0x262c300
            br __temp_24$0x262c300
        __temp_26$0x262c300:
            mov sumx$0x262c300, 0x300000000:i
            mov sumy$0x262c300, 0x300000010:i
            mov sumz$0x262c300, 0x300000020:i
            mov sumw$0x262c300, 0x300000030:i
            mov npt$0x262c300, 0x300000040:i
            mov i$0x262c300, 0x0:i8
        __temp_33$0x262c300:
            clt __temp_36$0x262c300, i$0x262c300, 0x2:i8
            bz __temp_36$0x262c300, __temp_35$0x262c300
            stelem sumx$0x262c300, i$0x262c300, 0x0:i8
            stelem sumy$0x262c300, i$0x262c300, 0x0:i8
            stelem sumz$0x262c300, i$0x262c300, 0x0:i8
            stelem sumw$0x262c300, i$0x262c300, 0x0:i8
            stelem npt$0x262c300, i$0x262c300, 0x0:i8
        __temp_34$0x262c300:
            add __temp_37$0x262c300, i$0x262c300, 0x1:i8
            mov i$0x262c300, __temp_37$0x262c300
            br __temp_33$0x262c300
        __temp_35$0x262c300:
            mov n_parts$0x262c300, 0x1:i8
            mov j$0x262c300, 0x0:i8
        __temp_38$0x262c300:
            clt __temp_41$0x262c300, j$0x262c300, n_parts$0x262c300
            bz __temp_41$0x262c300, __temp_40$0x262c300
            mul __temp_43$0x2638e50, 0x202:i8, j$0x262c300
            ldelema __temp_42$0x2638e50, lcx$0x2556d40, __temp_43$0x2638e50
            mov tlcx$0x262c300, __temp_42$0x2638e50
            mul __temp_45$0x2638e50, 0x202:i8, j$0x262c300
            ldelema __temp_44$0x2638e50, lcy$0x2556d40, __temp_45$0x2638e50
            mov tlcy$0x262c300, __temp_44$0x2638e50
            mul __temp_47$0x2638e50, 0x202:i8, j$0x262c300
            ldelema __temp_46$0x2638e50, lcz$0x2556d40, __temp_47$0x2638e50
            mov tlcz$0x262c300, __temp_46$0x2638e50
            mul __temp_49$0x2638e50, 0x202:i8, j$0x262c300
            ldelema __temp_48$0x2638e50, lcw$0x2556d40, __temp_49$0x2638e50
            mov tlcw$0x262c300, __temp_48$0x2638e50
            mul __temp_51$0x2638e50, 0x202:i8, j$0x262c300
            ldelema __temp_50$0x2638e50, lcn$0x2556d40, __temp_51$0x2638e50
            mov tlcn$0x262c300, __temp_50$0x2638e50
            mov i$0x262c300, 0x0:i8
        __temp_52$0x2638e50:
            clt __temp_55$0x2638e50, i$0x262c300, 0x2:i8
            bz __temp_55$0x2638e50, __temp_54$0x2638e50
            ldelem __temp_56$0x263d5a0, sumx$0x262c300, i$0x262c300
            ldelem __temp_57$0x263d5a0, tlcx$0x262c300, i$0x262c300
            add __temp_58$0x263d5a0, __temp_56$0x263d5a0, __temp_57$0x263d5a0
            stelem sumx$0x262c300, i$0x262c300, __temp_58$0x263d5a0
            ldelem __temp_59$0x263d5a0, sumy$0x262c300, i$0x262c300
            ldelem __temp_60$0x263d5a0, tlcy$0x262c300, i$0x262c300
            add __temp_61$0x263d5a0, __temp_59$0x263d5a0, __temp_60$0x263d5a0
            stelem sumy$0x262c300, i$0x262c300, __temp_61$0x263d5a0
            ldelem __temp_62$0x263d5a0, sumz$0x262c300, i$0x262c300
            ldelem __temp_63$0x263d5a0, tlcz$0x262c300, i$0x262c300
            add __temp_64$0x263d5a0, __temp_62$0x263d5a0, __temp_63$0x263d5a0
            stelem sumz$0x262c300, i$0x262c300, __temp_64$0x263d5a0
            ldelem __temp_65$0x263d5a0, sumw$0x262c300, i$0x262c300
            ldelem __temp_66$0x263d5a0, tlcw$0x262c300, i$0x262c300
            add __temp_67$0x263d5a0, __temp_65$0x263d5a0, __temp_66$0x263d5a0
            stelem sumw$0x262c300, i$0x262c300, __temp_67$0x263d5a0
            ldelem __temp_68$0x263d5a0, npt$0x262c300, i$0x262c300
            ldelem __temp_69$0x263d5a0, tlcn$0x262c300, i$0x262c300
            add __temp_70$0x263d5a0, __temp_68$0x263d5a0, __temp_69$0x263d5a0
            stelem npt$0x262c300, i$0x262c300, __temp_70$0x263d5a0
        __temp_53$0x2638e50:
            add __temp_71$0x2638e50, i$0x262c300, 0x1:i8
            mov i$0x262c300, __temp_71$0x2638e50
            br __temp_52$0x2638e50
        __temp_54$0x2638e50:
        __temp_39$0x262c300:
            add __temp_72$0x262c300, j$0x262c300, 0x1:i8
            mov j$0x262c300, __temp_72$0x262c300
            br __temp_38$0x262c300
        __temp_40$0x262c300:
            mov i$0x262c300, 0x0:i8
        __temp_73$0x262c300:
            clt __temp_76$0x262c300, i$0x262c300, 0x2:i8
            bz __temp_76$0x262c300, __temp_75$0x262c300
            ldelem __temp_78$0x2643c60, npt$0x262c300, i$0x262c300
            cne __temp_79$0x2643c60, __temp_78$0x2643c60, 0x0:i8
            bnz __temp_79$0x2643c60, __temp_80$0x2643c60
            stelem cx$0x2556d40, i$0x262c300, 0x7FFFFFFFFFFFFFF:i8
            stelem cy$0x2556d40, i$0x262c300, 0x7FFFFFFFFFFFFFF:i8
            stelem cz$0x2556d40, i$0x262c300, 0x7FFFFFFFFFFFFFF:i8
            stelem cw$0x2556d40, i$0x262c300, 0x7FFFFFFFFFFFFFF:i8
            br __temp_77$0x2643c60
        __temp_80$0x2643c60:
            ldelem __temp_81$0x2644340, sumx$0x262c300, i$0x262c300
            ldelem __temp_82$0x2644340, npt$0x262c300, i$0x262c300
            div __temp_83$0x2644340, __temp_81$0x2644340, __temp_82$0x2644340
            stelem cx$0x2556d40, i$0x262c300, __temp_83$0x2644340
            ldelem __temp_84$0x2644340, sumy$0x262c300, i$0x262c300
            ldelem __temp_85$0x2644340, npt$0x262c300, i$0x262c300
            div __temp_86$0x2644340, __temp_84$0x2644340, __temp_85$0x2644340
            stelem cy$0x2556d40, i$0x262c300, __temp_86$0x2644340
            ldelem __temp_87$0x2644340, sumz$0x262c300, i$0x262c300
            ldelem __temp_88$0x2644340, npt$0x262c300, i$0x262c300
            div __temp_89$0x2644340, __temp_87$0x2644340, __temp_88$0x2644340
            stelem cz$0x2556d40, i$0x262c300, __temp_89$0x2644340
            ldelem __temp_90$0x2644340, sumw$0x262c300, i$0x262c300
            ldelem __temp_91$0x2644340, npt$0x262c300, i$0x262c300
            div __temp_92$0x2644340, __temp_90$0x2644340, __temp_91$0x2644340
            stelem cw$0x2556d40, i$0x262c300, __temp_92$0x2644340
        __temp_77$0x2643c60:
        __temp_74$0x262c300:
            add __temp_93$0x262c300, i$0x262c300, 0x1:i8
            mov i$0x262c300, __temp_93$0x262c300
            br __temp_73$0x262c300
        __temp_75$0x262c300:
            call output_char$0x2556d40, <missing>, 0x69:i1
            call output_char$0x2556d40, <missing>, 0x74:i1
            call output_char$0x2556d40, <missing>, 0x65:i1
            call output_char$0x2556d40, <missing>, 0x72:i1
            call output_char$0x2556d40, <missing>, 0x3A:i1
            call output_q$0x2556d40, <missing>, iter$0x2556d40
            call output_char$0x2556d40, <missing>, 0xA:i8
            add __temp_94$0x262c300, iter$0x2556d40, 0x1:i8
            mov iter$0x2556d40, __temp_94$0x262c300
            clt __temp_96$0x262c300, iter$0x2556d40, 0x6:i8
            bnz __temp_96$0x262c300, __temp_97$0x262c300
            call kmeans_finish$0x2556d40, <missing>
            br __temp_95$0x262c300
        __temp_97$0x262c300:
            call start_iteration$0x2556d40, <missing>
        __temp_95$0x262c300:
            asm "exit:cd"
    }
    function recluster_runner
    {
            div __temp_98$0x268f420, start$0x268f180, 0xA:i8
            mov partid$0x268f420, __temp_98$0x268f420
            mul __temp_100$0x268f420, 0x202:i8, partid$0x268f420
            ldelema __temp_99$0x268f420, lcx$0x2556d40, __temp_100$0x268f420
            mov mylcx$0x268f420, __temp_99$0x268f420
            mul __temp_102$0x268f420, 0x202:i8, partid$0x268f420
            ldelema __temp_101$0x268f420, lcy$0x2556d40, __temp_102$0x268f420
            mov mylcy$0x268f420, __temp_101$0x268f420
            mul __temp_104$0x268f420, 0x202:i8, partid$0x268f420
            ldelema __temp_103$0x268f420, lcz$0x2556d40, __temp_104$0x268f420
            mov mylcz$0x268f420, __temp_103$0x268f420
            mul __temp_106$0x268f420, 0x202:i8, partid$0x268f420
            ldelema __temp_105$0x268f420, lcw$0x2556d40, __temp_106$0x268f420
            mov mylcw$0x268f420, __temp_105$0x268f420
            mul __temp_108$0x268f420, 0x202:i8, partid$0x268f420
            ldelema __temp_107$0x268f420, lcn$0x2556d40, __temp_108$0x268f420
            mov mylcn$0x268f420, __temp_107$0x268f420
            mov i$0x268f420, 0x0:i8
        __temp_109$0x268f420:
            clt __temp_112$0x268f420, i$0x268f420, 0x2:i8
            bz __temp_112$0x268f420, __temp_111$0x268f420
            stelem mylcx$0x268f420, i$0x268f420, 0x0:i8
            stelem mylcy$0x268f420, i$0x268f420, 0x0:i8
            stelem mylcz$0x268f420, i$0x268f420, 0x0:i8
            stelem mylcw$0x268f420, i$0x268f420, 0x0:i8
            stelem mylcn$0x268f420, i$0x268f420, 0x0:i8
        __temp_110$0x268f420:
            add __temp_113$0x268f420, i$0x268f420, 0x1:i8
            mov i$0x268f420, __temp_113$0x268f420
            br __temp_109$0x268f420
        __temp_111$0x268f420:
            mov i$0x268f420, start$0x268f180
        __temp_114$0x268f420:
            clt __temp_117$0x268f420, i$0x268f420, end$0x268f180
            bz __temp_117$0x268f420, __temp_116$0x268f420
            ldelem __temp_118$0x2699800, x$0x2556d40, i$0x268f420
            mov xt$0x268f420, __temp_118$0x2699800
            ldelem __temp_119$0x2699800, y$0x2556d40, i$0x268f420
            mov yt$0x268f420, __temp_119$0x2699800
            ldelem __temp_120$0x2699800, z$0x2556d40, i$0x268f420
            mov zt$0x268f420, __temp_120$0x2699800
            ldelem __temp_121$0x2699800, w$0x2556d40, i$0x268f420
            mov wt$0x268f420, __temp_121$0x2699800
            mov j$0x268f420, 0x0:i8
            ldelem __temp_122$0x2699800, cx$0x2556d40, j$0x268f420
            sub __temp_123$0x2699800, xt$0x268f420, __temp_122$0x2699800
            mov reg1$0x2556d40, __temp_123$0x2699800
            ldelem __temp_124$0x2699800, cy$0x2556d40, j$0x268f420
            sub __temp_125$0x2699800, yt$0x268f420, __temp_124$0x2699800
            mov reg2$0x2556d40, __temp_125$0x2699800
            ldelem __temp_126$0x2699800, cz$0x2556d40, j$0x268f420
            sub __temp_127$0x2699800, zt$0x268f420, __temp_126$0x2699800
            mov reg3$0x2556d40, __temp_127$0x2699800
            ldelem __temp_128$0x2699800, cw$0x2556d40, j$0x268f420
            sub __temp_129$0x2699800, wt$0x268f420, __temp_128$0x2699800
            mov reg4$0x2556d40, __temp_129$0x2699800
            mul __temp_130$0x2699800, reg1$0x2556d40, reg1$0x2556d40
            mul __temp_131$0x2699800, reg2$0x2556d40, reg2$0x2556d40
            add __temp_132$0x2699800, __temp_130$0x2699800, __temp_131$0x2699800
            mul __temp_133$0x2699800, reg3$0x2556d40, reg3$0x2556d40
            add __temp_134$0x2699800, __temp_132$0x2699800, __temp_133$0x2699800
            mul __temp_135$0x2699800, reg4$0x2556d40, reg4$0x2556d40
            add __temp_136$0x2699800, __temp_134$0x2699800, __temp_135$0x2699800
            lda __temp_137$0x2699800, d$0x268f420
            sti __temp_137$0x2699800, __temp_136$0x2699800
            mov mind$0x268f420, d$0x268f420
            mov mini$0x268f420, j$0x268f420
            mov j$0x268f420, 0x1:i8
        __temp_138$0x2699800:
            clt __temp_141$0x2699800, j$0x268f420, 0x2:i8
            bz __temp_141$0x2699800, __temp_140$0x2699800
            ldelem __temp_142$0x269fb60, cx$0x2556d40, j$0x268f420
            sub __temp_143$0x269fb60, xt$0x268f420, __temp_142$0x269fb60
            mov reg1$0x2556d40, __temp_143$0x269fb60
            ldelem __temp_144$0x269fb60, cy$0x2556d40, j$0x268f420
            sub __temp_145$0x269fb60, yt$0x268f420, __temp_144$0x269fb60
            mov reg2$0x2556d40, __temp_145$0x269fb60
            ldelem __temp_146$0x269fb60, cz$0x2556d40, j$0x268f420
            sub __temp_147$0x269fb60, zt$0x268f420, __temp_146$0x269fb60
            mov reg3$0x2556d40, __temp_147$0x269fb60
            ldelem __temp_148$0x269fb60, cw$0x2556d40, j$0x268f420
            sub __temp_149$0x269fb60, wt$0x268f420, __temp_148$0x269fb60
            mov reg4$0x2556d40, __temp_149$0x269fb60
            mul __temp_150$0x269fb60, reg1$0x2556d40, reg1$0x2556d40
            mul __temp_151$0x269fb60, reg2$0x2556d40, reg2$0x2556d40
            add __temp_152$0x269fb60, __temp_150$0x269fb60, __temp_151$0x269fb60
            mul __temp_153$0x269fb60, reg3$0x2556d40, reg3$0x2556d40
            add __temp_154$0x269fb60, __temp_152$0x269fb60, __temp_153$0x269fb60
            mul __temp_155$0x269fb60, reg4$0x2556d40, reg4$0x2556d40
            add __temp_156$0x269fb60, __temp_154$0x269fb60, __temp_155$0x269fb60
            lda __temp_157$0x269fb60, d$0x268f420
            sti __temp_157$0x269fb60, __temp_156$0x269fb60
            clt __temp_159$0x269fb60, d$0x268f420, mind$0x268f420
            bnz __temp_159$0x269fb60, __temp_160$0x269fb60
            br __temp_158$0x269fb60
        __temp_160$0x269fb60:
            mov mind$0x268f420, d$0x268f420
            mov mini$0x268f420, j$0x268f420
        __temp_158$0x269fb60:
        __temp_139$0x2699800:
            add __temp_161$0x2699800, j$0x268f420, 0x1:i8
            mov j$0x268f420, __temp_161$0x2699800
            br __temp_138$0x2699800
        __temp_140$0x2699800:
            ldelem __temp_162$0x2699800, mylcn$0x268f420, mini$0x268f420
            add __temp_163$0x2699800, __temp_162$0x2699800, 0x1:i8
            stelem mylcn$0x268f420, mini$0x268f420, __temp_163$0x2699800
            ldelem __temp_164$0x2699800, mylcx$0x268f420, mini$0x268f420
            add __temp_165$0x2699800, __temp_164$0x2699800, xt$0x268f420
            stelem mylcx$0x268f420, mini$0x268f420, __temp_165$0x2699800
            ldelem __temp_166$0x2699800, mylcy$0x268f420, mini$0x268f420
            add __temp_167$0x2699800, __temp_166$0x2699800, yt$0x268f420
            stelem mylcy$0x268f420, mini$0x268f420, __temp_167$0x2699800
            ldelem __temp_168$0x2699800, mylcz$0x268f420, mini$0x268f420
            add __temp_169$0x2699800, __temp_168$0x2699800, zt$0x268f420
            stelem mylcz$0x268f420, mini$0x268f420, __temp_169$0x2699800
            ldelem __temp_170$0x2699800, mylcw$0x268f420, mini$0x268f420
            add __temp_171$0x2699800, __temp_170$0x2699800, wt$0x268f420
            stelem mylcw$0x268f420, mini$0x268f420, __temp_171$0x2699800
        __temp_115$0x268f420:
            add __temp_172$0x268f420, i$0x268f420, 0x1:i8
            mov i$0x268f420, __temp_172$0x268f420
            br __temp_114$0x268f420
        __temp_116$0x268f420:
            div __temp_173$0x268f420, start$0x268f180, 0xA:i8
            mul __temp_174$0x268f420, __temp_173$0x268f420, 0x200:i8
            stelem trigger$0x2556d40, __temp_174$0x268f420, 0x2:i8
            asm "exit:cd"
    }
    function start_iteration
    {
            mov i$0x26e7a40, 0x0:i8
        __temp_175$0x26e7a40:
            clt __temp_178$0x26e7a40, i$0x26e7a40, 0xA:i8
            bz __temp_178$0x26e7a40, __temp_177$0x26e7a40
            div __temp_179$0x26e9440, i$0x26e7a40, 0xA:i8
            mul __temp_180$0x26e9440, __temp_179$0x26e9440, 0x200:i8
            stelem trigger$0x2556d40, __temp_180$0x26e9440, 0x0:i8
            mul __temp_181$0x26e9440, 0x202:i8, i$0x26e7a40
            div __temp_182$0x26e9440, __temp_181$0x26e9440, 0xA:i8
            mov tmp1$0x26e7a40, __temp_182$0x26e9440
            add __temp_183$0x26e9440, tmp1$0x26e7a40, 0x2:i8
            add __temp_184$0x26e9440, __temp_183$0x26e9440, 0x200:i8
            mov tmp2$0x26e7a40, __temp_184$0x26e9440
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xf:msq, 0x200001010:msq"
            add __temp_190$0x26e9440, i$0x26e7a40, 0xA:i8
            ldelema __temp_188$0x26e9440, x$0x2556d40, i$0x26e7a40
            sub __temp_189$0x26e9440, __temp_190$0x26e9440, i$0x26e7a40
            mul __temp_189$0x26e9440, 0x8:i, __temp_189$0x26e9440
            sti 0x200001018:i, __temp_188$0x26e9440
            sti 0x200001020:i, __temp_189$0x26e9440
            add __temp_193$0x26e9440, i$0x26e7a40, 0xA:i8
            ldelema __temp_191$0x26e9440, y$0x2556d40, i$0x26e7a40
            sub __temp_192$0x26e9440, __temp_193$0x26e9440, i$0x26e7a40
            mul __temp_192$0x26e9440, 0x8:i, __temp_192$0x26e9440
            sti 0x200001028:i, __temp_191$0x26e9440
            sti 0x200001030:i, __temp_192$0x26e9440
            add __temp_196$0x26e9440, i$0x26e7a40, 0xA:i8
            ldelema __temp_194$0x26e9440, z$0x2556d40, i$0x26e7a40
            sub __temp_195$0x26e9440, __temp_196$0x26e9440, i$0x26e7a40
            mul __temp_195$0x26e9440, 0x8:i, __temp_195$0x26e9440
            sti 0x200001038:i, __temp_194$0x26e9440
            sti 0x200001040:i, __temp_195$0x26e9440
            add __temp_199$0x26e9440, i$0x26e7a40, 0xA:i8
            ldelema __temp_197$0x26e9440, w$0x2556d40, i$0x26e7a40
            sub __temp_198$0x26e9440, __temp_199$0x26e9440, i$0x26e7a40
            mul __temp_198$0x26e9440, 0x8:i, __temp_198$0x26e9440
            sti 0x200001048:i, __temp_197$0x26e9440
            sti 0x200001050:i, __temp_198$0x26e9440
            add __temp_202$0x26e9440, i$0x26e7a40, 0xA:i8
            ldelema __temp_200$0x26e9440, ci$0x2556d40, i$0x26e7a40
            sub __temp_201$0x26e9440, __temp_202$0x26e9440, i$0x26e7a40
            mul __temp_201$0x26e9440, 0x8:i, __temp_201$0x26e9440
            sti 0x200001058:i, __temp_200$0x26e9440
            sti 0x200001060:i, __temp_201$0x26e9440
            ldelema __temp_203$0x26e9440, cx$0x2556d40, 0x0:i8
            sub __temp_204$0x26e9440, 0x2:i8, 0x0:i8
            mul __temp_204$0x26e9440, 0x8:i, __temp_204$0x26e9440
            sti 0x200001068:i, __temp_203$0x26e9440
            sti 0x200001070:i, __temp_204$0x26e9440
            ldelema __temp_205$0x26e9440, cy$0x2556d40, 0x0:i8
            sub __temp_206$0x26e9440, 0x2:i8, 0x0:i8
            mul __temp_206$0x26e9440, 0x8:i, __temp_206$0x26e9440
            sti 0x200001078:i, __temp_205$0x26e9440
            sti 0x200001080:i, __temp_206$0x26e9440
            ldelema __temp_207$0x26e9440, cz$0x2556d40, 0x0:i8
            sub __temp_208$0x26e9440, 0x2:i8, 0x0:i8
            mul __temp_208$0x26e9440, 0x8:i, __temp_208$0x26e9440
            sti 0x200001088:i, __temp_207$0x26e9440
            sti 0x200001090:i, __temp_208$0x26e9440
            ldelema __temp_209$0x26e9440, cw$0x2556d40, 0x0:i8
            sub __temp_210$0x26e9440, 0x2:i8, 0x0:i8
            mul __temp_210$0x26e9440, 0x8:i, __temp_210$0x26e9440
            sti 0x200001098:i, __temp_209$0x26e9440
            sti 0x2000010A0:i, __temp_210$0x26e9440
            div __temp_213$0x26e9440, i$0x26e7a40, 0xA:i8
            mul __temp_214$0x26e9440, __temp_213$0x26e9440, 0x200:i8
            div __temp_215$0x26e9440, i$0x26e7a40, 0xA:i8
            add __temp_216$0x26e9440, __temp_215$0x26e9440, 0x1:i8
            mul __temp_217$0x26e9440, __temp_216$0x26e9440, 0x200:i8
            ldelema __temp_211$0x26e9440, trigger$0x2556d40, __temp_214$0x26e9440
            sub __temp_212$0x26e9440, __temp_217$0x26e9440, __temp_214$0x26e9440
            mul __temp_212$0x26e9440, 0x8:i, __temp_212$0x26e9440
            sti 0x2000010A8:i, __temp_211$0x26e9440
            sti 0x2000010B0:i, __temp_212$0x26e9440
            ldelema __temp_218$0x26e9440, lcx$0x2556d40, tmp1$0x26e7a40
            sub __temp_219$0x26e9440, tmp2$0x26e7a40, tmp1$0x26e7a40
            mul __temp_219$0x26e9440, 0x8:i, __temp_219$0x26e9440
            sti 0x2000010B8:i, __temp_218$0x26e9440
            sti 0x2000010C0:i, __temp_219$0x26e9440
            ldelema __temp_220$0x26e9440, lcy$0x2556d40, tmp1$0x26e7a40
            sub __temp_221$0x26e9440, tmp2$0x26e7a40, tmp1$0x26e7a40
            mul __temp_221$0x26e9440, 0x8:i, __temp_221$0x26e9440
            sti 0x2000010C8:i, __temp_220$0x26e9440
            sti 0x2000010D0:i, __temp_221$0x26e9440
            ldelema __temp_222$0x26e9440, lcz$0x2556d40, tmp1$0x26e7a40
            sub __temp_223$0x26e9440, tmp2$0x26e7a40, tmp1$0x26e7a40
            mul __temp_223$0x26e9440, 0x8:i, __temp_223$0x26e9440
            sti 0x2000010D8:i, __temp_222$0x26e9440
            sti 0x2000010E0:i, __temp_223$0x26e9440
            ldelema __temp_224$0x26e9440, lcw$0x2556d40, tmp1$0x26e7a40
            sub __temp_225$0x26e9440, tmp2$0x26e7a40, tmp1$0x26e7a40
            mul __temp_225$0x26e9440, 0x8:i, __temp_225$0x26e9440
            sti 0x2000010E8:i, __temp_224$0x26e9440
            sti 0x2000010F0:i, __temp_225$0x26e9440
            ldelema __temp_226$0x26e9440, lcn$0x2556d40, tmp1$0x26e7a40
            sub __temp_227$0x26e9440, tmp2$0x26e7a40, tmp1$0x26e7a40
            mul __temp_227$0x26e9440, 0x8:i, __temp_227$0x26e9440
            sti 0x2000010F8:i, __temp_226$0x26e9440
            sti 0x200001100:i, __temp_227$0x26e9440
            asm "mov $0x0:msq, 0x200001108:msq"
            asm "mov $__newr0:msq, 0x200001110:msq"
            asm "mov $0x200001000:msq, 0x200001118:msq"
            asm "mov $0x200001010:msq, 0x200001120:msq"
            asm "mov $0x200001108:msq, 0x200001128:msq"
            asm "mov $0x200001110:msq, 0x200001130:msq"
            asm "newr 0x200001118, 0x200001120, 0x200001128, 0x200001130"
            ldi __temp_185$0x26e9440, 0x100000400:i
            ldi __temp_186$0x26e9440, 0x100000408:i
            add __temp_187$0x26e9440, __temp_185$0x26e9440, __temp_186$0x26e9440
            lda __temp_228$0x26e9440, recluster_runner$0x2556d40
            sub __temp_187$0x26e9440, __temp_187$0x26e9440, 0x8:i8
            sti __temp_187$0x26e9440, __temp_228$0x26e9440
            sub __temp_187$0x26e9440, __temp_187$0x26e9440, 0x8:i8
            sti __temp_187$0x26e9440, 0x10:i8
            add __temp_229$0x26e9440, i$0x26e7a40, 0xA:i8
            sub __temp_187$0x26e9440, __temp_187$0x26e9440, 0x8:i8
            sti __temp_187$0x26e9440, __temp_229$0x26e9440
            sub __temp_187$0x26e9440, __temp_187$0x26e9440, 0x8:i8
            sti __temp_187$0x26e9440, i$0x26e7a40
        __temp_176$0x26e7a40:
            add __temp_230$0x26e7a40, i$0x26e7a40, 0xA:i8
            mov i$0x26e7a40, __temp_230$0x26e7a40
            br __temp_175$0x26e7a40
        __temp_177$0x26e7a40:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            lda __temp_234$0x26e7a40, iter$0x2556d40
            mov __temp_235$0x26e7a40, 0x8:i
            sti 0x200001018:i, __temp_234$0x26e7a40
            sti 0x200001020:i, __temp_235$0x26e7a40
            ldelema __temp_236$0x26e7a40, cx$0x2556d40, 0x0:i8
            sub __temp_237$0x26e7a40, 0x2:i8, 0x0:i8
            mul __temp_237$0x26e7a40, 0x8:i, __temp_237$0x26e7a40
            sti 0x200001028:i, __temp_236$0x26e7a40
            sti 0x200001030:i, __temp_237$0x26e7a40
            ldelema __temp_238$0x26e7a40, cy$0x2556d40, 0x0:i8
            sub __temp_239$0x26e7a40, 0x2:i8, 0x0:i8
            mul __temp_239$0x26e7a40, 0x8:i, __temp_239$0x26e7a40
            sti 0x200001038:i, __temp_238$0x26e7a40
            sti 0x200001040:i, __temp_239$0x26e7a40
            ldelema __temp_240$0x26e7a40, cz$0x2556d40, 0x0:i8
            sub __temp_241$0x26e7a40, 0x2:i8, 0x0:i8
            mul __temp_241$0x26e7a40, 0x8:i, __temp_241$0x26e7a40
            sti 0x200001048:i, __temp_240$0x26e7a40
            sti 0x200001050:i, __temp_241$0x26e7a40
            ldelema __temp_242$0x26e7a40, cw$0x2556d40, 0x0:i8
            sub __temp_243$0x26e7a40, 0x2:i8, 0x0:i8
            mul __temp_243$0x26e7a40, 0x8:i, __temp_243$0x26e7a40
            sti 0x200001058:i, __temp_242$0x26e7a40
            sti 0x200001060:i, __temp_243$0x26e7a40
            add __temp_246$0x26e7a40, 0x2:i8, 0x200:i8
            mul __temp_247$0x26e7a40, __temp_246$0x26e7a40, 0xA:i8
            div __temp_248$0x26e7a40, __temp_247$0x26e7a40, 0xA:i8
            ldelema __temp_244$0x26e7a40, lcx$0x2556d40, 0x0:i8
            sub __temp_245$0x26e7a40, __temp_248$0x26e7a40, 0x0:i8
            mul __temp_245$0x26e7a40, 0x8:i, __temp_245$0x26e7a40
            sti 0x200001068:i, __temp_244$0x26e7a40
            sti 0x200001070:i, __temp_245$0x26e7a40
            add __temp_251$0x26e7a40, 0x2:i8, 0x200:i8
            mul __temp_252$0x26e7a40, __temp_251$0x26e7a40, 0xA:i8
            div __temp_253$0x26e7a40, __temp_252$0x26e7a40, 0xA:i8
            ldelema __temp_249$0x26e7a40, lcy$0x2556d40, 0x0:i8
            sub __temp_250$0x26e7a40, __temp_253$0x26e7a40, 0x0:i8
            mul __temp_250$0x26e7a40, 0x8:i, __temp_250$0x26e7a40
            sti 0x200001078:i, __temp_249$0x26e7a40
            sti 0x200001080:i, __temp_250$0x26e7a40
            add __temp_256$0x26e7a40, 0x2:i8, 0x200:i8
            mul __temp_257$0x26e7a40, __temp_256$0x26e7a40, 0xA:i8
            div __temp_258$0x26e7a40, __temp_257$0x26e7a40, 0xA:i8
            ldelema __temp_254$0x26e7a40, lcz$0x2556d40, 0x0:i8
            sub __temp_255$0x26e7a40, __temp_258$0x26e7a40, 0x0:i8
            mul __temp_255$0x26e7a40, 0x8:i, __temp_255$0x26e7a40
            sti 0x200001088:i, __temp_254$0x26e7a40
            sti 0x200001090:i, __temp_255$0x26e7a40
            add __temp_261$0x26e7a40, 0x2:i8, 0x200:i8
            mul __temp_262$0x26e7a40, __temp_261$0x26e7a40, 0xA:i8
            div __temp_263$0x26e7a40, __temp_262$0x26e7a40, 0xA:i8
            ldelema __temp_259$0x26e7a40, lcw$0x2556d40, 0x0:i8
            sub __temp_260$0x26e7a40, __temp_263$0x26e7a40, 0x0:i8
            mul __temp_260$0x26e7a40, 0x8:i, __temp_260$0x26e7a40
            sti 0x200001098:i, __temp_259$0x26e7a40
            sti 0x2000010A0:i, __temp_260$0x26e7a40
            add __temp_266$0x26e7a40, 0x2:i8, 0x200:i8
            mul __temp_267$0x26e7a40, __temp_266$0x26e7a40, 0xA:i8
            div __temp_268$0x26e7a40, __temp_267$0x26e7a40, 0xA:i8
            ldelema __temp_264$0x26e7a40, lcn$0x2556d40, 0x0:i8
            sub __temp_265$0x26e7a40, __temp_268$0x26e7a40, 0x0:i8
            mul __temp_265$0x26e7a40, 0x8:i, __temp_265$0x26e7a40
            sti 0x2000010A8:i, __temp_264$0x26e7a40
            sti 0x2000010B0:i, __temp_265$0x26e7a40
            asm "mov $0x1:msq, 0x2000010b8:msq"
            div __temp_271$0x26e7a40, 0xA:i8, 0xA:i8
            add __temp_272$0x26e7a40, __temp_271$0x26e7a40, 0x1:i8
            mul __temp_273$0x26e7a40, __temp_272$0x26e7a40, 0x200:i8
            ldelema __temp_269$0x26e7a40, trigger$0x2556d40, 0x0:i8
            sub __temp_270$0x26e7a40, __temp_273$0x26e7a40, 0x0:i8
            mul __temp_270$0x26e7a40, 0x8:i, __temp_270$0x26e7a40
            sti 0x2000010C0:i, __temp_269$0x26e7a40
            sti 0x2000010C8:i, __temp_270$0x26e7a40
            asm "mov $__newr0:msq, 0x2000010d0:msq"
            asm "mov $0x200001000:msq, 0x2000010d8:msq"
            asm "mov $0x200001010:msq, 0x2000010e0:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e8:msq"
            asm "mov $0x2000010d0:msq, 0x2000010f0:msq"
            asm "newr 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_231$0x26e7a40, 0x100000400:i
            ldi __temp_232$0x26e7a40, 0x100000408:i
            add __temp_233$0x26e7a40, __temp_231$0x26e7a40, __temp_232$0x26e7a40
            lda __temp_274$0x26e7a40, on_recluster_finished$0x2556d40
            sub __temp_233$0x26e7a40, __temp_233$0x26e7a40, 0x8:i8
            sti __temp_233$0x26e7a40, __temp_274$0x26e7a40
            sub __temp_233$0x26e7a40, __temp_233$0x26e7a40, 0x8:i8
            sti __temp_233$0x26e7a40, 0x8:i8
            sub __temp_233$0x26e7a40, __temp_233$0x26e7a40, 0x8:i8
            sti __temp_233$0x26e7a40, iter$0x2556d40
            ret
    }
    function on_init1_finished
    {
            mov i$0x2708610, 0x0:i8
        __temp_275$0x2708610:
            clt __temp_278$0x2708610, i$0x2708610, 0x200:i8
            bz __temp_278$0x2708610, __temp_277$0x2708610
            ldelem __temp_280$0x2709cf0, trigger$0x2556d40, i$0x2708610
            cne __temp_281$0x2709cf0, __temp_280$0x2709cf0, 0x1:i8
            bnz __temp_281$0x2709cf0, __temp_282$0x2709cf0
            br __temp_279$0x2709cf0
        __temp_282$0x2709cf0:
            asm "exit:a"
        __temp_279$0x2709cf0:
        __temp_276$0x2708610:
            add __temp_283$0x2708610, i$0x2708610, 0x200:i8
            mov i$0x2708610, __temp_283$0x2708610
            br __temp_275$0x2708610
        __temp_277$0x2708610:
            stelem trigger$0x2556d40, 0x0:i8, 0x3:i8
            mov i$0x2708610, 0x0:i8
        __temp_284$0x2708610:
            clt __temp_287$0x2708610, i$0x2708610, 0x2:i8
            bz __temp_287$0x2708610, __temp_286$0x2708610
            ldelem __temp_288$0x270bb90, x$0x2556d40, i$0x2708610
            stelem cx$0x2556d40, i$0x2708610, __temp_288$0x270bb90
            ldelem __temp_289$0x270bb90, y$0x2556d40, i$0x2708610
            stelem cy$0x2556d40, i$0x2708610, __temp_289$0x270bb90
            ldelem __temp_290$0x270bb90, z$0x2556d40, i$0x2708610
            stelem cz$0x2556d40, i$0x2708610, __temp_290$0x270bb90
            ldelem __temp_291$0x270bb90, w$0x2556d40, i$0x2708610
            stelem cw$0x2556d40, i$0x2708610, __temp_291$0x270bb90
        __temp_285$0x2708610:
            add __temp_292$0x2708610, i$0x2708610, 0x1:i8
            mov i$0x2708610, __temp_292$0x2708610
            br __temp_284$0x2708610
        __temp_286$0x2708610:
            mov iter$0x2556d40, 0x0:i8
            call start_iteration$0x2556d40, <missing>
            asm "exit:cd"
    }
    function init_runner
    {
            call srand$0x2556d40, <missing>, 0x1:i8
            mov i$0x2721880, 0x0:i8
        __temp_293$0x2721880:
            clt __temp_296$0x2721880, i$0x2721880, start$0x27215e0
            bz __temp_296$0x2721880, __temp_295$0x2721880
            call input_q$0x2556d40, __temp_297$0x27233c0
            mov t$0x2721880, __temp_297$0x27233c0
            call input_q$0x2556d40, __temp_298$0x27233c0
            mov t$0x2721880, __temp_298$0x27233c0
            call input_q$0x2556d40, __temp_299$0x27233c0
            mov t$0x2721880, __temp_299$0x27233c0
            call input_q$0x2556d40, __temp_300$0x27233c0
            mov t$0x2721880, __temp_300$0x27233c0
        __temp_294$0x2721880:
            add __temp_301$0x2721880, i$0x2721880, 0x1:i8
            mov i$0x2721880, __temp_301$0x2721880
            br __temp_293$0x2721880
        __temp_295$0x2721880:
            mov i$0x2721880, start$0x27215e0
        __temp_302$0x2721880:
            clt __temp_305$0x2721880, i$0x2721880, end$0x27215e0
            bz __temp_305$0x2721880, __temp_304$0x2721880
            call input_q$0x2556d40, __temp_306$0x2725230
            stelem x$0x2556d40, i$0x2721880, __temp_306$0x2725230
            call input_q$0x2556d40, __temp_307$0x2725230
            stelem y$0x2556d40, i$0x2721880, __temp_307$0x2725230
            call input_q$0x2556d40, __temp_308$0x2725230
            stelem z$0x2556d40, i$0x2721880, __temp_308$0x2725230
            call input_q$0x2556d40, __temp_309$0x2725230
            stelem w$0x2556d40, i$0x2721880, __temp_309$0x2725230
        __temp_303$0x2721880:
            add __temp_310$0x2721880, i$0x2721880, 0x1:i8
            mov i$0x2721880, __temp_310$0x2721880
            br __temp_302$0x2721880
        __temp_304$0x2721880:
            div __temp_311$0x2721880, start$0x27215e0, 0xA:i8
            mul __temp_312$0x2721880, __temp_311$0x2721880, 0x200:i8
            stelem trigger$0x2556d40, __temp_312$0x2721880, 0x1:i8
            asm "exit:c"
    }
    function init_runner_stdin
    {
            mov i$0x2738010, 0x0:i8
        __temp_313$0x2738010:
            clt __temp_316$0x2738010, i$0x2738010, start$0x2737d70
            bz __temp_316$0x2738010, __temp_315$0x2738010
            call input_q$0x2556d40, __temp_317$0x27395f0
            mov t$0x2738010, __temp_317$0x27395f0
            call input_q$0x2556d40, __temp_318$0x27395f0
            mov t$0x2738010, __temp_318$0x27395f0
            call input_q$0x2556d40, __temp_319$0x27395f0
            mov t$0x2738010, __temp_319$0x27395f0
            call input_q$0x2556d40, __temp_320$0x27395f0
            mov t$0x2738010, __temp_320$0x27395f0
        __temp_314$0x2738010:
            add __temp_321$0x2738010, i$0x2738010, 0x1:i8
            mov i$0x2738010, __temp_321$0x2738010
            br __temp_313$0x2738010
        __temp_315$0x2738010:
            mov i$0x2738010, start$0x2737d70
        __temp_322$0x2738010:
            clt __temp_325$0x2738010, i$0x2738010, end$0x2737d70
            bz __temp_325$0x2738010, __temp_324$0x2738010
            call input_q$0x2556d40, __temp_326$0x273b480
            stelem x$0x2556d40, i$0x2738010, __temp_326$0x273b480
            call input_q$0x2556d40, __temp_327$0x273b480
            stelem y$0x2556d40, i$0x2738010, __temp_327$0x273b480
            call input_q$0x2556d40, __temp_328$0x273b480
            stelem z$0x2556d40, i$0x2738010, __temp_328$0x273b480
            call input_q$0x2556d40, __temp_329$0x273b480
            stelem w$0x2556d40, i$0x2738010, __temp_329$0x273b480
        __temp_323$0x2738010:
            add __temp_330$0x2738010, i$0x2738010, 0x1:i8
            mov i$0x2738010, __temp_330$0x2738010
            br __temp_322$0x2738010
        __temp_324$0x2738010:
            mov i$0x2738010, start$0x2737d70
        __temp_331$0x2738010:
            clt __temp_334$0x2738010, i$0x2738010, end$0x2737d70
            bz __temp_334$0x2738010, __temp_333$0x2738010
            div __temp_335$0x273da50, i$0x2738010, 0xA:i8
            mul __temp_336$0x273da50, __temp_335$0x273da50, 0x200:i8
            stelem trigger$0x2556d40, __temp_336$0x273da50, 0x1:i8
        __temp_332$0x2738010:
            add __temp_337$0x2738010, i$0x2738010, 0x1:i8
            mov i$0x2738010, __temp_337$0x2738010
            br __temp_331$0x2738010
        __temp_333$0x2738010:
            asm "exit:c"
    }
    function init0
    {
            mov i$0x2762d20, 0x0:i8
        __temp_338$0x2762d20:
            clt __temp_341$0x2762d20, i$0x2762d20, 0xA:i8
            bz __temp_341$0x2762d20, __temp_340$0x2762d20
            div __temp_342$0x2763f90, i$0x2762d20, 0xA:i8
            mul __temp_343$0x2763f90, __temp_342$0x2763f90, 0x200:i8
            stelem trigger$0x2556d40, __temp_343$0x2763f90, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x5:msq, 0x200001010:msq"
            add __temp_349$0x2763f90, i$0x2762d20, 0xA:i8
            ldelema __temp_347$0x2763f90, x$0x2556d40, i$0x2762d20
            sub __temp_348$0x2763f90, __temp_349$0x2763f90, i$0x2762d20
            mul __temp_348$0x2763f90, 0x8:i, __temp_348$0x2763f90
            sti 0x200001018:i, __temp_347$0x2763f90
            sti 0x200001020:i, __temp_348$0x2763f90
            add __temp_352$0x2763f90, i$0x2762d20, 0xA:i8
            ldelema __temp_350$0x2763f90, y$0x2556d40, i$0x2762d20
            sub __temp_351$0x2763f90, __temp_352$0x2763f90, i$0x2762d20
            mul __temp_351$0x2763f90, 0x8:i, __temp_351$0x2763f90
            sti 0x200001028:i, __temp_350$0x2763f90
            sti 0x200001030:i, __temp_351$0x2763f90
            add __temp_355$0x2763f90, i$0x2762d20, 0xA:i8
            ldelema __temp_353$0x2763f90, z$0x2556d40, i$0x2762d20
            sub __temp_354$0x2763f90, __temp_355$0x2763f90, i$0x2762d20
            mul __temp_354$0x2763f90, 0x8:i, __temp_354$0x2763f90
            sti 0x200001038:i, __temp_353$0x2763f90
            sti 0x200001040:i, __temp_354$0x2763f90
            add __temp_358$0x2763f90, i$0x2762d20, 0xA:i8
            ldelema __temp_356$0x2763f90, w$0x2556d40, i$0x2762d20
            sub __temp_357$0x2763f90, __temp_358$0x2763f90, i$0x2762d20
            mul __temp_357$0x2763f90, 0x8:i, __temp_357$0x2763f90
            sti 0x200001048:i, __temp_356$0x2763f90
            sti 0x200001050:i, __temp_357$0x2763f90
            div __temp_361$0x2763f90, i$0x2762d20, 0xA:i8
            mul __temp_362$0x2763f90, __temp_361$0x2763f90, 0x200:i8
            div __temp_363$0x2763f90, i$0x2762d20, 0xA:i8
            add __temp_364$0x2763f90, __temp_363$0x2763f90, 0x1:i8
            mul __temp_365$0x2763f90, __temp_364$0x2763f90, 0x200:i8
            ldelema __temp_359$0x2763f90, trigger$0x2556d40, __temp_362$0x2763f90
            sub __temp_360$0x2763f90, __temp_365$0x2763f90, __temp_362$0x2763f90
            mul __temp_360$0x2763f90, 0x8:i, __temp_360$0x2763f90
            sti 0x200001058:i, __temp_359$0x2763f90
            sti 0x200001060:i, __temp_360$0x2763f90
            asm "mov $0x0:msq, 0x200001068:msq"
            asm "mov $__newr0:msq, 0x200001070:msq"
            asm "mov $0x200001000:msq, 0x200001078:msq"
            asm "mov $0x200001010:msq, 0x200001080:msq"
            asm "mov $0x200001068:msq, 0x200001088:msq"
            asm "mov $0x200001070:msq, 0x200001090:msq"
            asm "newr 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_344$0x2763f90, 0x100000400:i
            ldi __temp_345$0x2763f90, 0x100000408:i
            add __temp_346$0x2763f90, __temp_344$0x2763f90, __temp_345$0x2763f90
            lda __temp_366$0x2763f90, init_runner$0x2556d40
            sub __temp_346$0x2763f90, __temp_346$0x2763f90, 0x8:i8
            sti __temp_346$0x2763f90, __temp_366$0x2763f90
            sub __temp_346$0x2763f90, __temp_346$0x2763f90, 0x8:i8
            sti __temp_346$0x2763f90, 0x10:i8
            add __temp_367$0x2763f90, i$0x2762d20, 0xA:i8
            sub __temp_346$0x2763f90, __temp_346$0x2763f90, 0x8:i8
            sti __temp_346$0x2763f90, __temp_367$0x2763f90
            sub __temp_346$0x2763f90, __temp_346$0x2763f90, 0x8:i8
            sti __temp_346$0x2763f90, i$0x2762d20
        __temp_339$0x2762d20:
            add __temp_368$0x2762d20, i$0x2762d20, 0xA:i8
            mov i$0x2762d20, __temp_368$0x2762d20
            br __temp_338$0x2762d20
        __temp_340$0x2762d20:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            ldelema __temp_372$0x2762d20, cx$0x2556d40, 0x0:i8
            sub __temp_373$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_373$0x2762d20, 0x8:i, __temp_373$0x2762d20
            sti 0x200001018:i, __temp_372$0x2762d20
            sti 0x200001020:i, __temp_373$0x2762d20
            ldelema __temp_374$0x2762d20, cy$0x2556d40, 0x0:i8
            sub __temp_375$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_375$0x2762d20, 0x8:i, __temp_375$0x2762d20
            sti 0x200001028:i, __temp_374$0x2762d20
            sti 0x200001030:i, __temp_375$0x2762d20
            ldelema __temp_376$0x2762d20, cz$0x2556d40, 0x0:i8
            sub __temp_377$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_377$0x2762d20, 0x8:i, __temp_377$0x2762d20
            sti 0x200001038:i, __temp_376$0x2762d20
            sti 0x200001040:i, __temp_377$0x2762d20
            ldelema __temp_378$0x2762d20, cw$0x2556d40, 0x0:i8
            sub __temp_379$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_379$0x2762d20, 0x8:i, __temp_379$0x2762d20
            sti 0x200001048:i, __temp_378$0x2762d20
            sti 0x200001050:i, __temp_379$0x2762d20
            ldelema __temp_380$0x2762d20, x$0x2556d40, 0x0:i8
            sub __temp_381$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_381$0x2762d20, 0x8:i, __temp_381$0x2762d20
            sti 0x200001058:i, __temp_380$0x2762d20
            sti 0x200001060:i, __temp_381$0x2762d20
            ldelema __temp_382$0x2762d20, y$0x2556d40, 0x0:i8
            sub __temp_383$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_383$0x2762d20, 0x8:i, __temp_383$0x2762d20
            sti 0x200001068:i, __temp_382$0x2762d20
            sti 0x200001070:i, __temp_383$0x2762d20
            ldelema __temp_384$0x2762d20, z$0x2556d40, 0x0:i8
            sub __temp_385$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_385$0x2762d20, 0x8:i, __temp_385$0x2762d20
            sti 0x200001078:i, __temp_384$0x2762d20
            sti 0x200001080:i, __temp_385$0x2762d20
            ldelema __temp_386$0x2762d20, w$0x2556d40, 0x0:i8
            sub __temp_387$0x2762d20, 0x2:i8, 0x0:i8
            mul __temp_387$0x2762d20, 0x8:i, __temp_387$0x2762d20
            sti 0x200001088:i, __temp_386$0x2762d20
            sti 0x200001090:i, __temp_387$0x2762d20
            ldelema __temp_388$0x2762d20, trigger$0x2556d40, 0x0:i8
            sub __temp_389$0x2762d20, 0xA:i8, 0x0:i8
            mul __temp_389$0x2762d20, 0x8:i, __temp_389$0x2762d20
            sti 0x200001098:i, __temp_388$0x2762d20
            sti 0x2000010A0:i, __temp_389$0x2762d20
            lda __temp_390$0x2762d20, iter$0x2556d40
            mov __temp_391$0x2762d20, 0x8:i
            sti 0x2000010A8:i, __temp_390$0x2762d20
            sti 0x2000010B0:i, __temp_391$0x2762d20
            asm "mov $0x1:msq, 0x2000010b8:msq"
            div __temp_394$0x2762d20, 0xA:i8, 0xA:i8
            add __temp_395$0x2762d20, __temp_394$0x2762d20, 0x1:i8
            mul __temp_396$0x2762d20, __temp_395$0x2762d20, 0x200:i8
            ldelema __temp_392$0x2762d20, trigger$0x2556d40, 0x0:i8
            sub __temp_393$0x2762d20, __temp_396$0x2762d20, 0x0:i8
            mul __temp_393$0x2762d20, 0x8:i, __temp_393$0x2762d20
            sti 0x2000010C0:i, __temp_392$0x2762d20
            sti 0x2000010C8:i, __temp_393$0x2762d20
            asm "mov $__newr0:msq, 0x2000010d0:msq"
            asm "mov $0x200001000:msq, 0x2000010d8:msq"
            asm "mov $0x200001010:msq, 0x2000010e0:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e8:msq"
            asm "mov $0x2000010d0:msq, 0x2000010f0:msq"
            asm "newr 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_369$0x2762d20, 0x100000400:i
            ldi __temp_370$0x2762d20, 0x100000408:i
            add __temp_371$0x2762d20, __temp_369$0x2762d20, __temp_370$0x2762d20
            lda __temp_397$0x2762d20, on_init1_finished$0x2556d40
            sub __temp_371$0x2762d20, __temp_371$0x2762d20, 0x8:i8
            sti __temp_371$0x2762d20, __temp_397$0x2762d20
            sub __temp_371$0x2762d20, __temp_371$0x2762d20, 0x8:i8
            sti __temp_371$0x2762d20, 0x0:i8
            asm "exit:c"
    }
    function shuffle_runner
    {
            div __temp_398$0x277de40, start$0x277dba0, 0xA:i8
            mov partid$0x277de40, __temp_398$0x277de40
            mov i$0x277de40, start$0x277dba0
        __temp_399$0x277de40:
            clt __temp_402$0x277de40, i$0x277de40, end$0x277dba0
            bz __temp_402$0x277de40, __temp_401$0x277de40
            ldelem __temp_403$0x27811b0, x$0x2556d40, i$0x277de40
            mov xt$0x277de40, __temp_403$0x27811b0
            ldelem __temp_404$0x27811b0, y$0x2556d40, i$0x277de40
            mov yt$0x277de40, __temp_404$0x27811b0
            ldelem __temp_405$0x27811b0, z$0x2556d40, i$0x277de40
            mov zt$0x277de40, __temp_405$0x27811b0
            ldelem __temp_406$0x27811b0, w$0x2556d40, i$0x277de40
            mov wt$0x277de40, __temp_406$0x27811b0
            mul __temp_407$0x27811b0, 0x4:i8, i$0x277de40
            stelem pmem_in$0x2556d40, __temp_407$0x27811b0, xt$0x277de40
            mul __temp_408$0x27811b0, 0x4:i8, i$0x277de40
            add __temp_409$0x27811b0, __temp_408$0x27811b0, 0x1:i8
            stelem pmem_in$0x2556d40, __temp_409$0x27811b0, yt$0x277de40
            mul __temp_410$0x27811b0, 0x4:i8, i$0x277de40
            add __temp_411$0x27811b0, __temp_410$0x27811b0, 0x2:i8
            stelem pmem_in$0x2556d40, __temp_411$0x27811b0, zt$0x277de40
            mul __temp_412$0x27811b0, 0x4:i8, i$0x277de40
            add __temp_413$0x27811b0, __temp_412$0x27811b0, 0x3:i8
            stelem pmem_in$0x2556d40, __temp_413$0x27811b0, wt$0x277de40
        __temp_400$0x277de40:
            add __temp_414$0x277de40, i$0x277de40, 0x1:i8
            mov i$0x277de40, __temp_414$0x277de40
            br __temp_399$0x277de40
        __temp_401$0x277de40:
            div __temp_415$0x277de40, start$0x277dba0, 0xA:i8
            mul __temp_416$0x277de40, __temp_415$0x277de40, 0x200:i8
            stelem trigger$0x2556d40, __temp_416$0x277de40, 0x2:i8
            asm "exit:cd"
    }
    function start_shuffle
    {
            mov i$0x27acef0, 0x0:i8
        __temp_417$0x27acef0:
            clt __temp_420$0x27acef0, i$0x27acef0, 0xA:i8
            bz __temp_420$0x27acef0, __temp_419$0x27acef0
            div __temp_421$0x27ae940, i$0x27acef0, 0xA:i8
            mul __temp_422$0x27ae940, __temp_421$0x27ae940, 0x200:i8
            stelem trigger$0x2556d40, __temp_422$0x27ae940, 0x0:i8
            mul __temp_423$0x27ae940, 0x202:i8, i$0x27acef0
            div __temp_424$0x27ae940, __temp_423$0x27ae940, 0xA:i8
            mov tmp1$0x27acef0, __temp_424$0x27ae940
            add __temp_425$0x27ae940, tmp1$0x27acef0, 0x2:i8
            add __temp_426$0x27ae940, __temp_425$0x27ae940, 0x200:i8
            mov tmp2$0x27acef0, __temp_426$0x27ae940
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x11:msq, 0x200001010:msq"
            add __temp_432$0x27ae940, i$0x27acef0, 0xA:i8
            ldelema __temp_430$0x27ae940, x$0x2556d40, i$0x27acef0
            sub __temp_431$0x27ae940, __temp_432$0x27ae940, i$0x27acef0
            mul __temp_431$0x27ae940, 0x8:i, __temp_431$0x27ae940
            sti 0x200001018:i, __temp_430$0x27ae940
            sti 0x200001020:i, __temp_431$0x27ae940
            add __temp_435$0x27ae940, i$0x27acef0, 0xA:i8
            ldelema __temp_433$0x27ae940, y$0x2556d40, i$0x27acef0
            sub __temp_434$0x27ae940, __temp_435$0x27ae940, i$0x27acef0
            mul __temp_434$0x27ae940, 0x8:i, __temp_434$0x27ae940
            sti 0x200001028:i, __temp_433$0x27ae940
            sti 0x200001030:i, __temp_434$0x27ae940
            add __temp_438$0x27ae940, i$0x27acef0, 0xA:i8
            ldelema __temp_436$0x27ae940, z$0x2556d40, i$0x27acef0
            sub __temp_437$0x27ae940, __temp_438$0x27ae940, i$0x27acef0
            mul __temp_437$0x27ae940, 0x8:i, __temp_437$0x27ae940
            sti 0x200001038:i, __temp_436$0x27ae940
            sti 0x200001040:i, __temp_437$0x27ae940
            add __temp_441$0x27ae940, i$0x27acef0, 0xA:i8
            ldelema __temp_439$0x27ae940, w$0x2556d40, i$0x27acef0
            sub __temp_440$0x27ae940, __temp_441$0x27ae940, i$0x27acef0
            mul __temp_440$0x27ae940, 0x8:i, __temp_440$0x27ae940
            sti 0x200001048:i, __temp_439$0x27ae940
            sti 0x200001050:i, __temp_440$0x27ae940
            add __temp_444$0x27ae940, i$0x27acef0, 0xA:i8
            ldelema __temp_442$0x27ae940, ci$0x2556d40, i$0x27acef0
            sub __temp_443$0x27ae940, __temp_444$0x27ae940, i$0x27acef0
            mul __temp_443$0x27ae940, 0x8:i, __temp_443$0x27ae940
            sti 0x200001058:i, __temp_442$0x27ae940
            sti 0x200001060:i, __temp_443$0x27ae940
            ldelema __temp_445$0x27ae940, cx$0x2556d40, 0x0:i8
            sub __temp_446$0x27ae940, 0x2:i8, 0x0:i8
            mul __temp_446$0x27ae940, 0x8:i, __temp_446$0x27ae940
            sti 0x200001068:i, __temp_445$0x27ae940
            sti 0x200001070:i, __temp_446$0x27ae940
            ldelema __temp_447$0x27ae940, cy$0x2556d40, 0x0:i8
            sub __temp_448$0x27ae940, 0x2:i8, 0x0:i8
            mul __temp_448$0x27ae940, 0x8:i, __temp_448$0x27ae940
            sti 0x200001078:i, __temp_447$0x27ae940
            sti 0x200001080:i, __temp_448$0x27ae940
            ldelema __temp_449$0x27ae940, cz$0x2556d40, 0x0:i8
            sub __temp_450$0x27ae940, 0x2:i8, 0x0:i8
            mul __temp_450$0x27ae940, 0x8:i, __temp_450$0x27ae940
            sti 0x200001088:i, __temp_449$0x27ae940
            sti 0x200001090:i, __temp_450$0x27ae940
            ldelema __temp_451$0x27ae940, cw$0x2556d40, 0x0:i8
            sub __temp_452$0x27ae940, 0x2:i8, 0x0:i8
            mul __temp_452$0x27ae940, 0x8:i, __temp_452$0x27ae940
            sti 0x200001098:i, __temp_451$0x27ae940
            sti 0x2000010A0:i, __temp_452$0x27ae940
            div __temp_455$0x27ae940, i$0x27acef0, 0xA:i8
            mul __temp_456$0x27ae940, __temp_455$0x27ae940, 0x200:i8
            div __temp_457$0x27ae940, i$0x27acef0, 0xA:i8
            add __temp_458$0x27ae940, __temp_457$0x27ae940, 0x1:i8
            mul __temp_459$0x27ae940, __temp_458$0x27ae940, 0x200:i8
            ldelema __temp_453$0x27ae940, trigger$0x2556d40, __temp_456$0x27ae940
            sub __temp_454$0x27ae940, __temp_459$0x27ae940, __temp_456$0x27ae940
            mul __temp_454$0x27ae940, 0x8:i, __temp_454$0x27ae940
            sti 0x2000010A8:i, __temp_453$0x27ae940
            sti 0x2000010B0:i, __temp_454$0x27ae940
            lda __temp_460$0x27ae940, pmem_in$0x2556d40
            mov __temp_461$0x27ae940, 0x8:i
            sti 0x2000010B8:i, __temp_460$0x27ae940
            sti 0x2000010C0:i, __temp_461$0x27ae940
            mul __temp_464$0x27ae940, 0x4:i8, i$0x27acef0
            add __temp_465$0x27ae940, i$0x27acef0, 0xA:i8
            mul __temp_466$0x27ae940, 0x4:i8, __temp_465$0x27ae940
            ldelema __temp_462$0x27ae940, pmem_in$0x2556d40, __temp_464$0x27ae940
            sub __temp_463$0x27ae940, __temp_466$0x27ae940, __temp_464$0x27ae940
            mul __temp_463$0x27ae940, 0x8:i, __temp_463$0x27ae940
            sti 0x2000010C8:i, __temp_462$0x27ae940
            sti 0x2000010D0:i, __temp_463$0x27ae940
            ldelema __temp_467$0x27ae940, lcx$0x2556d40, tmp1$0x27acef0
            sub __temp_468$0x27ae940, tmp2$0x27acef0, tmp1$0x27acef0
            mul __temp_468$0x27ae940, 0x8:i, __temp_468$0x27ae940
            sti 0x2000010D8:i, __temp_467$0x27ae940
            sti 0x2000010E0:i, __temp_468$0x27ae940
            ldelema __temp_469$0x27ae940, lcy$0x2556d40, tmp1$0x27acef0
            sub __temp_470$0x27ae940, tmp2$0x27acef0, tmp1$0x27acef0
            mul __temp_470$0x27ae940, 0x8:i, __temp_470$0x27ae940
            sti 0x2000010E8:i, __temp_469$0x27ae940
            sti 0x2000010F0:i, __temp_470$0x27ae940
            ldelema __temp_471$0x27ae940, lcz$0x2556d40, tmp1$0x27acef0
            sub __temp_472$0x27ae940, tmp2$0x27acef0, tmp1$0x27acef0
            mul __temp_472$0x27ae940, 0x8:i, __temp_472$0x27ae940
            sti 0x2000010F8:i, __temp_471$0x27ae940
            sti 0x200001100:i, __temp_472$0x27ae940
            ldelema __temp_473$0x27ae940, lcw$0x2556d40, tmp1$0x27acef0
            sub __temp_474$0x27ae940, tmp2$0x27acef0, tmp1$0x27acef0
            mul __temp_474$0x27ae940, 0x8:i, __temp_474$0x27ae940
            sti 0x200001108:i, __temp_473$0x27ae940
            sti 0x200001110:i, __temp_474$0x27ae940
            ldelema __temp_475$0x27ae940, lcn$0x2556d40, tmp1$0x27acef0
            sub __temp_476$0x27ae940, tmp2$0x27acef0, tmp1$0x27acef0
            mul __temp_476$0x27ae940, 0x8:i, __temp_476$0x27ae940
            sti 0x200001118:i, __temp_475$0x27ae940
            sti 0x200001120:i, __temp_476$0x27ae940
            asm "mov $0x0:msq, 0x200001128:msq"
            asm "mov $__newr0:msq, 0x200001130:msq"
            asm "mov $0x200001000:msq, 0x200001138:msq"
            asm "mov $0x200001010:msq, 0x200001140:msq"
            asm "mov $0x200001128:msq, 0x200001148:msq"
            asm "mov $0x200001130:msq, 0x200001150:msq"
            asm "newr 0x200001138, 0x200001140, 0x200001148, 0x200001150"
            ldi __temp_427$0x27ae940, 0x100000400:i
            ldi __temp_428$0x27ae940, 0x100000408:i
            add __temp_429$0x27ae940, __temp_427$0x27ae940, __temp_428$0x27ae940
            lda __temp_477$0x27ae940, shuffle_runner$0x2556d40
            sub __temp_429$0x27ae940, __temp_429$0x27ae940, 0x8:i8
            sti __temp_429$0x27ae940, __temp_477$0x27ae940
            sub __temp_429$0x27ae940, __temp_429$0x27ae940, 0x8:i8
            sti __temp_429$0x27ae940, 0x10:i8
            add __temp_478$0x27ae940, i$0x27acef0, 0xA:i8
            sub __temp_429$0x27ae940, __temp_429$0x27ae940, 0x8:i8
            sti __temp_429$0x27ae940, __temp_478$0x27ae940
            sub __temp_429$0x27ae940, __temp_429$0x27ae940, 0x8:i8
            sti __temp_429$0x27ae940, i$0x27acef0
        __temp_418$0x27acef0:
            add __temp_479$0x27acef0, i$0x27acef0, 0xA:i8
            mov i$0x27acef0, __temp_479$0x27acef0
            br __temp_417$0x27acef0
        __temp_419$0x27acef0:
            ret
    }
    function on_init1_finished_stdin_only
    {
            mov i$0x27befe0, 0x0:i8
        __temp_480$0x27befe0:
            clt __temp_483$0x27befe0, i$0x27befe0, 0x200:i8
            bz __temp_483$0x27befe0, __temp_482$0x27befe0
            ldelem __temp_485$0x27c0710, trigger$0x2556d40, i$0x27befe0
            cne __temp_486$0x27c0710, __temp_485$0x27c0710, 0x1:i8
            bnz __temp_486$0x27c0710, __temp_487$0x27c0710
            br __temp_484$0x27c0710
        __temp_487$0x27c0710:
            asm "exit:a"
        __temp_484$0x27c0710:
        __temp_481$0x27befe0:
            add __temp_488$0x27befe0, i$0x27befe0, 0x200:i8
            mov i$0x27befe0, __temp_488$0x27befe0
            br __temp_480$0x27befe0
        __temp_482$0x27befe0:
            stelem trigger$0x2556d40, 0x0:i8, 0x3:i8
            call start_shuffle$0x2556d40, <missing>
            asm "exit:cd"
    }
    function init0_stdin_only
    {
            mov pmem_in$0x2556d40, 0x40000000000:i
            mov i$0x27e79c0, 0x0:i8
        __temp_489$0x27e79c0:
            clt __temp_492$0x27e79c0, i$0x27e79c0, 0xA:i8
            bz __temp_492$0x27e79c0, __temp_491$0x27e79c0
            div __temp_493$0x27e9250, i$0x27e79c0, 0xA:i8
            mul __temp_494$0x27e9250, __temp_493$0x27e9250, 0x200:i8
            stelem trigger$0x2556d40, __temp_494$0x27e9250, 0x0:i8
        __temp_490$0x27e79c0:
            add __temp_495$0x27e79c0, i$0x27e79c0, 0xA:i8
            mov i$0x27e79c0, __temp_495$0x27e79c0
            br __temp_489$0x27e79c0
        __temp_491$0x27e79c0:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x6:msq, 0x200001010:msq"
            ldelema __temp_499$0x27e79c0, x$0x2556d40, 0x0:i8
            sub __temp_500$0x27e79c0, 0xA:i8, 0x0:i8
            mul __temp_500$0x27e79c0, 0x8:i, __temp_500$0x27e79c0
            sti 0x200001018:i, __temp_499$0x27e79c0
            sti 0x200001020:i, __temp_500$0x27e79c0
            ldelema __temp_501$0x27e79c0, y$0x2556d40, 0x0:i8
            sub __temp_502$0x27e79c0, 0xA:i8, 0x0:i8
            mul __temp_502$0x27e79c0, 0x8:i, __temp_502$0x27e79c0
            sti 0x200001028:i, __temp_501$0x27e79c0
            sti 0x200001030:i, __temp_502$0x27e79c0
            ldelema __temp_503$0x27e79c0, z$0x2556d40, 0x0:i8
            sub __temp_504$0x27e79c0, 0xA:i8, 0x0:i8
            mul __temp_504$0x27e79c0, 0x8:i, __temp_504$0x27e79c0
            sti 0x200001038:i, __temp_503$0x27e79c0
            sti 0x200001040:i, __temp_504$0x27e79c0
            ldelema __temp_505$0x27e79c0, w$0x2556d40, 0x0:i8
            sub __temp_506$0x27e79c0, 0xA:i8, 0x0:i8
            mul __temp_506$0x27e79c0, 0x8:i, __temp_506$0x27e79c0
            sti 0x200001048:i, __temp_505$0x27e79c0
            sti 0x200001050:i, __temp_506$0x27e79c0
            div __temp_509$0x27e79c0, 0x0:i8, 0xA:i8
            mul __temp_510$0x27e79c0, __temp_509$0x27e79c0, 0x200:i8
            div __temp_511$0x27e79c0, 0xA:i8, 0xA:i8
            add __temp_512$0x27e79c0, __temp_511$0x27e79c0, 0x1:i8
            mul __temp_513$0x27e79c0, __temp_512$0x27e79c0, 0x200:i8
            ldelema __temp_507$0x27e79c0, trigger$0x2556d40, __temp_510$0x27e79c0
            sub __temp_508$0x27e79c0, __temp_513$0x27e79c0, __temp_510$0x27e79c0
            mul __temp_508$0x27e79c0, 0x8:i, __temp_508$0x27e79c0
            sti 0x200001058:i, __temp_507$0x27e79c0
            sti 0x200001060:i, __temp_508$0x27e79c0
            lda __temp_514$0x27e79c0, pmem_in$0x2556d40
            mov __temp_515$0x27e79c0, 0x8:i
            sti 0x200001068:i, __temp_514$0x27e79c0
            sti 0x200001070:i, __temp_515$0x27e79c0
            asm "mov $0x0:msq, 0x200001078:msq"
            asm "mov $__newr0:msq, 0x200001080:msq"
            asm "mov $0x200001000:msq, 0x200001088:msq"
            asm "mov $0x200001010:msq, 0x200001090:msq"
            asm "mov $0x200001078:msq, 0x200001098:msq"
            asm "mov $0x200001080:msq, 0x2000010a0:msq"
            asm "newr 0x200001088, 0x200001090, 0x200001098, 0x2000010a0"
            ldi __temp_496$0x27e79c0, 0x100000400:i
            ldi __temp_497$0x27e79c0, 0x100000408:i
            add __temp_498$0x27e79c0, __temp_496$0x27e79c0, __temp_497$0x27e79c0
            lda __temp_516$0x27e79c0, init_runner_stdin$0x2556d40
            sub __temp_498$0x27e79c0, __temp_498$0x27e79c0, 0x8:i8
            sti __temp_498$0x27e79c0, __temp_516$0x27e79c0
            sub __temp_498$0x27e79c0, __temp_498$0x27e79c0, 0x8:i8
            sti __temp_498$0x27e79c0, 0x10:i8
            sub __temp_498$0x27e79c0, __temp_498$0x27e79c0, 0x8:i8
            sti __temp_498$0x27e79c0, 0xA:i8
            sub __temp_498$0x27e79c0, __temp_498$0x27e79c0, 0x8:i8
            sti __temp_498$0x27e79c0, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xb:msq, 0x200001010:msq"
            ldelema __temp_520$0x27e79c0, cx$0x2556d40, 0x0:i8
            sub __temp_521$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_521$0x27e79c0, 0x8:i, __temp_521$0x27e79c0
            sti 0x200001018:i, __temp_520$0x27e79c0
            sti 0x200001020:i, __temp_521$0x27e79c0
            ldelema __temp_522$0x27e79c0, cy$0x2556d40, 0x0:i8
            sub __temp_523$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_523$0x27e79c0, 0x8:i, __temp_523$0x27e79c0
            sti 0x200001028:i, __temp_522$0x27e79c0
            sti 0x200001030:i, __temp_523$0x27e79c0
            ldelema __temp_524$0x27e79c0, cz$0x2556d40, 0x0:i8
            sub __temp_525$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_525$0x27e79c0, 0x8:i, __temp_525$0x27e79c0
            sti 0x200001038:i, __temp_524$0x27e79c0
            sti 0x200001040:i, __temp_525$0x27e79c0
            ldelema __temp_526$0x27e79c0, cw$0x2556d40, 0x0:i8
            sub __temp_527$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_527$0x27e79c0, 0x8:i, __temp_527$0x27e79c0
            sti 0x200001048:i, __temp_526$0x27e79c0
            sti 0x200001050:i, __temp_527$0x27e79c0
            ldelema __temp_528$0x27e79c0, x$0x2556d40, 0x0:i8
            sub __temp_529$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_529$0x27e79c0, 0x8:i, __temp_529$0x27e79c0
            sti 0x200001058:i, __temp_528$0x27e79c0
            sti 0x200001060:i, __temp_529$0x27e79c0
            ldelema __temp_530$0x27e79c0, y$0x2556d40, 0x0:i8
            sub __temp_531$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_531$0x27e79c0, 0x8:i, __temp_531$0x27e79c0
            sti 0x200001068:i, __temp_530$0x27e79c0
            sti 0x200001070:i, __temp_531$0x27e79c0
            ldelema __temp_532$0x27e79c0, z$0x2556d40, 0x0:i8
            sub __temp_533$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_533$0x27e79c0, 0x8:i, __temp_533$0x27e79c0
            sti 0x200001078:i, __temp_532$0x27e79c0
            sti 0x200001080:i, __temp_533$0x27e79c0
            ldelema __temp_534$0x27e79c0, w$0x2556d40, 0x0:i8
            sub __temp_535$0x27e79c0, 0x2:i8, 0x0:i8
            mul __temp_535$0x27e79c0, 0x8:i, __temp_535$0x27e79c0
            sti 0x200001088:i, __temp_534$0x27e79c0
            sti 0x200001090:i, __temp_535$0x27e79c0
            ldelema __temp_536$0x27e79c0, trigger$0x2556d40, 0x0:i8
            sub __temp_537$0x27e79c0, 0xA:i8, 0x0:i8
            mul __temp_537$0x27e79c0, 0x8:i, __temp_537$0x27e79c0
            sti 0x200001098:i, __temp_536$0x27e79c0
            sti 0x2000010A0:i, __temp_537$0x27e79c0
            lda __temp_538$0x27e79c0, iter$0x2556d40
            mov __temp_539$0x27e79c0, 0x8:i
            sti 0x2000010A8:i, __temp_538$0x27e79c0
            sti 0x2000010B0:i, __temp_539$0x27e79c0
            lda __temp_540$0x27e79c0, pmem_in$0x2556d40
            mov __temp_541$0x27e79c0, 0x8:i
            sti 0x2000010B8:i, __temp_540$0x27e79c0
            sti 0x2000010C0:i, __temp_541$0x27e79c0
            asm "mov $0x1:msq, 0x2000010c8:msq"
            div __temp_544$0x27e79c0, 0xA:i8, 0xA:i8
            add __temp_545$0x27e79c0, __temp_544$0x27e79c0, 0x1:i8
            mul __temp_546$0x27e79c0, __temp_545$0x27e79c0, 0x200:i8
            ldelema __temp_542$0x27e79c0, trigger$0x2556d40, 0x0:i8
            sub __temp_543$0x27e79c0, __temp_546$0x27e79c0, 0x0:i8
            mul __temp_543$0x27e79c0, 0x8:i, __temp_543$0x27e79c0
            sti 0x2000010D0:i, __temp_542$0x27e79c0
            sti 0x2000010D8:i, __temp_543$0x27e79c0
            asm "mov $__newr0:msq, 0x2000010e0:msq"
            asm "mov $0x200001000:msq, 0x2000010e8:msq"
            asm "mov $0x200001010:msq, 0x2000010f0:msq"
            asm "mov $0x2000010c8:msq, 0x2000010f8:msq"
            asm "mov $0x2000010e0:msq, 0x200001100:msq"
            asm "newr 0x2000010e8, 0x2000010f0, 0x2000010f8, 0x200001100"
            ldi __temp_517$0x27e79c0, 0x100000400:i
            ldi __temp_518$0x27e79c0, 0x100000408:i
            add __temp_519$0x27e79c0, __temp_517$0x27e79c0, __temp_518$0x27e79c0
            lda __temp_547$0x27e79c0, on_init1_finished_stdin_only$0x2556d40
            sub __temp_519$0x27e79c0, __temp_519$0x27e79c0, 0x8:i8
            sti __temp_519$0x27e79c0, __temp_547$0x27e79c0
            sub __temp_519$0x27e79c0, __temp_519$0x27e79c0, 0x8:i8
            sti __temp_519$0x27e79c0, 0x0:i8
            asm "exit:c"
    }
    function main
    {
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x2:msq, 0x200001010:msq"
            div __temp_553$0x27f5740, 0xA:i8, 0xA:i8
            add __temp_554$0x27f5740, __temp_553$0x27f5740, 0x1:i8
            mul __temp_555$0x27f5740, __temp_554$0x27f5740, 0x200:i8
            ldelema __temp_551$0x27f5740, trigger$0x2556d40, 0x0:i8
            sub __temp_552$0x27f5740, __temp_555$0x27f5740, 0x0:i8
            mul __temp_552$0x27f5740, 0x8:i, __temp_552$0x27f5740
            sti 0x200001018:i, __temp_551$0x27f5740
            sti 0x200001020:i, __temp_552$0x27f5740
            lda __temp_556$0x27f5740, pmem_in$0x2556d40
            mov __temp_557$0x27f5740, 0x8:i
            sti 0x200001028:i, __temp_556$0x27f5740
            sti 0x200001030:i, __temp_557$0x27f5740
            asm "mov $0x0:msq, 0x200001038:msq"
            asm "mov $__newr0:msq, 0x200001040:msq"
            asm "mov $0x200001000:msq, 0x200001048:msq"
            asm "mov $0x200001010:msq, 0x200001050:msq"
            asm "mov $0x200001038:msq, 0x200001058:msq"
            asm "mov $0x200001040:msq, 0x200001060:msq"
            asm "newr 0x200001048, 0x200001050, 0x200001058, 0x200001060"
            ldi __temp_548$0x27f5740, 0x100000400:i
            ldi __temp_549$0x27f5740, 0x100000408:i
            add __temp_550$0x27f5740, __temp_548$0x27f5740, __temp_549$0x27f5740
            lda __temp_558$0x27f5740, init0_stdin_only$0x2556d40
            sub __temp_550$0x27f5740, __temp_550$0x27f5740, 0x8:i8
            sti __temp_550$0x27f5740, __temp_558$0x27f5740
            sub __temp_550$0x27f5740, __temp_550$0x27f5740, 0x8:i8
            sti __temp_550$0x27f5740, 0x0:i8
            asm "exit:c"
    }
}
