class Program
{
    function srand
    {
            ceq __temp_1$0x172ccc0, seed$0x172ca80, 0x0:i8
            bnz __temp_1$0x172ccc0, __temp_2$0x172ccc0
            br __temp_0$0x172ccc0
        __temp_2$0x172ccc0:
            mov seed$0x172ca80, 0x1:i8
        __temp_0$0x172ccc0:
            sti 0x300000000:i, seed$0x172ca80
            ret
    }
    function rand
    {
            ldi __temp_3$0x17329a0, 0x300000000:i
            mov r$0x17329a0, __temp_3$0x17329a0
            mul __temp_4$0x17329a0, r$0x17329a0, 0xFEF3F6F4F3F2F1:i8
            mov r$0x17329a0, __temp_4$0x17329a0
            sti 0x300000000:i, r$0x17329a0
            ret r$0x17329a0
    }
    function _output_centroids
    {
            mov npt$0x1756460, 0x300000040:i
            call output_q$0x16e0990, <missing>, 0x2:i8
            call output_char$0x16e0990, <missing>, 0x20:i1
            call output_char$0x16e0990, <missing>, 0x63:i1
            call output_char$0x16e0990, <missing>, 0x65:i1
            call output_char$0x16e0990, <missing>, 0x6E:i1
            call output_char$0x16e0990, <missing>, 0x74:i1
            call output_char$0x16e0990, <missing>, 0x72:i1
            call output_char$0x16e0990, <missing>, 0x6F:i1
            call output_char$0x16e0990, <missing>, 0x69:i1
            call output_char$0x16e0990, <missing>, 0x64:i1
            call output_char$0x16e0990, <missing>, 0x73:i1
            call output_char$0x16e0990, <missing>, 0x3A:i1
            call output_char$0x16e0990, <missing>, 0xA:i8
            mov i$0x1756460, 0x0:i8
        __temp_5$0x1756460:
            clt __temp_8$0x1756460, i$0x1756460, 0x2:i8
            bz __temp_8$0x1756460, __temp_7$0x1756460
            ldelem __temp_9$0x175bfd0, cx$0x16e0990, i$0x1756460
            call output_q$0x16e0990, <missing>, __temp_9$0x175bfd0
            call output_char$0x16e0990, <missing>, 0x20:i1
            ldelem __temp_10$0x175bfd0, cy$0x16e0990, i$0x1756460
            call output_q$0x16e0990, <missing>, __temp_10$0x175bfd0
            call output_char$0x16e0990, <missing>, 0x20:i1
            ldelem __temp_11$0x175bfd0, cz$0x16e0990, i$0x1756460
            call output_q$0x16e0990, <missing>, __temp_11$0x175bfd0
            call output_char$0x16e0990, <missing>, 0x20:i1
            ldelem __temp_12$0x175bfd0, cw$0x16e0990, i$0x1756460
            call output_q$0x16e0990, <missing>, __temp_12$0x175bfd0
            ceq __temp_14$0x175bfd0, with_point_num$0x1756230, 0x1:i8
            bnz __temp_14$0x175bfd0, __temp_15$0x175bfd0
            br __temp_13$0x175bfd0
        __temp_15$0x175bfd0:
            call output_char$0x16e0990, <missing>, 0x2F:i1
            ldelem __temp_16$0x175e9e0, npt$0x1756460, i$0x1756460
            call output_q$0x16e0990, <missing>, __temp_16$0x175e9e0
        __temp_13$0x175bfd0:
            call output_char$0x16e0990, <missing>, 0xA:i8
        __temp_6$0x1756460:
            add __temp_17$0x1756460, i$0x1756460, 0x1:i8
            mov i$0x1756460, __temp_17$0x1756460
            br __temp_5$0x1756460
        __temp_7$0x1756460:
            call output_char$0x16e0990, <missing>, 0xA:i8
            ret
    }
    function output_centroids_with_point_num
    {
            call _output_centroids$0x16e0990, <missing>, 0x1:i8
            ret
    }
    function output_centroids
    {
            call _output_centroids$0x16e0990, <missing>, 0x0:i8
            ret
    }
    function kmeans_finish
    {
            call output_centroids$0x16e0990, <missing>
            ret
    }
    function on_recluster_finished
    {
            clt __temp_19$0x17b5ef0, expected_iter$0x17b5cd0, iter$0x16e0990
            bnz __temp_19$0x17b5ef0, __temp_20$0x17b5ef0
            br __temp_18$0x17b5ef0
        __temp_20$0x17b5ef0:
            asm "exit:ad"
        __temp_18$0x17b5ef0:
            cgt __temp_22$0x17b5ef0, expected_iter$0x17b5cd0, iter$0x16e0990
            bnz __temp_22$0x17b5ef0, __temp_23$0x17b5ef0
            br __temp_21$0x17b5ef0
        __temp_23$0x17b5ef0:
            asm "exit:a"
        __temp_21$0x17b5ef0:
            mov i$0x17b5ef0, 0x0:i8
        __temp_24$0x17b5ef0:
            clt __temp_27$0x17b5ef0, i$0x17b5ef0, 0x200:i8
            bz __temp_27$0x17b5ef0, __temp_26$0x17b5ef0
            ldelem __temp_29$0x17bac20, trigger$0x16e0990, i$0x17b5ef0
            cne __temp_30$0x17bac20, __temp_29$0x17bac20, 0x2:i8
            bnz __temp_30$0x17bac20, __temp_31$0x17bac20
            br __temp_28$0x17bac20
        __temp_31$0x17bac20:
            asm "exit:a"
        __temp_28$0x17bac20:
        __temp_25$0x17b5ef0:
            add __temp_32$0x17b5ef0, i$0x17b5ef0, 0x200:i8
            mov i$0x17b5ef0, __temp_32$0x17b5ef0
            br __temp_24$0x17b5ef0
        __temp_26$0x17b5ef0:
            mov sumx$0x17b5ef0, 0x300000000:i
            mov sumy$0x17b5ef0, 0x300000010:i
            mov sumz$0x17b5ef0, 0x300000020:i
            mov sumw$0x17b5ef0, 0x300000030:i
            mov npt$0x17b5ef0, 0x300000040:i
            mov i$0x17b5ef0, 0x0:i8
        __temp_33$0x17b5ef0:
            clt __temp_36$0x17b5ef0, i$0x17b5ef0, 0x2:i8
            bz __temp_36$0x17b5ef0, __temp_35$0x17b5ef0
            stelem sumx$0x17b5ef0, i$0x17b5ef0, 0x0:i8
            stelem sumy$0x17b5ef0, i$0x17b5ef0, 0x0:i8
            stelem sumz$0x17b5ef0, i$0x17b5ef0, 0x0:i8
            stelem sumw$0x17b5ef0, i$0x17b5ef0, 0x0:i8
            stelem npt$0x17b5ef0, i$0x17b5ef0, 0x0:i8
        __temp_34$0x17b5ef0:
            add __temp_37$0x17b5ef0, i$0x17b5ef0, 0x1:i8
            mov i$0x17b5ef0, __temp_37$0x17b5ef0
            br __temp_33$0x17b5ef0
        __temp_35$0x17b5ef0:
            mov n_parts$0x17b5ef0, 0x1:i8
            mov j$0x17b5ef0, 0x0:i8
        __temp_38$0x17b5ef0:
            clt __temp_41$0x17b5ef0, j$0x17b5ef0, n_parts$0x17b5ef0
            bz __temp_41$0x17b5ef0, __temp_40$0x17b5ef0
            mul __temp_43$0x17c2a40, 0x202:i8, j$0x17b5ef0
            ldelema __temp_42$0x17c2a40, lcx$0x16e0990, __temp_43$0x17c2a40
            mov tlcx$0x17b5ef0, __temp_42$0x17c2a40
            mul __temp_45$0x17c2a40, 0x202:i8, j$0x17b5ef0
            ldelema __temp_44$0x17c2a40, lcy$0x16e0990, __temp_45$0x17c2a40
            mov tlcy$0x17b5ef0, __temp_44$0x17c2a40
            mul __temp_47$0x17c2a40, 0x202:i8, j$0x17b5ef0
            ldelema __temp_46$0x17c2a40, lcz$0x16e0990, __temp_47$0x17c2a40
            mov tlcz$0x17b5ef0, __temp_46$0x17c2a40
            mul __temp_49$0x17c2a40, 0x202:i8, j$0x17b5ef0
            ldelema __temp_48$0x17c2a40, lcw$0x16e0990, __temp_49$0x17c2a40
            mov tlcw$0x17b5ef0, __temp_48$0x17c2a40
            mul __temp_51$0x17c2a40, 0x202:i8, j$0x17b5ef0
            ldelema __temp_50$0x17c2a40, lcn$0x16e0990, __temp_51$0x17c2a40
            mov tlcn$0x17b5ef0, __temp_50$0x17c2a40
            mov i$0x17b5ef0, 0x0:i8
        __temp_52$0x17c2a40:
            clt __temp_55$0x17c2a40, i$0x17b5ef0, 0x2:i8
            bz __temp_55$0x17c2a40, __temp_54$0x17c2a40
            ldelem __temp_56$0x17c7190, sumx$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_57$0x17c7190, tlcx$0x17b5ef0, i$0x17b5ef0
            add __temp_58$0x17c7190, __temp_56$0x17c7190, __temp_57$0x17c7190
            stelem sumx$0x17b5ef0, i$0x17b5ef0, __temp_58$0x17c7190
            ldelem __temp_59$0x17c7190, sumy$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_60$0x17c7190, tlcy$0x17b5ef0, i$0x17b5ef0
            add __temp_61$0x17c7190, __temp_59$0x17c7190, __temp_60$0x17c7190
            stelem sumy$0x17b5ef0, i$0x17b5ef0, __temp_61$0x17c7190
            ldelem __temp_62$0x17c7190, sumz$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_63$0x17c7190, tlcz$0x17b5ef0, i$0x17b5ef0
            add __temp_64$0x17c7190, __temp_62$0x17c7190, __temp_63$0x17c7190
            stelem sumz$0x17b5ef0, i$0x17b5ef0, __temp_64$0x17c7190
            ldelem __temp_65$0x17c7190, sumw$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_66$0x17c7190, tlcw$0x17b5ef0, i$0x17b5ef0
            add __temp_67$0x17c7190, __temp_65$0x17c7190, __temp_66$0x17c7190
            stelem sumw$0x17b5ef0, i$0x17b5ef0, __temp_67$0x17c7190
            ldelem __temp_68$0x17c7190, npt$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_69$0x17c7190, tlcn$0x17b5ef0, i$0x17b5ef0
            add __temp_70$0x17c7190, __temp_68$0x17c7190, __temp_69$0x17c7190
            stelem npt$0x17b5ef0, i$0x17b5ef0, __temp_70$0x17c7190
        __temp_53$0x17c2a40:
            add __temp_71$0x17c2a40, i$0x17b5ef0, 0x1:i8
            mov i$0x17b5ef0, __temp_71$0x17c2a40
            br __temp_52$0x17c2a40
        __temp_54$0x17c2a40:
        __temp_39$0x17b5ef0:
            add __temp_72$0x17b5ef0, j$0x17b5ef0, 0x1:i8
            mov j$0x17b5ef0, __temp_72$0x17b5ef0
            br __temp_38$0x17b5ef0
        __temp_40$0x17b5ef0:
            mov i$0x17b5ef0, 0x0:i8
        __temp_73$0x17b5ef0:
            clt __temp_76$0x17b5ef0, i$0x17b5ef0, 0x2:i8
            bz __temp_76$0x17b5ef0, __temp_75$0x17b5ef0
            ldelem __temp_78$0x17cd850, npt$0x17b5ef0, i$0x17b5ef0
            cne __temp_79$0x17cd850, __temp_78$0x17cd850, 0x0:i8
            bnz __temp_79$0x17cd850, __temp_80$0x17cd850
            stelem cx$0x16e0990, i$0x17b5ef0, 0x7FFFFFFFFFFFFFF:i8
            stelem cy$0x16e0990, i$0x17b5ef0, 0x7FFFFFFFFFFFFFF:i8
            stelem cz$0x16e0990, i$0x17b5ef0, 0x7FFFFFFFFFFFFFF:i8
            stelem cw$0x16e0990, i$0x17b5ef0, 0x7FFFFFFFFFFFFFF:i8
            br __temp_77$0x17cd850
        __temp_80$0x17cd850:
            ldelem __temp_81$0x17cdf30, sumx$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_82$0x17cdf30, npt$0x17b5ef0, i$0x17b5ef0
            div __temp_83$0x17cdf30, __temp_81$0x17cdf30, __temp_82$0x17cdf30
            stelem cx$0x16e0990, i$0x17b5ef0, __temp_83$0x17cdf30
            ldelem __temp_84$0x17cdf30, sumy$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_85$0x17cdf30, npt$0x17b5ef0, i$0x17b5ef0
            div __temp_86$0x17cdf30, __temp_84$0x17cdf30, __temp_85$0x17cdf30
            stelem cy$0x16e0990, i$0x17b5ef0, __temp_86$0x17cdf30
            ldelem __temp_87$0x17cdf30, sumz$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_88$0x17cdf30, npt$0x17b5ef0, i$0x17b5ef0
            div __temp_89$0x17cdf30, __temp_87$0x17cdf30, __temp_88$0x17cdf30
            stelem cz$0x16e0990, i$0x17b5ef0, __temp_89$0x17cdf30
            ldelem __temp_90$0x17cdf30, sumw$0x17b5ef0, i$0x17b5ef0
            ldelem __temp_91$0x17cdf30, npt$0x17b5ef0, i$0x17b5ef0
            div __temp_92$0x17cdf30, __temp_90$0x17cdf30, __temp_91$0x17cdf30
            stelem cw$0x16e0990, i$0x17b5ef0, __temp_92$0x17cdf30
        __temp_77$0x17cd850:
        __temp_74$0x17b5ef0:
            add __temp_93$0x17b5ef0, i$0x17b5ef0, 0x1:i8
            mov i$0x17b5ef0, __temp_93$0x17b5ef0
            br __temp_73$0x17b5ef0
        __temp_75$0x17b5ef0:
            call output_char$0x16e0990, <missing>, 0x69:i1
            call output_char$0x16e0990, <missing>, 0x74:i1
            call output_char$0x16e0990, <missing>, 0x65:i1
            call output_char$0x16e0990, <missing>, 0x72:i1
            call output_char$0x16e0990, <missing>, 0x3A:i1
            call output_q$0x16e0990, <missing>, iter$0x16e0990
            call output_char$0x16e0990, <missing>, 0xA:i8
            add __temp_94$0x17b5ef0, iter$0x16e0990, 0x1:i8
            mov iter$0x16e0990, __temp_94$0x17b5ef0
            clt __temp_96$0x17b5ef0, iter$0x16e0990, 0x6:i8
            bnz __temp_96$0x17b5ef0, __temp_97$0x17b5ef0
            call kmeans_finish$0x16e0990, <missing>
            br __temp_95$0x17b5ef0
        __temp_97$0x17b5ef0:
            call start_iteration$0x16e0990, <missing>
        __temp_95$0x17b5ef0:
            asm "exit:cd"
    }
    function recluster_runner
    {
            div __temp_98$0x1819010, start$0x1818d70, 0xA:i8
            mov partid$0x1819010, __temp_98$0x1819010
            mul __temp_100$0x1819010, 0x202:i8, partid$0x1819010
            ldelema __temp_99$0x1819010, lcx$0x16e0990, __temp_100$0x1819010
            mov mylcx$0x1819010, __temp_99$0x1819010
            mul __temp_102$0x1819010, 0x202:i8, partid$0x1819010
            ldelema __temp_101$0x1819010, lcy$0x16e0990, __temp_102$0x1819010
            mov mylcy$0x1819010, __temp_101$0x1819010
            mul __temp_104$0x1819010, 0x202:i8, partid$0x1819010
            ldelema __temp_103$0x1819010, lcz$0x16e0990, __temp_104$0x1819010
            mov mylcz$0x1819010, __temp_103$0x1819010
            mul __temp_106$0x1819010, 0x202:i8, partid$0x1819010
            ldelema __temp_105$0x1819010, lcw$0x16e0990, __temp_106$0x1819010
            mov mylcw$0x1819010, __temp_105$0x1819010
            mul __temp_108$0x1819010, 0x202:i8, partid$0x1819010
            ldelema __temp_107$0x1819010, lcn$0x16e0990, __temp_108$0x1819010
            mov mylcn$0x1819010, __temp_107$0x1819010
            mov i$0x1819010, 0x0:i8
        __temp_109$0x1819010:
            clt __temp_112$0x1819010, i$0x1819010, 0x2:i8
            bz __temp_112$0x1819010, __temp_111$0x1819010
            stelem mylcx$0x1819010, i$0x1819010, 0x0:i8
            stelem mylcy$0x1819010, i$0x1819010, 0x0:i8
            stelem mylcz$0x1819010, i$0x1819010, 0x0:i8
            stelem mylcw$0x1819010, i$0x1819010, 0x0:i8
            stelem mylcn$0x1819010, i$0x1819010, 0x0:i8
        __temp_110$0x1819010:
            add __temp_113$0x1819010, i$0x1819010, 0x1:i8
            mov i$0x1819010, __temp_113$0x1819010
            br __temp_109$0x1819010
        __temp_111$0x1819010:
            mov i$0x1819010, start$0x1818d70
        __temp_114$0x1819010:
            clt __temp_117$0x1819010, i$0x1819010, end$0x1818d70
            bz __temp_117$0x1819010, __temp_116$0x1819010
            ldelem __temp_118$0x1823400, x$0x16e0990, i$0x1819010
            mov xt$0x1819010, __temp_118$0x1823400
            ldelem __temp_119$0x1823400, y$0x16e0990, i$0x1819010
            mov yt$0x1819010, __temp_119$0x1823400
            ldelem __temp_120$0x1823400, z$0x16e0990, i$0x1819010
            mov zt$0x1819010, __temp_120$0x1823400
            ldelem __temp_121$0x1823400, w$0x16e0990, i$0x1819010
            mov wt$0x1819010, __temp_121$0x1823400
            mov j$0x1819010, 0x0:i8
            ldelem __temp_122$0x1823400, cx$0x16e0990, j$0x1819010
            sub __temp_123$0x1823400, xt$0x1819010, __temp_122$0x1823400
            mov reg1$0x16e0990, __temp_123$0x1823400
            ldelem __temp_124$0x1823400, cy$0x16e0990, j$0x1819010
            sub __temp_125$0x1823400, yt$0x1819010, __temp_124$0x1823400
            mov reg2$0x16e0990, __temp_125$0x1823400
            ldelem __temp_126$0x1823400, cz$0x16e0990, j$0x1819010
            sub __temp_127$0x1823400, zt$0x1819010, __temp_126$0x1823400
            mov reg3$0x16e0990, __temp_127$0x1823400
            ldelem __temp_128$0x1823400, cw$0x16e0990, j$0x1819010
            sub __temp_129$0x1823400, wt$0x1819010, __temp_128$0x1823400
            mov reg4$0x16e0990, __temp_129$0x1823400
            mul __temp_130$0x1823400, reg1$0x16e0990, reg1$0x16e0990
            mul __temp_131$0x1823400, reg2$0x16e0990, reg2$0x16e0990
            add __temp_132$0x1823400, __temp_130$0x1823400, __temp_131$0x1823400
            mul __temp_133$0x1823400, reg3$0x16e0990, reg3$0x16e0990
            add __temp_134$0x1823400, __temp_132$0x1823400, __temp_133$0x1823400
            mul __temp_135$0x1823400, reg4$0x16e0990, reg4$0x16e0990
            add __temp_136$0x1823400, __temp_134$0x1823400, __temp_135$0x1823400
            lda __temp_137$0x1823400, d$0x1819010
            sti __temp_137$0x1823400, __temp_136$0x1823400
            mov mind$0x1819010, d$0x1819010
            mov mini$0x1819010, j$0x1819010
            mov j$0x1819010, 0x1:i8
        __temp_138$0x1823400:
            clt __temp_141$0x1823400, j$0x1819010, 0x2:i8
            bz __temp_141$0x1823400, __temp_140$0x1823400
            ldelem __temp_142$0x1829760, cx$0x16e0990, j$0x1819010
            sub __temp_143$0x1829760, xt$0x1819010, __temp_142$0x1829760
            mov reg1$0x16e0990, __temp_143$0x1829760
            ldelem __temp_144$0x1829760, cy$0x16e0990, j$0x1819010
            sub __temp_145$0x1829760, yt$0x1819010, __temp_144$0x1829760
            mov reg2$0x16e0990, __temp_145$0x1829760
            ldelem __temp_146$0x1829760, cz$0x16e0990, j$0x1819010
            sub __temp_147$0x1829760, zt$0x1819010, __temp_146$0x1829760
            mov reg3$0x16e0990, __temp_147$0x1829760
            ldelem __temp_148$0x1829760, cw$0x16e0990, j$0x1819010
            sub __temp_149$0x1829760, wt$0x1819010, __temp_148$0x1829760
            mov reg4$0x16e0990, __temp_149$0x1829760
            mul __temp_150$0x1829760, reg1$0x16e0990, reg1$0x16e0990
            mul __temp_151$0x1829760, reg2$0x16e0990, reg2$0x16e0990
            add __temp_152$0x1829760, __temp_150$0x1829760, __temp_151$0x1829760
            mul __temp_153$0x1829760, reg3$0x16e0990, reg3$0x16e0990
            add __temp_154$0x1829760, __temp_152$0x1829760, __temp_153$0x1829760
            mul __temp_155$0x1829760, reg4$0x16e0990, reg4$0x16e0990
            add __temp_156$0x1829760, __temp_154$0x1829760, __temp_155$0x1829760
            lda __temp_157$0x1829760, d$0x1819010
            sti __temp_157$0x1829760, __temp_156$0x1829760
            clt __temp_159$0x1829760, d$0x1819010, mind$0x1819010
            bnz __temp_159$0x1829760, __temp_160$0x1829760
            br __temp_158$0x1829760
        __temp_160$0x1829760:
            mov mind$0x1819010, d$0x1819010
            mov mini$0x1819010, j$0x1819010
        __temp_158$0x1829760:
        __temp_139$0x1823400:
            add __temp_161$0x1823400, j$0x1819010, 0x1:i8
            mov j$0x1819010, __temp_161$0x1823400
            br __temp_138$0x1823400
        __temp_140$0x1823400:
            ldelem __temp_162$0x1823400, mylcn$0x1819010, mini$0x1819010
            add __temp_163$0x1823400, __temp_162$0x1823400, 0x1:i8
            stelem mylcn$0x1819010, mini$0x1819010, __temp_163$0x1823400
            ldelem __temp_164$0x1823400, mylcx$0x1819010, mini$0x1819010
            add __temp_165$0x1823400, __temp_164$0x1823400, xt$0x1819010
            stelem mylcx$0x1819010, mini$0x1819010, __temp_165$0x1823400
            ldelem __temp_166$0x1823400, mylcy$0x1819010, mini$0x1819010
            add __temp_167$0x1823400, __temp_166$0x1823400, yt$0x1819010
            stelem mylcy$0x1819010, mini$0x1819010, __temp_167$0x1823400
            ldelem __temp_168$0x1823400, mylcz$0x1819010, mini$0x1819010
            add __temp_169$0x1823400, __temp_168$0x1823400, zt$0x1819010
            stelem mylcz$0x1819010, mini$0x1819010, __temp_169$0x1823400
            ldelem __temp_170$0x1823400, mylcw$0x1819010, mini$0x1819010
            add __temp_171$0x1823400, __temp_170$0x1823400, wt$0x1819010
            stelem mylcw$0x1819010, mini$0x1819010, __temp_171$0x1823400
        __temp_115$0x1819010:
            add __temp_172$0x1819010, i$0x1819010, 0x1:i8
            mov i$0x1819010, __temp_172$0x1819010
            br __temp_114$0x1819010
        __temp_116$0x1819010:
            div __temp_173$0x1819010, start$0x1818d70, 0xA:i8
            mul __temp_174$0x1819010, __temp_173$0x1819010, 0x200:i8
            stelem trigger$0x16e0990, __temp_174$0x1819010, 0x2:i8
            asm "exit:cd"
    }
    function start_iteration
    {
            mov i$0x1871640, 0x0:i8
        __temp_175$0x1871640:
            clt __temp_178$0x1871640, i$0x1871640, 0xA:i8
            bz __temp_178$0x1871640, __temp_177$0x1871640
            div __temp_179$0x1873040, i$0x1871640, 0xA:i8
            mul __temp_180$0x1873040, __temp_179$0x1873040, 0x200:i8
            stelem trigger$0x16e0990, __temp_180$0x1873040, 0x0:i8
            mul __temp_181$0x1873040, 0x202:i8, i$0x1871640
            div __temp_182$0x1873040, __temp_181$0x1873040, 0xA:i8
            mov tmp1$0x1871640, __temp_182$0x1873040
            add __temp_183$0x1873040, tmp1$0x1871640, 0x2:i8
            add __temp_184$0x1873040, __temp_183$0x1873040, 0x200:i8
            mov tmp2$0x1871640, __temp_184$0x1873040
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xf:msq, 0x200001010:msq"
            add __temp_190$0x1873040, i$0x1871640, 0xA:i8
            ldelema __temp_188$0x1873040, x$0x16e0990, i$0x1871640
            sub __temp_189$0x1873040, __temp_190$0x1873040, i$0x1871640
            mul __temp_189$0x1873040, 0x8:i, __temp_189$0x1873040
            sti 0x200001018:i, __temp_188$0x1873040
            sti 0x200001020:i, __temp_189$0x1873040
            add __temp_193$0x1873040, i$0x1871640, 0xA:i8
            ldelema __temp_191$0x1873040, y$0x16e0990, i$0x1871640
            sub __temp_192$0x1873040, __temp_193$0x1873040, i$0x1871640
            mul __temp_192$0x1873040, 0x8:i, __temp_192$0x1873040
            sti 0x200001028:i, __temp_191$0x1873040
            sti 0x200001030:i, __temp_192$0x1873040
            add __temp_196$0x1873040, i$0x1871640, 0xA:i8
            ldelema __temp_194$0x1873040, z$0x16e0990, i$0x1871640
            sub __temp_195$0x1873040, __temp_196$0x1873040, i$0x1871640
            mul __temp_195$0x1873040, 0x8:i, __temp_195$0x1873040
            sti 0x200001038:i, __temp_194$0x1873040
            sti 0x200001040:i, __temp_195$0x1873040
            add __temp_199$0x1873040, i$0x1871640, 0xA:i8
            ldelema __temp_197$0x1873040, w$0x16e0990, i$0x1871640
            sub __temp_198$0x1873040, __temp_199$0x1873040, i$0x1871640
            mul __temp_198$0x1873040, 0x8:i, __temp_198$0x1873040
            sti 0x200001048:i, __temp_197$0x1873040
            sti 0x200001050:i, __temp_198$0x1873040
            add __temp_202$0x1873040, i$0x1871640, 0xA:i8
            ldelema __temp_200$0x1873040, ci$0x16e0990, i$0x1871640
            sub __temp_201$0x1873040, __temp_202$0x1873040, i$0x1871640
            mul __temp_201$0x1873040, 0x8:i, __temp_201$0x1873040
            sti 0x200001058:i, __temp_200$0x1873040
            sti 0x200001060:i, __temp_201$0x1873040
            ldelema __temp_203$0x1873040, cx$0x16e0990, 0x0:i8
            sub __temp_204$0x1873040, 0x2:i8, 0x0:i8
            mul __temp_204$0x1873040, 0x8:i, __temp_204$0x1873040
            sti 0x200001068:i, __temp_203$0x1873040
            sti 0x200001070:i, __temp_204$0x1873040
            ldelema __temp_205$0x1873040, cy$0x16e0990, 0x0:i8
            sub __temp_206$0x1873040, 0x2:i8, 0x0:i8
            mul __temp_206$0x1873040, 0x8:i, __temp_206$0x1873040
            sti 0x200001078:i, __temp_205$0x1873040
            sti 0x200001080:i, __temp_206$0x1873040
            ldelema __temp_207$0x1873040, cz$0x16e0990, 0x0:i8
            sub __temp_208$0x1873040, 0x2:i8, 0x0:i8
            mul __temp_208$0x1873040, 0x8:i, __temp_208$0x1873040
            sti 0x200001088:i, __temp_207$0x1873040
            sti 0x200001090:i, __temp_208$0x1873040
            ldelema __temp_209$0x1873040, cw$0x16e0990, 0x0:i8
            sub __temp_210$0x1873040, 0x2:i8, 0x0:i8
            mul __temp_210$0x1873040, 0x8:i, __temp_210$0x1873040
            sti 0x200001098:i, __temp_209$0x1873040
            sti 0x2000010A0:i, __temp_210$0x1873040
            div __temp_213$0x1873040, i$0x1871640, 0xA:i8
            mul __temp_214$0x1873040, __temp_213$0x1873040, 0x200:i8
            div __temp_215$0x1873040, i$0x1871640, 0xA:i8
            add __temp_216$0x1873040, __temp_215$0x1873040, 0x1:i8
            mul __temp_217$0x1873040, __temp_216$0x1873040, 0x200:i8
            ldelema __temp_211$0x1873040, trigger$0x16e0990, __temp_214$0x1873040
            sub __temp_212$0x1873040, __temp_217$0x1873040, __temp_214$0x1873040
            mul __temp_212$0x1873040, 0x8:i, __temp_212$0x1873040
            sti 0x2000010A8:i, __temp_211$0x1873040
            sti 0x2000010B0:i, __temp_212$0x1873040
            ldelema __temp_218$0x1873040, lcx$0x16e0990, tmp1$0x1871640
            sub __temp_219$0x1873040, tmp2$0x1871640, tmp1$0x1871640
            mul __temp_219$0x1873040, 0x8:i, __temp_219$0x1873040
            sti 0x2000010B8:i, __temp_218$0x1873040
            sti 0x2000010C0:i, __temp_219$0x1873040
            ldelema __temp_220$0x1873040, lcy$0x16e0990, tmp1$0x1871640
            sub __temp_221$0x1873040, tmp2$0x1871640, tmp1$0x1871640
            mul __temp_221$0x1873040, 0x8:i, __temp_221$0x1873040
            sti 0x2000010C8:i, __temp_220$0x1873040
            sti 0x2000010D0:i, __temp_221$0x1873040
            ldelema __temp_222$0x1873040, lcz$0x16e0990, tmp1$0x1871640
            sub __temp_223$0x1873040, tmp2$0x1871640, tmp1$0x1871640
            mul __temp_223$0x1873040, 0x8:i, __temp_223$0x1873040
            sti 0x2000010D8:i, __temp_222$0x1873040
            sti 0x2000010E0:i, __temp_223$0x1873040
            ldelema __temp_224$0x1873040, lcw$0x16e0990, tmp1$0x1871640
            sub __temp_225$0x1873040, tmp2$0x1871640, tmp1$0x1871640
            mul __temp_225$0x1873040, 0x8:i, __temp_225$0x1873040
            sti 0x2000010E8:i, __temp_224$0x1873040
            sti 0x2000010F0:i, __temp_225$0x1873040
            ldelema __temp_226$0x1873040, lcn$0x16e0990, tmp1$0x1871640
            sub __temp_227$0x1873040, tmp2$0x1871640, tmp1$0x1871640
            mul __temp_227$0x1873040, 0x8:i, __temp_227$0x1873040
            sti 0x2000010F8:i, __temp_226$0x1873040
            sti 0x200001100:i, __temp_227$0x1873040
            asm "mov $0x0:msq, 0x200001108:msq"
            asm "mov $__newr0:msq, 0x200001110:msq"
            asm "mov $0x200001000:msq, 0x200001118:msq"
            asm "mov $0x200001010:msq, 0x200001120:msq"
            asm "mov $0x200001108:msq, 0x200001128:msq"
            asm "mov $0x200001110:msq, 0x200001130:msq"
            asm "newr 0x200001118, 0x200001120, 0x200001128, 0x200001130"
            ldi __temp_185$0x1873040, 0x100000400:i
            ldi __temp_186$0x1873040, 0x100000408:i
            add __temp_187$0x1873040, __temp_185$0x1873040, __temp_186$0x1873040
            lda __temp_228$0x1873040, recluster_runner$0x16e0990
            sub __temp_187$0x1873040, __temp_187$0x1873040, 0x8:i8
            sti __temp_187$0x1873040, __temp_228$0x1873040
            sub __temp_187$0x1873040, __temp_187$0x1873040, 0x8:i8
            sti __temp_187$0x1873040, 0x10:i8
            add __temp_229$0x1873040, i$0x1871640, 0xA:i8
            sub __temp_187$0x1873040, __temp_187$0x1873040, 0x8:i8
            sti __temp_187$0x1873040, __temp_229$0x1873040
            sub __temp_187$0x1873040, __temp_187$0x1873040, 0x8:i8
            sti __temp_187$0x1873040, i$0x1871640
        __temp_176$0x1871640:
            add __temp_230$0x1871640, i$0x1871640, 0xA:i8
            mov i$0x1871640, __temp_230$0x1871640
            br __temp_175$0x1871640
        __temp_177$0x1871640:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            lda __temp_234$0x1871640, iter$0x16e0990
            mov __temp_235$0x1871640, 0x8:i
            sti 0x200001018:i, __temp_234$0x1871640
            sti 0x200001020:i, __temp_235$0x1871640
            ldelema __temp_236$0x1871640, cx$0x16e0990, 0x0:i8
            sub __temp_237$0x1871640, 0x2:i8, 0x0:i8
            mul __temp_237$0x1871640, 0x8:i, __temp_237$0x1871640
            sti 0x200001028:i, __temp_236$0x1871640
            sti 0x200001030:i, __temp_237$0x1871640
            ldelema __temp_238$0x1871640, cy$0x16e0990, 0x0:i8
            sub __temp_239$0x1871640, 0x2:i8, 0x0:i8
            mul __temp_239$0x1871640, 0x8:i, __temp_239$0x1871640
            sti 0x200001038:i, __temp_238$0x1871640
            sti 0x200001040:i, __temp_239$0x1871640
            ldelema __temp_240$0x1871640, cz$0x16e0990, 0x0:i8
            sub __temp_241$0x1871640, 0x2:i8, 0x0:i8
            mul __temp_241$0x1871640, 0x8:i, __temp_241$0x1871640
            sti 0x200001048:i, __temp_240$0x1871640
            sti 0x200001050:i, __temp_241$0x1871640
            ldelema __temp_242$0x1871640, cw$0x16e0990, 0x0:i8
            sub __temp_243$0x1871640, 0x2:i8, 0x0:i8
            mul __temp_243$0x1871640, 0x8:i, __temp_243$0x1871640
            sti 0x200001058:i, __temp_242$0x1871640
            sti 0x200001060:i, __temp_243$0x1871640
            add __temp_246$0x1871640, 0x2:i8, 0x200:i8
            mul __temp_247$0x1871640, __temp_246$0x1871640, 0xA:i8
            div __temp_248$0x1871640, __temp_247$0x1871640, 0xA:i8
            ldelema __temp_244$0x1871640, lcx$0x16e0990, 0x0:i8
            sub __temp_245$0x1871640, __temp_248$0x1871640, 0x0:i8
            mul __temp_245$0x1871640, 0x8:i, __temp_245$0x1871640
            sti 0x200001068:i, __temp_244$0x1871640
            sti 0x200001070:i, __temp_245$0x1871640
            add __temp_251$0x1871640, 0x2:i8, 0x200:i8
            mul __temp_252$0x1871640, __temp_251$0x1871640, 0xA:i8
            div __temp_253$0x1871640, __temp_252$0x1871640, 0xA:i8
            ldelema __temp_249$0x1871640, lcy$0x16e0990, 0x0:i8
            sub __temp_250$0x1871640, __temp_253$0x1871640, 0x0:i8
            mul __temp_250$0x1871640, 0x8:i, __temp_250$0x1871640
            sti 0x200001078:i, __temp_249$0x1871640
            sti 0x200001080:i, __temp_250$0x1871640
            add __temp_256$0x1871640, 0x2:i8, 0x200:i8
            mul __temp_257$0x1871640, __temp_256$0x1871640, 0xA:i8
            div __temp_258$0x1871640, __temp_257$0x1871640, 0xA:i8
            ldelema __temp_254$0x1871640, lcz$0x16e0990, 0x0:i8
            sub __temp_255$0x1871640, __temp_258$0x1871640, 0x0:i8
            mul __temp_255$0x1871640, 0x8:i, __temp_255$0x1871640
            sti 0x200001088:i, __temp_254$0x1871640
            sti 0x200001090:i, __temp_255$0x1871640
            add __temp_261$0x1871640, 0x2:i8, 0x200:i8
            mul __temp_262$0x1871640, __temp_261$0x1871640, 0xA:i8
            div __temp_263$0x1871640, __temp_262$0x1871640, 0xA:i8
            ldelema __temp_259$0x1871640, lcw$0x16e0990, 0x0:i8
            sub __temp_260$0x1871640, __temp_263$0x1871640, 0x0:i8
            mul __temp_260$0x1871640, 0x8:i, __temp_260$0x1871640
            sti 0x200001098:i, __temp_259$0x1871640
            sti 0x2000010A0:i, __temp_260$0x1871640
            add __temp_266$0x1871640, 0x2:i8, 0x200:i8
            mul __temp_267$0x1871640, __temp_266$0x1871640, 0xA:i8
            div __temp_268$0x1871640, __temp_267$0x1871640, 0xA:i8
            ldelema __temp_264$0x1871640, lcn$0x16e0990, 0x0:i8
            sub __temp_265$0x1871640, __temp_268$0x1871640, 0x0:i8
            mul __temp_265$0x1871640, 0x8:i, __temp_265$0x1871640
            sti 0x2000010A8:i, __temp_264$0x1871640
            sti 0x2000010B0:i, __temp_265$0x1871640
            asm "mov $0x1:msq, 0x2000010b8:msq"
            div __temp_271$0x1871640, 0xA:i8, 0xA:i8
            add __temp_272$0x1871640, __temp_271$0x1871640, 0x1:i8
            mul __temp_273$0x1871640, __temp_272$0x1871640, 0x200:i8
            ldelema __temp_269$0x1871640, trigger$0x16e0990, 0x0:i8
            sub __temp_270$0x1871640, __temp_273$0x1871640, 0x0:i8
            mul __temp_270$0x1871640, 0x8:i, __temp_270$0x1871640
            sti 0x2000010C0:i, __temp_269$0x1871640
            sti 0x2000010C8:i, __temp_270$0x1871640
            asm "mov $__newr0:msq, 0x2000010d0:msq"
            asm "mov $0x200001000:msq, 0x2000010d8:msq"
            asm "mov $0x200001010:msq, 0x2000010e0:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e8:msq"
            asm "mov $0x2000010d0:msq, 0x2000010f0:msq"
            asm "newr 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_231$0x1871640, 0x100000400:i
            ldi __temp_232$0x1871640, 0x100000408:i
            add __temp_233$0x1871640, __temp_231$0x1871640, __temp_232$0x1871640
            lda __temp_274$0x1871640, on_recluster_finished$0x16e0990
            sub __temp_233$0x1871640, __temp_233$0x1871640, 0x8:i8
            sti __temp_233$0x1871640, __temp_274$0x1871640
            sub __temp_233$0x1871640, __temp_233$0x1871640, 0x8:i8
            sti __temp_233$0x1871640, 0x8:i8
            sub __temp_233$0x1871640, __temp_233$0x1871640, 0x8:i8
            sti __temp_233$0x1871640, iter$0x16e0990
            ret
    }
    function on_init1_finished
    {
            mov i$0x1892210, 0x0:i8
        __temp_275$0x1892210:
            clt __temp_278$0x1892210, i$0x1892210, 0x200:i8
            bz __temp_278$0x1892210, __temp_277$0x1892210
            ldelem __temp_280$0x18938f0, trigger$0x16e0990, i$0x1892210
            cne __temp_281$0x18938f0, __temp_280$0x18938f0, 0x1:i8
            bnz __temp_281$0x18938f0, __temp_282$0x18938f0
            br __temp_279$0x18938f0
        __temp_282$0x18938f0:
            asm "exit:a"
        __temp_279$0x18938f0:
        __temp_276$0x1892210:
            add __temp_283$0x1892210, i$0x1892210, 0x200:i8
            mov i$0x1892210, __temp_283$0x1892210
            br __temp_275$0x1892210
        __temp_277$0x1892210:
            stelem trigger$0x16e0990, 0x0:i8, 0x3:i8
            mov i$0x1892210, 0x0:i8
        __temp_284$0x1892210:
            clt __temp_287$0x1892210, i$0x1892210, 0x2:i8
            bz __temp_287$0x1892210, __temp_286$0x1892210
            ldelem __temp_288$0x1895790, x$0x16e0990, i$0x1892210
            stelem cx$0x16e0990, i$0x1892210, __temp_288$0x1895790
            ldelem __temp_289$0x1895790, y$0x16e0990, i$0x1892210
            stelem cy$0x16e0990, i$0x1892210, __temp_289$0x1895790
            ldelem __temp_290$0x1895790, z$0x16e0990, i$0x1892210
            stelem cz$0x16e0990, i$0x1892210, __temp_290$0x1895790
            ldelem __temp_291$0x1895790, w$0x16e0990, i$0x1892210
            stelem cw$0x16e0990, i$0x1892210, __temp_291$0x1895790
        __temp_285$0x1892210:
            add __temp_292$0x1892210, i$0x1892210, 0x1:i8
            mov i$0x1892210, __temp_292$0x1892210
            br __temp_284$0x1892210
        __temp_286$0x1892210:
            mov iter$0x16e0990, 0x0:i8
            call start_iteration$0x16e0990, <missing>
            asm "exit:cd"
    }
    function init_runner
    {
            call srand$0x16e0990, <missing>, 0x1:i8
            mov i$0x18ab480, 0x0:i8
        __temp_293$0x18ab480:
            clt __temp_296$0x18ab480, i$0x18ab480, start$0x18ab1e0
            bz __temp_296$0x18ab480, __temp_295$0x18ab480
            call input_q$0x16e0990, __temp_297$0x18acfc0
            mov t$0x18ab480, __temp_297$0x18acfc0
            call input_q$0x16e0990, __temp_298$0x18acfc0
            mov t$0x18ab480, __temp_298$0x18acfc0
            call input_q$0x16e0990, __temp_299$0x18acfc0
            mov t$0x18ab480, __temp_299$0x18acfc0
            call input_q$0x16e0990, __temp_300$0x18acfc0
            mov t$0x18ab480, __temp_300$0x18acfc0
        __temp_294$0x18ab480:
            add __temp_301$0x18ab480, i$0x18ab480, 0x1:i8
            mov i$0x18ab480, __temp_301$0x18ab480
            br __temp_293$0x18ab480
        __temp_295$0x18ab480:
            mov i$0x18ab480, start$0x18ab1e0
        __temp_302$0x18ab480:
            clt __temp_305$0x18ab480, i$0x18ab480, end$0x18ab1e0
            bz __temp_305$0x18ab480, __temp_304$0x18ab480
            call input_q$0x16e0990, __temp_306$0x18aee30
            stelem x$0x16e0990, i$0x18ab480, __temp_306$0x18aee30
            call input_q$0x16e0990, __temp_307$0x18aee30
            stelem y$0x16e0990, i$0x18ab480, __temp_307$0x18aee30
            call input_q$0x16e0990, __temp_308$0x18aee30
            stelem z$0x16e0990, i$0x18ab480, __temp_308$0x18aee30
            call input_q$0x16e0990, __temp_309$0x18aee30
            stelem w$0x16e0990, i$0x18ab480, __temp_309$0x18aee30
        __temp_303$0x18ab480:
            add __temp_310$0x18ab480, i$0x18ab480, 0x1:i8
            mov i$0x18ab480, __temp_310$0x18ab480
            br __temp_302$0x18ab480
        __temp_304$0x18ab480:
            div __temp_311$0x18ab480, start$0x18ab1e0, 0xA:i8
            mul __temp_312$0x18ab480, __temp_311$0x18ab480, 0x200:i8
            stelem trigger$0x16e0990, __temp_312$0x18ab480, 0x1:i8
            asm "exit:c"
    }
    function init_runner_stdin
    {
            mov i$0x18c1c10, 0x0:i8
        __temp_313$0x18c1c10:
            clt __temp_316$0x18c1c10, i$0x18c1c10, start$0x18c1970
            bz __temp_316$0x18c1c10, __temp_315$0x18c1c10
            call input_q$0x16e0990, __temp_317$0x18c31f0
            mov t$0x18c1c10, __temp_317$0x18c31f0
            call input_q$0x16e0990, __temp_318$0x18c31f0
            mov t$0x18c1c10, __temp_318$0x18c31f0
            call input_q$0x16e0990, __temp_319$0x18c31f0
            mov t$0x18c1c10, __temp_319$0x18c31f0
            call input_q$0x16e0990, __temp_320$0x18c31f0
            mov t$0x18c1c10, __temp_320$0x18c31f0
        __temp_314$0x18c1c10:
            add __temp_321$0x18c1c10, i$0x18c1c10, 0x1:i8
            mov i$0x18c1c10, __temp_321$0x18c1c10
            br __temp_313$0x18c1c10
        __temp_315$0x18c1c10:
            mov i$0x18c1c10, start$0x18c1970
        __temp_322$0x18c1c10:
            clt __temp_325$0x18c1c10, i$0x18c1c10, end$0x18c1970
            bz __temp_325$0x18c1c10, __temp_324$0x18c1c10
            call input_q$0x16e0990, __temp_326$0x18c5080
            stelem x$0x16e0990, i$0x18c1c10, __temp_326$0x18c5080
            call input_q$0x16e0990, __temp_327$0x18c5080
            stelem y$0x16e0990, i$0x18c1c10, __temp_327$0x18c5080
            call input_q$0x16e0990, __temp_328$0x18c5080
            stelem z$0x16e0990, i$0x18c1c10, __temp_328$0x18c5080
            call input_q$0x16e0990, __temp_329$0x18c5080
            stelem w$0x16e0990, i$0x18c1c10, __temp_329$0x18c5080
        __temp_323$0x18c1c10:
            add __temp_330$0x18c1c10, i$0x18c1c10, 0x1:i8
            mov i$0x18c1c10, __temp_330$0x18c1c10
            br __temp_322$0x18c1c10
        __temp_324$0x18c1c10:
            mov i$0x18c1c10, start$0x18c1970
        __temp_331$0x18c1c10:
            clt __temp_334$0x18c1c10, i$0x18c1c10, end$0x18c1970
            bz __temp_334$0x18c1c10, __temp_333$0x18c1c10
            div __temp_335$0x18c7650, i$0x18c1c10, 0xA:i8
            mul __temp_336$0x18c7650, __temp_335$0x18c7650, 0x200:i8
            stelem trigger$0x16e0990, __temp_336$0x18c7650, 0x1:i8
        __temp_332$0x18c1c10:
            add __temp_337$0x18c1c10, i$0x18c1c10, 0x1:i8
            mov i$0x18c1c10, __temp_337$0x18c1c10
            br __temp_331$0x18c1c10
        __temp_333$0x18c1c10:
            asm "exit:c"
    }
    function init0
    {
            mov i$0x18ec920, 0x0:i8
        __temp_338$0x18ec920:
            clt __temp_341$0x18ec920, i$0x18ec920, 0xA:i8
            bz __temp_341$0x18ec920, __temp_340$0x18ec920
            div __temp_342$0x18edb90, i$0x18ec920, 0xA:i8
            mul __temp_343$0x18edb90, __temp_342$0x18edb90, 0x200:i8
            stelem trigger$0x16e0990, __temp_343$0x18edb90, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x5:msq, 0x200001010:msq"
            add __temp_349$0x18edb90, i$0x18ec920, 0xA:i8
            ldelema __temp_347$0x18edb90, x$0x16e0990, i$0x18ec920
            sub __temp_348$0x18edb90, __temp_349$0x18edb90, i$0x18ec920
            mul __temp_348$0x18edb90, 0x8:i, __temp_348$0x18edb90
            sti 0x200001018:i, __temp_347$0x18edb90
            sti 0x200001020:i, __temp_348$0x18edb90
            add __temp_352$0x18edb90, i$0x18ec920, 0xA:i8
            ldelema __temp_350$0x18edb90, y$0x16e0990, i$0x18ec920
            sub __temp_351$0x18edb90, __temp_352$0x18edb90, i$0x18ec920
            mul __temp_351$0x18edb90, 0x8:i, __temp_351$0x18edb90
            sti 0x200001028:i, __temp_350$0x18edb90
            sti 0x200001030:i, __temp_351$0x18edb90
            add __temp_355$0x18edb90, i$0x18ec920, 0xA:i8
            ldelema __temp_353$0x18edb90, z$0x16e0990, i$0x18ec920
            sub __temp_354$0x18edb90, __temp_355$0x18edb90, i$0x18ec920
            mul __temp_354$0x18edb90, 0x8:i, __temp_354$0x18edb90
            sti 0x200001038:i, __temp_353$0x18edb90
            sti 0x200001040:i, __temp_354$0x18edb90
            add __temp_358$0x18edb90, i$0x18ec920, 0xA:i8
            ldelema __temp_356$0x18edb90, w$0x16e0990, i$0x18ec920
            sub __temp_357$0x18edb90, __temp_358$0x18edb90, i$0x18ec920
            mul __temp_357$0x18edb90, 0x8:i, __temp_357$0x18edb90
            sti 0x200001048:i, __temp_356$0x18edb90
            sti 0x200001050:i, __temp_357$0x18edb90
            div __temp_361$0x18edb90, i$0x18ec920, 0xA:i8
            mul __temp_362$0x18edb90, __temp_361$0x18edb90, 0x200:i8
            div __temp_363$0x18edb90, i$0x18ec920, 0xA:i8
            add __temp_364$0x18edb90, __temp_363$0x18edb90, 0x1:i8
            mul __temp_365$0x18edb90, __temp_364$0x18edb90, 0x200:i8
            ldelema __temp_359$0x18edb90, trigger$0x16e0990, __temp_362$0x18edb90
            sub __temp_360$0x18edb90, __temp_365$0x18edb90, __temp_362$0x18edb90
            mul __temp_360$0x18edb90, 0x8:i, __temp_360$0x18edb90
            sti 0x200001058:i, __temp_359$0x18edb90
            sti 0x200001060:i, __temp_360$0x18edb90
            asm "mov $0x0:msq, 0x200001068:msq"
            asm "mov $__newr0:msq, 0x200001070:msq"
            asm "mov $0x200001000:msq, 0x200001078:msq"
            asm "mov $0x200001010:msq, 0x200001080:msq"
            asm "mov $0x200001068:msq, 0x200001088:msq"
            asm "mov $0x200001070:msq, 0x200001090:msq"
            asm "newr 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_344$0x18edb90, 0x100000400:i
            ldi __temp_345$0x18edb90, 0x100000408:i
            add __temp_346$0x18edb90, __temp_344$0x18edb90, __temp_345$0x18edb90
            lda __temp_366$0x18edb90, init_runner$0x16e0990
            sub __temp_346$0x18edb90, __temp_346$0x18edb90, 0x8:i8
            sti __temp_346$0x18edb90, __temp_366$0x18edb90
            sub __temp_346$0x18edb90, __temp_346$0x18edb90, 0x8:i8
            sti __temp_346$0x18edb90, 0x10:i8
            add __temp_367$0x18edb90, i$0x18ec920, 0xA:i8
            sub __temp_346$0x18edb90, __temp_346$0x18edb90, 0x8:i8
            sti __temp_346$0x18edb90, __temp_367$0x18edb90
            sub __temp_346$0x18edb90, __temp_346$0x18edb90, 0x8:i8
            sti __temp_346$0x18edb90, i$0x18ec920
        __temp_339$0x18ec920:
            add __temp_368$0x18ec920, i$0x18ec920, 0xA:i8
            mov i$0x18ec920, __temp_368$0x18ec920
            br __temp_338$0x18ec920
        __temp_340$0x18ec920:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xa:msq, 0x200001010:msq"
            ldelema __temp_372$0x18ec920, cx$0x16e0990, 0x0:i8
            sub __temp_373$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_373$0x18ec920, 0x8:i, __temp_373$0x18ec920
            sti 0x200001018:i, __temp_372$0x18ec920
            sti 0x200001020:i, __temp_373$0x18ec920
            ldelema __temp_374$0x18ec920, cy$0x16e0990, 0x0:i8
            sub __temp_375$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_375$0x18ec920, 0x8:i, __temp_375$0x18ec920
            sti 0x200001028:i, __temp_374$0x18ec920
            sti 0x200001030:i, __temp_375$0x18ec920
            ldelema __temp_376$0x18ec920, cz$0x16e0990, 0x0:i8
            sub __temp_377$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_377$0x18ec920, 0x8:i, __temp_377$0x18ec920
            sti 0x200001038:i, __temp_376$0x18ec920
            sti 0x200001040:i, __temp_377$0x18ec920
            ldelema __temp_378$0x18ec920, cw$0x16e0990, 0x0:i8
            sub __temp_379$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_379$0x18ec920, 0x8:i, __temp_379$0x18ec920
            sti 0x200001048:i, __temp_378$0x18ec920
            sti 0x200001050:i, __temp_379$0x18ec920
            ldelema __temp_380$0x18ec920, x$0x16e0990, 0x0:i8
            sub __temp_381$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_381$0x18ec920, 0x8:i, __temp_381$0x18ec920
            sti 0x200001058:i, __temp_380$0x18ec920
            sti 0x200001060:i, __temp_381$0x18ec920
            ldelema __temp_382$0x18ec920, y$0x16e0990, 0x0:i8
            sub __temp_383$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_383$0x18ec920, 0x8:i, __temp_383$0x18ec920
            sti 0x200001068:i, __temp_382$0x18ec920
            sti 0x200001070:i, __temp_383$0x18ec920
            ldelema __temp_384$0x18ec920, z$0x16e0990, 0x0:i8
            sub __temp_385$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_385$0x18ec920, 0x8:i, __temp_385$0x18ec920
            sti 0x200001078:i, __temp_384$0x18ec920
            sti 0x200001080:i, __temp_385$0x18ec920
            ldelema __temp_386$0x18ec920, w$0x16e0990, 0x0:i8
            sub __temp_387$0x18ec920, 0x2:i8, 0x0:i8
            mul __temp_387$0x18ec920, 0x8:i, __temp_387$0x18ec920
            sti 0x200001088:i, __temp_386$0x18ec920
            sti 0x200001090:i, __temp_387$0x18ec920
            ldelema __temp_388$0x18ec920, trigger$0x16e0990, 0x0:i8
            sub __temp_389$0x18ec920, 0xA:i8, 0x0:i8
            mul __temp_389$0x18ec920, 0x8:i, __temp_389$0x18ec920
            sti 0x200001098:i, __temp_388$0x18ec920
            sti 0x2000010A0:i, __temp_389$0x18ec920
            lda __temp_390$0x18ec920, iter$0x16e0990
            mov __temp_391$0x18ec920, 0x8:i
            sti 0x2000010A8:i, __temp_390$0x18ec920
            sti 0x2000010B0:i, __temp_391$0x18ec920
            asm "mov $0x1:msq, 0x2000010b8:msq"
            div __temp_394$0x18ec920, 0xA:i8, 0xA:i8
            add __temp_395$0x18ec920, __temp_394$0x18ec920, 0x1:i8
            mul __temp_396$0x18ec920, __temp_395$0x18ec920, 0x200:i8
            ldelema __temp_392$0x18ec920, trigger$0x16e0990, 0x0:i8
            sub __temp_393$0x18ec920, __temp_396$0x18ec920, 0x0:i8
            mul __temp_393$0x18ec920, 0x8:i, __temp_393$0x18ec920
            sti 0x2000010C0:i, __temp_392$0x18ec920
            sti 0x2000010C8:i, __temp_393$0x18ec920
            asm "mov $__newr0:msq, 0x2000010d0:msq"
            asm "mov $0x200001000:msq, 0x2000010d8:msq"
            asm "mov $0x200001010:msq, 0x2000010e0:msq"
            asm "mov $0x2000010b8:msq, 0x2000010e8:msq"
            asm "mov $0x2000010d0:msq, 0x2000010f0:msq"
            asm "newr 0x2000010d8, 0x2000010e0, 0x2000010e8, 0x2000010f0"
            ldi __temp_369$0x18ec920, 0x100000400:i
            ldi __temp_370$0x18ec920, 0x100000408:i
            add __temp_371$0x18ec920, __temp_369$0x18ec920, __temp_370$0x18ec920
            lda __temp_397$0x18ec920, on_init1_finished$0x16e0990
            sub __temp_371$0x18ec920, __temp_371$0x18ec920, 0x8:i8
            sti __temp_371$0x18ec920, __temp_397$0x18ec920
            sub __temp_371$0x18ec920, __temp_371$0x18ec920, 0x8:i8
            sti __temp_371$0x18ec920, 0x0:i8
            asm "exit:c"
    }
    function init_runner_pmem
    {
            mov i$0x1902bd0, start$0x1902930
        __temp_398$0x1902bd0:
            clt __temp_401$0x1902bd0, i$0x1902bd0, end$0x1902930
            bz __temp_401$0x1902bd0, __temp_400$0x1902bd0
            mul __temp_402$0x1904130, 0x4:i8, i$0x1902bd0
            ldelem __temp_403$0x1904130, pmem_in$0x16e0990, __temp_402$0x1904130
            stelem x$0x16e0990, i$0x1902bd0, __temp_403$0x1904130
            mul __temp_404$0x1904130, 0x4:i8, i$0x1902bd0
            add __temp_405$0x1904130, __temp_404$0x1904130, 0x1:i8
            ldelem __temp_406$0x1904130, pmem_in$0x16e0990, __temp_405$0x1904130
            stelem y$0x16e0990, i$0x1902bd0, __temp_406$0x1904130
            mul __temp_407$0x1904130, 0x4:i8, i$0x1902bd0
            add __temp_408$0x1904130, __temp_407$0x1904130, 0x2:i8
            ldelem __temp_409$0x1904130, pmem_in$0x16e0990, __temp_408$0x1904130
            stelem z$0x16e0990, i$0x1902bd0, __temp_409$0x1904130
            mul __temp_410$0x1904130, 0x4:i8, i$0x1902bd0
            add __temp_411$0x1904130, __temp_410$0x1904130, 0x3:i8
            ldelem __temp_412$0x1904130, pmem_in$0x16e0990, __temp_411$0x1904130
            stelem w$0x16e0990, i$0x1902bd0, __temp_412$0x1904130
        __temp_399$0x1902bd0:
            add __temp_413$0x1902bd0, i$0x1902bd0, 0x1:i8
            mov i$0x1902bd0, __temp_413$0x1902bd0
            br __temp_398$0x1902bd0
        __temp_400$0x1902bd0:
            div __temp_414$0x1902bd0, start$0x1902930, 0xA:i8
            mul __temp_415$0x1902bd0, __temp_414$0x1902bd0, 0x200:i8
            stelem trigger$0x16e0990, __temp_415$0x1902bd0, 0x1:i8
            asm "exit:c"
    }
    function init0_in_pmem
    {
            mov pmem_in$0x16e0990, 0x40000000000:i
            mov i$0x1930340, 0x0:i8
        __temp_416$0x1930340:
            clt __temp_419$0x1930340, i$0x1930340, 0xA:i8
            bz __temp_419$0x1930340, __temp_418$0x1930340
            div __temp_420$0x1931bd0, i$0x1930340, 0xA:i8
            mul __temp_421$0x1931bd0, __temp_420$0x1931bd0, 0x200:i8
            stelem trigger$0x16e0990, __temp_421$0x1931bd0, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x7:msq, 0x200001010:msq"
            add __temp_427$0x1931bd0, i$0x1930340, 0xA:i8
            ldelema __temp_425$0x1931bd0, x$0x16e0990, i$0x1930340
            sub __temp_426$0x1931bd0, __temp_427$0x1931bd0, i$0x1930340
            mul __temp_426$0x1931bd0, 0x8:i, __temp_426$0x1931bd0
            sti 0x200001018:i, __temp_425$0x1931bd0
            sti 0x200001020:i, __temp_426$0x1931bd0
            add __temp_430$0x1931bd0, i$0x1930340, 0xA:i8
            ldelema __temp_428$0x1931bd0, y$0x16e0990, i$0x1930340
            sub __temp_429$0x1931bd0, __temp_430$0x1931bd0, i$0x1930340
            mul __temp_429$0x1931bd0, 0x8:i, __temp_429$0x1931bd0
            sti 0x200001028:i, __temp_428$0x1931bd0
            sti 0x200001030:i, __temp_429$0x1931bd0
            add __temp_433$0x1931bd0, i$0x1930340, 0xA:i8
            ldelema __temp_431$0x1931bd0, z$0x16e0990, i$0x1930340
            sub __temp_432$0x1931bd0, __temp_433$0x1931bd0, i$0x1930340
            mul __temp_432$0x1931bd0, 0x8:i, __temp_432$0x1931bd0
            sti 0x200001038:i, __temp_431$0x1931bd0
            sti 0x200001040:i, __temp_432$0x1931bd0
            add __temp_436$0x1931bd0, i$0x1930340, 0xA:i8
            ldelema __temp_434$0x1931bd0, w$0x16e0990, i$0x1930340
            sub __temp_435$0x1931bd0, __temp_436$0x1931bd0, i$0x1930340
            mul __temp_435$0x1931bd0, 0x8:i, __temp_435$0x1931bd0
            sti 0x200001048:i, __temp_434$0x1931bd0
            sti 0x200001050:i, __temp_435$0x1931bd0
            div __temp_439$0x1931bd0, i$0x1930340, 0xA:i8
            mul __temp_440$0x1931bd0, __temp_439$0x1931bd0, 0x200:i8
            div __temp_441$0x1931bd0, i$0x1930340, 0xA:i8
            add __temp_442$0x1931bd0, __temp_441$0x1931bd0, 0x1:i8
            mul __temp_443$0x1931bd0, __temp_442$0x1931bd0, 0x200:i8
            ldelema __temp_437$0x1931bd0, trigger$0x16e0990, __temp_440$0x1931bd0
            sub __temp_438$0x1931bd0, __temp_443$0x1931bd0, __temp_440$0x1931bd0
            mul __temp_438$0x1931bd0, 0x8:i, __temp_438$0x1931bd0
            sti 0x200001058:i, __temp_437$0x1931bd0
            sti 0x200001060:i, __temp_438$0x1931bd0
            lda __temp_444$0x1931bd0, pmem_in$0x16e0990
            mov __temp_445$0x1931bd0, 0x8:i
            sti 0x200001068:i, __temp_444$0x1931bd0
            sti 0x200001070:i, __temp_445$0x1931bd0
            mul __temp_448$0x1931bd0, 0x4:i8, i$0x1930340
            add __temp_449$0x1931bd0, i$0x1930340, 0xA:i8
            mul __temp_450$0x1931bd0, 0x4:i8, __temp_449$0x1931bd0
            ldelema __temp_446$0x1931bd0, pmem_in$0x16e0990, __temp_448$0x1931bd0
            sub __temp_447$0x1931bd0, __temp_450$0x1931bd0, __temp_448$0x1931bd0
            mul __temp_447$0x1931bd0, 0x8:i, __temp_447$0x1931bd0
            sti 0x200001078:i, __temp_446$0x1931bd0
            sti 0x200001080:i, __temp_447$0x1931bd0
            asm "mov $0x0:msq, 0x200001088:msq"
            asm "mov $__newr0:msq, 0x200001090:msq"
            asm "mov $0x200001000:msq, 0x200001098:msq"
            asm "mov $0x200001010:msq, 0x2000010a0:msq"
            asm "mov $0x200001088:msq, 0x2000010a8:msq"
            asm "mov $0x200001090:msq, 0x2000010b0:msq"
            asm "newr 0x200001098, 0x2000010a0, 0x2000010a8, 0x2000010b0"
            ldi __temp_422$0x1931bd0, 0x100000400:i
            ldi __temp_423$0x1931bd0, 0x100000408:i
            add __temp_424$0x1931bd0, __temp_422$0x1931bd0, __temp_423$0x1931bd0
            lda __temp_451$0x1931bd0, init_runner_pmem$0x16e0990
            sub __temp_424$0x1931bd0, __temp_424$0x1931bd0, 0x8:i8
            sti __temp_424$0x1931bd0, __temp_451$0x1931bd0
            sub __temp_424$0x1931bd0, __temp_424$0x1931bd0, 0x8:i8
            sti __temp_424$0x1931bd0, 0x10:i8
            add __temp_452$0x1931bd0, i$0x1930340, 0xA:i8
            sub __temp_424$0x1931bd0, __temp_424$0x1931bd0, 0x8:i8
            sti __temp_424$0x1931bd0, __temp_452$0x1931bd0
            sub __temp_424$0x1931bd0, __temp_424$0x1931bd0, 0x8:i8
            sti __temp_424$0x1931bd0, i$0x1930340
        __temp_417$0x1930340:
            add __temp_453$0x1930340, i$0x1930340, 0xA:i8
            mov i$0x1930340, __temp_453$0x1930340
            br __temp_416$0x1930340
        __temp_418$0x1930340:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0xb:msq, 0x200001010:msq"
            ldelema __temp_457$0x1930340, cx$0x16e0990, 0x0:i8
            sub __temp_458$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_458$0x1930340, 0x8:i, __temp_458$0x1930340
            sti 0x200001018:i, __temp_457$0x1930340
            sti 0x200001020:i, __temp_458$0x1930340
            ldelema __temp_459$0x1930340, cy$0x16e0990, 0x0:i8
            sub __temp_460$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_460$0x1930340, 0x8:i, __temp_460$0x1930340
            sti 0x200001028:i, __temp_459$0x1930340
            sti 0x200001030:i, __temp_460$0x1930340
            ldelema __temp_461$0x1930340, cz$0x16e0990, 0x0:i8
            sub __temp_462$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_462$0x1930340, 0x8:i, __temp_462$0x1930340
            sti 0x200001038:i, __temp_461$0x1930340
            sti 0x200001040:i, __temp_462$0x1930340
            ldelema __temp_463$0x1930340, cw$0x16e0990, 0x0:i8
            sub __temp_464$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_464$0x1930340, 0x8:i, __temp_464$0x1930340
            sti 0x200001048:i, __temp_463$0x1930340
            sti 0x200001050:i, __temp_464$0x1930340
            ldelema __temp_465$0x1930340, x$0x16e0990, 0x0:i8
            sub __temp_466$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_466$0x1930340, 0x8:i, __temp_466$0x1930340
            sti 0x200001058:i, __temp_465$0x1930340
            sti 0x200001060:i, __temp_466$0x1930340
            ldelema __temp_467$0x1930340, y$0x16e0990, 0x0:i8
            sub __temp_468$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_468$0x1930340, 0x8:i, __temp_468$0x1930340
            sti 0x200001068:i, __temp_467$0x1930340
            sti 0x200001070:i, __temp_468$0x1930340
            ldelema __temp_469$0x1930340, z$0x16e0990, 0x0:i8
            sub __temp_470$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_470$0x1930340, 0x8:i, __temp_470$0x1930340
            sti 0x200001078:i, __temp_469$0x1930340
            sti 0x200001080:i, __temp_470$0x1930340
            ldelema __temp_471$0x1930340, w$0x16e0990, 0x0:i8
            sub __temp_472$0x1930340, 0x2:i8, 0x0:i8
            mul __temp_472$0x1930340, 0x8:i, __temp_472$0x1930340
            sti 0x200001088:i, __temp_471$0x1930340
            sti 0x200001090:i, __temp_472$0x1930340
            ldelema __temp_473$0x1930340, trigger$0x16e0990, 0x0:i8
            sub __temp_474$0x1930340, 0xA:i8, 0x0:i8
            mul __temp_474$0x1930340, 0x8:i, __temp_474$0x1930340
            sti 0x200001098:i, __temp_473$0x1930340
            sti 0x2000010A0:i, __temp_474$0x1930340
            lda __temp_475$0x1930340, iter$0x16e0990
            mov __temp_476$0x1930340, 0x8:i
            sti 0x2000010A8:i, __temp_475$0x1930340
            sti 0x2000010B0:i, __temp_476$0x1930340
            lda __temp_477$0x1930340, pmem_in$0x16e0990
            mov __temp_478$0x1930340, 0x8:i
            sti 0x2000010B8:i, __temp_477$0x1930340
            sti 0x2000010C0:i, __temp_478$0x1930340
            asm "mov $0x1:msq, 0x2000010c8:msq"
            div __temp_481$0x1930340, 0xA:i8, 0xA:i8
            add __temp_482$0x1930340, __temp_481$0x1930340, 0x1:i8
            mul __temp_483$0x1930340, __temp_482$0x1930340, 0x200:i8
            ldelema __temp_479$0x1930340, trigger$0x16e0990, 0x0:i8
            sub __temp_480$0x1930340, __temp_483$0x1930340, 0x0:i8
            mul __temp_480$0x1930340, 0x8:i, __temp_480$0x1930340
            sti 0x2000010D0:i, __temp_479$0x1930340
            sti 0x2000010D8:i, __temp_480$0x1930340
            asm "mov $__newr0:msq, 0x2000010e0:msq"
            asm "mov $0x200001000:msq, 0x2000010e8:msq"
            asm "mov $0x200001010:msq, 0x2000010f0:msq"
            asm "mov $0x2000010c8:msq, 0x2000010f8:msq"
            asm "mov $0x2000010e0:msq, 0x200001100:msq"
            asm "newr 0x2000010e8, 0x2000010f0, 0x2000010f8, 0x200001100"
            ldi __temp_454$0x1930340, 0x100000400:i
            ldi __temp_455$0x1930340, 0x100000408:i
            add __temp_456$0x1930340, __temp_454$0x1930340, __temp_455$0x1930340
            lda __temp_484$0x1930340, on_init1_finished$0x16e0990
            sub __temp_456$0x1930340, __temp_456$0x1930340, 0x8:i8
            sti __temp_456$0x1930340, __temp_484$0x1930340
            sub __temp_456$0x1930340, __temp_456$0x1930340, 0x8:i8
            sti __temp_456$0x1930340, 0x0:i8
            asm "exit:c"
    }
    function main
    {
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x2:msq, 0x200001010:msq"
            div __temp_490$0x193f380, 0xA:i8, 0xA:i8
            add __temp_491$0x193f380, __temp_490$0x193f380, 0x1:i8
            mul __temp_492$0x193f380, __temp_491$0x193f380, 0x200:i8
            ldelema __temp_488$0x193f380, trigger$0x16e0990, 0x0:i8
            sub __temp_489$0x193f380, __temp_492$0x193f380, 0x0:i8
            mul __temp_489$0x193f380, 0x8:i, __temp_489$0x193f380
            sti 0x200001018:i, __temp_488$0x193f380
            sti 0x200001020:i, __temp_489$0x193f380
            lda __temp_493$0x193f380, pmem_in$0x16e0990
            mov __temp_494$0x193f380, 0x8:i
            sti 0x200001028:i, __temp_493$0x193f380
            sti 0x200001030:i, __temp_494$0x193f380
            asm "mov $0x0:msq, 0x200001038:msq"
            asm "mov $__newr0:msq, 0x200001040:msq"
            asm "mov $0x200001000:msq, 0x200001048:msq"
            asm "mov $0x200001010:msq, 0x200001050:msq"
            asm "mov $0x200001038:msq, 0x200001058:msq"
            asm "mov $0x200001040:msq, 0x200001060:msq"
            asm "newr 0x200001048, 0x200001050, 0x200001058, 0x200001060"
            ldi __temp_485$0x193f380, 0x100000400:i
            ldi __temp_486$0x193f380, 0x100000408:i
            add __temp_487$0x193f380, __temp_485$0x193f380, __temp_486$0x193f380
            lda __temp_495$0x193f380, init0_in_pmem$0x16e0990
            sub __temp_487$0x193f380, __temp_487$0x193f380, 0x8:i8
            sti __temp_487$0x193f380, __temp_495$0x193f380
            sub __temp_487$0x193f380, __temp_487$0x193f380, 0x8:i8
            sti __temp_487$0x193f380, 0x0:i8
            asm "exit:c"
    }
}
