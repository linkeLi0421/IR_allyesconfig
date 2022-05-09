; ModuleID = '/llk/IR_all_yes/sound/soc/codecs/da7219-aad.c_pt.bc'
source_filename = "../sound/soc/codecs/da7219-aad.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+da7219_aad_jack_det\22, \22a\22\09"
module asm "\09.weak\09__crc_da7219_aad_jack_det\09\09\09\09"
module asm "\09.long\09__crc_da7219_aad_jack_det\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da7219_aad_jack_det:\09\09\09\09\09"
module asm "\09.asciz \09\22da7219_aad_jack_det\22\09\09\09\09\09"
module asm "__kstrtabns_da7219_aad_jack_det:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da7219_aad_init\22, \22a\22\09"
module asm "\09.weak\09__crc_da7219_aad_init\09\09\09\09"
module asm "\09.long\09__crc_da7219_aad_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da7219_aad_init:\09\09\09\09\09"
module asm "\09.asciz \09\22da7219_aad_init\22\09\09\09\09\09"
module asm "__kstrtabns_da7219_aad_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da7219_aad_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_da7219_aad_exit\09\09\09\09"
module asm "\09.long\09__crc_da7219_aad_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da7219_aad_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22da7219_aad_exit\22\09\09\09\09\09"
module asm "__kstrtabns_da7219_aad_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+da7219_aad_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_da7219_aad_probe\09\09\09\09"
module asm "\09.long\09__crc_da7219_aad_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_da7219_aad_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22da7219_aad_probe\22\09\09\09\09\09"
module asm "__kstrtabns_da7219_aad_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.snd_soc_component = type { ptr, i32, ptr, ptr, ptr, i32, i8, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, i32, ptr, i32, %struct.mutex, %struct.list_head, %struct.snd_soc_dapm_context, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.snd_soc_dapm_context = type { i32, i8, ptr, ptr, ptr, i32, %struct.list_head, %struct.snd_soc_dapm_wcache, %struct.snd_soc_dapm_wcache, ptr }
%struct.snd_soc_dapm_wcache = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.da7219_priv = type { ptr, ptr, ptr, i8, [3 x %struct.regulator_bulk_data], ptr, %struct.mutex, %struct.mutex, [2 x %struct.clk_hw], ptr, [2 x ptr], [2 x ptr], ptr, i32, i32, i8, i8, i8, i8, i32, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.da7219_aad_priv = type { ptr, i32, i8, i32, i8, %struct.work_struct, %struct.work_struct, ptr, i8, i8 }
%struct.da7219_pdata = type { i8, [2 x ptr], i32, i32, ptr }
%struct.da7219_aad_pdata = type { i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32 }
%struct.snd_soc_card = type { ptr, ptr, ptr, ptr, [32 x i8], ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, i32, %struct.list_head, i32, ptr, i32, ptr, i32, %struct.list_head, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_stats, ptr, ptr, %struct.work_struct, i32, i8, ptr }
%struct.snd_soc_dapm_stats = type { i32, i32, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }

@__kstrtab_da7219_aad_jack_det = external dso_local constant [0 x i8], align 1
@__kstrtabns_da7219_aad_jack_det = external dso_local constant [0 x i8], align 1
@__ksymtab_da7219_aad_jack_det = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da7219_aad_jack_det to i32), ptr @__kstrtab_da7219_aad_jack_det, ptr @__kstrtabns_da7219_aad_jack_det }, section "___ksymtab_gpl+da7219_aad_jack_det", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Mic Bias\00", [23 x i8] zeroinitializer }, align 32
@da7219_aad_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"(work_completion)(&da7219_aad->btn_det_work)\00", [51 x i8] zeroinitializer }, align 32
@da7219_aad_init.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"(work_completion)(&da7219_aad->hptest_work)\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da7219-aad\00", [21 x i8] zeroinitializer }, align 32
@da7219_aad_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 910, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to request IRQ: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"da7219_aad_init\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sound/soc/codecs/da7219-aad.c\00", [34 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@da7219_aad_init._entry_ptr = internal global ptr @da7219_aad_init._entry, section ".printk_index", align 4
@__kstrtab_da7219_aad_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_da7219_aad_init = external dso_local constant [0 x i8], align 1
@__ksymtab_da7219_aad_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da7219_aad_init to i32), ptr @__kstrtab_da7219_aad_init, ptr @__kstrtabns_da7219_aad_init }, section "___ksymtab_gpl+da7219_aad_init", align 4
@__kstrtab_da7219_aad_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_da7219_aad_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_da7219_aad_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da7219_aad_exit to i32), ptr @__kstrtab_da7219_aad_exit, ptr @__kstrtabns_da7219_aad_exit }, section "___ksymtab_gpl+da7219_aad_exit", align 4
@__kstrtab_da7219_aad_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_da7219_aad_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_da7219_aad_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @da7219_aad_probe to i32), ptr @__kstrtab_da7219_aad_probe, ptr @__kstrtabns_da7219_aad_probe }, section "___ksymtab_gpl+da7219_aad_probe", align 4
@__UNIQUE_ID_description295 = internal constant [50 x i8] c"snd_soc_da7219.description=ASoC DA7219 AAD Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author296 = internal constant [73 x i8] c"snd_soc_da7219.author=Adam Thomson <Adam.Thomson.Opensource@diasemi.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [52 x i8] c"snd_soc_da7219.file=sound/soc/codecs/snd-soc-da7219\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [27 x i8] c"snd_soc_da7219.license=GPL\00", section ".modinfo", align 1
@da7219_aad_btn_det_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 84, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Mic bias status check timed out\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"da7219_aad_btn_det_work\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@da7219_aad_btn_det_work._entry_ptr = internal global ptr @da7219_aad_btn_det_work._entry, section ".printk_index", align 4
@da7219_aad_hptest_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.7, i32 129, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to enable mclk - %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"da7219_aad_hptest_work\00", [41 x i8] zeroinitializer }, align 32
@da7219_aad_hptest_work._entry_ptr = internal global ptr @da7219_aad_hptest_work._entry, section ".printk_index", align 4
@da7219_aad_irq_thread.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.7, ptr @.str.17, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"snd_soc_da7219\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7219_aad_irq_thread\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IRQ events = 0x%x|0x%x, status = 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"da7219_aad\00", [21 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dlg,micbias-pulse-lvl\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dlg,micbias-pulse-time\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dlg,btn-cfg\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlg,mic-det-thr\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,jack-ins-deb\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,jack-det-rate\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,jack-rem-deb\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlg,a-d-btn-thr\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlg,d-b-btn-thr\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dlg,b-c-btn-thr\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dlg,c-mic-btn-thr\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dlg,btn-avg\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dlg,adc-1bit-rpt\00", [47 x i8] zeroinitializer }, align 32
@da7219_aad_fw_micbias_pulse_lvl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.7, i32 471, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Invalid micbias pulse level\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"da7219_aad_fw_micbias_pulse_lvl\00", [32 x i8] zeroinitializer }, align 32
@da7219_aad_fw_micbias_pulse_lvl._entry_ptr = internal global ptr @da7219_aad_fw_micbias_pulse_lvl._entry, section ".printk_index", align 4
@da7219_aad_fw_btn_cfg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.7, i32 495, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid button config\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7219_aad_fw_btn_cfg\00", [42 x i8] zeroinitializer }, align 32
@da7219_aad_fw_btn_cfg._entry_ptr = internal global ptr @da7219_aad_fw_btn_cfg._entry, section ".printk_index", align 4
@da7219_aad_fw_mic_det_thr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.7, i32 513, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid mic detect threshold\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"da7219_aad_fw_mic_det_thr\00", [38 x i8] zeroinitializer }, align 32
@da7219_aad_fw_mic_det_thr._entry_ptr = internal global ptr @da7219_aad_fw_mic_det_thr._entry, section ".printk_index", align 4
@da7219_aad_fw_jack_ins_deb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.7, i32 539, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid jack insert debounce\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"da7219_aad_fw_jack_ins_deb\00", [37 x i8] zeroinitializer }, align 32
@da7219_aad_fw_jack_ins_deb._entry_ptr = internal global ptr @da7219_aad_fw_jack_ins_deb._entry, section ".printk_index", align 4
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"32ms_64ms\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"64ms_128ms\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"128ms_256ms\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"256ms_512ms\00", [20 x i8] zeroinitializer }, align 32
@da7219_aad_fw_jack_det_rate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.7, i32 556, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Invalid jack detect rate\00", [39 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"da7219_aad_fw_jack_det_rate\00", [36 x i8] zeroinitializer }, align 32
@da7219_aad_fw_jack_det_rate._entry_ptr = internal global ptr @da7219_aad_fw_jack_det_rate._entry, section ".printk_index", align 4
@da7219_aad_fw_jack_rem_deb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.7, i32 574, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Invalid jack removal debounce\00", [34 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"da7219_aad_fw_jack_rem_deb\00", [37 x i8] zeroinitializer }, align 32
@da7219_aad_fw_jack_rem_deb._entry_ptr = internal global ptr @da7219_aad_fw_jack_rem_deb._entry, section ".printk_index", align 4
@da7219_aad_fw_btn_avg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.7, i32 592, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Invalid button average value\00", [35 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"da7219_aad_fw_btn_avg\00", [42 x i8] zeroinitializer }, align 32
@da7219_aad_fw_btn_avg._entry_ptr = internal global ptr @da7219_aad_fw_btn_avg._entry, section ".printk_index", align 4
@da7219_aad_fw_adc_1bit_rpt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.51, ptr @.str.7, i32 610, ptr @.str.12, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid ADC 1-bit repeat value\00", [33 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"da7219_aad_fw_adc_1bit_rpt\00", [37 x i8] zeroinitializer }, align 32
@da7219_aad_fw_adc_1bit_rpt._entry_ptr = internal global ptr @da7219_aad_fw_adc_1bit_rpt._entry, section ".printk_index", align 4
@switch.table.da7219_aad_probe = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@switch.table.da7219_aad_probe.52 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 0, i32 2, i32 0, i32 0, i32 0, i32 3], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2800, i64 2900]
@__sancov_gen_cov_switch_values.53 = internal global [9 x i64] [i64 7, i64 32, i64 2, i64 5, i64 10, i64 50, i64 100, i64 200, i64 500]
@__sancov_gen_cov_switch_values.54 = internal global [6 x i64] [i64 4, i64 32, i64 200, i64 500, i64 750, i64 1000]
@__sancov_gen_cov_switch_values.55 = internal global [10 x i64] [i64 8, i64 32, i64 5, i64 10, i64 20, i64 50, i64 100, i64 200, i64 500, i64 1000]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 5, i64 10, i64 20]
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 851, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 902, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 903, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 908, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 910, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 84, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 129, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 366, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 623, i32 44 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 633, i32 39 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 640, i32 39 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 644, i32 39 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 649, i32 39 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 655, i32 39 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 661, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 667, i32 39 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 673, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 678, i32 39 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 683, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 688, i32 39 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 693, i32 39 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 698, i32 39 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 471, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 495, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 513, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 539, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 547, i32 19 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 549, i32 26 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 551, i32 26 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 553, i32 26 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 556, i32 3 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 574, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 592, i32 3 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.247 = private constant [33 x i8] c"../sound/soc/codecs/da7219-aad.c\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.247, i32 610, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant [30 x i8] c"switch.table.da7219_aad_probe\00", align 1
@___asan_gen_.250 = private unnamed_addr constant [33 x i8] c"switch.table.da7219_aad_probe.52\00", align 1
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_author296, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__ksymtab_da7219_aad_exit, ptr @__ksymtab_da7219_aad_init, ptr @__ksymtab_da7219_aad_jack_det, ptr @__ksymtab_da7219_aad_probe, ptr @da7219_aad_btn_det_work._entry, ptr @da7219_aad_btn_det_work._entry_ptr, ptr @da7219_aad_fw_adc_1bit_rpt._entry, ptr @da7219_aad_fw_adc_1bit_rpt._entry_ptr, ptr @da7219_aad_fw_btn_avg._entry, ptr @da7219_aad_fw_btn_avg._entry_ptr, ptr @da7219_aad_fw_btn_cfg._entry, ptr @da7219_aad_fw_btn_cfg._entry_ptr, ptr @da7219_aad_fw_jack_det_rate._entry, ptr @da7219_aad_fw_jack_det_rate._entry_ptr, ptr @da7219_aad_fw_jack_ins_deb._entry, ptr @da7219_aad_fw_jack_ins_deb._entry_ptr, ptr @da7219_aad_fw_jack_rem_deb._entry, ptr @da7219_aad_fw_jack_rem_deb._entry_ptr, ptr @da7219_aad_fw_mic_det_thr._entry, ptr @da7219_aad_fw_mic_det_thr._entry_ptr, ptr @da7219_aad_fw_micbias_pulse_lvl._entry, ptr @da7219_aad_fw_micbias_pulse_lvl._entry_ptr, ptr @da7219_aad_hptest_work._entry, ptr @da7219_aad_hptest_work._entry_ptr, ptr @da7219_aad_init._entry, ptr @da7219_aad_init._entry_ptr, ptr @.str, ptr @da7219_aad_init.__key, ptr @.str.1, ptr @da7219_aad_init.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @switch.table.da7219_aad_probe, ptr @switch.table.da7219_aad_probe.52], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_init.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_btn_det_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_hptest_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_micbias_pulse_lvl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_btn_cfg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_mic_det_thr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_jack_ins_deb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_jack_det_rate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_jack_rem_deb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_btn_avg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da7219_aad_fw_adc_1bit_rpt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7219_aad_probe to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.da7219_aad_probe.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @da7219_aad_jack_det(ptr noundef %component, ptr noundef %jack) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %aad = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %aad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aad, align 4
  %jack1 = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %jack1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %jack, ptr %jack1, align 4
  %7 = load ptr, ptr %aad, align 4
  %jack_inserted = getelementptr inbounds %struct.da7219_aad_priv, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %jack_inserted to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %jack_inserted, align 1
  tail call void @snd_soc_jack_report(ptr noundef %jack, i32 noundef 0, i32 noundef 30735) #5
  %tobool.not = icmp ne ptr %jack, null
  %cond = zext i1 %tobool.not to i32
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 198, i32 noundef 1, i32 noundef %cond) #5
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @snd_soc_jack_report(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_update_bits(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @da7219_aad_suspend(ptr noundef %component) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %aad = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %aad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aad, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %jack = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jack, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 198, i32 noundef 1, i32 noundef 0) #5
  %jack_inserted = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %jack_inserted to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %jack_inserted, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool3.not = icmp eq i8 %9, 0
  br i1 %tobool3.not, label %if.then.if.end12_crit_edge, label %if.then4

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then4:                                         ; preds = %if.then
  %call5 = tail call i32 @snd_soc_component_read(ptr noundef %component, i32 noundef 98) #5
  %and = and i32 %call5, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.then4.if.end12_crit_edge, label %if.then8

if.then4.if.end12_crit_edge:                      ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  %call9 = tail call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str) #5
  %call10 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #5
  %micbias_resume_enable = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %micbias_resume_enable to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %micbias_resume_enable, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then8, %if.then4.if.end12_crit_edge, %if.then.if.end12_crit_edge, %entry.if.end12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_disable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @da7219_aad_resume(ptr noundef %component) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %aad = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %aad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aad, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 17
  %jack = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jack, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %jack_inserted = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 9
  %8 = ptrtoint ptr %jack_inserted to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %jack_inserted, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool2.not = icmp eq i8 %9, 0
  br i1 %tobool2.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %micbias_resume_enable = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 8
  %10 = ptrtoint ptr %micbias_resume_enable to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %micbias_resume_enable, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool3.not = icmp eq i8 %11, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end_crit_edge, label %if.then4

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str) #5
  %call6 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #5
  %12 = ptrtoint ptr %micbias_resume_enable to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %micbias_resume_enable, align 4
  br label %if.end

if.end:                                           ; preds = %if.then4, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %call8 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 198, i32 noundef 1, i32 noundef 1) #5
  br label %if.end9

if.end9:                                          ; preds = %if.end, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_dapm_force_enable_pin(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da7219_aad_init(ptr noundef %component) #0 align 64 {
entry:
  %mask = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %aad = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %aad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aad, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mask) #5
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %mask, align 2, !annotation !135
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %component, ptr %5, align 4
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 8
  %10 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %driver_data.i.i.i, align 4
  %aad.i = getelementptr inbounds %struct.da7219_priv, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %aad.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %aad.i, align 4
  %pdata1.i = getelementptr inbounds %struct.da7219_priv, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %pdata1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdata1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %entry.da7219_aad_handle_pdata.exit_crit_edge, label %land.lhs.true.i

entry.da7219_aad_handle_pdata.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %da7219_aad_handle_pdata.exit

land.lhs.true.i:                                  ; preds = %entry
  %aad_pdata.i = getelementptr inbounds %struct.da7219_pdata, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %aad_pdata.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %aad_pdata.i, align 4
  %tobool2.not.i = icmp eq ptr %17, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.da7219_aad_handle_pdata.exit_crit_edge, label %if.then.i

land.lhs.true.i.da7219_aad_handle_pdata.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da7219_aad_handle_pdata.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  %irq5.i = getelementptr inbounds %struct.da7219_aad_priv, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %irq5.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %irq5.i, align 4
  %micbias_pulse_lvl.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %micbias_pulse_lvl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %micbias_pulse_lvl.i, align 4
  %23 = and i32 %22, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %switch.i = icmp eq i32 %23, 6
  br i1 %switch.i, label %sw.bb.i, label %if.then.i.sw.epilog.i_crit_edge

if.then.i.sw.epilog.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv.i = trunc i32 %22 to i8
  %micbias_pulse_lvl7.i = getelementptr inbounds %struct.da7219_aad_priv, ptr %13, i32 0, i32 2
  %24 = ptrtoint ptr %micbias_pulse_lvl7.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv.i, ptr %micbias_pulse_lvl7.i, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.then.i.sw.epilog.i_crit_edge
  %micbias_pulse_time.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 2
  %25 = ptrtoint ptr %micbias_pulse_time.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %micbias_pulse_time.i, align 4
  %micbias_pulse_time8.i = getelementptr inbounds %struct.da7219_aad_priv, ptr %13, i32 0, i32 3
  %27 = ptrtoint ptr %micbias_pulse_time8.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %micbias_pulse_time8.i, align 4
  %btn_cfg.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 3
  %28 = ptrtoint ptr %btn_cfg.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %btn_cfg.i, align 4
  %.off147.i = add i32 %29, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %.off147.i)
  %switch148.i = icmp ult i32 %.off147.i, 7
  br i1 %switch148.i, label %sw.bb9.i, label %sw.epilog.i.sw.epilog14.i_crit_edge

sw.epilog.i.sw.epilog14.i_crit_edge:              ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog14.i

sw.bb9.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  %.tr.i = trunc i32 %29 to i8
  %conv12.i = shl nuw nsw i8 %.tr.i, 1
  %btn_cfg13.i = getelementptr inbounds %struct.da7219_aad_priv, ptr %13, i32 0, i32 4
  %30 = ptrtoint ptr %btn_cfg13.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv12.i, ptr %btn_cfg13.i, align 4
  br label %sw.epilog14.i

sw.epilog14.i:                                    ; preds = %sw.bb9.i, %sw.epilog.i.sw.epilog14.i_crit_edge
  %mic_det_thr.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 4
  %31 = ptrtoint ptr %mic_det_thr.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mic_det_thr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %32)
  %switch149.i = icmp ult i32 %32, 4
  %conv19.i = shl nuw nsw i32 %32, 4
  %phi.cast.i = and i32 %conv19.i, 240
  %cfg.0.i = select i1 %switch149.i, i32 %phi.cast.i, i32 0
  %mask.0.i = select i1 %switch149.i, i32 48, i32 0
  %call26.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 198, i32 noundef %mask.0.i, i32 noundef %cfg.0.i) #5
  %jack_ins_deb.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 5
  %33 = ptrtoint ptr %jack_ins_deb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %jack_ins_deb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %switch150.i = icmp ult i32 %34, 8
  %conv32.i = shl i32 %34, 1
  %cfg.1.i = select i1 %switch150.i, i32 %conv32.i, i32 0
  %mask.1.i = select i1 %switch150.i, i8 14, i8 0
  %jack_det_rate.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 6
  %35 = ptrtoint ptr %jack_det_rate.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %jack_det_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %switch151.i = icmp ult i32 %36, 4
  %37 = shl i32 %36, 4
  %38 = or i8 %mask.1.i, 48
  %conv42.i = select i1 %switch151.i, i32 %37, i32 0
  %cfg.2.i = or i32 %conv42.i, %cfg.1.i
  %mask.2.i = select i1 %switch151.i, i8 %38, i8 %mask.1.i
  %jack_rem_deb.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 7
  %39 = ptrtoint ptr %jack_rem_deb.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %jack_rem_deb.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %switch152.i = icmp ult i32 %40, 4
  %41 = shl i32 %40, 6
  %42 = or i8 %mask.2.i, -64
  %conv52.i = select i1 %switch152.i, i32 %41, i32 0
  %cfg.3.i = or i32 %cfg.2.i, %conv52.i
  %mask.3.i = select i1 %switch152.i, i8 %42, i8 %mask.2.i
  %conv57.i = zext i8 %mask.3.i to i32
  %conv58.i = and i32 %cfg.3.i, 254
  %call59.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 199, i32 noundef %conv57.i, i32 noundef %conv58.i) #5
  %a_d_btn_thr.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 8
  %43 = ptrtoint ptr %a_d_btn_thr.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %a_d_btn_thr.i, align 4
  %conv60.i = zext i8 %44 to i32
  %call61.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 200, i32 noundef %conv60.i) #5
  %d_b_btn_thr.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 9
  %45 = ptrtoint ptr %d_b_btn_thr.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %d_b_btn_thr.i, align 1
  %conv62.i = zext i8 %46 to i32
  %call63.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 201, i32 noundef %conv62.i) #5
  %b_c_btn_thr.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 10
  %47 = ptrtoint ptr %b_c_btn_thr.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %b_c_btn_thr.i, align 2
  %conv64.i = zext i8 %48 to i32
  %call65.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 202, i32 noundef %conv64.i) #5
  %c_mic_btn_thr.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 11
  %49 = ptrtoint ptr %c_mic_btn_thr.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %c_mic_btn_thr.i, align 1
  %conv66.i = zext i8 %50 to i32
  %call67.i = tail call i32 @snd_soc_component_write(ptr noundef %component, i32 noundef 203, i32 noundef %conv66.i) #5
  %btn_avg.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 12
  %51 = ptrtoint ptr %btn_avg.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %btn_avg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %52)
  %switch153.i = icmp ult i32 %52, 4
  %cfg.4.i = select i1 %switch153.i, i32 %52, i32 0
  %mask.4.i = select i1 %switch153.i, i8 3, i8 0
  %adc_1bit_rpt.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %17, i32 0, i32 13
  %53 = ptrtoint ptr %adc_1bit_rpt.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %adc_1bit_rpt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %54)
  %switch154.i = icmp ult i32 %54, 4
  %55 = shl i32 %54, 2
  %56 = or i8 %mask.4.i, 12
  %conv83.i = select i1 %switch154.i, i32 %55, i32 0
  %cfg.5.i = or i32 %conv83.i, %cfg.4.i
  %mask.5.i = select i1 %switch154.i, i8 %56, i8 %mask.4.i
  %conv88.i = zext i8 %mask.5.i to i32
  %conv89.i = and i32 %cfg.5.i, 255
  %call90.i = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 204, i32 noundef %conv88.i, i32 noundef %conv89.i) #5
  br label %da7219_aad_handle_pdata.exit

da7219_aad_handle_pdata.exit:                     ; preds = %sw.epilog14.i, %land.lhs.true.i.da7219_aad_handle_pdata.exit_crit_edge, %entry.da7219_aad_handle_pdata.exit_crit_edge
  %call2 = tail call i32 @snd_soc_component_update_bits(ptr noundef %component, i32 noundef 198, i32 noundef 14, i32 noundef 0) #5
  %btn_det_work = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 5
  tail call void @__init_work(ptr noundef %btn_det_work, i32 noundef 0) #5
  %57 = ptrtoint ptr %btn_det_work to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 -64, ptr %btn_det_work, align 4
  %lockdep_map = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @da7219_aad_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry6 = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %entry6 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %entry6, ptr %entry6, align 4
  %prev.i = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 5, i32 1, i32 1
  %59 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %entry6, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 5, i32 2
  %60 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @da7219_aad_btn_det_work, ptr %func, align 4
  %hptest_work = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 6
  tail call void @__init_work(ptr noundef %hptest_work, i32 noundef 0) #5
  %61 = ptrtoint ptr %hptest_work to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -64, ptr %hptest_work, align 4
  %lockdep_map14 = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 6, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map14, ptr noundef nonnull @.str.3, ptr noundef nonnull @da7219_aad_init.__key.2, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry16 = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %entry16 to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %entry16, ptr %entry16, align 4
  %prev.i48 = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 6, i32 1, i32 1
  %63 = ptrtoint ptr %prev.i48 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %entry16, ptr %prev.i48, align 4
  %func18 = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 6, i32 2
  %64 = ptrtoint ptr %func18 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @da7219_aad_hptest_work, ptr %func18, align 4
  %irq = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 1
  %65 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %irq, align 4
  %call21 = tail call i32 @request_threaded_irq(i32 noundef %66, ptr noundef null, ptr noundef nonnull @da7219_aad_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str.4, ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool.not = icmp eq i32 %call21, 0
  br i1 %tobool.not, label %if.end, label %do.end24

do.end24:                                         ; preds = %da7219_aad_handle_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %68, ptr noundef nonnull @.str.5, i32 noundef %call21) #8
  br label %cleanup

if.end:                                           ; preds = %da7219_aad_handle_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %mask, align 2
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 5
  %70 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %regmap, align 4
  %call25 = call i32 @regmap_bulk_write(ptr noundef %71, i32 noundef 196, ptr noundef nonnull %mask, i32 noundef 2) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end24
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mask) #5
  ret i32 %call21
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7219_aad_btn_det_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -20
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  %call3 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 107, i32 noundef 8, i32 noundef 8) #5
  %call4 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 108, i32 noundef 8, i32 noundef 8) #5
  %call5 = tail call i32 @snd_soc_dapm_force_enable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str) #5
  %call6 = tail call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #5
  %call7 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 192) #5
  %and = and i32 %call7, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.cond, label %entry.if.end21_crit_edge

entry.if.end21_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.cond:                                          ; preds = %entry
  tail call void @msleep(i32 noundef 10) #5
  %call7.1 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 192) #5
  %and.1 = and i32 %call7.1, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool.not.1, label %do.cond.1, label %do.cond.if.end21_crit_edge

do.cond.if.end21_crit_edge:                       ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.cond.1:                                        ; preds = %do.cond
  tail call void @msleep(i32 noundef 10) #5
  %call7.2 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 192) #5
  %and.2 = and i32 %call7.2, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool.not.2, label %do.cond.2, label %do.cond.1.if.end21_crit_edge

do.cond.1.if.end21_crit_edge:                     ; preds = %do.cond.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.cond.2:                                        ; preds = %do.cond.1
  tail call void @msleep(i32 noundef 10) #5
  %call7.3 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 192) #5
  %and.3 = and i32 %call7.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool.not.3, label %do.cond.3, label %do.cond.2.if.end21_crit_edge

do.cond.2.if.end21_crit_edge:                     ; preds = %do.cond.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.cond.3:                                        ; preds = %do.cond.2
  tail call void @msleep(i32 noundef 10) #5
  %call7.4 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 192) #5
  %and.4 = and i32 %call7.4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool.not.4, label %do.cond.4, label %do.cond.3.if.end21_crit_edge

do.cond.3.if.end21_crit_edge:                     ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.cond.4:                                        ; preds = %do.cond.3
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 10) #5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.10) #8
  br label %if.end21

if.end21:                                         ; preds = %do.cond.4, %do.cond.3.if.end21_crit_edge, %do.cond.2.if.end21_crit_edge, %do.cond.1.if.end21_crit_edge, %do.cond.if.end21_crit_edge, %entry.if.end21_crit_edge
  %micbias_on_event = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 18
  %8 = ptrtoint ptr %micbias_on_event to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %micbias_on_event, align 1
  %micbias_pulse_lvl = getelementptr i8, ptr %work, i32 -12
  %9 = ptrtoint ptr %micbias_pulse_lvl to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %micbias_pulse_lvl, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool23.not = icmp eq i8 %10, 0
  br i1 %tobool23.not, label %if.end21.if.end34_crit_edge, label %land.lhs.true

if.end21.if.end34_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true:                                    ; preds = %if.end21
  %micbias_pulse_time = getelementptr i8, ptr %work, i32 -8
  %11 = ptrtoint ptr %micbias_pulse_time to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %micbias_pulse_time, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool24.not = icmp eq i32 %12, 0
  br i1 %tobool24.not, label %land.lhs.true.if.end34_crit_edge, label %if.then25

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.then25:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call26 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 98) #5
  %13 = ptrtoint ptr %micbias_pulse_lvl to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %micbias_pulse_lvl, align 4
  %conv29 = zext i8 %14 to i32
  %call30 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 98, i32 noundef 7, i32 noundef %conv29) #5
  %15 = ptrtoint ptr %micbias_pulse_time to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %micbias_pulse_time, align 4
  tail call void @msleep(i32 noundef %16) #5
  %conv32 = and i32 %call26, 255
  %call33 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 98, i32 noundef %conv32) #5
  br label %if.end34

if.end34:                                         ; preds = %if.then25, %land.lhs.true.if.end34_crit_edge, %if.end21.if.end34_crit_edge
  %btn_cfg = getelementptr i8, ptr %work, i32 -4
  %17 = ptrtoint ptr %btn_cfg to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %btn_cfg, align 4
  %conv35 = zext i8 %18 to i32
  %call36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 198, i32 noundef 14, i32 noundef %conv35) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @da7219_aad_hptest_work(ptr nocapture noundef readonly %work) #0 align 64 {
entry:
  %tonegen_freq_hptest = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tonegen_freq_hptest) #5
  %card.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17, i32 4
  %6 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i = getelementptr inbounds %struct.snd_soc_card, ptr %7, i32 0, i32 9
  tail call void @mutex_lock_nested(ptr noundef %dapm_mutex.i, i32 noundef 1) #5
  %ctrl_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %ctrl_lock, i32 noundef 0) #5
  %pll_lock = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %pll_lock, i32 noundef 0) #5
  %mclk = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 12
  %8 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mclk, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %if.then

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @clk_prepare(ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

if.end.i:                                         ; preds = %if.then
  %call1.i = tail call i32 @clk_enable(ptr noundef nonnull %9) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end9_crit_edge, label %if.then3.i

if.end.i.if.end9_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @clk_unprepare(ptr noundef nonnull %9) #5
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %if.then.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %if.then.do.end_crit_edge ]
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13, i32 noundef %retval.0.i.ph) #8
  tail call void @mutex_unlock(ptr noundef %pll_lock) #5
  tail call void @mutex_unlock(ptr noundef %ctrl_lock) #5
  %12 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i223 = getelementptr inbounds %struct.snd_soc_card, ptr %13, i32 0, i32 9
  tail call void @mutex_unlock(ptr noundef %dapm_mutex.i223) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end.i.if.end9_crit_edge, %entry.if.end9_crit_edge
  %call10 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 37) #5
  %and = and i32 %call10, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %14 = ptrtoint ptr %tonegen_freq_hptest to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 10240, ptr %tonegen_freq_hptest, align 2
  %call14 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 32) #5
  %and17 = and i32 %call14, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp = icmp eq i32 %and17, 0
  br i1 %cmp, label %if.then19, label %if.then13.if.end22_crit_edge

if.then13.if.end22_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

if.then19:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #7
  %call20 = tail call i32 @da7219_set_pll(ptr noundef %1, i32 noundef 1, i32 noundef 98304000) #5
  br label %if.end22

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %15 = ptrtoint ptr %tonegen_freq_hptest to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 19712, ptr %tonegen_freq_hptest, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then19, %if.then13.if.end22_crit_edge
  %pll_ctrl.0 = phi i32 [ %call14, %if.then19 ], [ %call14, %if.then13.if.end22_crit_edge ], [ 255, %if.else ]
  %call23 = tail call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 146) #5
  %call25 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 146, i32 noundef 0) #5
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 5
  %16 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap, align 4
  tail call void @regcache_cache_bypass(ptr noundef %17, i1 noundef zeroext true) #5
  %call26 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 180, i32 noundef 0) #5
  %call27 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 205, i32 noundef 7, i32 noundef 1) #5
  %call28 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 69, i32 noundef 111) #5
  %call29 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 70, i32 noundef 111) #5
  %call30 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 72, i32 noundef 57) #5
  %call31 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 73, i32 noundef 57) #5
  %call32 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 68, i32 noundef 136, i32 noundef 0) #5
  %call33 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 67, i32 noundef 128, i32 noundef 0) #5
  %call34 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 64, i32 noundef 128, i32 noundef 0) #5
  %call35 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 71, i32 noundef 128, i32 noundef 128) #5
  %call36 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 46, i32 noundef 51, i32 noundef 17) #5
  %call37 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 105, i32 noundef 192, i32 noundef 128) #5
  %call38 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 106, i32 noundef 192, i32 noundef 128) #5
  %call39 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 75, i32 noundef 1, i32 noundef 1) #5
  %call40 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 76, i32 noundef 1, i32 noundef 1) #5
  %call41 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 60, i32 noundef 7, i32 noundef 1) #5
  %call42 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 61, i32 noundef 7, i32 noundef 2) #5
  %call43 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 110, i32 noundef 128, i32 noundef 128) #5
  %call44 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 111, i32 noundef 128, i32 noundef 128) #5
  %call45 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 107, i32 noundef 136, i32 noundef 136) #5
  %call46 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 108, i32 noundef 136, i32 noundef 136) #5
  tail call void @msleep(i32 noundef 40) #5
  %call47 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 107, i32 noundef 68, i32 noundef 0) #5
  %call48 = tail call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 108, i32 noundef 68, i32 noundef 0) #5
  br i1 %tobool12.not, label %if.then52, label %if.end22.if.end53_crit_edge

if.end22.if.end53_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then52:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @msleep(i32 noundef 20) #5
  br label %if.end53

if.end53:                                         ; preds = %if.then52, %if.end22.if.end53_crit_edge
  %call54 = tail call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 187, i32 noundef 63) #5
  %18 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap, align 4
  %call56 = call i32 @regmap_raw_write(ptr noundef %19, i32 noundef 183, ptr noundef nonnull %tonegen_freq_hptest, i32 noundef 2) #5
  %call57 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 181, i32 noundef 243, i32 noundef 83) #5
  %call58 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 180, i32 noundef 128) #5
  call void @msleep(i32 noundef 65) #5
  %call59 = call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 205) #5
  %and62 = and i32 %call59, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  %. = select i1 %tobool63.not, i32 4, i32 1
  %call68 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 180, i32 noundef 0) #5
  call void @msleep(i32 noundef 65) #5
  %20 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap, align 4
  call void @regcache_mark_dirty(ptr noundef %21) #5
  %22 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regmap, align 4
  %call71 = call i32 @regcache_sync_region(ptr noundef %23, i32 noundef 107, i32 noundef 108) #5
  call void @msleep(i32 noundef 40) #5
  %24 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap, align 4
  %call73 = call i32 @regcache_sync_region(ptr noundef %25, i32 noundef 110, i32 noundef 111) #5
  %26 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regmap, align 4
  %call75 = call i32 @regcache_sync_region(ptr noundef %27, i32 noundef 60, i32 noundef 61) #5
  %28 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap, align 4
  %call77 = call i32 @regcache_sync_region(ptr noundef %29, i32 noundef 75, i32 noundef 76) #5
  %30 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap, align 4
  %call79 = call i32 @regcache_sync_region(ptr noundef %31, i32 noundef 105, i32 noundef 106) #5
  %32 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %regmap, align 4
  %call81 = call i32 @regcache_sync_region(ptr noundef %33, i32 noundef 46, i32 noundef 46) #5
  %34 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regmap, align 4
  %call83 = call i32 @regcache_sync_region(ptr noundef %35, i32 noundef 71, i32 noundef 71) #5
  %36 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap, align 4
  %call85 = call i32 @regcache_sync_region(ptr noundef %37, i32 noundef 64, i32 noundef 64) #5
  %38 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap, align 4
  %call87 = call i32 @regcache_sync_region(ptr noundef %39, i32 noundef 67, i32 noundef 68) #5
  %40 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap, align 4
  %call89 = call i32 @regcache_sync_region(ptr noundef %41, i32 noundef 72, i32 noundef 73) #5
  %42 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regmap, align 4
  %call91 = call i32 @regcache_sync_region(ptr noundef %43, i32 noundef 69, i32 noundef 70) #5
  %44 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regmap, align 4
  %call93 = call i32 @regcache_sync_region(ptr noundef %45, i32 noundef 187, i32 noundef 187) #5
  %46 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %regmap, align 4
  %call95 = call i32 @regcache_sync_region(ptr noundef %47, i32 noundef 183, i32 noundef 184) #5
  %48 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap, align 4
  %call97 = call i32 @regcache_sync_region(ptr noundef %49, i32 noundef 180, i32 noundef 181) #5
  %50 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %regmap, align 4
  call void @regcache_cache_bypass(ptr noundef %51, i1 noundef zeroext false) #5
  %call99 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 205, i32 noundef 1, i32 noundef 0) #5
  br i1 %tobool12.not, label %if.then103, label %land.lhs.true.critedge

if.then103:                                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  call void @msleep(i32 noundef 20) #5
  %conv105.c = and i32 %call23, 255
  %call106.c = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 146, i32 noundef %conv105.c) #5
  %call107.c = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 107, i32 noundef 8, i32 noundef 8) #5
  %call108.c = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 108, i32 noundef 8, i32 noundef 8) #5
  br label %if.end118

land.lhs.true.critedge:                           ; preds = %if.end53
  %conv105.c218 = and i32 %call23, 255
  %call106.c219 = call i32 @snd_soc_component_write(ptr noundef %1, i32 noundef 146, i32 noundef %conv105.c218) #5
  %call107.c220 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 107, i32 noundef 8, i32 noundef 8) #5
  %call108.c221 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 108, i32 noundef 8, i32 noundef 8) #5
  %and113 = and i32 %pll_ctrl.0, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %cmp114 = icmp eq i32 %and113, 0
  br i1 %cmp114, label %if.then116, label %land.lhs.true.critedge.if.end118_crit_edge

land.lhs.true.critedge.if.end118_crit_edge:       ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end118

if.then116:                                       ; preds = %land.lhs.true.critedge
  call void @__sanitizer_cov_trace_pc() #7
  %call117 = call i32 @da7219_set_pll(ptr noundef %1, i32 noundef 0, i32 noundef 0) #5
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %land.lhs.true.critedge.if.end118_crit_edge, %if.then103
  %52 = ptrtoint ptr %mclk to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mclk, align 4
  %tobool120.not = icmp eq ptr %53, null
  br i1 %tobool120.not, label %if.end118.if.end123_crit_edge, label %if.then121

if.end118.if.end123_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end123

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  call void @clk_disable(ptr noundef nonnull %53) #5
  call void @clk_unprepare(ptr noundef nonnull %53) #5
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end118.if.end123_crit_edge
  call void @mutex_unlock(ptr noundef %pll_lock) #5
  call void @mutex_unlock(ptr noundef %ctrl_lock) #5
  %54 = ptrtoint ptr %card.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %card.i, align 4
  %dapm_mutex.i225 = getelementptr inbounds %struct.snd_soc_card, ptr %55, i32 0, i32 9
  call void @mutex_unlock(ptr noundef %dapm_mutex.i225) #5
  %jack_inserted = getelementptr i8, ptr %work, i32 49
  %56 = ptrtoint ptr %jack_inserted to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %jack_inserted, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool126.not = icmp eq i8 %57, 0
  br i1 %tobool126.not, label %if.end123.cleanup_crit_edge, label %if.then127

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then127:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #7
  %jack = getelementptr i8, ptr %work, i32 44
  %58 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %59, i32 noundef %., i32 noundef 7) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then127, %if.end123.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tonegen_freq_hptest) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @da7219_aad_irq_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %events = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %dapm.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 17
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %events) #5
  %6 = ptrtoint ptr %events to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %events, align 1, !annotation !135
  %7 = getelementptr inbounds [2 x i8], ptr %events, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %7, align 1, !annotation !135
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 5
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call3 = call i32 @regmap_bulk_read(ptr noundef %10, i32 noundef 194, ptr noundef nonnull %events, i32 noundef 2) #5
  %11 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %events, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not = icmp eq i8 %12, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %13 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool5.not = icmp eq i8 %14, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call6 = call i32 @snd_soc_component_read(ptr noundef %1, i32 noundef 192) #5
  %15 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regmap, align 4
  %call9 = call i32 @regmap_bulk_write(ptr noundef %16, i32 noundef 194, ptr noundef nonnull %events, i32 noundef 2) #5
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @da7219_aad_irq_thread.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@da7219_aad_irq_thread, %if.then14)) #5
          to label %do.end [label %if.then14], !srcloc !136

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %19 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %events, align 1
  %conv16 = zext i8 %20 to i32
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %7, align 1
  %conv18 = zext i8 %22 to i32
  %conv19 = and i32 %call6, 255
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @da7219_aad_irq_thread.__UNIQUE_ID_ddebug294, ptr noundef %18, ptr noundef nonnull @.str.17, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv19) #5
  br label %do.end

do.end:                                           ; preds = %if.then14, %if.end
  %and = and i32 %call6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %23 = ptrtoint ptr %events to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %events, align 1
  br i1 %tobool22.not, label %if.else79, label %if.then23

if.then23:                                        ; preds = %do.end
  %25 = and i8 %24, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool27.not = icmp eq i8 %25, 0
  br i1 %tobool27.not, label %if.then23.if.end30_crit_edge, label %if.then28

if.then23.if.end30_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

if.then28:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  %jack_inserted = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 9
  %26 = ptrtoint ptr %jack_inserted to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %jack_inserted, align 1
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.then23.if.end30_crit_edge
  %mask.0 = phi i32 [ 8, %if.then28 ], [ 0, %if.then23.if.end30_crit_edge ]
  %27 = and i8 %24, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool34.not = icmp eq i8 %27, 0
  %.pre = and i32 %call6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pre)
  %phi.cmp = icmp eq i32 %.pre, 0
  br i1 %tobool34.not, label %if.end45, label %if.then35

if.then35:                                        ; preds = %if.end30
  br i1 %phi.cmp, label %if.end45.thread, label %if.end45.thread158

if.end45.thread158:                               ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %or40 = or i32 %mask.0, 3
  %or41 = or i32 %mask.0, 7
  %btn_det_work = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %28 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %28, ptr noundef %btn_det_work) #5
  br label %for.cond.preheader

if.end45.thread:                                  ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %hptest_work = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %29 = load ptr, ptr @system_wq, align 4
  %call.i.i147 = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %29, ptr noundef %hptest_work) #5
  br label %if.end97

if.end45:                                         ; preds = %if.end30
  br i1 %phi.cmp, label %if.end45.if.end97_crit_edge, label %if.end45.for.cond.preheader_crit_edge

if.end45.for.cond.preheader_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end45.if.end97_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

for.cond.preheader:                               ; preds = %if.end45.for.cond.preheader_crit_edge, %if.end45.thread158
  %mask.1163 = phi i32 [ %or41, %if.end45.thread158 ], [ %mask.0, %if.end45.for.cond.preheader_crit_edge ]
  %report.1162 = phi i32 [ %or40, %if.end45.thread158 ], [ %mask.0, %if.end45.for.cond.preheader_crit_edge ]
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %7, align 1
  %conv52 = zext i8 %31 to i32
  %and53 = shl nuw nsw i32 %conv52, 14
  %32 = and i32 %and53, 16384
  %report.3 = or i32 %32, %report.1162
  %mask.3 = or i32 %32, %mask.1163
  %and53.1 = shl nuw nsw i32 %conv52, 12
  %33 = and i32 %and53.1, 8192
  %report.3.1 = or i32 %33, %report.3
  %mask.3.1 = or i32 %33, %mask.3
  %and53.2 = shl nuw nsw i32 %conv52, 10
  %34 = and i32 %and53.2, 4096
  %report.3.2 = or i32 %34, %report.3.1
  %mask.3.2 = or i32 %34, %mask.3.1
  %and53.3 = shl nuw nsw i32 %conv52, 8
  %35 = and i32 %and53.3, 2048
  %report.3.3 = or i32 %35, %report.3.2
  %mask.3.3 = or i32 %35, %mask.3.2
  %jack = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 7
  %36 = ptrtoint ptr %jack to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %jack, align 4
  call void @snd_soc_jack_report(ptr noundef %37, i32 noundef %report.3.3, i32 noundef %mask.3.3) #5
  %38 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %7, align 1
  %conv65 = zext i8 %39 to i32
  %and67 = and i32 %conv65, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %and71 = select i1 %tobool68.not, i32 -1, i32 -16385
  %report.5 = and i32 %and71, %report.3.3
  %40 = shl nuw nsw i32 %and67, 7
  %mask.5 = or i32 %40, %mask.3.3
  %and67.1 = and i32 %conv65, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.1)
  %tobool68.not.1 = icmp eq i32 %and67.1, 0
  %and71.1 = select i1 %tobool68.not.1, i32 -1, i32 -8193
  %report.5.1 = and i32 %and71.1, %report.5
  %41 = shl nuw nsw i32 %and67.1, 7
  %mask.5.1 = or i32 %41, %mask.5
  %and67.2 = and i32 %conv65, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.2)
  %tobool68.not.2 = icmp eq i32 %and67.2, 0
  %and71.2 = select i1 %tobool68.not.2, i32 -1, i32 -4097
  %report.5.2 = and i32 %and71.2, %report.5.1
  %42 = shl nuw nsw i32 %and67.2, 7
  %mask.5.2 = or i32 %42, %mask.5.1
  %and67.3 = and i32 %conv65, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67.3)
  %tobool68.not.3 = icmp eq i32 %and67.3, 0
  %and71.3 = select i1 %tobool68.not.3, i32 -1, i32 -2049
  %report.5.3 = and i32 %and71.3, %report.5.2
  %43 = shl nuw nsw i32 %and67.3, 7
  %mask.5.3 = or i32 %43, %mask.5.2
  br label %if.end97

if.else79:                                        ; preds = %do.end
  %44 = and i8 %24, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool83.not = icmp eq i8 %44, 0
  br i1 %tobool83.not, label %if.else79.if.end97_crit_edge, label %if.then84

if.else79.if.end97_crit_edge:                     ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end97

if.then84:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  %jack_inserted86 = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 9
  %45 = ptrtoint ptr %jack_inserted86 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %jack_inserted86, align 1
  %call87 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 108, i32 noundef 8, i32 noundef 0) #5
  %call88 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 107, i32 noundef 8, i32 noundef 0) #5
  %call89 = call i32 @snd_soc_component_update_bits(ptr noundef %1, i32 noundef 198, i32 noundef 14, i32 noundef 0) #5
  %micbias_on_event = getelementptr inbounds %struct.da7219_priv, ptr %5, i32 0, i32 18
  %46 = ptrtoint ptr %micbias_on_event to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %micbias_on_event, align 1
  %call90 = call i32 @snd_soc_dapm_disable_pin(ptr noundef %dapm.i, ptr noundef nonnull @.str) #5
  %call91 = call i32 @snd_soc_dapm_sync(ptr noundef %dapm.i) #5
  %btn_det_work92 = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 5
  %call93 = call zeroext i1 @cancel_work_sync(ptr noundef %btn_det_work92) #5
  %hptest_work94 = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 6
  %call95 = call zeroext i1 @cancel_work_sync(ptr noundef %hptest_work94) #5
  br label %if.end97

if.end97:                                         ; preds = %if.then84, %if.else79.if.end97_crit_edge, %for.cond.preheader, %if.end45.if.end97_crit_edge, %if.end45.thread
  %report.6 = phi i32 [ %mask.0, %if.end45.if.end97_crit_edge ], [ 0, %if.then84 ], [ 0, %if.else79.if.end97_crit_edge ], [ %report.5.3, %for.cond.preheader ], [ %mask.0, %if.end45.thread ]
  %mask.6 = phi i32 [ %mask.0, %if.end45.if.end97_crit_edge ], [ 30735, %if.then84 ], [ 0, %if.else79.if.end97_crit_edge ], [ %mask.5.3, %for.cond.preheader ], [ %mask.0, %if.end45.thread ]
  %jack98 = getelementptr inbounds %struct.da7219_aad_priv, ptr %data, i32 0, i32 7
  %47 = ptrtoint ptr %jack98 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %jack98, align 4
  call void @snd_soc_jack_report(ptr noundef %48, i32 noundef %report.6, i32 noundef %mask.6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end97, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.end97 ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %events) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @da7219_aad_exit(ptr nocapture noundef readonly %component) #0 align 64 {
entry:
  %mask = alloca [2 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.snd_soc_component, ptr %component, i32 0, i32 3
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %aad = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %aad to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aad, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %mask) #5
  %regmap = getelementptr inbounds %struct.da7219_priv, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %mask to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 -1, ptr %mask, align 2
  %7 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap, align 4
  %call2 = call i32 @regmap_bulk_write(ptr noundef %8, i32 noundef 196, ptr noundef nonnull %mask, i32 noundef 2) #5
  %irq = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 1
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  %call3 = call ptr @free_irq(i32 noundef %10, ptr noundef %5) #5
  %btn_det_work = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 5
  %call4 = call zeroext i1 @cancel_work_sync(ptr noundef %btn_det_work) #5
  %hptest_work = getelementptr inbounds %struct.da7219_aad_priv, ptr %5, i32 0, i32 6
  %call5 = call zeroext i1 @cancel_work_sync(ptr noundef %hptest_work) #5
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %mask) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @da7219_aad_probe(ptr noundef %i2c) #0 align 64 {
entry:
  %fw_str.i = alloca ptr, align 4
  %fw_val32.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev1 = getelementptr inbounds %struct.i2c_client, ptr %i2c, i32 0, i32 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 116, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %aad = getelementptr inbounds %struct.da7219_priv, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %aad to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.i, ptr %aad, align 4
  %pdata = getelementptr inbounds %struct.da7219_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pdata, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %aad_pdata = getelementptr inbounds %struct.da7219_pdata, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %aad_pdata to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %aad_pdata, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %if.then6, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then6:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_str.i) #5
  %7 = ptrtoint ptr %fw_str.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw_str.i, align 4, !annotation !135
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw_val32.i) #5
  %8 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %fw_val32.i, align 4, !annotation !135
  %call.i19 = tail call ptr @device_get_named_child_node(ptr noundef %dev1, ptr noundef nonnull @.str.18) #5
  %tobool.not.i = icmp eq ptr %call.i19, null
  br i1 %tobool.not.i, label %if.then6.da7219_aad_fw_to_pdata.exit_crit_edge, label %if.end.i

if.then6.da7219_aad_fw_to_pdata.exit_crit_edge:   ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %da7219_aad_fw_to_pdata.exit

if.end.i:                                         ; preds = %if.then6
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #5
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.da7219_aad_fw_to_pdata.exit_crit_edge, label %if.end4.i

if.end.i.da7219_aad_fw_to_pdata.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %da7219_aad_fw_to_pdata.exit

if.end4.i:                                        ; preds = %if.end.i
  %irq.i = getelementptr %struct.i2c_client, ptr %i2c, i32 0, i32 6
  %9 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq.i, align 4
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %call.i.i, align 4
  %call.i150.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.19, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i150.i)
  %cmp.i = icmp sgt i32 %call.i150.i, -1
  br i1 %cmp.i, label %if.then7.i, label %if.end4.i.if.end10.i_crit_edge

if.end4.i.if.end10.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

if.then7.i:                                       ; preds = %if.end4.i
  %12 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fw_val32.i, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values)
  switch i32 %13, label %do.end.i.i [
    i32 2800, label %if.then7.i.if.end10.i_crit_edge
    i32 2900, label %sw.bb1.i.i
  ]

if.then7.i.if.end10.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

sw.bb1.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10.i

do.end.i.i:                                       ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.32) #8
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end.i.i, %sw.bb1.i.i, %if.then7.i.if.end10.i_crit_edge, %if.end4.i.if.end10.i_crit_edge
  %.sink199.i = phi i32 [ 0, %do.end.i.i ], [ 7, %sw.bb1.i.i ], [ 6, %if.then7.i.if.end10.i_crit_edge ], [ 0, %if.end4.i.if.end10.i_crit_edge ]
  %micbias_pulse_lvl9.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %micbias_pulse_lvl9.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink199.i, ptr %micbias_pulse_lvl9.i, align 4
  %call.i151.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.20, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i151.i)
  %cmp12.i = icmp sgt i32 %call.i151.i, -1
  br i1 %cmp12.i, label %if.then13.i, label %if.end10.i.if.end14.i_crit_edge

if.end10.i.if.end14.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end14.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %fw_val32.i, align 4
  %micbias_pulse_time.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %micbias_pulse_time.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %micbias_pulse_time.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end14.i_crit_edge
  %call.i152.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.21, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i152.i)
  %cmp16.i = icmp sgt i32 %call.i152.i, -1
  br i1 %cmp16.i, label %if.then17.i, label %if.end14.i.if.end21.i_crit_edge

if.end14.i.if.end21.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

if.then17.i:                                      ; preds = %if.end14.i
  %19 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %fw_val32.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %20, label %do.end.i154.i [
    i32 2, label %if.then17.i.if.end21.i_crit_edge
    i32 5, label %sw.bb1.i153.i
    i32 10, label %sw.bb2.i.i
    i32 50, label %sw.bb3.i.i
    i32 100, label %sw.bb4.i.i
    i32 200, label %sw.bb5.i.i
    i32 500, label %sw.bb6.i.i
  ]

if.then17.i.if.end21.i_crit_edge:                 ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

sw.bb1.i153.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

sw.bb2.i.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

sw.bb3.i.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

sw.bb4.i.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

sw.bb5.i.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

sw.bb6.i.i:                                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21.i

do.end.i154.i:                                    ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.34) #8
  br label %if.end21.i

if.end21.i:                                       ; preds = %do.end.i154.i, %sw.bb6.i.i, %sw.bb5.i.i, %sw.bb4.i.i, %sw.bb3.i.i, %sw.bb2.i.i, %sw.bb1.i153.i, %if.then17.i.if.end21.i_crit_edge, %if.end14.i.if.end21.i_crit_edge
  %.sink200.i = phi i32 [ 3, %do.end.i154.i ], [ 7, %sw.bb6.i.i ], [ 6, %sw.bb5.i.i ], [ 5, %sw.bb4.i.i ], [ 4, %sw.bb3.i.i ], [ 3, %sw.bb2.i.i ], [ 2, %sw.bb1.i153.i ], [ 1, %if.then17.i.if.end21.i_crit_edge ], [ 3, %if.end14.i.if.end21.i_crit_edge ]
  %btn_cfg20.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %btn_cfg20.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %.sink200.i, ptr %btn_cfg20.i, align 4
  %call.i156.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.22, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i156.i)
  %cmp23.i = icmp sgt i32 %call.i156.i, -1
  br i1 %cmp23.i, label %if.then24.i, label %if.end21.i.if.end28.i_crit_edge

if.end21.i.if.end28.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end21.i
  %23 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %fw_val32.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %24, label %do.end.i160.i [
    i32 200, label %if.then24.i.if.end28.i_crit_edge
    i32 500, label %sw.bb1.i157.i
    i32 750, label %sw.bb2.i158.i
    i32 1000, label %sw.bb3.i159.i
  ]

if.then24.i.if.end28.i_crit_edge:                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

sw.bb1.i157.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

sw.bb2.i158.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

sw.bb3.i159.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end28.i

do.end.i160.i:                                    ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.36) #8
  br label %if.end28.i

if.end28.i:                                       ; preds = %do.end.i160.i, %sw.bb3.i159.i, %sw.bb2.i158.i, %sw.bb1.i157.i, %if.then24.i.if.end28.i_crit_edge, %if.end21.i.if.end28.i_crit_edge
  %.sink201.i = phi i32 [ 1, %do.end.i160.i ], [ 3, %sw.bb3.i159.i ], [ 2, %sw.bb2.i158.i ], [ 1, %sw.bb1.i157.i ], [ 0, %if.then24.i.if.end28.i_crit_edge ], [ 1, %if.end21.i.if.end28.i_crit_edge ]
  %mic_det_thr27.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 4
  %26 = ptrtoint ptr %mic_det_thr27.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.sink201.i, ptr %mic_det_thr27.i, align 4
  %call.i162.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.23, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i162.i)
  %cmp30.i = icmp sgt i32 %call.i162.i, -1
  br i1 %cmp30.i, label %if.then31.i, label %if.end28.i.if.end35.i_crit_edge

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end28.i
  %27 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %fw_val32.i, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %28, label %do.end.i169.i [
    i32 5, label %if.then31.i.if.end35.i_crit_edge
    i32 10, label %sw.bb1.i163.i
    i32 20, label %sw.bb2.i164.i
    i32 50, label %sw.bb3.i165.i
    i32 100, label %sw.bb4.i166.i
    i32 200, label %sw.bb5.i167.i
    i32 500, label %sw.bb6.i168.i
    i32 1000, label %sw.bb7.i.i
  ]

if.then31.i.if.end35.i_crit_edge:                 ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

sw.bb1.i163.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

sw.bb2.i164.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

sw.bb3.i165.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

sw.bb4.i166.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

sw.bb5.i167.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

sw.bb6.i168.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

sw.bb7.i.i:                                       ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35.i

do.end.i169.i:                                    ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.38) #8
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end.i169.i, %sw.bb7.i.i, %sw.bb6.i168.i, %sw.bb5.i167.i, %sw.bb4.i166.i, %sw.bb3.i165.i, %sw.bb2.i164.i, %sw.bb1.i163.i, %if.then31.i.if.end35.i_crit_edge, %if.end28.i.if.end35.i_crit_edge
  %.sink202.i = phi i32 [ 2, %do.end.i169.i ], [ 7, %sw.bb7.i.i ], [ 6, %sw.bb6.i168.i ], [ 5, %sw.bb5.i167.i ], [ 4, %sw.bb4.i166.i ], [ 3, %sw.bb3.i165.i ], [ 2, %sw.bb2.i164.i ], [ 1, %sw.bb1.i163.i ], [ 0, %if.then31.i.if.end35.i_crit_edge ], [ 2, %if.end28.i.if.end35.i_crit_edge ]
  %jack_ins_deb34.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 5
  %30 = ptrtoint ptr %jack_ins_deb34.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %.sink202.i, ptr %jack_ins_deb34.i, align 4
  %call36.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.24, ptr noundef nonnull %fw_str.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %tobool37.not.i = icmp eq i32 %call36.i, 0
  br i1 %tobool37.not.i, label %if.then38.i, label %if.end35.i.if.end42.i_crit_edge

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end35.i
  %31 = ptrtoint ptr %fw_str.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fw_str.i, align 4
  %call.i171.i = call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(10) @.str.40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i171.i)
  %tobool.not.i.i = icmp eq i32 %call.i171.i, 0
  br i1 %tobool.not.i.i, label %if.then38.i.if.end42.i_crit_edge, label %if.else.i.i

if.then38.i.if.end42.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.else.i.i:                                      ; preds = %if.then38.i
  %call1.i.i = call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(11) @.str.41) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.else.i.i.if.end42.i_crit_edge, label %if.else4.i.i

if.else.i.i.if.end42.i_crit_edge:                 ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.else4.i.i:                                     ; preds = %if.else.i.i
  %call5.i.i = call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(12) @.str.42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i.i)
  %tobool6.not.i.i = icmp eq i32 %call5.i.i, 0
  br i1 %tobool6.not.i.i, label %if.else4.i.i.if.end42.i_crit_edge, label %if.else8.i.i

if.else4.i.i.if.end42.i_crit_edge:                ; preds = %if.else4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

if.else8.i.i:                                     ; preds = %if.else4.i.i
  %call9.i.i = call i32 @strcmp(ptr noundef %32, ptr noundef nonnull dereferenceable(12) @.str.43) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i)
  %tobool10.not.i.i = icmp eq i32 %call9.i.i, 0
  br i1 %tobool10.not.i.i, label %if.else8.i.i.if.end42.i_crit_edge, label %do.end.i172.i

if.else8.i.i.if.end42.i_crit_edge:                ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42.i

do.end.i172.i:                                    ; preds = %if.else8.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.44) #8
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end.i172.i, %if.else8.i.i.if.end42.i_crit_edge, %if.else4.i.i.if.end42.i_crit_edge, %if.else.i.i.if.end42.i_crit_edge, %if.then38.i.if.end42.i_crit_edge, %if.end35.i.if.end42.i_crit_edge
  %.sink203.i = phi i32 [ 3, %do.end.i172.i ], [ 0, %if.then38.i.if.end42.i_crit_edge ], [ 1, %if.else.i.i.if.end42.i_crit_edge ], [ 2, %if.else4.i.i.if.end42.i_crit_edge ], [ 3, %if.else8.i.i.if.end42.i_crit_edge ], [ 3, %if.end35.i.if.end42.i_crit_edge ]
  %jack_det_rate41.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %jack_det_rate41.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink203.i, ptr %jack_det_rate41.i, align 4
  %call.i174.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.25, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i174.i)
  %cmp44.i = icmp sgt i32 %call.i174.i, -1
  br i1 %cmp44.i, label %if.then45.i, label %if.end42.i.if.end49.i_crit_edge

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end42.i
  %34 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fw_val32.i, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %35, label %do.end.i178.i [
    i32 1, label %if.then45.i.if.end49.i_crit_edge
    i32 5, label %sw.bb1.i175.i
    i32 10, label %sw.bb2.i176.i
    i32 20, label %sw.bb3.i177.i
  ]

if.then45.i.if.end49.i_crit_edge:                 ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

sw.bb1.i175.i:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

sw.bb2.i176.i:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

sw.bb3.i177.i:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49.i

do.end.i178.i:                                    ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.46) #8
  br label %if.end49.i

if.end49.i:                                       ; preds = %do.end.i178.i, %sw.bb3.i177.i, %sw.bb2.i176.i, %sw.bb1.i175.i, %if.then45.i.if.end49.i_crit_edge, %if.end42.i.if.end49.i_crit_edge
  %.sink204.i = phi i32 [ 0, %do.end.i178.i ], [ 3, %sw.bb3.i177.i ], [ 2, %sw.bb2.i176.i ], [ 1, %sw.bb1.i175.i ], [ 0, %if.then45.i.if.end49.i_crit_edge ], [ 0, %if.end42.i.if.end49.i_crit_edge ]
  %jack_rem_deb48.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %jack_rem_deb48.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink204.i, ptr %jack_rem_deb48.i, align 4
  %call.i180.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.26, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i180.i)
  %cmp51.i = icmp sgt i32 %call.i180.i, -1
  br i1 %cmp51.i, label %if.then52.i, label %if.end49.i.if.end55.i_crit_edge

if.end49.i.if.end55.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fw_val32.i, align 4
  %conv.i = trunc i32 %39 to i8
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then52.i, %if.end49.i.if.end55.i_crit_edge
  %.sink.i = phi i8 [ %conv.i, %if.then52.i ], [ 10, %if.end49.i.if.end55.i_crit_edge ]
  %40 = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 8
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %.sink.i, ptr %40, align 4
  %call.i181.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.27, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i181.i)
  %cmp57.i = icmp sgt i32 %call.i181.i, -1
  br i1 %cmp57.i, label %if.then59.i, label %if.end55.i.if.end63.i_crit_edge

if.end55.i.if.end63.i_crit_edge:                  ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fw_val32.i, align 4
  %conv60.i = trunc i32 %43 to i8
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.end55.i.if.end63.i_crit_edge
  %.sink196.i = phi i8 [ %conv60.i, %if.then59.i ], [ 22, %if.end55.i.if.end63.i_crit_edge ]
  %44 = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 9
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %.sink196.i, ptr %44, align 1
  %call.i182.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.28, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i182.i)
  %cmp65.i = icmp sgt i32 %call.i182.i, -1
  br i1 %cmp65.i, label %if.then67.i, label %if.end63.i.if.end71.i_crit_edge

if.end63.i.if.end71.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71.i

if.then67.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fw_val32.i, align 4
  %conv68.i = trunc i32 %47 to i8
  br label %if.end71.i

if.end71.i:                                       ; preds = %if.then67.i, %if.end63.i.if.end71.i_crit_edge
  %.sink197.i = phi i8 [ %conv68.i, %if.then67.i ], [ 33, %if.end63.i.if.end71.i_crit_edge ]
  %48 = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 10
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink197.i, ptr %48, align 2
  %call.i183.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.29, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i183.i)
  %cmp73.i = icmp sgt i32 %call.i183.i, -1
  br i1 %cmp73.i, label %if.then75.i, label %if.end71.i.if.end79.i_crit_edge

if.end71.i.if.end79.i_crit_edge:                  ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end79.i

if.then75.i:                                      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %fw_val32.i, align 4
  %conv76.i = trunc i32 %51 to i8
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.then75.i, %if.end71.i.if.end79.i_crit_edge
  %.sink198.i = phi i8 [ %conv76.i, %if.then75.i ], [ 62, %if.end71.i.if.end79.i_crit_edge ]
  %52 = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 11
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %.sink198.i, ptr %52, align 1
  %call.i184.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.30, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i184.i)
  %cmp81.i = icmp sgt i32 %call.i184.i, -1
  br i1 %cmp81.i, label %if.then83.i, label %if.end79.i.if.end87.i_crit_edge

if.end79.i.if.end87.i_crit_edge:                  ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end87.i

if.then83.i:                                      ; preds = %if.end79.i
  %54 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %fw_val32.i, align 4
  %switch.tableidx = add i32 %55, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %56 = icmp ult i32 %switch.tableidx, 8
  br i1 %56, label %switch.hole_check, label %if.then83.i.do.end.i188.i_crit_edge

if.then83.i.do.end.i188.i_crit_edge:              ; preds = %if.then83.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i188.i

do.end.i188.i:                                    ; preds = %switch.hole_check.do.end.i188.i_crit_edge, %if.then83.i.do.end.i188.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.48) #8
  br label %if.end87.i

switch.hole_check:                                ; preds = %if.then83.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %57 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %switch.lobit.not = icmp eq i8 %57, 0
  br i1 %switch.lobit.not, label %switch.hole_check.do.end.i188.i_crit_edge, label %switch.lookup

switch.hole_check.do.end.i188.i_crit_edge:        ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i188.i

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.da7219_aad_probe, i32 0, i32 %switch.tableidx
  %58 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %58)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end87.i

if.end87.i:                                       ; preds = %switch.lookup, %do.end.i188.i, %if.end79.i.if.end87.i_crit_edge
  %.sink205.i = phi i32 [ 1, %do.end.i188.i ], [ 1, %if.end79.i.if.end87.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %btn_avg86.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 12
  %59 = ptrtoint ptr %btn_avg86.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %.sink205.i, ptr %btn_avg86.i, align 4
  %call.i190.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %call.i19, ptr noundef nonnull @.str.31, ptr noundef nonnull %fw_val32.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i190.i)
  %cmp89.i = icmp sgt i32 %call.i190.i, -1
  br i1 %cmp89.i, label %if.then91.i, label %if.end87.i.cleanup.sink.split.i_crit_edge

if.end87.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.then91.i:                                      ; preds = %if.end87.i
  %60 = ptrtoint ptr %fw_val32.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %fw_val32.i, align 4
  %switch.tableidx21 = add i32 %61, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx21)
  %62 = icmp ult i32 %switch.tableidx21, 8
  br i1 %62, label %switch.hole_check22, label %if.then91.i.do.end.i194.i_crit_edge

if.then91.i.do.end.i194.i_crit_edge:              ; preds = %if.then91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i194.i

do.end.i194.i:                                    ; preds = %switch.hole_check22.do.end.i194.i_crit_edge, %if.then91.i.do.end.i194.i_crit_edge
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.50) #8
  br label %cleanup.sink.split.i

switch.hole_check22:                              ; preds = %if.then91.i
  %switch.maskindex24 = trunc i32 %switch.tableidx21 to i8
  %switch.shifted25 = lshr i8 -117, %switch.maskindex24
  %63 = and i8 %switch.shifted25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %switch.lobit26.not = icmp eq i8 %63, 0
  br i1 %switch.lobit26.not, label %switch.hole_check22.do.end.i194.i_crit_edge, label %switch.lookup23

switch.hole_check22.do.end.i194.i_crit_edge:      ; preds = %switch.hole_check22
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i194.i

switch.lookup23:                                  ; preds = %switch.hole_check22
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep27 = getelementptr inbounds [8 x i32], ptr @switch.table.da7219_aad_probe.52, i32 0, i32 %switch.tableidx21
  %64 = ptrtoint ptr %switch.gep27 to i32
  call void @__asan_load4_noabort(i32 %64)
  %switch.load28 = load i32, ptr %switch.gep27, align 4
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %switch.lookup23, %do.end.i194.i, %if.end87.i.cleanup.sink.split.i_crit_edge
  %retval.0.i195.sink.i = phi i32 [ 0, %do.end.i194.i ], [ 0, %if.end87.i.cleanup.sink.split.i_crit_edge ], [ %switch.load28, %switch.lookup23 ]
  %adc_1bit_rpt.i = getelementptr inbounds %struct.da7219_aad_pdata, ptr %call.i.i, i32 0, i32 13
  %65 = ptrtoint ptr %adc_1bit_rpt.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %retval.0.i195.sink.i, ptr %adc_1bit_rpt.i, align 4
  br label %da7219_aad_fw_to_pdata.exit

da7219_aad_fw_to_pdata.exit:                      ; preds = %cleanup.sink.split.i, %if.end.i.da7219_aad_fw_to_pdata.exit_crit_edge, %if.then6.da7219_aad_fw_to_pdata.exit_crit_edge
  %retval.0.i = phi ptr [ null, %if.then6.da7219_aad_fw_to_pdata.exit_crit_edge ], [ null, %if.end.i.da7219_aad_fw_to_pdata.exit_crit_edge ], [ %call.i.i, %cleanup.sink.split.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_val32.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw_str.i) #5
  %66 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %pdata, align 4
  %aad_pdata9 = getelementptr inbounds %struct.da7219_pdata, ptr %67, i32 0, i32 4
  %68 = ptrtoint ptr %aad_pdata9 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %retval.0.i, ptr %aad_pdata9, align 4
  br label %cleanup

cleanup:                                          ; preds = %da7219_aad_fw_to_pdata.exit, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ 0, %da7219_aad_fw_to_pdata.exit ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @snd_soc_component_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @da7219_set_pll(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_cache_bypass(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_raw_write(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @regcache_mark_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regcache_sync_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !33, !35, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !97, !99, !101, !103, !105, !107, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124}
!llvm.module.flags = !{!125, !126, !127, !128, !129, !130, !131, !132}
!llvm.ident = !{!133}

!0 = !{ptr @__ksymtab_da7219_aad_jack_det, !1, !"__ksymtab_da7219_aad_jack_det", i1 false, i1 false}
!1 = !{!"../sound/soc/codecs/da7219-aad.c", i32 46, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/codecs/da7219-aad.c", i32 851, i32 36}
!4 = !{ptr @da7219_aad_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../sound/soc/codecs/da7219-aad.c", i32 902, i32 2}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @da7219_aad_init.__key.2, !8, !"__key", i1 false, i1 false}
!8 = !{!"../sound/soc/codecs/da7219-aad.c", i32 903, i32 2}
!9 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/codecs/da7219-aad.c", i32 908, i32 8}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/codecs/da7219-aad.c", i32 910, i32 3}
!14 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @da7219_aad_init._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @da7219_aad_init._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @__ksymtab_da7219_aad_init, !21, !"__ksymtab_da7219_aad_init", i1 false, i1 false}
!21 = !{!"../sound/soc/codecs/da7219-aad.c", i32 921, i32 1}
!22 = !{ptr @__ksymtab_da7219_aad_exit, !23, !"__ksymtab_da7219_aad_exit", i1 false, i1 false}
!23 = !{!"../sound/soc/codecs/da7219-aad.c", i32 939, i32 1}
!24 = !{ptr @__ksymtab_da7219_aad_probe, !25, !"__ksymtab_da7219_aad_probe", i1 false, i1 false}
!25 = !{!"../sound/soc/codecs/da7219-aad.c", i32 963, i32 1}
!26 = !{ptr @__UNIQUE_ID_description295, !27, !"__UNIQUE_ID_description295", i1 false, i1 false}
!27 = !{!"../sound/soc/codecs/da7219-aad.c", i32 965, i32 1}
!28 = !{ptr @__UNIQUE_ID_author296, !29, !"__UNIQUE_ID_author296", i1 false, i1 false}
!29 = !{!"../sound/soc/codecs/da7219-aad.c", i32 966, i32 1}
!30 = !{ptr @__UNIQUE_ID_file297, !31, !"__UNIQUE_ID_file297", i1 false, i1 false}
!31 = !{!"../sound/soc/codecs/da7219-aad.c", i32 967, i32 1}
!32 = !{ptr @__UNIQUE_ID_license298, !31, !"__UNIQUE_ID_license298", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../sound/soc/codecs/da7219-aad.c", i32 84, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @da7219_aad_btn_det_work._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @da7219_aad_btn_det_work._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../sound/soc/codecs/da7219-aad.c", i32 129, i32 4}
!41 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @da7219_aad_hptest_work._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @da7219_aad_hptest_work._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/codecs/da7219-aad.c", i32 366, i32 2}
!46 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @da7219_aad_irq_thread.__UNIQUE_ID_ddebug294, !45, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!49 = !{ptr @.str.18, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../sound/soc/codecs/da7219-aad.c", i32 623, i32 44}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../sound/soc/codecs/da7219-aad.c", i32 633, i32 39}
!53 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../sound/soc/codecs/da7219-aad.c", i32 640, i32 39}
!55 = !{ptr @.str.21, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../sound/soc/codecs/da7219-aad.c", i32 644, i32 39}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../sound/soc/codecs/da7219-aad.c", i32 649, i32 39}
!59 = !{ptr @.str.23, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../sound/soc/codecs/da7219-aad.c", i32 655, i32 39}
!61 = !{ptr @.str.24, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../sound/soc/codecs/da7219-aad.c", i32 661, i32 43}
!63 = !{ptr @.str.25, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../sound/soc/codecs/da7219-aad.c", i32 667, i32 39}
!65 = !{ptr @.str.26, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../sound/soc/codecs/da7219-aad.c", i32 673, i32 39}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../sound/soc/codecs/da7219-aad.c", i32 678, i32 39}
!69 = !{ptr @.str.28, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../sound/soc/codecs/da7219-aad.c", i32 683, i32 39}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../sound/soc/codecs/da7219-aad.c", i32 688, i32 39}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../sound/soc/codecs/da7219-aad.c", i32 693, i32 39}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../sound/soc/codecs/da7219-aad.c", i32 698, i32 39}
!77 = !{ptr @.str.32, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../sound/soc/codecs/da7219-aad.c", i32 471, i32 3}
!79 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @da7219_aad_fw_micbias_pulse_lvl._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @da7219_aad_fw_micbias_pulse_lvl._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/codecs/da7219-aad.c", i32 495, i32 3}
!84 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @da7219_aad_fw_btn_cfg._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @da7219_aad_fw_btn_cfg._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../sound/soc/codecs/da7219-aad.c", i32 513, i32 3}
!89 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @da7219_aad_fw_mic_det_thr._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @da7219_aad_fw_mic_det_thr._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/codecs/da7219-aad.c", i32 539, i32 3}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @da7219_aad_fw_jack_ins_deb._entry, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @da7219_aad_fw_jack_ins_deb._entry_ptr, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../sound/soc/codecs/da7219-aad.c", i32 547, i32 19}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../sound/soc/codecs/da7219-aad.c", i32 549, i32 26}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../sound/soc/codecs/da7219-aad.c", i32 551, i32 26}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../sound/soc/codecs/da7219-aad.c", i32 553, i32 26}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../sound/soc/codecs/da7219-aad.c", i32 556, i32 3}
!107 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @da7219_aad_fw_jack_det_rate._entry, !106, !"_entry", i1 false, i1 false}
!109 = !{ptr @da7219_aad_fw_jack_det_rate._entry_ptr, !106, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.46, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/codecs/da7219-aad.c", i32 574, i32 3}
!112 = !{ptr @.str.47, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @da7219_aad_fw_jack_rem_deb._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @da7219_aad_fw_jack_rem_deb._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../sound/soc/codecs/da7219-aad.c", i32 592, i32 3}
!117 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @da7219_aad_fw_btn_avg._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @da7219_aad_fw_btn_avg._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.50, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/codecs/da7219-aad.c", i32 610, i32 3}
!122 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @da7219_aad_fw_adc_1bit_rpt._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @da7219_aad_fw_adc_1bit_rpt._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{i32 1, !"wchar_size", i32 2}
!126 = !{i32 1, !"min_enum_size", i32 4}
!127 = !{i32 8, !"branch-target-enforcement", i32 0}
!128 = !{i32 8, !"sign-return-address", i32 0}
!129 = !{i32 8, !"sign-return-address-all", i32 0}
!130 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!131 = !{i32 7, !"uwtable", i32 1}
!132 = !{i32 7, !"frame-pointer", i32 2}
!133 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!134 = !{i8 0, i8 2}
!135 = !{!"auto-init"}
!136 = !{i64 2148981983, i64 2148981988, i64 2148982001, i64 2148982045, i64 2148982079, i64 2148982100}
