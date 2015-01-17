class Program
{
    function get_points_range
    {
            div __temp_0$0x1ef32b0, pcnt$0x1ebe300, 0x1E:i8
            mul __temp_1$0x1ef32b0, __temp_0$0x1ef32b0, i$0x1ef2f70
            sti p_begin$0x1ef2f70, __temp_1$0x1ef32b0
            beq i$0x1ef2f70, 0x1D:i8, __temp_4$0x1ef32b0
            div __temp_5$0x1ef47a0, pcnt$0x1ebe300, 0x1E:i8
            add __temp_6$0x1ef47a0, i$0x1ef2f70, 0x1:i8
            mul __temp_7$0x1ef47a0, __temp_5$0x1ef47a0, __temp_6$0x1ef47a0
            sti p_end$0x1ef2f70, __temp_7$0x1ef47a0
            br __temp_2$0x1ef32b0
        __temp_4$0x1ef32b0:
            sti p_end$0x1ef2f70, pcnt$0x1ebe300
        __temp_2$0x1ef32b0:
            ret
    }
    function create_new_iter_task
    {
            mov space$0x1f07c00, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x4:msq, 0x200001010:msq"
            lda __temp_11$0x1f07c00, iter$0x1ebe300
            mov __temp_12$0x1f07c00, 0x8:i
            sti 0x200001018:i, __temp_11$0x1f07c00
            sti 0x200001020:i, __temp_12$0x1f07c00
            lda __temp_13$0x1f07c00, pcnt$0x1ebe300
            mov __temp_14$0x1f07c00, 0x8:i
            sti 0x200001028:i, __temp_13$0x1f07c00
            sti 0x200001030:i, __temp_14$0x1f07c00
            lda __temp_15$0x1f07c00, ppoints$0x1ebe300
            mov __temp_16$0x1f07c00, 0x8:i
            sti 0x200001038:i, __temp_15$0x1f07c00
            sti 0x200001040:i, __temp_16$0x1f07c00
            mul __temp_19$0x1f07c00, 0x1E:i8, 0x200:i8
            ldelema __temp_17$0x1f07c00, task_status$0x1ebe300, 0x0:i8
            sub __temp_18$0x1f07c00, __temp_19$0x1f07c00, 0x0:i8
            mul __temp_18$0x1f07c00, 0x8:i, __temp_18$0x1f07c00
            sti 0x200001048:i, __temp_17$0x1f07c00
            sti 0x200001050:i, __temp_18$0x1f07c00
            asm "mov $0x0:msq, 0x200001058:msq"
            asm "mov $__newr0:msq, 0x200001060:msq"
            mov __temp_20$0x1f07c00, space$0x1f07c00
            sti 0x200001068:i, __temp_20$0x1f07c00
            asm "mov $0x200001000:msq, 0x200001070:msq"
            asm "mov $0x200001010:msq, 0x200001078:msq"
            asm "mov $0x200001058:msq, 0x200001080:msq"
            asm "mov $0x200001060:msq, 0x200001088:msq"
            asm "mov $0x200001068:msq, 0x200001090:msq"
            asm "spawnx 0x200001070, 0x200001078, 0x200001080, 0x200001088, 0x200001090"
            ldi __temp_8$0x1f07c00, 0x100000400:i
            ldi __temp_9$0x1f07c00, 0x100000408:i
            add __temp_10$0x1f07c00, __temp_8$0x1f07c00, __temp_9$0x1f07c00
            lda __temp_21$0x1f07c00, new_iter_task$0x1ebe300
            sub __temp_10$0x1f07c00, __temp_10$0x1f07c00, 0x8:i8
            sti __temp_10$0x1f07c00, __temp_21$0x1f07c00
            sub __temp_10$0x1f07c00, __temp_10$0x1f07c00, 0x8:i8
            sti __temp_10$0x1f07c00, 0x0:i8
            ret
    }
    function calc_task
    {
            lda __temp_22$0x1f36eb0, p_begin$0x1f36eb0
            lda __temp_23$0x1f36eb0, p_end$0x1f36eb0
            call get_points_range$0x1ebe300, <missing>, id$0x1f36c80, __temp_22$0x1f36eb0, __temp_23$0x1f36eb0
            mov ps$0x1f36eb0, 0x400000008:i
            mul __temp_25$0x1f36eb0, id$0x1f36c80, 0x200:i8
            ldelema gradient$0x1f36eb0, ws$0x1ebe300, __temp_25$0x1f36eb0
            neg __temp_27$0x1f36eb0, 0x1:i8
            beq iter$0x1ebe300, __temp_27$0x1f36eb0, __temp_29$0x1f36eb0
            mov i$0x1f36eb0, 0x0:i8
        __temp_30$0x1f3e1f0:
            ble 0x14:i8, i$0x1f36eb0, __temp_32$0x1f3e1f0
            stelem gradient$0x1f36eb0, i$0x1f36eb0, 0.000000:r8
        __temp_31$0x1f3e1f0:
            add i$0x1f36eb0, i$0x1f36eb0, 0x1:i8
            br __temp_30$0x1f3e1f0
        __temp_32$0x1f3e1f0:
            mov i$0x1f36eb0, p_begin$0x1f36eb0
        __temp_35$0x1f3e1f0:
            ble p_end$0x1f36eb0, i$0x1f36eb0, __temp_37$0x1f3e1f0
            mul __temp_40$0x1f40520, i$0x1f36eb0, 0x15:i8
            ldelema p$0x1f36eb0, ps$0x1f36eb0, __temp_40$0x1f40520
            ldelem y$0x1f36eb0, p$0x1f36eb0, 0x0:i8
            ldelema x$0x1f36eb0, p$0x1f36eb0, 0x1:i8
            conv factor$0x1f36eb0, 0x0:i8
            mov j$0x1f36eb0, 0x0:i8
        __temp_44$0x1f40520:
            ble 0x14:i8, j$0x1f36eb0, __temp_46$0x1f40520
            ldelem __temp_48$0x1f42e60, w$0x1ebe300, j$0x1f36eb0
            ldelem __temp_49$0x1f42e60, x$0x1f36eb0, j$0x1f36eb0
            mul __temp_50$0x1f42e60, __temp_48$0x1f42e60, __temp_49$0x1f42e60
            add factor$0x1f36eb0, factor$0x1f36eb0, __temp_50$0x1f42e60
        __temp_45$0x1f40520:
            add j$0x1f36eb0, j$0x1f36eb0, 0x1:i8
            br __temp_44$0x1f40520
        __temp_46$0x1f40520:
            sub __temp_54$0x1f40520, 0.000000:r8, 1.000000:r8
            mul __temp_55$0x1f40520, factor$0x1f36eb0, __temp_54$0x1f40520
            call exp$0x1ebe300, __temp_53$0x1f40520, __temp_55$0x1f40520
            add __temp_56$0x1f40520, 1.000000:r8, __temp_53$0x1f40520
            div __temp_57$0x1f40520, 1.000000:r8, __temp_56$0x1f40520
            sub factor$0x1f36eb0, __temp_57$0x1f40520, y$0x1f36eb0
            mov j$0x1f36eb0, 0x0:i8
        __temp_59$0x1f40520:
            ble 0x14:i8, j$0x1f36eb0, __temp_61$0x1f40520
            ldelem __temp_63$0x1f45a30, gradient$0x1f36eb0, j$0x1f36eb0
            ldelem __temp_64$0x1f45a30, x$0x1f36eb0, j$0x1f36eb0
            mul __temp_65$0x1f45a30, __temp_64$0x1f45a30, factor$0x1f36eb0
            add __temp_66$0x1f45a30, __temp_63$0x1f45a30, __temp_65$0x1f45a30
            stelem gradient$0x1f36eb0, j$0x1f36eb0, __temp_66$0x1f45a30
        __temp_60$0x1f40520:
            add j$0x1f36eb0, j$0x1f36eb0, 0x1:i8
            br __temp_59$0x1f40520
        __temp_61$0x1f40520:
        __temp_36$0x1f3e1f0:
            add i$0x1f36eb0, i$0x1f36eb0, 0x1:i8
            br __temp_35$0x1f3e1f0
        __temp_37$0x1f3e1f0:
            br __temp_26$0x1f36eb0
        __temp_29$0x1f36eb0:
            ldi __temp_70$0x1f3af50, 0x400000000:i
            bne __temp_70$0x1f3af50, 0x8829EFF20:i8, __temp_72$0x1f3af50
            br __temp_69$0x1f3af50
        __temp_72$0x1f3af50:
            add __temp_74$0x1f3b6b0, 0x14:i8, 0x1:i8
            mul __temp_75$0x1f3b6b0, p_begin$0x1f36eb0, __temp_74$0x1f3b6b0
            ldelema __temp_73$0x1f3b6b0, ppoints$0x1ebe300, __temp_75$0x1f3b6b0
            sub __temp_76$0x1f3b6b0, p_end$0x1f36eb0, p_begin$0x1f36eb0
            add __temp_77$0x1f3b6b0, 0x14:i8, 0x1:i8
            mul __temp_78$0x1f3b6b0, __temp_76$0x1f3b6b0, __temp_77$0x1f3b6b0
            mul __temp_79$0x1f3b6b0, 0x8:i8, __temp_78$0x1f3b6b0
            add __temp_81$0x1f3b6b0, 0x14:i8, 0x1:i8
            mul __temp_82$0x1f3b6b0, p_begin$0x1f36eb0, __temp_81$0x1f3b6b0
            ldelema __temp_80$0x1f3b6b0, ps$0x1f36eb0, __temp_82$0x1f3b6b0
            call memcpy$0x1ebe300, <missing>, __temp_73$0x1f3b6b0, __temp_79$0x1f3b6b0, __temp_80$0x1f3b6b0
            sti 0x400000000:i, 0x8829EFF20:i8
        __temp_69$0x1f3af50:
        __temp_26$0x1f36eb0:
            mul __temp_83$0x1f36eb0, id$0x1f36c80, 0x200:i8
            stelem task_status$0x1ebe300, __temp_83$0x1f36eb0, 0x1:i8
            asm "exit:c"
    }
    function new_iter_task
    {
            mov i$0x1f74410, 0x0:i8
        __temp_84$0x1f74410:
            ble 0x1E:i8, i$0x1f74410, __temp_86$0x1f74410
            lda __temp_88$0x1f76250, p_begin$0x1f74410
            lda __temp_89$0x1f76250, p_end$0x1f74410
            call get_points_range$0x1ebe300, <missing>, i$0x1f74410, __temp_88$0x1f76250, __temp_89$0x1f76250
            add __temp_90$0x1f76250, i$0x1f74410, 0x1:i8
            mul space$0x1f74410, 0x400000000000:i8, __temp_90$0x1f76250
            neg __temp_93$0x1f76250, 0x1:i8
            beq iter$0x1ebe300, __temp_93$0x1f76250, __temp_95$0x1f76250
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x5:msq, 0x200001010:msq"
            lda __temp_99$0x1f7b1d0, iter$0x1ebe300
            mov __temp_100$0x1f7b1d0, 0x8:i
            sti 0x200001018:i, __temp_99$0x1f7b1d0
            sti 0x200001020:i, __temp_100$0x1f7b1d0
            lda __temp_101$0x1f7b1d0, pcnt$0x1ebe300
            mov __temp_102$0x1f7b1d0, 0x8:i
            sti 0x200001028:i, __temp_101$0x1f7b1d0
            sti 0x200001030:i, __temp_102$0x1f7b1d0
            mul __temp_105$0x1f7b1d0, i$0x1f74410, 0x200:i8
            mul __temp_106$0x1f7b1d0, i$0x1f74410, 0x200:i8
            add __temp_107$0x1f7b1d0, __temp_106$0x1f7b1d0, 0x1:i8
            ldelema __temp_103$0x1f7b1d0, task_status$0x1ebe300, __temp_105$0x1f7b1d0
            sub __temp_104$0x1f7b1d0, __temp_107$0x1f7b1d0, __temp_105$0x1f7b1d0
            mul __temp_104$0x1f7b1d0, 0x8:i, __temp_104$0x1f7b1d0
            sti 0x200001038:i, __temp_103$0x1f7b1d0
            sti 0x200001040:i, __temp_104$0x1f7b1d0
            mul __temp_110$0x1f7b1d0, i$0x1f74410, 0x200:i8
            add __temp_111$0x1f7b1d0, i$0x1f74410, 0x1:i8
            mul __temp_112$0x1f7b1d0, __temp_111$0x1f7b1d0, 0x200:i8
            ldelema __temp_108$0x1f7b1d0, ws$0x1ebe300, __temp_110$0x1f7b1d0
            sub __temp_109$0x1f7b1d0, __temp_112$0x1f7b1d0, __temp_110$0x1f7b1d0
            mul __temp_109$0x1f7b1d0, 0x8:i, __temp_109$0x1f7b1d0
            sti 0x200001048:i, __temp_108$0x1f7b1d0
            sti 0x200001050:i, __temp_109$0x1f7b1d0
            ldelema __temp_113$0x1f7b1d0, w$0x1ebe300, 0x0:i8
            sub __temp_114$0x1f7b1d0, 0x14:i8, 0x0:i8
            mul __temp_114$0x1f7b1d0, 0x8:i, __temp_114$0x1f7b1d0
            sti 0x200001058:i, __temp_113$0x1f7b1d0
            sti 0x200001060:i, __temp_114$0x1f7b1d0
            asm "mov $0x0:msq, 0x200001068:msq"
            asm "mov $__newr0:msq, 0x200001070:msq"
            mov __temp_115$0x1f7b1d0, space$0x1f74410
            sti 0x200001078:i, __temp_115$0x1f7b1d0
            asm "mov $0x200001000:msq, 0x200001080:msq"
            asm "mov $0x200001010:msq, 0x200001088:msq"
            asm "mov $0x200001068:msq, 0x200001090:msq"
            asm "mov $0x200001070:msq, 0x200001098:msq"
            asm "mov $0x200001078:msq, 0x2000010a0:msq"
            asm "spawnx 0x200001080, 0x200001088, 0x200001090, 0x200001098, 0x2000010a0"
            ldi __temp_96$0x1f7b1d0, 0x100000400:i
            ldi __temp_97$0x1f7b1d0, 0x100000408:i
            add __temp_98$0x1f7b1d0, __temp_96$0x1f7b1d0, __temp_97$0x1f7b1d0
            lda __temp_116$0x1f7b1d0, calc_task$0x1ebe300
            sub __temp_98$0x1f7b1d0, __temp_98$0x1f7b1d0, 0x8:i8
            sti __temp_98$0x1f7b1d0, __temp_116$0x1f7b1d0
            sub __temp_98$0x1f7b1d0, __temp_98$0x1f7b1d0, 0x8:i8
            sti __temp_98$0x1f7b1d0, 0x8:i8
            sub __temp_98$0x1f7b1d0, __temp_98$0x1f7b1d0, 0x8:i8
            sti __temp_98$0x1f7b1d0, i$0x1f74410
            br __temp_92$0x1f76250
        __temp_95$0x1f76250:
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x7:msq, 0x200001010:msq"
            lda __temp_120$0x1f779a0, iter$0x1ebe300
            mov __temp_121$0x1f779a0, 0x8:i
            sti 0x200001018:i, __temp_120$0x1f779a0
            sti 0x200001020:i, __temp_121$0x1f779a0
            lda __temp_122$0x1f779a0, pcnt$0x1ebe300
            mov __temp_123$0x1f779a0, 0x8:i
            sti 0x200001028:i, __temp_122$0x1f779a0
            sti 0x200001030:i, __temp_123$0x1f779a0
            lda __temp_124$0x1f779a0, ppoints$0x1ebe300
            mov __temp_125$0x1f779a0, 0x8:i
            sti 0x200001038:i, __temp_124$0x1f779a0
            sti 0x200001040:i, __temp_125$0x1f779a0
            mul __temp_128$0x1f779a0, i$0x1f74410, 0x200:i8
            mul __temp_129$0x1f779a0, i$0x1f74410, 0x200:i8
            add __temp_130$0x1f779a0, __temp_129$0x1f779a0, 0x1:i8
            ldelema __temp_126$0x1f779a0, task_status$0x1ebe300, __temp_128$0x1f779a0
            sub __temp_127$0x1f779a0, __temp_130$0x1f779a0, __temp_128$0x1f779a0
            mul __temp_127$0x1f779a0, 0x8:i, __temp_127$0x1f779a0
            sti 0x200001048:i, __temp_126$0x1f779a0
            sti 0x200001050:i, __temp_127$0x1f779a0
            mul __temp_133$0x1f779a0, i$0x1f74410, 0x200:i8
            add __temp_134$0x1f779a0, i$0x1f74410, 0x1:i8
            mul __temp_135$0x1f779a0, __temp_134$0x1f779a0, 0x200:i8
            ldelema __temp_131$0x1f779a0, ws$0x1ebe300, __temp_133$0x1f779a0
            sub __temp_132$0x1f779a0, __temp_135$0x1f779a0, __temp_133$0x1f779a0
            mul __temp_132$0x1f779a0, 0x8:i, __temp_132$0x1f779a0
            sti 0x200001058:i, __temp_131$0x1f779a0
            sti 0x200001060:i, __temp_132$0x1f779a0
            ldelema __temp_136$0x1f779a0, w$0x1ebe300, 0x0:i8
            sub __temp_137$0x1f779a0, 0x14:i8, 0x0:i8
            mul __temp_137$0x1f779a0, 0x8:i, __temp_137$0x1f779a0
            sti 0x200001068:i, __temp_136$0x1f779a0
            sti 0x200001070:i, __temp_137$0x1f779a0
            add __temp_140$0x1f779a0, 0x14:i8, 0x1:i8
            mul __temp_141$0x1f779a0, p_begin$0x1f74410, __temp_140$0x1f779a0
            add __temp_142$0x1f779a0, 0x14:i8, 0x1:i8
            mul __temp_143$0x1f779a0, p_end$0x1f74410, __temp_142$0x1f779a0
            ldelema __temp_138$0x1f779a0, ppoints$0x1ebe300, __temp_141$0x1f779a0
            sub __temp_139$0x1f779a0, __temp_143$0x1f779a0, __temp_141$0x1f779a0
            mul __temp_139$0x1f779a0, 0x8:i, __temp_139$0x1f779a0
            sti 0x200001078:i, __temp_138$0x1f779a0
            sti 0x200001080:i, __temp_139$0x1f779a0
            asm "mov $0x0:msq, 0x200001088:msq"
            asm "mov $__newr0:msq, 0x200001090:msq"
            mov __temp_144$0x1f779a0, space$0x1f74410
            sti 0x200001098:i, __temp_144$0x1f779a0
            asm "mov $0x200001000:msq, 0x2000010a0:msq"
            asm "mov $0x200001010:msq, 0x2000010a8:msq"
            asm "mov $0x200001088:msq, 0x2000010b0:msq"
            asm "mov $0x200001090:msq, 0x2000010b8:msq"
            asm "mov $0x200001098:msq, 0x2000010c0:msq"
            asm "spawnx 0x2000010a0, 0x2000010a8, 0x2000010b0, 0x2000010b8, 0x2000010c0"
            ldi __temp_117$0x1f779a0, 0x100000400:i
            ldi __temp_118$0x1f779a0, 0x100000408:i
            add __temp_119$0x1f779a0, __temp_117$0x1f779a0, __temp_118$0x1f779a0
            lda __temp_145$0x1f779a0, calc_task$0x1ebe300
            sub __temp_119$0x1f779a0, __temp_119$0x1f779a0, 0x8:i8
            sti __temp_119$0x1f779a0, __temp_145$0x1f779a0
            sub __temp_119$0x1f779a0, __temp_119$0x1f779a0, 0x8:i8
            sti __temp_119$0x1f779a0, 0x8:i8
            sub __temp_119$0x1f779a0, __temp_119$0x1f779a0, 0x8:i8
            sti __temp_119$0x1f779a0, i$0x1f74410
        __temp_92$0x1f76250:
            mul __temp_146$0x1f76250, i$0x1f74410, 0x200:i8
            stelem task_status$0x1ebe300, __temp_146$0x1f76250, 0x0:i8
        __temp_85$0x1f74410:
            add i$0x1f74410, i$0x1f74410, 0x1:i8
            br __temp_84$0x1f74410
        __temp_86$0x1f74410:
            mov space$0x1f74410, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x6:msq, 0x200001010:msq"
            lda __temp_151$0x1f74410, iter$0x1ebe300
            mov __temp_152$0x1f74410, 0x8:i
            sti 0x200001018:i, __temp_151$0x1f74410
            sti 0x200001020:i, __temp_152$0x1f74410
            lda __temp_153$0x1f74410, pcnt$0x1ebe300
            mov __temp_154$0x1f74410, 0x8:i
            sti 0x200001028:i, __temp_153$0x1f74410
            sti 0x200001030:i, __temp_154$0x1f74410
            lda __temp_155$0x1f74410, begin_time_sec$0x1ebe300
            mov __temp_156$0x1f74410, 0x8:i
            sti 0x200001038:i, __temp_155$0x1f74410
            sti 0x200001040:i, __temp_156$0x1f74410
            lda __temp_157$0x1f74410, begin_time_nsec$0x1ebe300
            mov __temp_158$0x1f74410, 0x8:i
            sti 0x200001048:i, __temp_157$0x1f74410
            sti 0x200001050:i, __temp_158$0x1f74410
            add __temp_161$0x1f74410, 0x1E:i8, 0x1:i8
            mul __temp_162$0x1f74410, __temp_161$0x1f74410, 0x200:i8
            ldelema __temp_159$0x1f74410, ws$0x1ebe300, 0x0:i8
            sub __temp_160$0x1f74410, __temp_162$0x1f74410, 0x0:i8
            mul __temp_160$0x1f74410, 0x8:i, __temp_160$0x1f74410
            sti 0x200001058:i, __temp_159$0x1f74410
            sti 0x200001060:i, __temp_160$0x1f74410
            ldelema __temp_163$0x1f74410, w$0x1ebe300, 0x0:i8
            sub __temp_164$0x1f74410, 0x14:i8, 0x0:i8
            mul __temp_164$0x1f74410, 0x8:i, __temp_164$0x1f74410
            sti 0x200001068:i, __temp_163$0x1f74410
            sti 0x200001070:i, __temp_164$0x1f74410
            asm "mov $0x1:msq, 0x200001078:msq"
            mul __temp_167$0x1f74410, 0x1E:i8, 0x200:i8
            ldelema __temp_165$0x1f74410, task_status$0x1ebe300, 0x0:i8
            sub __temp_166$0x1f74410, __temp_167$0x1f74410, 0x0:i8
            mul __temp_166$0x1f74410, 0x8:i, __temp_166$0x1f74410
            sti 0x200001080:i, __temp_165$0x1f74410
            sti 0x200001088:i, __temp_166$0x1f74410
            asm "mov $__newr0:msq, 0x200001090:msq"
            mov __temp_168$0x1f74410, space$0x1f74410
            sti 0x200001098:i, __temp_168$0x1f74410
            asm "mov $0x200001000:msq, 0x2000010a0:msq"
            asm "mov $0x200001010:msq, 0x2000010a8:msq"
            asm "mov $0x200001078:msq, 0x2000010b0:msq"
            asm "mov $0x200001090:msq, 0x2000010b8:msq"
            asm "mov $0x200001098:msq, 0x2000010c0:msq"
            asm "spawnx 0x2000010a0, 0x2000010a8, 0x2000010b0, 0x2000010b8, 0x2000010c0"
            ldi __temp_148$0x1f74410, 0x100000400:i
            ldi __temp_149$0x1f74410, 0x100000408:i
            add __temp_150$0x1f74410, __temp_148$0x1f74410, __temp_149$0x1f74410
            lda __temp_169$0x1f74410, barrier_task$0x1ebe300
            sub __temp_150$0x1f74410, __temp_150$0x1f74410, 0x8:i8
            sti __temp_150$0x1f74410, __temp_169$0x1f74410
            sub __temp_150$0x1f74410, __temp_150$0x1f74410, 0x8:i8
            sti __temp_150$0x1f74410, 0x8:i8
            sub __temp_150$0x1f74410, __temp_150$0x1f74410, 0x8:i8
            sti __temp_150$0x1f74410, iter$0x1ebe300
            asm "exit:c"
    }
    function barrier_task
    {
            cne __temp_171$0x1fcac20, cur_iter$0x1fca9b0, iter$0x1ebe300
            bnz __temp_171$0x1fcac20, __temp_172$0x1fcac20
            br __temp_170$0x1fcac20
        __temp_172$0x1fcac20:
            asm "exit:ad"
        __temp_170$0x1fcac20:
            mov i$0x1fcac20, 0x0:i8
        __temp_173$0x1fcac20:
            ble 0x1E:i8, i$0x1fcac20, __temp_175$0x1fcac20
            mul __temp_178$0x1fcd050, i$0x1fcac20, 0x200:i8
            ldelem __temp_179$0x1fcd050, task_status$0x1ebe300, __temp_178$0x1fcd050
            bne __temp_179$0x1fcd050, 0x1:i8, __temp_181$0x1fcd050
            br __temp_177$0x1fcd050
        __temp_181$0x1fcd050:
            asm "exit:a"
        __temp_177$0x1fcd050:
        __temp_174$0x1fcac20:
            add i$0x1fcac20, i$0x1fcac20, 0x1:i8
            br __temp_173$0x1fcac20
        __temp_175$0x1fcac20:
            neg __temp_184$0x1fcac20, 0x1:i8
            beq iter$0x1ebe300, __temp_184$0x1fcac20, __temp_186$0x1fcac20
            add __temp_188$0x1fcec80, iter$0x1ebe300, 0x1:i8
            conv __temp_189$0x1fcec80, __temp_188$0x1fcec80
            call sqrt$0x1ebe300, __temp_187$0x1fcec80, __temp_189$0x1fcec80
            div factor$0x1fcac20, 1.000000:r8, __temp_187$0x1fcec80
            mov j$0x1fcac20, 0x0:i8
        __temp_191$0x1fcec80:
            ble 0x1E:i8, j$0x1fcac20, __temp_193$0x1fcec80
            mul __temp_196$0x1fd07b0, j$0x1fcac20, 0x200:i8
            ldelema wj$0x1fcac20, ws$0x1ebe300, __temp_196$0x1fd07b0
            mov i$0x1fcac20, 0x0:i8
        __temp_197$0x1fd07b0:
            ble 0x14:i8, i$0x1fcac20, __temp_199$0x1fd07b0
            ldelem __temp_201$0x1fd1f30, w$0x1ebe300, i$0x1fcac20
            ldelem __temp_202$0x1fd1f30, wj$0x1fcac20, i$0x1fcac20
            mul __temp_203$0x1fd1f30, factor$0x1fcac20, __temp_202$0x1fd1f30
            conv __temp_204$0x1fd1f30, pcnt$0x1ebe300
            div __temp_205$0x1fd1f30, __temp_203$0x1fd1f30, __temp_204$0x1fd1f30
            sub __temp_206$0x1fd1f30, __temp_201$0x1fd1f30, __temp_205$0x1fd1f30
            stelem w$0x1ebe300, i$0x1fcac20, __temp_206$0x1fd1f30
        __temp_198$0x1fd07b0:
            add i$0x1fcac20, i$0x1fcac20, 0x1:i8
            br __temp_197$0x1fd07b0
        __temp_199$0x1fd07b0:
        __temp_192$0x1fcec80:
            add j$0x1fcac20, j$0x1fcac20, 0x1:i8
            br __temp_191$0x1fcec80
        __temp_193$0x1fcec80:
            br __temp_183$0x1fcac20
        __temp_186$0x1fcac20:
            lda __temp_210$0x1fce200, begin_time_sec$0x1ebe300
            lda __temp_211$0x1fce200, begin_time_nsec$0x1ebe300
            call gettime$0x1ebe300, __temp_209$0x1fce200, __temp_210$0x1fce200, __temp_211$0x1fce200
            mov i$0x1fcac20, __temp_209$0x1fce200
        __temp_183$0x1fcac20:
            add iter$0x1ebe300, iter$0x1ebe300, 0x1:i8
            beq iter$0x1ebe300, 0xA:i8, __temp_215$0x1fcac20
            br __temp_213$0x1fcac20
        __temp_215$0x1fcac20:
            call output_char$0x1ebe300, <missing>, 0x52:i1
            call output_char$0x1ebe300, <missing>, 0x65:i1
            call output_char$0x1ebe300, <missing>, 0x61:i1
            call output_char$0x1ebe300, <missing>, 0x63:i1
            call output_char$0x1ebe300, <missing>, 0x68:i1
            call output_char$0x1ebe300, <missing>, 0x65:i1
            call output_char$0x1ebe300, <missing>, 0x64:i1
            call output_char$0x1ebe300, <missing>, 0x20:i1
            call output_char$0x1ebe300, <missing>, 0x6D:i1
            call output_char$0x1ebe300, <missing>, 0x61:i1
            call output_char$0x1ebe300, <missing>, 0x78:i1
            call output_char$0x1ebe300, <missing>, 0x20:i1
            call output_char$0x1ebe300, <missing>, 0x69:i1
            call output_char$0x1ebe300, <missing>, 0x74:i1
            call output_char$0x1ebe300, <missing>, 0x65:i1
            call output_char$0x1ebe300, <missing>, 0x72:i1
            call output_char$0x1ebe300, <missing>, 0x3A:i1
            call output_q$0x1ebe300, <missing>, 0xA:i8
            call output_char$0x1ebe300, <missing>, 0x2E:i1
            call output_char$0x1ebe300, <missing>, 0xA:i8
            call output_char$0x1ebe300, <missing>, 0x54:i1
            call output_char$0x1ebe300, <missing>, 0x69:i1
            call output_char$0x1ebe300, <missing>, 0x6D:i1
            call output_char$0x1ebe300, <missing>, 0x65:i1
            call output_char$0x1ebe300, <missing>, 0x20:i1
            call output_char$0x1ebe300, <missing>, 0x75:i1
            call output_char$0x1ebe300, <missing>, 0x73:i1
            call output_char$0x1ebe300, <missing>, 0x65:i1
            call output_char$0x1ebe300, <missing>, 0x64:i1
            call output_char$0x1ebe300, <missing>, 0x3A:i1
            call output_char$0x1ebe300, <missing>, 0x20:i1
            lda __temp_217$0x1fd3c50, begin_time_sec$0x1ebe300
            lda __temp_218$0x1fd3c50, begin_time_nsec$0x1ebe300
            call print_time_diff_and_update$0x1ebe300, __temp_216$0x1fd3c50, __temp_217$0x1fd3c50, __temp_218$0x1fd3c50
            mov i$0x1fcac20, __temp_216$0x1fd3c50
            call output_char$0x1ebe300, <missing>, 0x20:i1
            call output_char$0x1ebe300, <missing>, 0x73:i1
            call output_char$0x1ebe300, <missing>, 0x65:i1
            call output_char$0x1ebe300, <missing>, 0x63:i1
            call output_char$0x1ebe300, <missing>, 0x6F:i1
            call output_char$0x1ebe300, <missing>, 0x6E:i1
            call output_char$0x1ebe300, <missing>, 0x64:i1
            call output_char$0x1ebe300, <missing>, 0x73:i1
            call output_char$0x1ebe300, <missing>, 0x2E:i1
            call output_char$0x1ebe300, <missing>, 0xA:i8
            mov i$0x1fcac20, 0x0:i8
        __temp_219$0x1fd3c50:
            ble 0x14:i8, i$0x1fcac20, __temp_221$0x1fd3c50
            ldelem __temp_223$0x1fe0c80, w$0x1ebe300, i$0x1fcac20
            call output_double$0x1ebe300, <missing>, __temp_223$0x1fe0c80
            bne i$0x1fcac20, 0x13:i8, __temp_226$0x1fe0c80
            call output_char$0x1ebe300, <missing>, 0xA:i8
            br __temp_224$0x1fe0c80
        __temp_226$0x1fe0c80:
            call output_char$0x1ebe300, <missing>, 0x2C:i1
        __temp_224$0x1fe0c80:
        __temp_220$0x1fd3c50:
            add i$0x1fcac20, i$0x1fcac20, 0x1:i8
            br __temp_219$0x1fd3c50
        __temp_221$0x1fd3c50:
            asm "exit:cd"
        __temp_213$0x1fcac20:
            call create_new_iter_task$0x1ebe300, <missing>
            asm "exit:cd"
    }
    function init_task
    {
            ldi pcnt$0x1ebe300, 0x40800000000:i
            mov ppoints$0x1ebe300, 0x40800000008:i
            neg iter$0x1ebe300, 0x1:i8
            mov j$0x1ff1210, 0x0:i8
        __temp_230$0x1ff1210:
            ble 0x14:i8, j$0x1ff1210, __temp_232$0x1ff1210
            stelem w$0x1ebe300, j$0x1ff1210, 0.000000:r8
        __temp_231$0x1ff1210:
            add j$0x1ff1210, j$0x1ff1210, 0x1:i8
            br __temp_230$0x1ff1210
        __temp_232$0x1ff1210:
            call create_new_iter_task$0x1ebe300, <missing>
            asm "exit:c"
    }
    function main
    {
            mov space$0x2003f10, 0x0:i8
            asm "mov $0x0:msq, 0x200001000:msq"
            asm "mov $0x0:msq, 0x200001008:msq"
            asm "mov $0x7:msq, 0x200001010:msq"
            lda __temp_238$0x2003f10, iter$0x1ebe300
            mov __temp_239$0x2003f10, 0x8:i
            sti 0x200001018:i, __temp_238$0x2003f10
            sti 0x200001020:i, __temp_239$0x2003f10
            ldelema __temp_240$0x2003f10, w$0x1ebe300, 0x0:i8
            sub __temp_241$0x2003f10, 0x14:i8, 0x0:i8
            mul __temp_241$0x2003f10, 0x8:i, __temp_241$0x2003f10
            sti 0x200001028:i, __temp_240$0x2003f10
            sti 0x200001030:i, __temp_241$0x2003f10
            lda __temp_242$0x2003f10, begin_time_sec$0x1ebe300
            mov __temp_243$0x2003f10, 0x8:i
            sti 0x200001038:i, __temp_242$0x2003f10
            sti 0x200001040:i, __temp_243$0x2003f10
            lda __temp_244$0x2003f10, begin_time_nsec$0x1ebe300
            mov __temp_245$0x2003f10, 0x8:i
            sti 0x200001048:i, __temp_244$0x2003f10
            sti 0x200001050:i, __temp_245$0x2003f10
            lda __temp_246$0x2003f10, pcnt$0x1ebe300
            mov __temp_247$0x2003f10, 0x8:i
            sti 0x200001058:i, __temp_246$0x2003f10
            sti 0x200001060:i, __temp_247$0x2003f10
            lda __temp_248$0x2003f10, ppoints$0x1ebe300
            mov __temp_249$0x2003f10, 0x8:i
            sti 0x200001068:i, __temp_248$0x2003f10
            sti 0x200001070:i, __temp_249$0x2003f10
            add __temp_252$0x2003f10, 0x800000000:i8, 0x20000000000:i8
            sub __temp_253$0x2003f10, __temp_252$0x2003f10, 0x1:i8
            add __temp_254$0x2003f10, __temp_253$0x2003f10, 0x1:i8
            add __temp_255$0x2003f10, __temp_254$0x2003f10, 0x20000000000:i8
            sub __temp_256$0x2003f10, __temp_255$0x2003f10, 0x1:i8
            add __temp_257$0x2003f10, __temp_256$0x2003f10, 0x1:i8
            conv __temp_258$0x2003f10, __temp_257$0x2003f10
            mul __temp_259$0x2003f10, 0x8:i8, 0xF4240:i8
            add __temp_260$0x2003f10, 0x14:i8, 0x1:i8
            mul __temp_261$0x2003f10, __temp_259$0x2003f10, __temp_260$0x2003f10
            add __temp_262$0x2003f10, 0x8:i8, __temp_261$0x2003f10
            ldelema __temp_250$0x2003f10, __temp_258$0x2003f10, 0x0:i8
            sub __temp_251$0x2003f10, __temp_262$0x2003f10, 0x0:i8
            mul __temp_251$0x2003f10, 0x8:i, __temp_251$0x2003f10
            sti 0x200001078:i, __temp_250$0x2003f10
            sti 0x200001080:i, __temp_251$0x2003f10
            asm "mov $0x0:msq, 0x200001088:msq"
            asm "mov $__newr0:msq, 0x200001090:msq"
            mov __temp_263$0x2003f10, space$0x2003f10
            sti 0x200001098:i, __temp_263$0x2003f10
            asm "mov $0x200001000:msq, 0x2000010a0:msq"
            asm "mov $0x200001010:msq, 0x2000010a8:msq"
            asm "mov $0x200001088:msq, 0x2000010b0:msq"
            asm "mov $0x200001090:msq, 0x2000010b8:msq"
            asm "mov $0x200001098:msq, 0x2000010c0:msq"
            asm "spawnx 0x2000010a0, 0x2000010a8, 0x2000010b0, 0x2000010b8, 0x2000010c0"
            ldi __temp_235$0x2003f10, 0x100000400:i
            ldi __temp_236$0x2003f10, 0x100000408:i
            add __temp_237$0x2003f10, __temp_235$0x2003f10, __temp_236$0x2003f10
            lda __temp_264$0x2003f10, init_task$0x1ebe300
            sub __temp_237$0x2003f10, __temp_237$0x2003f10, 0x8:i8
            sti __temp_237$0x2003f10, __temp_264$0x2003f10
            sub __temp_237$0x2003f10, __temp_237$0x2003f10, 0x8:i8
            sti __temp_237$0x2003f10, 0x0:i8
            asm "exit:c"
    }
}
