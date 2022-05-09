; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/s5h1420.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/s5h1420.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+s5h1420_get_tuner_i2c_adapter\22, \22a\22\09"
module asm "\09.weak\09__crc_s5h1420_get_tuner_i2c_adapter\09\09\09\09"
module asm "\09.long\09__crc_s5h1420_get_tuner_i2c_adapter\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1420_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1420_get_tuner_i2c_adapter\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1420_get_tuner_i2c_adapter:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+s5h1420_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_s5h1420_attach\09\09\09\09"
module asm "\09.long\09__crc_s5h1420_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_s5h1420_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22s5h1420_attach\22\09\09\09\09\09"
module asm "__kstrtabns_s5h1420_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.i2c_algorithm = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.s5h1420_state = type { ptr, ptr, %struct.dvb_frontend, %struct.i2c_adapter, i8, i8, i32, i32, i32, i32, [256 x i8] }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.s5h1420_config = type { i8, i8 }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.dvb_diseqc_master_cmd = type { [6 x i8], i8 }
%struct.dvb_diseqc_slave_reply = type { [4 x i8], i8, i32 }

@__param_str_debug = internal constant [14 x i8] c"s5h1420.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [27 x i8] c"s5h1420.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [36 x i8] c"s5h1420.parm=debug:enable debugging\00", section ".modinfo", align 1
@__kstrtab_s5h1420_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1420_get_tuner_i2c_adapter = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1420_get_tuner_i2c_adapter = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1420_get_tuner_i2c_adapter to i32), ptr @__kstrtab_s5h1420_get_tuner_i2c_adapter, ptr @__kstrtabns_s5h1420_get_tuner_i2c_adapter }, section "___ksymtab+s5h1420_get_tuner_i2c_adapter", align 4
@s5h1420_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Samsung S5H1420/PnpNetwork PN1010 DVB-S\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 950000000, i32 -2144967296, i32 125000, i32 29500000, i32 1000000, i32 45000000, i32 0, i32 1775 }, [8 x i8] c"\05\00\00\00\00\00\00\00", ptr null, ptr @s5h1420_release, ptr null, ptr @s5h1420_init, ptr @s5h1420_sleep, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @s5h1420_set_frontend, ptr @s5h1420_get_tune_settings, ptr @s5h1420_get_frontend, ptr @s5h1420_read_status, ptr @s5h1420_read_ber, ptr @s5h1420_read_signal_strength, ptr null, ptr @s5h1420_read_ucblocks, ptr null, ptr @s5h1420_send_master_cmd, ptr @s5h1420_recv_slave_reply, ptr @s5h1420_send_burst, ptr @s5h1420_set_tone, ptr @s5h1420_set_voltage, ptr null, ptr null, ptr @s5h1420_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"S5H1420-PN1010 tuner I2C bus\00", [35 x i8] zeroinitializer }, align 32
@s5h1420_tuner_i2c_algo = internal constant { %struct.i2c_algorithm, [36 x i8] } { %struct.i2c_algorithm { ptr @s5h1420_tuner_i2c_tuner_xfer, ptr null, ptr null, ptr null, ptr @s5h1420_tuner_i2c_func, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@s5h1420_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013S5H1420/PN1010: tuner i2c bus could not be initialized\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"s5h1420_attach\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/media/dvb-frontends/s5h1420.c\00", [58 x i8] zeroinitializer }, align 32
@s5h1420_attach._entry_ptr = internal global ptr @s5h1420_attach._entry, section ".printk_index", align 4
@__kstrtab_s5h1420_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_s5h1420_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_s5h1420_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @s5h1420_attach to i32), ptr @__kstrtab_s5h1420_attach, ptr @__kstrtabns_s5h1420_attach }, section "___ksymtab+s5h1420_attach", align 4
@__UNIQUE_ID_description292 = internal constant [79 x i8] c"s5h1420.description=Samsung S5H1420/PnpNetwork PN1010 DVB-S Demodulator driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [52 x i8] c"s5h1420.author=Andrew de Quincey, Patrick Boettcher\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [49 x i8] c"s5h1420.file=drivers/media/dvb-frontends/s5h1420\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [20 x i8] c"s5h1420.license=GPL\00", section ".modinfo", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@s5h1420_tuner_i2c_tuner_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.3, i32 842, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: i2c xfer: num=%d is too big!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"s5h1420_tuner_i2c_tuner_xfer\00", [35 x i8] zeroinitializer }, align 32
@s5h1420_tuner_i2c_tuner_xfer._entry_ptr = internal global ptr @s5h1420_tuner_i2c_tuner_xfer._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"s5h1420\00", [24 x i8] zeroinitializer }, align 32
@s5h1420_writereg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 105, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\017S5H1420: %s: writereg error (err == %i, reg == 0x%02x, data == 0x%02x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1420_writereg\00", [47 x i8] zeroinitializer }, align 32
@s5h1420_writereg._entry_ptr = internal global ptr @s5h1420_writereg._entry, section ".printk_index", align 4
@s5h1420_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 458, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\017S5H1420: %s\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"s5h1420_reset\00", [18 x i8] zeroinitializer }, align 32
@s5h1420_reset._entry_ptr = internal global ptr @s5h1420_reset._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@s5h1420_set_frontend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.3, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017S5H1420: enter %s\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"s5h1420_set_frontend\00", [43 x i8] zeroinitializer }, align 32
@s5h1420_set_frontend._entry_ptr = internal global ptr @s5h1420_set_frontend._entry, section ".printk_index", align 4
@s5h1420_set_frontend._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.3, i32 658, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017S5H1420: simple tune\0A\00", [40 x i8] zeroinitializer }, align 32
@s5h1420_set_frontend._entry_ptr.15 = internal global ptr @s5h1420_set_frontend._entry.13, section ".printk_index", align 4
@s5h1420_set_frontend._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.12, ptr @.str.3, i32 661, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017S5H1420: tuning demod\0A\00", [39 x i8] zeroinitializer }, align 32
@s5h1420_set_frontend._entry_ptr.18 = internal global ptr @s5h1420_set_frontend._entry.16, section ".printk_index", align 4
@s5h1420_set_frontend._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.12, ptr @.str.3, i32 678, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017S5H1420: pll01: %d, ToneFreq: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@s5h1420_set_frontend._entry_ptr.21 = internal global ptr @s5h1420_set_frontend._entry.19, section ".printk_index", align 4
@s5h1420_set_frontend._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.3, i32 741, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017S5H1420: leave %s\0A\00", [43 x i8] zeroinitializer }, align 32
@s5h1420_set_frontend._entry_ptr.24 = internal global ptr @s5h1420_set_frontend._entry.22, section ".printk_index", align 4
@s5h1420_setfreqoffset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.25, ptr @.str.3, i32 498, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5h1420_setfreqoffset\00", [42 x i8] zeroinitializer }, align 32
@s5h1420_setfreqoffset._entry_ptr = internal global ptr @s5h1420_setfreqoffset._entry, section ".printk_index", align 4
@s5h1420_setfreqoffset._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.3, i32 504, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017S5H1420: phase rotator/freqoffset: %d %06x\0A\00", [50 x i8] zeroinitializer }, align 32
@s5h1420_setfreqoffset._entry_ptr.28 = internal global ptr @s5h1420_setfreqoffset._entry.26, section ".printk_index", align 4
@s5h1420_setfreqoffset._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.25, ptr @.str.3, i32 512, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5h1420_setfreqoffset._entry_ptr.30 = internal global ptr @s5h1420_setfreqoffset._entry.29, section ".printk_index", align 4
@s5h1420_setsymbolrate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.31, ptr @.str.3, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"s5h1420_setsymbolrate\00", [42 x i8] zeroinitializer }, align 32
@s5h1420_setsymbolrate._entry_ptr = internal global ptr @s5h1420_setsymbolrate._entry, section ".printk_index", align 4
@s5h1420_setsymbolrate._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.3, i32 477, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\017S5H1420: symbol rate register: %06llx\0A\00", [55 x i8] zeroinitializer }, align 32
@s5h1420_setsymbolrate._entry_ptr.34 = internal global ptr @s5h1420_setsymbolrate._entry.32, section ".printk_index", align 4
@s5h1420_setsymbolrate._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.31, ptr @.str.3, i32 485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5h1420_setsymbolrate._entry_ptr.36 = internal global ptr @s5h1420_setsymbolrate._entry.35, section ".printk_index", align 4
@s5h1420_setfec_inversion._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.37, ptr @.str.3, i32 541, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s5h1420_setfec_inversion\00", [39 x i8] zeroinitializer }, align 32
@s5h1420_setfec_inversion._entry_ptr = internal global ptr @s5h1420_setfec_inversion._entry, section ".printk_index", align 4
@s5h1420_setfec_inversion._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.3, i32 588, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017S5H1420: fec: %02x %02x\0A\00", [37 x i8] zeroinitializer }, align 32
@s5h1420_setfec_inversion._entry_ptr.40 = internal global ptr @s5h1420_setfec_inversion._entry.38, section ".printk_index", align 4
@s5h1420_setfec_inversion._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.37, ptr @.str.3, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5h1420_setfec_inversion._entry_ptr.42 = internal global ptr @s5h1420_setfec_inversion._entry.41, section ".printk_index", align 4
@s5h1420_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.43, ptr @.str.3, i32 326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5h1420_read_status\00", [44 x i8] zeroinitializer }, align 32
@s5h1420_read_status._entry_ptr = internal global ptr @s5h1420_read_status._entry, section ".printk_index", align 4
@s5h1420_read_status._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.3, i32 365, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013s5h1420: avoided division by 0\0A\00", [62 x i8] zeroinitializer }, align 32
@s5h1420_read_status._entry_ptr.46 = internal global ptr @s5h1420_read_status._entry.44, section ".printk_index", align 4
@s5h1420_read_status._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.43, ptr @.str.3, i32 388, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017S5H1420: for MPEG_CLK_INTL %d %x\0A\00", [60 x i8] zeroinitializer }, align 32
@s5h1420_read_status._entry_ptr.49 = internal global ptr @s5h1420_read_status._entry.47, section ".printk_index", align 4
@s5h1420_read_status._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.43, ptr @.str.3, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5h1420_read_status._entry_ptr.51 = internal global ptr @s5h1420_read_status._entry.50, section ".printk_index", align 4
@s5h1420_send_master_cmd._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.52, ptr @.str.3, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"s5h1420_send_master_cmd\00", [40 x i8] zeroinitializer }, align 32
@s5h1420_send_master_cmd._entry_ptr = internal global ptr @s5h1420_send_master_cmd._entry, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@s5h1420_send_master_cmd._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.52, ptr @.str.3, i32 202, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5h1420_send_master_cmd._entry_ptr.54 = internal global ptr @s5h1420_send_master_cmd._entry.53, section ".printk_index", align 4
@s5h1420_set_tone._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.55, ptr @.str.3, i32 144, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"s5h1420_set_tone\00", [47 x i8] zeroinitializer }, align 32
@s5h1420_set_tone._entry_ptr = internal global ptr @s5h1420_set_tone._entry, section ".printk_index", align 4
@s5h1420_set_tone._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.55, ptr @.str.3, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5h1420_set_tone._entry_ptr.57 = internal global ptr @s5h1420_set_tone._entry.56, section ".printk_index", align 4
@s5h1420_set_voltage._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.58, ptr @.str.3, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"s5h1420_set_voltage\00", [44 x i8] zeroinitializer }, align 32
@s5h1420_set_voltage._entry_ptr = internal global ptr @s5h1420_set_voltage._entry, section ".printk_index", align 4
@s5h1420_set_voltage._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.58, ptr @.str.3, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@s5h1420_set_voltage._entry_ptr.60 = internal global ptr @s5h1420_set_voltage._entry.59, section ".printk_index", align 4
@switch.table.s5h1420_set_frontend = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\10\11\12\10\13\14\15", [25 x i8] zeroinitializer }, align 32
@switch.table.s5h1420_set_frontend.61 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01\02\04\01\08\10 ", [25 x i8] zeroinitializer }, align 32
@switch.table.s5h1420_get_frontend = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 1, i32 2, i32 3, i32 5, i32 6, i32 7], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.62 = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.63 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 56, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"s5h1420_ops\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 923, i32 38 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 905, i32 41 }
@___asan_gen_.74 = private unnamed_addr constant [23 x i8] c"s5h1420_tuner_i2c_algo\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 857, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 911, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 840, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 105, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 458, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 635, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 658, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 661, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 678, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 741, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 498, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 504, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 512, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 470, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 477, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 485, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 541, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 588, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 591, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 326, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 365, i32 4 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 388, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 416, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 170, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 202, i32 2 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 144, i32 2 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 156, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 118, i32 2 }
@___asan_gen_.242 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private constant [41 x i8] c"../drivers/media/dvb-frontends/s5h1420.c\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.243, i32 135, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant [34 x i8] c"switch.table.s5h1420_set_frontend\00", align 1
@___asan_gen_.246 = private unnamed_addr constant [37 x i8] c"switch.table.s5h1420_set_frontend.61\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [34 x i8] c"switch.table.s5h1420_get_frontend\00", align 1
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_s5h1420_attach, ptr @__ksymtab_s5h1420_get_tuner_i2c_adapter, ptr @__param_debug, ptr @s5h1420_attach._entry, ptr @s5h1420_attach._entry_ptr, ptr @s5h1420_read_status._entry, ptr @s5h1420_read_status._entry.44, ptr @s5h1420_read_status._entry.47, ptr @s5h1420_read_status._entry.50, ptr @s5h1420_read_status._entry_ptr, ptr @s5h1420_read_status._entry_ptr.46, ptr @s5h1420_read_status._entry_ptr.49, ptr @s5h1420_read_status._entry_ptr.51, ptr @s5h1420_reset._entry, ptr @s5h1420_reset._entry_ptr, ptr @s5h1420_send_master_cmd._entry, ptr @s5h1420_send_master_cmd._entry.53, ptr @s5h1420_send_master_cmd._entry_ptr, ptr @s5h1420_send_master_cmd._entry_ptr.54, ptr @s5h1420_set_frontend._entry, ptr @s5h1420_set_frontend._entry.13, ptr @s5h1420_set_frontend._entry.16, ptr @s5h1420_set_frontend._entry.19, ptr @s5h1420_set_frontend._entry.22, ptr @s5h1420_set_frontend._entry_ptr, ptr @s5h1420_set_frontend._entry_ptr.15, ptr @s5h1420_set_frontend._entry_ptr.18, ptr @s5h1420_set_frontend._entry_ptr.21, ptr @s5h1420_set_frontend._entry_ptr.24, ptr @s5h1420_set_tone._entry, ptr @s5h1420_set_tone._entry.56, ptr @s5h1420_set_tone._entry_ptr, ptr @s5h1420_set_tone._entry_ptr.57, ptr @s5h1420_set_voltage._entry, ptr @s5h1420_set_voltage._entry.59, ptr @s5h1420_set_voltage._entry_ptr, ptr @s5h1420_set_voltage._entry_ptr.60, ptr @s5h1420_setfec_inversion._entry, ptr @s5h1420_setfec_inversion._entry.38, ptr @s5h1420_setfec_inversion._entry.41, ptr @s5h1420_setfec_inversion._entry_ptr, ptr @s5h1420_setfec_inversion._entry_ptr.40, ptr @s5h1420_setfec_inversion._entry_ptr.42, ptr @s5h1420_setfreqoffset._entry, ptr @s5h1420_setfreqoffset._entry.26, ptr @s5h1420_setfreqoffset._entry.29, ptr @s5h1420_setfreqoffset._entry_ptr, ptr @s5h1420_setfreqoffset._entry_ptr.28, ptr @s5h1420_setfreqoffset._entry_ptr.30, ptr @s5h1420_setsymbolrate._entry, ptr @s5h1420_setsymbolrate._entry.32, ptr @s5h1420_setsymbolrate._entry.35, ptr @s5h1420_setsymbolrate._entry_ptr, ptr @s5h1420_setsymbolrate._entry_ptr.34, ptr @s5h1420_setsymbolrate._entry_ptr.36, ptr @s5h1420_tuner_i2c_tuner_xfer._entry, ptr @s5h1420_tuner_i2c_tuner_xfer._entry_ptr, ptr @s5h1420_writereg._entry, ptr @s5h1420_writereg._entry_ptr, ptr @debug, ptr @s5h1420_ops, ptr @.str, ptr @s5h1420_tuner_i2c_algo, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.31, ptr @.str.33, ptr @.str.37, ptr @.str.39, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @switch.table.s5h1420_set_frontend, ptr @switch.table.s5h1420_set_frontend.61, ptr @switch.table.s5h1420_get_frontend], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_tuner_i2c_algo to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_tuner_i2c_tuner_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_writereg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_frontend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_frontend._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_frontend._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_frontend._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_frontend._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setfreqoffset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setfreqoffset._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setfreqoffset._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setsymbolrate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setsymbolrate._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setsymbolrate._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setfec_inversion._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setfec_inversion._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_setfec_inversion._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_read_status._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_read_status._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_read_status._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_send_master_cmd._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_send_master_cmd._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_tone._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_tone._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_voltage._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s5h1420_set_voltage._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5h1420_set_frontend to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5h1420_set_frontend.61 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.s5h1420_get_frontend to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @s5h1420_get_tuner_i2c_adapter(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %tuner_i2c_adapter = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 3
  ret ptr %tuner_i2c_adapter
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @s5h1420_attach(ptr noundef %config, ptr noundef %i2c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2688) #12
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.error_crit_edge, label %if.end

entry.error_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end:                                           ; preds = %entry
  %config1 = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config1, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %postlocked = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 5
  %3 = ptrtoint ptr %postlocked to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %postlocked, align 1
  %bf.clear = and i8 %bf.load, 127
  store i8 %bf.clear, ptr %postlocked, align 1
  %fclk = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 6
  %4 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 88000000, ptr %fclk, align 4
  %tunedfreq = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 7
  %5 = ptrtoint ptr %tunedfreq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %tunedfreq, align 8
  %fec_inner = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 8
  %6 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fec_inner, align 4
  %symbol_rate = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 9
  %7 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %symbol_rate, align 8
  %call3 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext 0)
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %call3)
  %cmp4.not = icmp eq i8 %call3, 3
  br i1 %cmp4.not, label %if.end7, label %if.end.error_crit_edge

if.end.error_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end7:                                          ; preds = %if.end
  %shadow = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 10
  %8 = call ptr @memset(ptr %shadow, i32 255, i32 256)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end7
  %indvars.iv = phi i32 [ 0, %if.end7 ], [ %indvars.iv.next, %for.body.for.body_crit_edge ]
  %9 = trunc i32 %indvars.iv to i8
  %call11 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef nonnull %call7.i.i, i8 noundef zeroext %9)
  %arrayidx = getelementptr %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 10, i32 %indvars.iv
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %call11, ptr %arrayidx, align 1
  %indvars.iv.next = add nuw nsw i32 %indvars.iv, 1
  %exitcond.not = icmp eq i32 %indvars.iv.next, 80
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body
  %ops = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %11 = call ptr @memcpy(ptr %ops, ptr @s5h1420_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  %tuner_i2c_adapter = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 3
  %name = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 3, i32 12
  %call15 = tail call i32 @strscpy(ptr noundef %name, ptr noundef nonnull @.str, i32 noundef 48) #9
  %algo = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @s5h1420_tuner_i2c_algo, ptr %algo, align 8
  %algo_data = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 3, i32 3
  %14 = ptrtoint ptr %algo_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %algo_data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 3, i32 9, i32 8
  %15 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call20 = tail call i32 @i2c_add_adapter(ptr noundef %tuner_i2c_adapter) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %cmp21 = icmp slt i32 %call20, 0
  br i1 %cmp21, label %do.end, label %if.end25

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #13
  br label %error

if.end25:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %frontend = getelementptr inbounds %struct.s5h1420_state, ptr %call7.i.i, i32 0, i32 2
  br label %cleanup

error:                                            ; preds = %do.end, %if.end.error_crit_edge, %entry.error_crit_edge
  tail call void @kfree(ptr noundef %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end25
  %retval.0 = phi ptr [ null, %error ], [ %frontend, %if.end25 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @s5h1420_readreg(ptr nocapture noundef readonly %state, i8 noundef zeroext %reg) unnamed_addr #2 align 64 {
entry:
  %reg.addr = alloca i8, align 1
  %b = alloca [2 x i8], align 1
  %msg = alloca [3 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %reg.addr to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %reg, ptr %reg.addr, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %b) #9
  %1 = getelementptr inbounds [2 x i8], ptr %b, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %msg) #9
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 28)
  %config = getelementptr inbounds %struct.s5h1420_state, ptr %state, i32 0, i32 1
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %config, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 1
  %conv = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %b, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %12 = load i8, ptr %5, align 1
  %conv4 = zext i8 %12 to i16
  %13 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv4, ptr %arrayinit.element, align 4
  %flags5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %14 = ptrtoint ptr %flags5 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags5, align 2
  %len6 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %15 = ptrtoint ptr %len6 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %len6, align 4
  %buf7 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %16 = ptrtoint ptr %buf7 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %reg.addr, ptr %buf7, align 4
  %arrayinit.element8 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 2
  %17 = load i8, ptr %5, align 1
  %conv12 = zext i8 %17 to i16
  %18 = ptrtoint ptr %arrayinit.element8 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv12, ptr %arrayinit.element8, align 4
  %flags13 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 2, i32 1
  %19 = ptrtoint ptr %flags13 to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 1, ptr %flags13, align 2
  %len14 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 2, i32 2
  %20 = ptrtoint ptr %len14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %len14, align 4
  %buf15 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 2, i32 3
  %21 = ptrtoint ptr %buf15 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %b, ptr %buf15, align 4
  %22 = add i8 %reg, -1
  %23 = ptrtoint ptr %b to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %b, align 1
  %and21 = zext i8 %22 to i32
  %arrayidx22 = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 %and21
  %24 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22, align 1
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %1, align 1
  %repeated_start_workaround = getelementptr inbounds %struct.s5h1420_config, ptr %5, i32 0, i32 1
  %27 = ptrtoint ptr %repeated_start_workaround to i32
  call void @__asan_load1_noabort(i32 %27)
  %bf.load = load i8, ptr %repeated_start_workaround, align 1
  %28 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not = icmp eq i8 %28, 0
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg, i32 noundef 3) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp.not = icmp eq i32 %call, 3
  br i1 %cmp.not, label %if.then.if.end45_crit_edge, label %if.then27

if.then.if.end45_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then27:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %conv28 = trunc i32 %call to i8
  br label %cleanup

if.else:                                          ; preds = %entry
  %call31 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef %arrayinit.element, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp32.not = icmp eq i32 %call31, 1
  br i1 %cmp32.not, label %if.end36, label %if.then34

if.then34:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %conv35 = trunc i32 %call31 to i8
  br label %cleanup

if.end36:                                         ; preds = %if.else
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state, align 8
  %call39 = call i32 @i2c_transfer(ptr noundef %32, ptr noundef %arrayinit.element8, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp40.not = icmp eq i32 %call39, 1
  br i1 %cmp40.not, label %if.end36.if.end45_crit_edge, label %if.then42

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then42:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %conv43 = trunc i32 %call39 to i8
  br label %cleanup

if.end45:                                         ; preds = %if.end36.if.end45_crit_edge, %if.then.if.end45_crit_edge
  %33 = ptrtoint ptr %b to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %b, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then42, %if.then34, %if.then27
  %retval.0 = phi i8 [ %conv28, %if.then27 ], [ %34, %if.end45 ], [ %conv35, %if.then34 ], [ %conv43, %if.then42 ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %msg) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %b) #9
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_tuner_i2c_tuner_xfer(ptr nocapture noundef readonly %i2c_adap, ptr nocapture noundef readonly %msg, i32 noundef %num) #2 align 64 {
entry:
  %m = alloca [3 x %struct.i2c_msg], align 4
  %tx_open = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c_adap, i32 0, i32 9, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %m) #9
  %2 = call ptr @memset(ptr %m, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tx_open) #9
  %3 = getelementptr inbounds [2 x i8], ptr %tx_open, i32 0, i32 1
  %4 = ptrtoint ptr %tx_open to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %tx_open, align 1
  %CON_1_val = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %CON_1_val to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %CON_1_val, align 8
  %7 = or i8 %6, 1
  %8 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %3, align 1
  %add = add i32 %num, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %add)
  %cmp = icmp ugt i32 %add, 3
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.6, i32 noundef %num) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw nsw i32 %add, 12
  %9 = call ptr @memset(ptr %m, i32 0, i32 %mul)
  %config = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv5 = zext i8 %13 to i16
  %14 = ptrtoint ptr %m to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv5, ptr %m, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %m, i32 0, i32 3
  %15 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tx_open, ptr %buf, align 4
  %len = getelementptr inbounds %struct.i2c_msg, ptr %m, i32 0, i32 2
  %16 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len, align 4
  %arrayidx9 = getelementptr inbounds [3 x %struct.i2c_msg], ptr %m, i32 0, i32 1
  %mul10 = mul nsw i32 %num, 12
  %17 = call ptr @memcpy(ptr %arrayidx9, ptr %msg, i32 %mul10)
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call13 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %m, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call13, i32 %add)
  %cmp15 = icmp eq i32 %call13, %add
  %spec.select = select i1 %cmp15, i32 %num, i32 -5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ -95, %do.end ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tx_open) #9
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %m) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1420_tuner_i2c_func(ptr nocapture noundef readnone %adapter) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @s5h1420_release(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %tuner_i2c_adapter = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 3
  tail call void @i2c_del_adapter(ptr noundef %tuner_i2c_adapter) #9
  tail call void @kfree(ptr noundef %1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_init(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %config = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %config, align 4
  %serial_mpeg = getelementptr inbounds %struct.s5h1420_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %serial_mpeg to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %serial_mpeg, align 1
  %bf.clear = and i8 %bf.load, 16
  %CON_1_val = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %CON_1_val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %bf.clear, ptr %CON_1_val, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %bf.clear, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf1.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %bf.clear to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 2, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 2
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %bf.clear, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @msleep(i32 noundef 10) #9
  call fastcc void @s5h1420_reset(ptr noundef %1)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_sleep(ptr nocapture noundef readonly %fe) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %CON_1_val = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %CON_1_val to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 18, ptr %CON_1_val, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %3 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 2, ptr %buf.i, align 1
  %5 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 18, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 196607, ptr %6, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %config.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 1
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf1.i, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 2, i32 noundef 18) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 2
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 18, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ -121, %do.end.i ], [ -121, %do.body.i.s5h1420_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_set_frontend(ptr noundef %fe) #2 align 64 {
entry:
  %buf.i747 = alloca [2 x i8], align 1
  %msg.i748 = alloca %struct.i2c_msg, align 4
  %buf.i78.i = alloca [2 x i8], align 1
  %msg.i79.i = alloca %struct.i2c_msg, align 4
  %buf.i.i725 = alloca [2 x i8], align 1
  %msg.i.i726 = alloca %struct.i2c_msg, align 4
  %buf.i383.i = alloca [2 x i8], align 1
  %msg.i384.i = alloca %struct.i2c_msg, align 4
  %buf.i365.i = alloca [2 x i8], align 1
  %msg.i366.i = alloca %struct.i2c_msg, align 4
  %buf.i347.i = alloca [2 x i8], align 1
  %msg.i348.i = alloca %struct.i2c_msg, align 4
  %buf.i329.i = alloca [2 x i8], align 1
  %msg.i330.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i702 = alloca [2 x i8], align 1
  %msg.i703 = alloca %struct.i2c_msg, align 4
  %buf.i685 = alloca [2 x i8], align 1
  %msg.i686 = alloca %struct.i2c_msg, align 4
  %buf.i668 = alloca [2 x i8], align 1
  %msg.i669 = alloca %struct.i2c_msg, align 4
  %buf.i651 = alloca [2 x i8], align 1
  %msg.i652 = alloca %struct.i2c_msg, align 4
  %buf.i634 = alloca [2 x i8], align 1
  %msg.i635 = alloca %struct.i2c_msg, align 4
  %buf.i616 = alloca [2 x i8], align 1
  %msg.i617 = alloca %struct.i2c_msg, align 4
  %buf.i599 = alloca [2 x i8], align 1
  %msg.i600 = alloca %struct.i2c_msg, align 4
  %buf.i582 = alloca [2 x i8], align 1
  %msg.i583 = alloca %struct.i2c_msg, align 4
  %buf.i565 = alloca [2 x i8], align 1
  %msg.i566 = alloca %struct.i2c_msg, align 4
  %buf.i548 = alloca [2 x i8], align 1
  %msg.i549 = alloca %struct.i2c_msg, align 4
  %buf.i531 = alloca [2 x i8], align 1
  %msg.i532 = alloca %struct.i2c_msg, align 4
  %buf.i514 = alloca [2 x i8], align 1
  %msg.i515 = alloca %struct.i2c_msg, align 4
  %buf.i497 = alloca [2 x i8], align 1
  %msg.i498 = alloca %struct.i2c_msg, align 4
  %buf.i480 = alloca [2 x i8], align 1
  %msg.i481 = alloca %struct.i2c_msg, align 4
  %buf.i463 = alloca [2 x i8], align 1
  %msg.i464 = alloca %struct.i2c_msg, align 4
  %buf.i446 = alloca [2 x i8], align 1
  %msg.i447 = alloca %struct.i2c_msg, align 4
  %buf.i429 = alloca [2 x i8], align 1
  %msg.i430 = alloca %struct.i2c_msg, align 4
  %buf.i412 = alloca [2 x i8], align 1
  %msg.i413 = alloca %struct.i2c_msg, align 4
  %buf.i395 = alloca [2 x i8], align 1
  %msg.i396 = alloca %struct.i2c_msg, align 4
  %buf.i378 = alloca [2 x i8], align 1
  %msg.i379 = alloca %struct.i2c_msg, align 4
  %buf.i361 = alloca [2 x i8], align 1
  %msg.i362 = alloca %struct.i2c_msg, align 4
  %buf.i344 = alloca [2 x i8], align 1
  %msg.i345 = alloca %struct.i2c_msg, align 4
  %buf.i326 = alloca [2 x i8], align 1
  %msg.i327 = alloca %struct.i2c_msg, align 4
  %buf.i309 = alloca [2 x i8], align 1
  %msg.i310 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  %tmp35 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %symbol_rate.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %3 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %symbol_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %4)
  %cmp.i = icmp ugt i32 %4, 20000000
  br i1 %cmp.i, label %do.end3.s5h1420_get_tune_settings.exit_crit_edge, label %if.else.i

do.end3.s5h1420_get_tune_settings.exit_crit_edge: ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_get_tune_settings.exit

if.else.i:                                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %4)
  %cmp2.i = icmp ugt i32 %4, 12000000
  br i1 %cmp2.i, label %if.else.i.s5h1420_get_tune_settings.exit_crit_edge, label %if.else7.i

if.else.i.s5h1420_get_tune_settings.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_get_tune_settings.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %4)
  %cmp9.i = icmp ugt i32 %4, 8000000
  br i1 %cmp9.i, label %if.else7.i.s5h1420_get_tune_settings.exit_crit_edge, label %if.else14.i

if.else7.i.s5h1420_get_tune_settings.exit_crit_edge: ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_get_tune_settings.exit

if.else14.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %4)
  %cmp16.i = icmp ugt i32 %4, 4000000
  br i1 %cmp16.i, label %if.else14.i.s5h1420_get_tune_settings.exit_crit_edge, label %if.else21.i

if.else14.i.s5h1420_get_tune_settings.exit_crit_edge: ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_get_tune_settings.exit

if.else21.i:                                      ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %4)
  %cmp23.i = icmp ugt i32 %4, 2000000
  %div.i = udiv i32 %4, 8000
  br i1 %cmp23.i, label %if.then24.i, label %if.else30.i

if.then24.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul.i = mul nuw nsw i32 %div.i, 14
  br label %s5h1420_get_tune_settings.exit

if.else30.i:                                      ; preds = %if.else21.i
  call void @__sanitizer_cov_trace_pc() #11
  %mul36.i = mul nuw nsw i32 %div.i, 18
  br label %s5h1420_get_tune_settings.exit

s5h1420_get_tune_settings.exit:                   ; preds = %if.else30.i, %if.then24.i, %if.else14.i.s5h1420_get_tune_settings.exit_crit_edge, %if.else7.i.s5h1420_get_tune_settings.exit_crit_edge, %if.else.i.s5h1420_get_tune_settings.exit_crit_edge, %do.end3.s5h1420_get_tune_settings.exit_crit_edge
  %.sink.i = phi i32 [ %mul36.i, %if.else30.i ], [ %mul.i, %if.then24.i ], [ 8000, %do.end3.s5h1420_get_tune_settings.exit_crit_edge ], [ 9000, %if.else.i.s5h1420_get_tune_settings.exit_crit_edge ], [ 8000, %if.else7.i.s5h1420_get_tune_settings.exit_crit_edge ], [ 7000, %if.else14.i.s5h1420_get_tune_settings.exit_crit_edge ]
  %5 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dtv_property_cache, align 4
  %tunedfreq = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %tunedfreq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tunedfreq, align 8
  %sub = sub i32 %6, %8
  %sub5 = sub nsw i32 0, %.sink.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub5)
  %cmp = icmp sle i32 %sub, %sub5
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %.sink.i)
  %cmp7 = icmp sge i32 %sub, %.sink.i
  %or.cond.not = or i1 %cmp, %cmp7
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp9.not = icmp eq i32 %6, %8
  %or.cond308 = select i1 %or.cond.not, i1 true, i1 %cmp9.not
  br i1 %or.cond308, label %s5h1420_get_tune_settings.exit.do.body63_crit_edge, label %land.lhs.true10

s5h1420_get_tune_settings.exit.do.body63_crit_edge: ; preds = %s5h1420_get_tune_settings.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

land.lhs.true10:                                  ; preds = %s5h1420_get_tune_settings.exit
  %fec_inner = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %fec_inner to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fec_inner, align 4
  %fec_inner11 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %11 = ptrtoint ptr %fec_inner11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fec_inner11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp12 = icmp eq i32 %10, %12
  br i1 %cmp12, label %land.lhs.true13, label %land.lhs.true10.do.body63_crit_edge

land.lhs.true10.do.body63_crit_edge:              ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %symbol_rate = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 9
  %13 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %symbol_rate, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %4)
  %cmp15 = icmp eq i32 %14, %4
  br i1 %cmp15, label %if.then16, label %land.lhs.true13.do.body63_crit_edge

land.lhs.true13.do.body63_crit_edge:              ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body63

if.then16:                                        ; preds = %land.lhs.true13
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %15 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %set_params, align 4
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %if.then16.if.end30_crit_edge, label %if.then18

if.then16.if.end30_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then18:                                        ; preds = %if.then16
  %call22 = tail call i32 %16(ptr noundef %fe) #9
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %17 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool24.not = icmp eq ptr %18, null
  br i1 %tobool24.not, label %if.then18.if.end30_crit_edge, label %if.then25

if.then18.if.end30_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end30

if.then25:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %call28 = tail call i32 %18(ptr noundef %fe, i32 noundef 0) #9
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.then18.if.end30_crit_edge, %if.then16.if.end30_crit_edge
  %get_frequency = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 9
  %19 = ptrtoint ptr %get_frequency to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %get_frequency, align 4
  %tobool33.not = icmp eq ptr %20, null
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp35) #9
  %21 = ptrtoint ptr %tmp35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %tmp35, align 4, !annotation !146
  %call39 = call i32 %20(ptr noundef %fe, ptr noundef nonnull %tmp35) #9
  %i2c_gate_ctrl41 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %22 = ptrtoint ptr %i2c_gate_ctrl41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c_gate_ctrl41, align 4
  %tobool42.not = icmp eq ptr %23, null
  br i1 %tobool42.not, label %if.then34.if.end47_crit_edge, label %if.then43

if.then34.if.end47_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then43:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  %call46 = call i32 %23(ptr noundef %fe, i32 noundef 0) #9
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %if.then34.if.end47_crit_edge
  %24 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtv_property_cache, align 4
  %26 = ptrtoint ptr %tmp35 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp35, align 4
  %sub49 = sub i32 %25, %27
  call fastcc void @s5h1420_setfreqoffset(ptr noundef %1, i32 noundef %sub49)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp35) #9
  br label %do.body51

if.else:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @s5h1420_setfreqoffset(ptr noundef %1, i32 noundef 0)
  br label %do.body51

do.body51:                                        ; preds = %if.else, %if.end47
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool52.not = icmp eq i32 %28, 0
  br i1 %tobool52.not, label %do.body51.cleanup_crit_edge, label %do.end56

do.body51.cleanup_crit_edge:                      ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end56:                                         ; preds = %do.body51
  call void @__sanitizer_cov_trace_pc() #11
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup

do.body63:                                        ; preds = %land.lhs.true13.do.body63_crit_edge, %land.lhs.true10.do.body63_crit_edge, %s5h1420_get_tune_settings.exit.do.body63_crit_edge
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool64.not = icmp eq i32 %29, 0
  br i1 %tobool64.not, label %do.body63.do.end73_crit_edge, label %do.end68

do.body63.do.end73_crit_edge:                     ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end73

do.end68:                                         ; preds = %do.body63
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17) #13
  br label %do.end73

do.end73:                                         ; preds = %do.end68, %do.body63.do.end73_crit_edge
  tail call fastcc void @s5h1420_reset(ptr noundef %1)
  %30 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %symbol_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33000000, i32 %31)
  %cmp75 = icmp ugt i32 %31, 33000000
  br i1 %cmp75, label %if.then76, label %if.else77

if.then76:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_pc() #11
  %fclk = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  %32 = ptrtoint ptr %fclk to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 80000000, ptr %fclk, align 4
  br label %do.body98

if.else77:                                        ; preds = %do.end73
  call void @__sanitizer_cov_trace_const_cmp4(i32 28500000, i32 %31)
  %cmp79 = icmp ugt i32 %31, 28500000
  br i1 %cmp79, label %if.then80, label %if.else82

if.then80:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_pc() #11
  %fclk81 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %fclk81 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 59000000, ptr %fclk81, align 4
  br label %do.body98

if.else82:                                        ; preds = %if.else77
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %31)
  %cmp84 = icmp ugt i32 %31, 25000000
  br i1 %cmp84, label %if.then85, label %if.else87

if.then85:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_pc() #11
  %fclk86 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  %34 = ptrtoint ptr %fclk86 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 86000000, ptr %fclk86, align 4
  br label %do.body98

if.else87:                                        ; preds = %if.else82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900000, i32 %31)
  %cmp89 = icmp ugt i32 %31, 1900000
  %fclk91 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  br i1 %cmp89, label %if.then90, label %if.else92

if.then90:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #11
  %35 = ptrtoint ptr %fclk91 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 88000000, ptr %fclk91, align 4
  br label %do.body98

if.else92:                                        ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %fclk91 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 44000000, ptr %fclk91, align 4
  br label %do.body98

do.body98:                                        ; preds = %if.else92, %if.then90, %if.then85, %if.then80, %if.then76
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool99.not = icmp eq i32 %37, 0
  br i1 %tobool99.not, label %do.body98.do.end113_crit_edge, label %do.end103

do.body98.do.end113_crit_edge:                    ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end113

do.end103:                                        ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #11
  %fclk105 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  %38 = ptrtoint ptr %fclk105 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %fclk105, align 4
  %div = udiv i32 %39, 1000000
  %sub106 = add nsw i32 %div, -8
  %sub108 = add i32 %39, 703999
  %div109 = udiv i32 %sub108, 704000
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %sub106, i32 noundef %div109) #13
  br label %do.end113

do.end113:                                        ; preds = %do.end103, %do.body98.do.end113_crit_edge
  %fclk114 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  %40 = ptrtoint ptr %fclk114 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %fclk114, align 4
  %div115 = udiv i32 %41, 1000000
  %42 = trunc i32 %div115 to i8
  %conv = add i8 %42, -8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %43 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %44 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 3, ptr %buf.i, align 1
  %45 = ptrtoint ptr %43 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv, ptr %43, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %46 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %46, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %48 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %config.i, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %49, align 1
  %conv.i = zext i8 %51 to i16
  %52 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %46, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %54 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %buf.i, ptr %buf1.i, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %56, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %do.end113
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool.not.i = icmp eq i32 %57, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %conv to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 3, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %do.end113
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 3
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %conv, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i309) #9
  %59 = getelementptr inbounds [2 x i8], ptr %buf.i309, i32 0, i32 1
  %60 = ptrtoint ptr %buf.i309 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 4, ptr %buf.i309, align 1
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 64, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i310) #9
  %62 = getelementptr inbounds i8, ptr %msg.i310, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 -1, ptr %62, align 4
  %64 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 1
  %conv.i312 = zext i8 %67 to i16
  %68 = ptrtoint ptr %msg.i310 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i312, ptr %msg.i310, align 4
  %flags.i313 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i313 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i313, align 2
  store i16 2, ptr %62, align 4
  %buf1.i315 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i310, i32 0, i32 3
  %70 = ptrtoint ptr %buf1.i315 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i309, ptr %buf1.i315, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %call.i316 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i310, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i316)
  %cmp.not.i317 = icmp eq i32 %call.i316, 1
  br i1 %cmp.not.i317, label %if.end10.i323, label %do.body.i319

do.body.i319:                                     ; preds = %s5h1420_writereg.exit
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i318 = icmp eq i32 %73, 0
  br i1 %tobool.not.i318, label %do.body.i319.s5h1420_writereg.exit325_crit_edge, label %do.end.i321

do.body.i319.s5h1420_writereg.exit325_crit_edge:  ; preds = %do.body.i319
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit325

do.end.i321:                                      ; preds = %do.body.i319
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i320 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i316, i32 noundef 4, i32 noundef 64) #13
  br label %s5h1420_writereg.exit325

if.end10.i323:                                    ; preds = %s5h1420_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i322 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 4
  %74 = ptrtoint ptr %arrayidx.i322 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 64, ptr %arrayidx.i322, align 1
  br label %s5h1420_writereg.exit325

s5h1420_writereg.exit325:                         ; preds = %if.end10.i323, %do.end.i321, %do.body.i319.s5h1420_writereg.exit325_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i310) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i309) #9
  %75 = ptrtoint ptr %fclk114 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %fclk114, align 4
  %sub121 = add i32 %76, 703999
  %div122 = udiv i32 %sub121, 704000
  %conv123 = trunc i32 %div122 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i326) #9
  %77 = getelementptr inbounds [2 x i8], ptr %buf.i326, i32 0, i32 1
  %78 = ptrtoint ptr %buf.i326 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 58, ptr %buf.i326, align 1
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %conv123, ptr %77, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i327) #9
  %80 = getelementptr inbounds i8, ptr %msg.i327, i32 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %80, align 4
  %82 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %config.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %83, align 1
  %conv.i329 = zext i8 %85 to i16
  %86 = ptrtoint ptr %msg.i327 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 %conv.i329, ptr %msg.i327, align 4
  %flags.i330 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i327, i32 0, i32 1
  %87 = ptrtoint ptr %flags.i330 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 0, ptr %flags.i330, align 2
  store i16 2, ptr %80, align 4
  %buf1.i332 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i327, i32 0, i32 3
  %88 = ptrtoint ptr %buf1.i332 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %buf.i326, ptr %buf1.i332, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 8
  %call.i333 = call i32 @i2c_transfer(ptr noundef %90, ptr noundef nonnull %msg.i327, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i333)
  %cmp.not.i334 = icmp eq i32 %call.i333, 1
  br i1 %cmp.not.i334, label %if.end10.i341, label %do.body.i336

do.body.i336:                                     ; preds = %s5h1420_writereg.exit325
  %91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i335 = icmp eq i32 %91, 0
  br i1 %tobool.not.i335, label %do.body.i336.s5h1420_writereg.exit343_crit_edge, label %do.end.i339

do.body.i336.s5h1420_writereg.exit343_crit_edge:  ; preds = %do.body.i336
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit343

do.end.i339:                                      ; preds = %do.body.i336
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i337 = and i32 %div122, 255
  %call7.i338 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i333, i32 noundef 58, i32 noundef %conv6.i337) #13
  br label %s5h1420_writereg.exit343

if.end10.i341:                                    ; preds = %s5h1420_writereg.exit325
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i340 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 58
  %92 = ptrtoint ptr %arrayidx.i340 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %conv123, ptr %arrayidx.i340, align 1
  br label %s5h1420_writereg.exit343

s5h1420_writereg.exit343:                         ; preds = %if.end10.i341, %do.end.i339, %do.body.i336.s5h1420_writereg.exit343_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i327) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i326) #9
  %93 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %symbol_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 29000000, i32 %94)
  %cmp126 = icmp ugt i32 %94, 29000000
  br i1 %cmp126, label %if.then128, label %if.else130

if.then128:                                       ; preds = %s5h1420_writereg.exit343
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i344) #9
  %95 = getelementptr inbounds [2 x i8], ptr %buf.i344, i32 0, i32 1
  %96 = ptrtoint ptr %buf.i344 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 5, ptr %buf.i344, align 1
  %97 = ptrtoint ptr %95 to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 -66, ptr %95, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i345) #9
  %98 = getelementptr inbounds i8, ptr %msg.i345, i32 4
  %99 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 -1, ptr %98, align 4
  %100 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %config.i, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %101, align 1
  %conv.i347 = zext i8 %103 to i16
  %104 = ptrtoint ptr %msg.i345 to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %conv.i347, ptr %msg.i345, align 4
  %flags.i348 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i345, i32 0, i32 1
  %105 = ptrtoint ptr %flags.i348 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %flags.i348, align 2
  store i16 2, ptr %98, align 4
  %buf1.i350 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i345, i32 0, i32 3
  %106 = ptrtoint ptr %buf1.i350 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %buf.i344, ptr %buf1.i350, align 4
  %107 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %1, align 8
  %call.i351 = call i32 @i2c_transfer(ptr noundef %108, ptr noundef nonnull %msg.i345, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i351)
  %cmp.not.i352 = icmp eq i32 %call.i351, 1
  br i1 %cmp.not.i352, label %if.end10.i358, label %do.body.i354

do.body.i354:                                     ; preds = %if.then128
  %109 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool.not.i353 = icmp eq i32 %109, 0
  br i1 %tobool.not.i353, label %do.body.i354.s5h1420_writereg.exit360_crit_edge, label %do.end.i356

do.body.i354.s5h1420_writereg.exit360_crit_edge:  ; preds = %do.body.i354
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit360

do.end.i356:                                      ; preds = %do.body.i354
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i355 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i351, i32 noundef 5, i32 noundef 190) #13
  br label %s5h1420_writereg.exit360

if.end10.i358:                                    ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i357 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 5
  %110 = ptrtoint ptr %arrayidx.i357 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 -66, ptr %arrayidx.i357, align 1
  br label %s5h1420_writereg.exit360

s5h1420_writereg.exit360:                         ; preds = %if.end10.i358, %do.end.i356, %do.body.i354.s5h1420_writereg.exit360_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i345) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i344) #9
  br label %if.end132

if.else130:                                       ; preds = %s5h1420_writereg.exit343
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i361) #9
  %111 = getelementptr inbounds [2 x i8], ptr %buf.i361, i32 0, i32 1
  %112 = ptrtoint ptr %buf.i361 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 5, ptr %buf.i361, align 1
  %113 = ptrtoint ptr %111 to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 -68, ptr %111, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i362) #9
  %114 = getelementptr inbounds i8, ptr %msg.i362, i32 4
  %115 = ptrtoint ptr %114 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 -1, ptr %114, align 4
  %116 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %config.i, align 4
  %118 = ptrtoint ptr %117 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %117, align 1
  %conv.i364 = zext i8 %119 to i16
  %120 = ptrtoint ptr %msg.i362 to i32
  call void @__asan_store2_noabort(i32 %120)
  store i16 %conv.i364, ptr %msg.i362, align 4
  %flags.i365 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i362, i32 0, i32 1
  %121 = ptrtoint ptr %flags.i365 to i32
  call void @__asan_store2_noabort(i32 %121)
  store i16 0, ptr %flags.i365, align 2
  store i16 2, ptr %114, align 4
  %buf1.i367 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i362, i32 0, i32 3
  %122 = ptrtoint ptr %buf1.i367 to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %buf.i361, ptr %buf1.i367, align 4
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 8
  %call.i368 = call i32 @i2c_transfer(ptr noundef %124, ptr noundef nonnull %msg.i362, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i368)
  %cmp.not.i369 = icmp eq i32 %call.i368, 1
  br i1 %cmp.not.i369, label %if.end10.i375, label %do.body.i371

do.body.i371:                                     ; preds = %if.else130
  %125 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool.not.i370 = icmp eq i32 %125, 0
  br i1 %tobool.not.i370, label %do.body.i371.s5h1420_writereg.exit377_crit_edge, label %do.end.i373

do.body.i371.s5h1420_writereg.exit377_crit_edge:  ; preds = %do.body.i371
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit377

do.end.i373:                                      ; preds = %do.body.i371
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i372 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i368, i32 noundef 5, i32 noundef 188) #13
  br label %s5h1420_writereg.exit377

if.end10.i375:                                    ; preds = %if.else130
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i374 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 5
  %126 = ptrtoint ptr %arrayidx.i374 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 -68, ptr %arrayidx.i374, align 1
  br label %s5h1420_writereg.exit377

s5h1420_writereg.exit377:                         ; preds = %if.end10.i375, %do.end.i373, %do.body.i371.s5h1420_writereg.exit377_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i362) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i361) #9
  br label %if.end132

if.end132:                                        ; preds = %s5h1420_writereg.exit377, %s5h1420_writereg.exit360
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i378) #9
  %127 = getelementptr inbounds [2 x i8], ptr %buf.i378, i32 0, i32 1
  %128 = ptrtoint ptr %buf.i378 to i32
  call void @__asan_store1_noabort(i32 %128)
  store i8 2, ptr %buf.i378, align 1
  %129 = ptrtoint ptr %127 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 0, ptr %127, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i379) #9
  %130 = getelementptr inbounds i8, ptr %msg.i379, i32 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_store4_noabort(i32 %131)
  store i32 -1, ptr %130, align 4
  %132 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %config.i, align 4
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %133, align 1
  %conv.i381 = zext i8 %135 to i16
  %136 = ptrtoint ptr %msg.i379 to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 %conv.i381, ptr %msg.i379, align 4
  %flags.i382 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i379, i32 0, i32 1
  %137 = ptrtoint ptr %flags.i382 to i32
  call void @__asan_store2_noabort(i32 %137)
  store i16 0, ptr %flags.i382, align 2
  store i16 2, ptr %130, align 4
  %buf1.i384 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i379, i32 0, i32 3
  %138 = ptrtoint ptr %buf1.i384 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %buf.i378, ptr %buf1.i384, align 4
  %139 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %1, align 8
  %call.i385 = call i32 @i2c_transfer(ptr noundef %140, ptr noundef nonnull %msg.i379, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i385)
  %cmp.not.i386 = icmp eq i32 %call.i385, 1
  br i1 %cmp.not.i386, label %if.end10.i392, label %do.body.i388

do.body.i388:                                     ; preds = %if.end132
  %141 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool.not.i387 = icmp eq i32 %141, 0
  br i1 %tobool.not.i387, label %do.body.i388.s5h1420_writereg.exit394_crit_edge, label %do.end.i390

do.body.i388.s5h1420_writereg.exit394_crit_edge:  ; preds = %do.body.i388
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit394

do.end.i390:                                      ; preds = %do.body.i388
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i389 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i385, i32 noundef 2, i32 noundef 0) #13
  br label %s5h1420_writereg.exit394

if.end10.i392:                                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i391 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 2
  %142 = ptrtoint ptr %arrayidx.i391 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 0, ptr %arrayidx.i391, align 1
  br label %s5h1420_writereg.exit394

s5h1420_writereg.exit394:                         ; preds = %if.end10.i392, %do.end.i390, %do.body.i388.s5h1420_writereg.exit394_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i379) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i378) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i395) #9
  %143 = getelementptr inbounds [2 x i8], ptr %buf.i395, i32 0, i32 1
  %144 = ptrtoint ptr %buf.i395 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 6, ptr %buf.i395, align 1
  %145 = ptrtoint ptr %143 to i32
  call void @__asan_store1_noabort(i32 %145)
  store i8 0, ptr %143, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i396) #9
  %146 = getelementptr inbounds i8, ptr %msg.i396, i32 4
  %147 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 -1, ptr %146, align 4
  %148 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %config.i, align 4
  %150 = ptrtoint ptr %149 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %149, align 1
  %conv.i398 = zext i8 %151 to i16
  %152 = ptrtoint ptr %msg.i396 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv.i398, ptr %msg.i396, align 4
  %flags.i399 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 0, i32 1
  %153 = ptrtoint ptr %flags.i399 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i399, align 2
  store i16 2, ptr %146, align 4
  %buf1.i401 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i396, i32 0, i32 3
  %154 = ptrtoint ptr %buf1.i401 to i32
  call void @__asan_store4_noabort(i32 %154)
  store ptr %buf.i395, ptr %buf1.i401, align 4
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 8
  %call.i402 = call i32 @i2c_transfer(ptr noundef %156, ptr noundef nonnull %msg.i396, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i402)
  %cmp.not.i403 = icmp eq i32 %call.i402, 1
  br i1 %cmp.not.i403, label %if.end10.i409, label %do.body.i405

do.body.i405:                                     ; preds = %s5h1420_writereg.exit394
  %157 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %157)
  %tobool.not.i404 = icmp eq i32 %157, 0
  br i1 %tobool.not.i404, label %do.body.i405.s5h1420_writereg.exit411_crit_edge, label %do.end.i407

do.body.i405.s5h1420_writereg.exit411_crit_edge:  ; preds = %do.body.i405
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit411

do.end.i407:                                      ; preds = %do.body.i405
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i406 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i402, i32 noundef 6, i32 noundef 0) #13
  br label %s5h1420_writereg.exit411

if.end10.i409:                                    ; preds = %s5h1420_writereg.exit394
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i408 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 6
  %158 = ptrtoint ptr %arrayidx.i408 to i32
  call void @__asan_store1_noabort(i32 %158)
  store i8 0, ptr %arrayidx.i408, align 1
  br label %s5h1420_writereg.exit411

s5h1420_writereg.exit411:                         ; preds = %if.end10.i409, %do.end.i407, %do.body.i405.s5h1420_writereg.exit411_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i396) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i395) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i412) #9
  %159 = getelementptr inbounds [2 x i8], ptr %buf.i412, i32 0, i32 1
  %160 = ptrtoint ptr %buf.i412 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 7, ptr %buf.i412, align 1
  %161 = ptrtoint ptr %159 to i32
  call void @__asan_store1_noabort(i32 %161)
  store i8 -80, ptr %159, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i413) #9
  %162 = getelementptr inbounds i8, ptr %msg.i413, i32 4
  %163 = ptrtoint ptr %162 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 -1, ptr %162, align 4
  %164 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %config.i, align 4
  %166 = ptrtoint ptr %165 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %165, align 1
  %conv.i415 = zext i8 %167 to i16
  %168 = ptrtoint ptr %msg.i413 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %conv.i415, ptr %msg.i413, align 4
  %flags.i416 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i413, i32 0, i32 1
  %169 = ptrtoint ptr %flags.i416 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 0, ptr %flags.i416, align 2
  store i16 2, ptr %162, align 4
  %buf1.i418 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i413, i32 0, i32 3
  %170 = ptrtoint ptr %buf1.i418 to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %buf.i412, ptr %buf1.i418, align 4
  %171 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %1, align 8
  %call.i419 = call i32 @i2c_transfer(ptr noundef %172, ptr noundef nonnull %msg.i413, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i419)
  %cmp.not.i420 = icmp eq i32 %call.i419, 1
  br i1 %cmp.not.i420, label %if.end10.i426, label %do.body.i422

do.body.i422:                                     ; preds = %s5h1420_writereg.exit411
  %173 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %tobool.not.i421 = icmp eq i32 %173, 0
  br i1 %tobool.not.i421, label %do.body.i422.s5h1420_writereg.exit428_crit_edge, label %do.end.i424

do.body.i422.s5h1420_writereg.exit428_crit_edge:  ; preds = %do.body.i422
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit428

do.end.i424:                                      ; preds = %do.body.i422
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i423 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i419, i32 noundef 7, i32 noundef 176) #13
  br label %s5h1420_writereg.exit428

if.end10.i426:                                    ; preds = %s5h1420_writereg.exit411
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i425 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 7
  %174 = ptrtoint ptr %arrayidx.i425 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 -80, ptr %arrayidx.i425, align 1
  br label %s5h1420_writereg.exit428

s5h1420_writereg.exit428:                         ; preds = %if.end10.i426, %do.end.i424, %do.body.i422.s5h1420_writereg.exit428_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i413) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i412) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i429) #9
  %175 = getelementptr inbounds [2 x i8], ptr %buf.i429, i32 0, i32 1
  %176 = ptrtoint ptr %buf.i429 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 9, ptr %buf.i429, align 1
  %177 = ptrtoint ptr %175 to i32
  call void @__asan_store1_noabort(i32 %177)
  store i8 -16, ptr %175, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i430) #9
  %178 = getelementptr inbounds i8, ptr %msg.i430, i32 4
  %179 = ptrtoint ptr %178 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 -1, ptr %178, align 4
  %180 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %config.i, align 4
  %182 = ptrtoint ptr %181 to i32
  call void @__asan_load1_noabort(i32 %182)
  %183 = load i8, ptr %181, align 1
  %conv.i432 = zext i8 %183 to i16
  %184 = ptrtoint ptr %msg.i430 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 %conv.i432, ptr %msg.i430, align 4
  %flags.i433 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i430, i32 0, i32 1
  %185 = ptrtoint ptr %flags.i433 to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 0, ptr %flags.i433, align 2
  store i16 2, ptr %178, align 4
  %buf1.i435 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i430, i32 0, i32 3
  %186 = ptrtoint ptr %buf1.i435 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %buf.i429, ptr %buf1.i435, align 4
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 8
  %call.i436 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %msg.i430, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i436)
  %cmp.not.i437 = icmp eq i32 %call.i436, 1
  br i1 %cmp.not.i437, label %if.end10.i443, label %do.body.i439

do.body.i439:                                     ; preds = %s5h1420_writereg.exit428
  %189 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool.not.i438 = icmp eq i32 %189, 0
  br i1 %tobool.not.i438, label %do.body.i439.s5h1420_writereg.exit445_crit_edge, label %do.end.i441

do.body.i439.s5h1420_writereg.exit445_crit_edge:  ; preds = %do.body.i439
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit445

do.end.i441:                                      ; preds = %do.body.i439
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i440 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i436, i32 noundef 9, i32 noundef 240) #13
  br label %s5h1420_writereg.exit445

if.end10.i443:                                    ; preds = %s5h1420_writereg.exit428
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i442 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 9
  %190 = ptrtoint ptr %arrayidx.i442 to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 -16, ptr %arrayidx.i442, align 1
  br label %s5h1420_writereg.exit445

s5h1420_writereg.exit445:                         ; preds = %if.end10.i443, %do.end.i441, %do.body.i439.s5h1420_writereg.exit445_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i430) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i429) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i446) #9
  %191 = getelementptr inbounds [2 x i8], ptr %buf.i446, i32 0, i32 1
  %192 = ptrtoint ptr %buf.i446 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 10, ptr %buf.i446, align 1
  %193 = ptrtoint ptr %191 to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 42, ptr %191, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i447) #9
  %194 = getelementptr inbounds i8, ptr %msg.i447, i32 4
  %195 = ptrtoint ptr %194 to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 -1, ptr %194, align 4
  %196 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %config.i, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %197, align 1
  %conv.i449 = zext i8 %199 to i16
  %200 = ptrtoint ptr %msg.i447 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 %conv.i449, ptr %msg.i447, align 4
  %flags.i450 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i447, i32 0, i32 1
  %201 = ptrtoint ptr %flags.i450 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 0, ptr %flags.i450, align 2
  store i16 2, ptr %194, align 4
  %buf1.i452 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i447, i32 0, i32 3
  %202 = ptrtoint ptr %buf1.i452 to i32
  call void @__asan_store4_noabort(i32 %202)
  store ptr %buf.i446, ptr %buf1.i452, align 4
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %1, align 8
  %call.i453 = call i32 @i2c_transfer(ptr noundef %204, ptr noundef nonnull %msg.i447, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i453)
  %cmp.not.i454 = icmp eq i32 %call.i453, 1
  br i1 %cmp.not.i454, label %if.end10.i460, label %do.body.i456

do.body.i456:                                     ; preds = %s5h1420_writereg.exit445
  %205 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %205)
  %tobool.not.i455 = icmp eq i32 %205, 0
  br i1 %tobool.not.i455, label %do.body.i456.s5h1420_writereg.exit462_crit_edge, label %do.end.i458

do.body.i456.s5h1420_writereg.exit462_crit_edge:  ; preds = %do.body.i456
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit462

do.end.i458:                                      ; preds = %do.body.i456
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i457 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i453, i32 noundef 10, i32 noundef 42) #13
  br label %s5h1420_writereg.exit462

if.end10.i460:                                    ; preds = %s5h1420_writereg.exit445
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i459 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 10
  %206 = ptrtoint ptr %arrayidx.i459 to i32
  call void @__asan_store1_noabort(i32 %206)
  store i8 42, ptr %arrayidx.i459, align 1
  br label %s5h1420_writereg.exit462

s5h1420_writereg.exit462:                         ; preds = %if.end10.i460, %do.end.i458, %do.body.i456.s5h1420_writereg.exit462_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i447) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i446) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i463) #9
  %207 = getelementptr inbounds [2 x i8], ptr %buf.i463, i32 0, i32 1
  %208 = ptrtoint ptr %buf.i463 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 11, ptr %buf.i463, align 1
  %209 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 121, ptr %207, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i464) #9
  %210 = getelementptr inbounds i8, ptr %msg.i464, i32 4
  %211 = ptrtoint ptr %210 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 -1, ptr %210, align 4
  %212 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %config.i, align 4
  %214 = ptrtoint ptr %213 to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %213, align 1
  %conv.i466 = zext i8 %215 to i16
  %216 = ptrtoint ptr %msg.i464 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 %conv.i466, ptr %msg.i464, align 4
  %flags.i467 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i464, i32 0, i32 1
  %217 = ptrtoint ptr %flags.i467 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 0, ptr %flags.i467, align 2
  store i16 2, ptr %210, align 4
  %buf1.i469 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i464, i32 0, i32 3
  %218 = ptrtoint ptr %buf1.i469 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %buf.i463, ptr %buf1.i469, align 4
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 8
  %call.i470 = call i32 @i2c_transfer(ptr noundef %220, ptr noundef nonnull %msg.i464, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i470)
  %cmp.not.i471 = icmp eq i32 %call.i470, 1
  br i1 %cmp.not.i471, label %if.end10.i477, label %do.body.i473

do.body.i473:                                     ; preds = %s5h1420_writereg.exit462
  %221 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool.not.i472 = icmp eq i32 %221, 0
  br i1 %tobool.not.i472, label %do.body.i473.s5h1420_writereg.exit479_crit_edge, label %do.end.i475

do.body.i473.s5h1420_writereg.exit479_crit_edge:  ; preds = %do.body.i473
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit479

do.end.i475:                                      ; preds = %do.body.i473
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i474 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i470, i32 noundef 11, i32 noundef 121) #13
  br label %s5h1420_writereg.exit479

if.end10.i477:                                    ; preds = %s5h1420_writereg.exit462
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i476 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 11
  %222 = ptrtoint ptr %arrayidx.i476 to i32
  call void @__asan_store1_noabort(i32 %222)
  store i8 121, ptr %arrayidx.i476, align 1
  br label %s5h1420_writereg.exit479

s5h1420_writereg.exit479:                         ; preds = %if.end10.i477, %do.end.i475, %do.body.i473.s5h1420_writereg.exit479_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i464) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i463) #9
  %223 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %symbol_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %224)
  %cmp140 = icmp ugt i32 %224, 20000000
  br i1 %cmp140, label %if.then142, label %if.else144

if.then142:                                       ; preds = %s5h1420_writereg.exit479
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i480) #9
  %225 = getelementptr inbounds [2 x i8], ptr %buf.i480, i32 0, i32 1
  %226 = ptrtoint ptr %buf.i480 to i32
  call void @__asan_store1_noabort(i32 %226)
  store i8 12, ptr %buf.i480, align 1
  %227 = ptrtoint ptr %225 to i32
  call void @__asan_store1_noabort(i32 %227)
  store i8 121, ptr %225, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i481) #9
  %228 = getelementptr inbounds i8, ptr %msg.i481, i32 4
  %229 = ptrtoint ptr %228 to i32
  call void @__asan_store4_noabort(i32 %229)
  store i32 -1, ptr %228, align 4
  %230 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %config.i, align 4
  %232 = ptrtoint ptr %231 to i32
  call void @__asan_load1_noabort(i32 %232)
  %233 = load i8, ptr %231, align 1
  %conv.i483 = zext i8 %233 to i16
  %234 = ptrtoint ptr %msg.i481 to i32
  call void @__asan_store2_noabort(i32 %234)
  store i16 %conv.i483, ptr %msg.i481, align 4
  %flags.i484 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i481, i32 0, i32 1
  %235 = ptrtoint ptr %flags.i484 to i32
  call void @__asan_store2_noabort(i32 %235)
  store i16 0, ptr %flags.i484, align 2
  store i16 2, ptr %228, align 4
  %buf1.i486 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i481, i32 0, i32 3
  %236 = ptrtoint ptr %buf1.i486 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr %buf.i480, ptr %buf1.i486, align 4
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 8
  %call.i487 = call i32 @i2c_transfer(ptr noundef %238, ptr noundef nonnull %msg.i481, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i487)
  %cmp.not.i488 = icmp eq i32 %call.i487, 1
  br i1 %cmp.not.i488, label %if.end10.i494, label %do.body.i490

do.body.i490:                                     ; preds = %if.then142
  %239 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %239)
  %tobool.not.i489 = icmp eq i32 %239, 0
  br i1 %tobool.not.i489, label %do.body.i490.s5h1420_writereg.exit496_crit_edge, label %do.end.i492

do.body.i490.s5h1420_writereg.exit496_crit_edge:  ; preds = %do.body.i490
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit496

do.end.i492:                                      ; preds = %do.body.i490
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i491 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i487, i32 noundef 12, i32 noundef 121) #13
  br label %s5h1420_writereg.exit496

if.end10.i494:                                    ; preds = %if.then142
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i493 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 12
  %240 = ptrtoint ptr %arrayidx.i493 to i32
  call void @__asan_store1_noabort(i32 %240)
  store i8 121, ptr %arrayidx.i493, align 1
  br label %s5h1420_writereg.exit496

s5h1420_writereg.exit496:                         ; preds = %if.end10.i494, %do.end.i492, %do.body.i490.s5h1420_writereg.exit496_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i481) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i480) #9
  br label %if.end146

if.else144:                                       ; preds = %s5h1420_writereg.exit479
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i497) #9
  %241 = getelementptr inbounds [2 x i8], ptr %buf.i497, i32 0, i32 1
  %242 = ptrtoint ptr %buf.i497 to i32
  call void @__asan_store1_noabort(i32 %242)
  store i8 12, ptr %buf.i497, align 1
  %243 = ptrtoint ptr %241 to i32
  call void @__asan_store1_noabort(i32 %243)
  store i8 88, ptr %241, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i498) #9
  %244 = getelementptr inbounds i8, ptr %msg.i498, i32 4
  %245 = ptrtoint ptr %244 to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 -1, ptr %244, align 4
  %246 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %config.i, align 4
  %248 = ptrtoint ptr %247 to i32
  call void @__asan_load1_noabort(i32 %248)
  %249 = load i8, ptr %247, align 1
  %conv.i500 = zext i8 %249 to i16
  %250 = ptrtoint ptr %msg.i498 to i32
  call void @__asan_store2_noabort(i32 %250)
  store i16 %conv.i500, ptr %msg.i498, align 4
  %flags.i501 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i498, i32 0, i32 1
  %251 = ptrtoint ptr %flags.i501 to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 0, ptr %flags.i501, align 2
  store i16 2, ptr %244, align 4
  %buf1.i503 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i498, i32 0, i32 3
  %252 = ptrtoint ptr %buf1.i503 to i32
  call void @__asan_store4_noabort(i32 %252)
  store ptr %buf.i497, ptr %buf1.i503, align 4
  %253 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %1, align 8
  %call.i504 = call i32 @i2c_transfer(ptr noundef %254, ptr noundef nonnull %msg.i498, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i504)
  %cmp.not.i505 = icmp eq i32 %call.i504, 1
  br i1 %cmp.not.i505, label %if.end10.i511, label %do.body.i507

do.body.i507:                                     ; preds = %if.else144
  %255 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %tobool.not.i506 = icmp eq i32 %255, 0
  br i1 %tobool.not.i506, label %do.body.i507.s5h1420_writereg.exit513_crit_edge, label %do.end.i509

do.body.i507.s5h1420_writereg.exit513_crit_edge:  ; preds = %do.body.i507
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit513

do.end.i509:                                      ; preds = %do.body.i507
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i508 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i504, i32 noundef 12, i32 noundef 88) #13
  br label %s5h1420_writereg.exit513

if.end10.i511:                                    ; preds = %if.else144
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i510 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 12
  %256 = ptrtoint ptr %arrayidx.i510 to i32
  call void @__asan_store1_noabort(i32 %256)
  store i8 88, ptr %arrayidx.i510, align 1
  br label %s5h1420_writereg.exit513

s5h1420_writereg.exit513:                         ; preds = %if.end10.i511, %do.end.i509, %do.body.i507.s5h1420_writereg.exit513_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i498) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i497) #9
  br label %if.end146

if.end146:                                        ; preds = %s5h1420_writereg.exit513, %s5h1420_writereg.exit496
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i514) #9
  %257 = getelementptr inbounds [2 x i8], ptr %buf.i514, i32 0, i32 1
  %258 = ptrtoint ptr %buf.i514 to i32
  call void @__asan_store1_noabort(i32 %258)
  store i8 13, ptr %buf.i514, align 1
  %259 = ptrtoint ptr %257 to i32
  call void @__asan_store1_noabort(i32 %259)
  store i8 107, ptr %257, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i515) #9
  %260 = getelementptr inbounds i8, ptr %msg.i515, i32 4
  %261 = ptrtoint ptr %260 to i32
  call void @__asan_store4_noabort(i32 %261)
  store i32 -1, ptr %260, align 4
  %262 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load ptr, ptr %config.i, align 4
  %264 = ptrtoint ptr %263 to i32
  call void @__asan_load1_noabort(i32 %264)
  %265 = load i8, ptr %263, align 1
  %conv.i517 = zext i8 %265 to i16
  %266 = ptrtoint ptr %msg.i515 to i32
  call void @__asan_store2_noabort(i32 %266)
  store i16 %conv.i517, ptr %msg.i515, align 4
  %flags.i518 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i515, i32 0, i32 1
  %267 = ptrtoint ptr %flags.i518 to i32
  call void @__asan_store2_noabort(i32 %267)
  store i16 0, ptr %flags.i518, align 2
  store i16 2, ptr %260, align 4
  %buf1.i520 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i515, i32 0, i32 3
  %268 = ptrtoint ptr %buf1.i520 to i32
  call void @__asan_store4_noabort(i32 %268)
  store ptr %buf.i514, ptr %buf1.i520, align 4
  %269 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %1, align 8
  %call.i521 = call i32 @i2c_transfer(ptr noundef %270, ptr noundef nonnull %msg.i515, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i521)
  %cmp.not.i522 = icmp eq i32 %call.i521, 1
  br i1 %cmp.not.i522, label %if.end10.i528, label %do.body.i524

do.body.i524:                                     ; preds = %if.end146
  %271 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool.not.i523 = icmp eq i32 %271, 0
  br i1 %tobool.not.i523, label %do.body.i524.s5h1420_writereg.exit530_crit_edge, label %do.end.i526

do.body.i524.s5h1420_writereg.exit530_crit_edge:  ; preds = %do.body.i524
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit530

do.end.i526:                                      ; preds = %do.body.i524
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i525 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i521, i32 noundef 13, i32 noundef 107) #13
  br label %s5h1420_writereg.exit530

if.end10.i528:                                    ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i527 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 13
  %272 = ptrtoint ptr %arrayidx.i527 to i32
  call void @__asan_store1_noabort(i32 %272)
  store i8 107, ptr %arrayidx.i527, align 1
  br label %s5h1420_writereg.exit530

s5h1420_writereg.exit530:                         ; preds = %if.end10.i528, %do.end.i526, %do.body.i524.s5h1420_writereg.exit530_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i515) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i514) #9
  %273 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %symbol_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7999999, i32 %274)
  %cmp149 = icmp ugt i32 %274, 7999999
  br i1 %cmp149, label %if.then151, label %if.else153

if.then151:                                       ; preds = %s5h1420_writereg.exit530
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i531) #9
  %275 = getelementptr inbounds [2 x i8], ptr %buf.i531, i32 0, i32 1
  %276 = ptrtoint ptr %buf.i531 to i32
  call void @__asan_store1_noabort(i32 %276)
  store i8 8, ptr %buf.i531, align 1
  %277 = ptrtoint ptr %275 to i32
  call void @__asan_store1_noabort(i32 %277)
  store i8 16, ptr %275, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i532) #9
  %278 = getelementptr inbounds i8, ptr %msg.i532, i32 4
  %279 = ptrtoint ptr %278 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 -1, ptr %278, align 4
  %280 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %config.i, align 4
  %282 = ptrtoint ptr %281 to i32
  call void @__asan_load1_noabort(i32 %282)
  %283 = load i8, ptr %281, align 1
  %conv.i534 = zext i8 %283 to i16
  %284 = ptrtoint ptr %msg.i532 to i32
  call void @__asan_store2_noabort(i32 %284)
  store i16 %conv.i534, ptr %msg.i532, align 4
  %flags.i535 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i532, i32 0, i32 1
  %285 = ptrtoint ptr %flags.i535 to i32
  call void @__asan_store2_noabort(i32 %285)
  store i16 0, ptr %flags.i535, align 2
  store i16 2, ptr %278, align 4
  %buf1.i537 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i532, i32 0, i32 3
  %286 = ptrtoint ptr %buf1.i537 to i32
  call void @__asan_store4_noabort(i32 %286)
  store ptr %buf.i531, ptr %buf1.i537, align 4
  %287 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %1, align 8
  %call.i538 = call i32 @i2c_transfer(ptr noundef %288, ptr noundef nonnull %msg.i532, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i538)
  %cmp.not.i539 = icmp eq i32 %call.i538, 1
  br i1 %cmp.not.i539, label %if.end10.i545, label %do.body.i541

do.body.i541:                                     ; preds = %if.then151
  %289 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %289)
  %tobool.not.i540 = icmp eq i32 %289, 0
  br i1 %tobool.not.i540, label %do.body.i541.s5h1420_writereg.exit547_crit_edge, label %do.end.i543

do.body.i541.s5h1420_writereg.exit547_crit_edge:  ; preds = %do.body.i541
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit547

do.end.i543:                                      ; preds = %do.body.i541
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i542 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i538, i32 noundef 8, i32 noundef 16) #13
  br label %s5h1420_writereg.exit547

if.end10.i545:                                    ; preds = %if.then151
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i544 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 8
  %290 = ptrtoint ptr %arrayidx.i544 to i32
  call void @__asan_store1_noabort(i32 %290)
  store i8 16, ptr %arrayidx.i544, align 1
  br label %s5h1420_writereg.exit547

s5h1420_writereg.exit547:                         ; preds = %if.end10.i545, %do.end.i543, %do.body.i541.s5h1420_writereg.exit547_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i532) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i531) #9
  br label %if.end162

if.else153:                                       ; preds = %s5h1420_writereg.exit530
  call void @__sanitizer_cov_trace_const_cmp4(i32 3999999, i32 %274)
  %cmp155 = icmp ugt i32 %274, 3999999
  br i1 %cmp155, label %if.then157, label %if.else159

if.then157:                                       ; preds = %if.else153
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i548) #9
  %291 = getelementptr inbounds [2 x i8], ptr %buf.i548, i32 0, i32 1
  %292 = ptrtoint ptr %buf.i548 to i32
  call void @__asan_store1_noabort(i32 %292)
  store i8 8, ptr %buf.i548, align 1
  %293 = ptrtoint ptr %291 to i32
  call void @__asan_store1_noabort(i32 %293)
  store i8 80, ptr %291, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i549) #9
  %294 = getelementptr inbounds i8, ptr %msg.i549, i32 4
  %295 = ptrtoint ptr %294 to i32
  call void @__asan_store4_noabort(i32 %295)
  store i32 -1, ptr %294, align 4
  %296 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %config.i, align 4
  %298 = ptrtoint ptr %297 to i32
  call void @__asan_load1_noabort(i32 %298)
  %299 = load i8, ptr %297, align 1
  %conv.i551 = zext i8 %299 to i16
  %300 = ptrtoint ptr %msg.i549 to i32
  call void @__asan_store2_noabort(i32 %300)
  store i16 %conv.i551, ptr %msg.i549, align 4
  %flags.i552 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i549, i32 0, i32 1
  %301 = ptrtoint ptr %flags.i552 to i32
  call void @__asan_store2_noabort(i32 %301)
  store i16 0, ptr %flags.i552, align 2
  store i16 2, ptr %294, align 4
  %buf1.i554 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i549, i32 0, i32 3
  %302 = ptrtoint ptr %buf1.i554 to i32
  call void @__asan_store4_noabort(i32 %302)
  store ptr %buf.i548, ptr %buf1.i554, align 4
  %303 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %1, align 8
  %call.i555 = call i32 @i2c_transfer(ptr noundef %304, ptr noundef nonnull %msg.i549, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i555)
  %cmp.not.i556 = icmp eq i32 %call.i555, 1
  br i1 %cmp.not.i556, label %if.end10.i562, label %do.body.i558

do.body.i558:                                     ; preds = %if.then157
  %305 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %305)
  %tobool.not.i557 = icmp eq i32 %305, 0
  br i1 %tobool.not.i557, label %do.body.i558.s5h1420_writereg.exit564_crit_edge, label %do.end.i560

do.body.i558.s5h1420_writereg.exit564_crit_edge:  ; preds = %do.body.i558
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit564

do.end.i560:                                      ; preds = %do.body.i558
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i559 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i555, i32 noundef 8, i32 noundef 80) #13
  br label %s5h1420_writereg.exit564

if.end10.i562:                                    ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i561 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 8
  %306 = ptrtoint ptr %arrayidx.i561 to i32
  call void @__asan_store1_noabort(i32 %306)
  store i8 80, ptr %arrayidx.i561, align 1
  br label %s5h1420_writereg.exit564

s5h1420_writereg.exit564:                         ; preds = %if.end10.i562, %do.end.i560, %do.body.i558.s5h1420_writereg.exit564_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i549) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i548) #9
  br label %if.end162

if.else159:                                       ; preds = %if.else153
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i565) #9
  %307 = getelementptr inbounds [2 x i8], ptr %buf.i565, i32 0, i32 1
  %308 = ptrtoint ptr %buf.i565 to i32
  call void @__asan_store1_noabort(i32 %308)
  store i8 8, ptr %buf.i565, align 1
  %309 = ptrtoint ptr %307 to i32
  call void @__asan_store1_noabort(i32 %309)
  store i8 -48, ptr %307, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i566) #9
  %310 = getelementptr inbounds i8, ptr %msg.i566, i32 4
  %311 = ptrtoint ptr %310 to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 -1, ptr %310, align 4
  %312 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %config.i, align 4
  %314 = ptrtoint ptr %313 to i32
  call void @__asan_load1_noabort(i32 %314)
  %315 = load i8, ptr %313, align 1
  %conv.i568 = zext i8 %315 to i16
  %316 = ptrtoint ptr %msg.i566 to i32
  call void @__asan_store2_noabort(i32 %316)
  store i16 %conv.i568, ptr %msg.i566, align 4
  %flags.i569 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i566, i32 0, i32 1
  %317 = ptrtoint ptr %flags.i569 to i32
  call void @__asan_store2_noabort(i32 %317)
  store i16 0, ptr %flags.i569, align 2
  store i16 2, ptr %310, align 4
  %buf1.i571 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i566, i32 0, i32 3
  %318 = ptrtoint ptr %buf1.i571 to i32
  call void @__asan_store4_noabort(i32 %318)
  store ptr %buf.i565, ptr %buf1.i571, align 4
  %319 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load ptr, ptr %1, align 8
  %call.i572 = call i32 @i2c_transfer(ptr noundef %320, ptr noundef nonnull %msg.i566, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i572)
  %cmp.not.i573 = icmp eq i32 %call.i572, 1
  br i1 %cmp.not.i573, label %if.end10.i579, label %do.body.i575

do.body.i575:                                     ; preds = %if.else159
  %321 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %321)
  %tobool.not.i574 = icmp eq i32 %321, 0
  br i1 %tobool.not.i574, label %do.body.i575.s5h1420_writereg.exit581_crit_edge, label %do.end.i577

do.body.i575.s5h1420_writereg.exit581_crit_edge:  ; preds = %do.body.i575
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit581

do.end.i577:                                      ; preds = %do.body.i575
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i576 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i572, i32 noundef 8, i32 noundef 208) #13
  br label %s5h1420_writereg.exit581

if.end10.i579:                                    ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i578 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 8
  %322 = ptrtoint ptr %arrayidx.i578 to i32
  call void @__asan_store1_noabort(i32 %322)
  store i8 -48, ptr %arrayidx.i578, align 1
  br label %s5h1420_writereg.exit581

s5h1420_writereg.exit581:                         ; preds = %if.end10.i579, %do.end.i577, %do.body.i575.s5h1420_writereg.exit581_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i566) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i565) #9
  br label %if.end162

if.end162:                                        ; preds = %s5h1420_writereg.exit581, %s5h1420_writereg.exit564, %s5h1420_writereg.exit547
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i582) #9
  %323 = getelementptr inbounds [2 x i8], ptr %buf.i582, i32 0, i32 1
  %324 = ptrtoint ptr %buf.i582 to i32
  call void @__asan_store1_noabort(i32 %324)
  store i8 31, ptr %buf.i582, align 1
  %325 = ptrtoint ptr %323 to i32
  call void @__asan_store1_noabort(i32 %325)
  store i8 0, ptr %323, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i583) #9
  %326 = getelementptr inbounds i8, ptr %msg.i583, i32 4
  %327 = ptrtoint ptr %326 to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 -1, ptr %326, align 4
  %328 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %config.i, align 4
  %330 = ptrtoint ptr %329 to i32
  call void @__asan_load1_noabort(i32 %330)
  %331 = load i8, ptr %329, align 1
  %conv.i585 = zext i8 %331 to i16
  %332 = ptrtoint ptr %msg.i583 to i32
  call void @__asan_store2_noabort(i32 %332)
  store i16 %conv.i585, ptr %msg.i583, align 4
  %flags.i586 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i583, i32 0, i32 1
  %333 = ptrtoint ptr %flags.i586 to i32
  call void @__asan_store2_noabort(i32 %333)
  store i16 0, ptr %flags.i586, align 2
  store i16 2, ptr %326, align 4
  %buf1.i588 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i583, i32 0, i32 3
  %334 = ptrtoint ptr %buf1.i588 to i32
  call void @__asan_store4_noabort(i32 %334)
  store ptr %buf.i582, ptr %buf1.i588, align 4
  %335 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load ptr, ptr %1, align 8
  %call.i589 = call i32 @i2c_transfer(ptr noundef %336, ptr noundef nonnull %msg.i583, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i589)
  %cmp.not.i590 = icmp eq i32 %call.i589, 1
  br i1 %cmp.not.i590, label %if.end10.i596, label %do.body.i592

do.body.i592:                                     ; preds = %if.end162
  %337 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %337)
  %tobool.not.i591 = icmp eq i32 %337, 0
  br i1 %tobool.not.i591, label %do.body.i592.s5h1420_writereg.exit598_crit_edge, label %do.end.i594

do.body.i592.s5h1420_writereg.exit598_crit_edge:  ; preds = %do.body.i592
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit598

do.end.i594:                                      ; preds = %do.body.i592
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i593 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i589, i32 noundef 31, i32 noundef 0) #13
  br label %s5h1420_writereg.exit598

if.end10.i596:                                    ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i595 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 31
  %338 = ptrtoint ptr %arrayidx.i595 to i32
  call void @__asan_store1_noabort(i32 %338)
  store i8 0, ptr %arrayidx.i595, align 1
  br label %s5h1420_writereg.exit598

s5h1420_writereg.exit598:                         ; preds = %if.end10.i596, %do.end.i594, %do.body.i592.s5h1420_writereg.exit598_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i583) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i582) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i599) #9
  %339 = getelementptr inbounds [2 x i8], ptr %buf.i599, i32 0, i32 1
  %340 = ptrtoint ptr %buf.i599 to i32
  call void @__asan_store1_noabort(i32 %340)
  store i8 53, ptr %buf.i599, align 1
  %341 = ptrtoint ptr %339 to i32
  call void @__asan_store1_noabort(i32 %341)
  store i8 51, ptr %339, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i600) #9
  %342 = getelementptr inbounds i8, ptr %msg.i600, i32 4
  %343 = ptrtoint ptr %342 to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 -1, ptr %342, align 4
  %344 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load ptr, ptr %config.i, align 4
  %346 = ptrtoint ptr %345 to i32
  call void @__asan_load1_noabort(i32 %346)
  %347 = load i8, ptr %345, align 1
  %conv.i602 = zext i8 %347 to i16
  %348 = ptrtoint ptr %msg.i600 to i32
  call void @__asan_store2_noabort(i32 %348)
  store i16 %conv.i602, ptr %msg.i600, align 4
  %flags.i603 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i600, i32 0, i32 1
  %349 = ptrtoint ptr %flags.i603 to i32
  call void @__asan_store2_noabort(i32 %349)
  store i16 0, ptr %flags.i603, align 2
  store i16 2, ptr %342, align 4
  %buf1.i605 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i600, i32 0, i32 3
  %350 = ptrtoint ptr %buf1.i605 to i32
  call void @__asan_store4_noabort(i32 %350)
  store ptr %buf.i599, ptr %buf1.i605, align 4
  %351 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %1, align 8
  %call.i606 = call i32 @i2c_transfer(ptr noundef %352, ptr noundef nonnull %msg.i600, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i606)
  %cmp.not.i607 = icmp eq i32 %call.i606, 1
  br i1 %cmp.not.i607, label %if.end10.i613, label %do.body.i609

do.body.i609:                                     ; preds = %s5h1420_writereg.exit598
  %353 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool.not.i608 = icmp eq i32 %353, 0
  br i1 %tobool.not.i608, label %do.body.i609.s5h1420_writereg.exit615_crit_edge, label %do.end.i611

do.body.i609.s5h1420_writereg.exit615_crit_edge:  ; preds = %do.body.i609
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit615

do.end.i611:                                      ; preds = %do.body.i609
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i610 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i606, i32 noundef 53, i32 noundef 51) #13
  br label %s5h1420_writereg.exit615

if.end10.i613:                                    ; preds = %s5h1420_writereg.exit598
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i612 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 53
  %354 = ptrtoint ptr %arrayidx.i612 to i32
  call void @__asan_store1_noabort(i32 %354)
  store i8 51, ptr %arrayidx.i612, align 1
  br label %s5h1420_writereg.exit615

s5h1420_writereg.exit615:                         ; preds = %if.end10.i613, %do.end.i611, %do.body.i609.s5h1420_writereg.exit615_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i600) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i599) #9
  %355 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load ptr, ptr %config.i, align 4
  %cdclk_polarity = getelementptr inbounds %struct.s5h1420_config, ptr %356, i32 0, i32 1
  %357 = ptrtoint ptr %cdclk_polarity to i32
  call void @__asan_load1_noabort(i32 %357)
  %bf.load = load i8, ptr %cdclk_polarity, align 1
  %bf.lshr = lshr i8 %bf.load, 5
  %bf.clear = and i8 %bf.lshr, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i616) #9
  %358 = getelementptr inbounds [2 x i8], ptr %buf.i616, i32 0, i32 1
  %359 = ptrtoint ptr %buf.i616 to i32
  call void @__asan_store1_noabort(i32 %359)
  store i8 56, ptr %buf.i616, align 1
  %360 = ptrtoint ptr %358 to i32
  call void @__asan_store1_noabort(i32 %360)
  store i8 %bf.clear, ptr %358, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i617) #9
  %361 = getelementptr inbounds i8, ptr %msg.i617, i32 4
  %362 = ptrtoint ptr %361 to i32
  call void @__asan_store4_noabort(i32 %362)
  store i32 -1, ptr %361, align 4
  %363 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %config.i, align 4
  %365 = ptrtoint ptr %364 to i32
  call void @__asan_load1_noabort(i32 %365)
  %366 = load i8, ptr %364, align 1
  %conv.i619 = zext i8 %366 to i16
  %367 = ptrtoint ptr %msg.i617 to i32
  call void @__asan_store2_noabort(i32 %367)
  store i16 %conv.i619, ptr %msg.i617, align 4
  %flags.i620 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i617, i32 0, i32 1
  %368 = ptrtoint ptr %flags.i620 to i32
  call void @__asan_store2_noabort(i32 %368)
  store i16 0, ptr %flags.i620, align 2
  store i16 2, ptr %361, align 4
  %buf1.i622 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i617, i32 0, i32 3
  %369 = ptrtoint ptr %buf1.i622 to i32
  call void @__asan_store4_noabort(i32 %369)
  store ptr %buf.i616, ptr %buf1.i622, align 4
  %370 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load ptr, ptr %1, align 8
  %call.i623 = call i32 @i2c_transfer(ptr noundef %371, ptr noundef nonnull %msg.i617, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i623)
  %cmp.not.i624 = icmp eq i32 %call.i623, 1
  br i1 %cmp.not.i624, label %if.end10.i631, label %do.body.i626

do.body.i626:                                     ; preds = %s5h1420_writereg.exit615
  %372 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %372)
  %tobool.not.i625 = icmp eq i32 %372, 0
  br i1 %tobool.not.i625, label %do.body.i626.s5h1420_writereg.exit633_crit_edge, label %do.end.i629

do.body.i626.s5h1420_writereg.exit633_crit_edge:  ; preds = %do.body.i626
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit633

do.end.i629:                                      ; preds = %do.body.i626
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i627 = zext i8 %bf.clear to i32
  %call7.i628 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i623, i32 noundef 56, i32 noundef %conv6.i627) #13
  br label %s5h1420_writereg.exit633

if.end10.i631:                                    ; preds = %s5h1420_writereg.exit615
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i630 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 56
  %373 = ptrtoint ptr %arrayidx.i630 to i32
  call void @__asan_store1_noabort(i32 %373)
  store i8 %bf.clear, ptr %arrayidx.i630, align 1
  br label %s5h1420_writereg.exit633

s5h1420_writereg.exit633:                         ; preds = %if.end10.i631, %do.end.i629, %do.body.i626.s5h1420_writereg.exit633_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i617) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i616) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i634) #9
  %374 = getelementptr inbounds [2 x i8], ptr %buf.i634, i32 0, i32 1
  %375 = ptrtoint ptr %buf.i634 to i32
  call void @__asan_store1_noabort(i32 %375)
  store i8 57, ptr %buf.i634, align 1
  %376 = ptrtoint ptr %374 to i32
  call void @__asan_store1_noabort(i32 %376)
  store i8 61, ptr %374, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i635) #9
  %377 = getelementptr inbounds i8, ptr %msg.i635, i32 4
  %378 = ptrtoint ptr %377 to i32
  call void @__asan_store4_noabort(i32 %378)
  store i32 -1, ptr %377, align 4
  %379 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %379)
  %380 = load ptr, ptr %config.i, align 4
  %381 = ptrtoint ptr %380 to i32
  call void @__asan_load1_noabort(i32 %381)
  %382 = load i8, ptr %380, align 1
  %conv.i637 = zext i8 %382 to i16
  %383 = ptrtoint ptr %msg.i635 to i32
  call void @__asan_store2_noabort(i32 %383)
  store i16 %conv.i637, ptr %msg.i635, align 4
  %flags.i638 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i635, i32 0, i32 1
  %384 = ptrtoint ptr %flags.i638 to i32
  call void @__asan_store2_noabort(i32 %384)
  store i16 0, ptr %flags.i638, align 2
  store i16 2, ptr %377, align 4
  %buf1.i640 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i635, i32 0, i32 3
  %385 = ptrtoint ptr %buf1.i640 to i32
  call void @__asan_store4_noabort(i32 %385)
  store ptr %buf.i634, ptr %buf1.i640, align 4
  %386 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %386)
  %387 = load ptr, ptr %1, align 8
  %call.i641 = call i32 @i2c_transfer(ptr noundef %387, ptr noundef nonnull %msg.i635, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i641)
  %cmp.not.i642 = icmp eq i32 %call.i641, 1
  br i1 %cmp.not.i642, label %if.end10.i648, label %do.body.i644

do.body.i644:                                     ; preds = %s5h1420_writereg.exit633
  %388 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %388)
  %tobool.not.i643 = icmp eq i32 %388, 0
  br i1 %tobool.not.i643, label %do.body.i644.s5h1420_writereg.exit650_crit_edge, label %do.end.i646

do.body.i644.s5h1420_writereg.exit650_crit_edge:  ; preds = %do.body.i644
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit650

do.end.i646:                                      ; preds = %do.body.i644
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i645 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i641, i32 noundef 57, i32 noundef 61) #13
  br label %s5h1420_writereg.exit650

if.end10.i648:                                    ; preds = %s5h1420_writereg.exit633
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i647 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 57
  %389 = ptrtoint ptr %arrayidx.i647 to i32
  call void @__asan_store1_noabort(i32 %389)
  store i8 61, ptr %arrayidx.i647, align 1
  br label %s5h1420_writereg.exit650

s5h1420_writereg.exit650:                         ; preds = %if.end10.i648, %do.end.i646, %do.body.i644.s5h1420_writereg.exit650_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i635) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i634) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i651) #9
  %390 = getelementptr inbounds [2 x i8], ptr %buf.i651, i32 0, i32 1
  %391 = ptrtoint ptr %buf.i651 to i32
  call void @__asan_store1_noabort(i32 %391)
  store i8 70, ptr %buf.i651, align 1
  %392 = ptrtoint ptr %390 to i32
  call void @__asan_store1_noabort(i32 %392)
  store i8 3, ptr %390, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i652) #9
  %393 = getelementptr inbounds i8, ptr %msg.i652, i32 4
  %394 = ptrtoint ptr %393 to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 -1, ptr %393, align 4
  %395 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %config.i, align 4
  %397 = ptrtoint ptr %396 to i32
  call void @__asan_load1_noabort(i32 %397)
  %398 = load i8, ptr %396, align 1
  %conv.i654 = zext i8 %398 to i16
  %399 = ptrtoint ptr %msg.i652 to i32
  call void @__asan_store2_noabort(i32 %399)
  store i16 %conv.i654, ptr %msg.i652, align 4
  %flags.i655 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i652, i32 0, i32 1
  %400 = ptrtoint ptr %flags.i655 to i32
  call void @__asan_store2_noabort(i32 %400)
  store i16 0, ptr %flags.i655, align 2
  store i16 2, ptr %393, align 4
  %buf1.i657 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i652, i32 0, i32 3
  %401 = ptrtoint ptr %buf1.i657 to i32
  call void @__asan_store4_noabort(i32 %401)
  store ptr %buf.i651, ptr %buf1.i657, align 4
  %402 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load ptr, ptr %1, align 8
  %call.i658 = call i32 @i2c_transfer(ptr noundef %403, ptr noundef nonnull %msg.i652, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i658)
  %cmp.not.i659 = icmp eq i32 %call.i658, 1
  br i1 %cmp.not.i659, label %if.end10.i665, label %do.body.i661

do.body.i661:                                     ; preds = %s5h1420_writereg.exit650
  %404 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool.not.i660 = icmp eq i32 %404, 0
  br i1 %tobool.not.i660, label %do.body.i661.s5h1420_writereg.exit667_crit_edge, label %do.end.i663

do.body.i661.s5h1420_writereg.exit667_crit_edge:  ; preds = %do.body.i661
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit667

do.end.i663:                                      ; preds = %do.body.i661
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i662 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i658, i32 noundef 70, i32 noundef 3) #13
  br label %s5h1420_writereg.exit667

if.end10.i665:                                    ; preds = %s5h1420_writereg.exit650
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i664 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 70
  %405 = ptrtoint ptr %arrayidx.i664 to i32
  call void @__asan_store1_noabort(i32 %405)
  store i8 3, ptr %arrayidx.i664, align 1
  br label %s5h1420_writereg.exit667

s5h1420_writereg.exit667:                         ; preds = %if.end10.i665, %do.end.i663, %do.body.i661.s5h1420_writereg.exit667_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i652) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i651) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i668) #9
  %406 = getelementptr inbounds [2 x i8], ptr %buf.i668, i32 0, i32 1
  %407 = ptrtoint ptr %buf.i668 to i32
  call void @__asan_store1_noabort(i32 %407)
  store i8 46, ptr %buf.i668, align 1
  %408 = ptrtoint ptr %406 to i32
  call void @__asan_store1_noabort(i32 %408)
  store i8 110, ptr %406, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i669) #9
  %409 = getelementptr inbounds i8, ptr %msg.i669, i32 4
  %410 = ptrtoint ptr %409 to i32
  call void @__asan_store4_noabort(i32 %410)
  store i32 -1, ptr %409, align 4
  %411 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %config.i, align 4
  %413 = ptrtoint ptr %412 to i32
  call void @__asan_load1_noabort(i32 %413)
  %414 = load i8, ptr %412, align 1
  %conv.i671 = zext i8 %414 to i16
  %415 = ptrtoint ptr %msg.i669 to i32
  call void @__asan_store2_noabort(i32 %415)
  store i16 %conv.i671, ptr %msg.i669, align 4
  %flags.i672 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i669, i32 0, i32 1
  %416 = ptrtoint ptr %flags.i672 to i32
  call void @__asan_store2_noabort(i32 %416)
  store i16 0, ptr %flags.i672, align 2
  store i16 2, ptr %409, align 4
  %buf1.i674 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i669, i32 0, i32 3
  %417 = ptrtoint ptr %buf1.i674 to i32
  call void @__asan_store4_noabort(i32 %417)
  store ptr %buf.i668, ptr %buf1.i674, align 4
  %418 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load ptr, ptr %1, align 8
  %call.i675 = call i32 @i2c_transfer(ptr noundef %419, ptr noundef nonnull %msg.i669, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i675)
  %cmp.not.i676 = icmp eq i32 %call.i675, 1
  br i1 %cmp.not.i676, label %if.end10.i682, label %do.body.i678

do.body.i678:                                     ; preds = %s5h1420_writereg.exit667
  %420 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %420)
  %tobool.not.i677 = icmp eq i32 %420, 0
  br i1 %tobool.not.i677, label %do.body.i678.s5h1420_writereg.exit684_crit_edge, label %do.end.i680

do.body.i678.s5h1420_writereg.exit684_crit_edge:  ; preds = %do.body.i678
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit684

do.end.i680:                                      ; preds = %do.body.i678
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i679 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i675, i32 noundef 46, i32 noundef 110) #13
  br label %s5h1420_writereg.exit684

if.end10.i682:                                    ; preds = %s5h1420_writereg.exit667
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i681 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 46
  %421 = ptrtoint ptr %arrayidx.i681 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 110, ptr %arrayidx.i681, align 1
  br label %s5h1420_writereg.exit684

s5h1420_writereg.exit684:                         ; preds = %if.end10.i682, %do.end.i680, %do.body.i678.s5h1420_writereg.exit684_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i669) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i668) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i685) #9
  %422 = getelementptr inbounds [2 x i8], ptr %buf.i685, i32 0, i32 1
  %423 = ptrtoint ptr %buf.i685 to i32
  call void @__asan_store1_noabort(i32 %423)
  store i8 60, ptr %buf.i685, align 1
  %424 = ptrtoint ptr %422 to i32
  call void @__asan_store1_noabort(i32 %424)
  store i8 0, ptr %422, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i686) #9
  %425 = getelementptr inbounds i8, ptr %msg.i686, i32 4
  %426 = ptrtoint ptr %425 to i32
  call void @__asan_store4_noabort(i32 %426)
  store i32 -1, ptr %425, align 4
  %427 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %config.i, align 4
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load1_noabort(i32 %429)
  %430 = load i8, ptr %428, align 1
  %conv.i688 = zext i8 %430 to i16
  %431 = ptrtoint ptr %msg.i686 to i32
  call void @__asan_store2_noabort(i32 %431)
  store i16 %conv.i688, ptr %msg.i686, align 4
  %flags.i689 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i686, i32 0, i32 1
  %432 = ptrtoint ptr %flags.i689 to i32
  call void @__asan_store2_noabort(i32 %432)
  store i16 0, ptr %flags.i689, align 2
  store i16 2, ptr %425, align 4
  %buf1.i691 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i686, i32 0, i32 3
  %433 = ptrtoint ptr %buf1.i691 to i32
  call void @__asan_store4_noabort(i32 %433)
  store ptr %buf.i685, ptr %buf1.i691, align 4
  %434 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %1, align 8
  %call.i692 = call i32 @i2c_transfer(ptr noundef %435, ptr noundef nonnull %msg.i686, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i692)
  %cmp.not.i693 = icmp eq i32 %call.i692, 1
  br i1 %cmp.not.i693, label %if.end10.i699, label %do.body.i695

do.body.i695:                                     ; preds = %s5h1420_writereg.exit684
  %436 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %436)
  %tobool.not.i694 = icmp eq i32 %436, 0
  br i1 %tobool.not.i694, label %do.body.i695.s5h1420_writereg.exit701_crit_edge, label %do.end.i697

do.body.i695.s5h1420_writereg.exit701_crit_edge:  ; preds = %do.body.i695
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit701

do.end.i697:                                      ; preds = %do.body.i695
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i696 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i692, i32 noundef 60, i32 noundef 0) #13
  br label %s5h1420_writereg.exit701

if.end10.i699:                                    ; preds = %s5h1420_writereg.exit684
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i698 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 60
  %437 = ptrtoint ptr %arrayidx.i698 to i32
  call void @__asan_store1_noabort(i32 %437)
  store i8 0, ptr %arrayidx.i698, align 1
  br label %s5h1420_writereg.exit701

s5h1420_writereg.exit701:                         ; preds = %if.end10.i699, %do.end.i697, %do.body.i695.s5h1420_writereg.exit701_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i686) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i685) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i702) #9
  %438 = getelementptr inbounds [2 x i8], ptr %buf.i702, i32 0, i32 1
  %439 = ptrtoint ptr %buf.i702 to i32
  call void @__asan_store1_noabort(i32 %439)
  store i8 69, ptr %buf.i702, align 1
  %440 = ptrtoint ptr %438 to i32
  call void @__asan_store1_noabort(i32 %440)
  store i8 97, ptr %438, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i703) #9
  %441 = getelementptr inbounds i8, ptr %msg.i703, i32 4
  %442 = ptrtoint ptr %441 to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 -1, ptr %441, align 4
  %443 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %443)
  %444 = load ptr, ptr %config.i, align 4
  %445 = ptrtoint ptr %444 to i32
  call void @__asan_load1_noabort(i32 %445)
  %446 = load i8, ptr %444, align 1
  %conv.i705 = zext i8 %446 to i16
  %447 = ptrtoint ptr %msg.i703 to i32
  call void @__asan_store2_noabort(i32 %447)
  store i16 %conv.i705, ptr %msg.i703, align 4
  %flags.i706 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i703, i32 0, i32 1
  %448 = ptrtoint ptr %flags.i706 to i32
  call void @__asan_store2_noabort(i32 %448)
  store i16 0, ptr %flags.i706, align 2
  store i16 2, ptr %441, align 4
  %buf1.i708 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i703, i32 0, i32 3
  %449 = ptrtoint ptr %buf1.i708 to i32
  call void @__asan_store4_noabort(i32 %449)
  store ptr %buf.i702, ptr %buf1.i708, align 4
  %450 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %450)
  %451 = load ptr, ptr %1, align 8
  %call.i709 = call i32 @i2c_transfer(ptr noundef %451, ptr noundef nonnull %msg.i703, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i709)
  %cmp.not.i710 = icmp eq i32 %call.i709, 1
  br i1 %cmp.not.i710, label %if.end10.i716, label %do.body.i712

do.body.i712:                                     ; preds = %s5h1420_writereg.exit701
  %452 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %452)
  %tobool.not.i711 = icmp eq i32 %452, 0
  br i1 %tobool.not.i711, label %do.body.i712.s5h1420_writereg.exit718_crit_edge, label %do.end.i714

do.body.i712.s5h1420_writereg.exit718_crit_edge:  ; preds = %do.body.i712
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit718

do.end.i714:                                      ; preds = %do.body.i712
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i713 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i709, i32 noundef 69, i32 noundef 97) #13
  br label %s5h1420_writereg.exit718

if.end10.i716:                                    ; preds = %s5h1420_writereg.exit701
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i715 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 69
  %453 = ptrtoint ptr %arrayidx.i715 to i32
  call void @__asan_store1_noabort(i32 %453)
  store i8 97, ptr %arrayidx.i715, align 1
  br label %s5h1420_writereg.exit718

s5h1420_writereg.exit718:                         ; preds = %if.end10.i716, %do.end.i714, %do.body.i712.s5h1420_writereg.exit718_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i703) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i702) #9
  %set_params173 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %454 = ptrtoint ptr %set_params173 to i32
  call void @__asan_load4_noabort(i32 %454)
  %455 = load ptr, ptr %set_params173, align 4
  %tobool174.not = icmp eq ptr %455, null
  br i1 %tobool174.not, label %s5h1420_writereg.exit718.if.end188_crit_edge, label %if.then175

s5h1420_writereg.exit718.if.end188_crit_edge:     ; preds = %s5h1420_writereg.exit718
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end188

if.then175:                                       ; preds = %s5h1420_writereg.exit718
  %call179 = call i32 %455(ptr noundef %fe) #9
  %i2c_gate_ctrl181 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %456 = ptrtoint ptr %i2c_gate_ctrl181 to i32
  call void @__asan_load4_noabort(i32 %456)
  %457 = load ptr, ptr %i2c_gate_ctrl181, align 4
  %tobool182.not = icmp eq ptr %457, null
  br i1 %tobool182.not, label %if.then175.if.end187_crit_edge, label %if.then183

if.then175.if.end187_crit_edge:                   ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end187

if.then183:                                       ; preds = %if.then175
  call void @__sanitizer_cov_trace_pc() #11
  %call186 = call i32 %457(ptr noundef %fe, i32 noundef 0) #9
  br label %if.end187

if.end187:                                        ; preds = %if.then183, %if.then175.if.end187_crit_edge
  call fastcc void @s5h1420_setfreqoffset(ptr noundef %1, i32 noundef 0)
  br label %if.end188

if.end188:                                        ; preds = %if.end187, %s5h1420_writereg.exit718.if.end188_crit_edge
  %458 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %458)
  %tobool.not.i719 = icmp eq i32 %458, 0
  br i1 %tobool.not.i719, label %if.end188.do.end3.i_crit_edge, label %do.end.i721

if.end188.do.end3.i_crit_edge:                    ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i

do.end.i721:                                      ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #11
  %call.i720 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.31) #13
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i721, %if.end188.do.end3.i_crit_edge
  %459 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %459)
  %460 = load i32, ptr %symbol_rate.i, align 4
  %461 = udiv i32 %460, 1000
  %div.i723 = zext i32 %461 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 29000000, i32 %460)
  %cmp.i724 = icmp ult i32 %460, 29000000
  %spec.select.v.i = select i1 %cmp.i724, i64 25, i64 24
  %spec.select.i = shl nuw nsw i64 %div.i723, %spec.select.v.i
  %462 = ptrtoint ptr %fclk114 to i32
  call void @__asan_load4_noabort(i32 %462)
  %463 = load i32, ptr %fclk114, align 4
  %div9.i = udiv i32 %463, 1000
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %spec.select.i)
  %cmp183.i = icmp ult i64 %spec.select.i, 4294967296
  br i1 %cmp183.i, label %if.then187.i, label %if.else193.i, !prof !147

if.then187.i:                                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv188.i = trunc i64 %spec.select.i to i32
  %div191.i = udiv i32 %conv188.i, %div9.i
  %conv192.i = zext i32 %div191.i to i64
  br label %if.end197.i

if.else193.i:                                     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #11
  %464 = call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div9.i, i64 %spec.select.i) #14, !srcloc !148
  %asmresult1.i.i = extractvalue { i64, i64 } %464, 1
  br label %if.end197.i

if.end197.i:                                      ; preds = %if.else193.i, %if.then187.i
  %val.0.i = phi i64 [ %conv192.i, %if.then187.i ], [ %asmresult1.i.i, %if.else193.i ]
  %465 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %465)
  %tobool200.not.i = icmp eq i32 %465, 0
  br i1 %tobool200.not.i, label %if.end197.i.do.end209.i_crit_edge, label %do.end204.i

if.end197.i.do.end209.i_crit_edge:                ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end209.i

do.end204.i:                                      ; preds = %if.end197.i
  call void @__sanitizer_cov_trace_pc() #11
  %call206.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i64 noundef %val.0.i) #13
  br label %do.end209.i

do.end209.i:                                      ; preds = %do.end204.i, %if.end197.i.do.end209.i_crit_edge
  %call210.i = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 9) #9
  %and212.i = and i8 %call210.i, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #9
  %466 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %467 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %467)
  store i8 9, ptr %buf.i.i, align 1
  %468 = ptrtoint ptr %466 to i32
  call void @__asan_store1_noabort(i32 %468)
  store i8 %and212.i, ptr %466, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %469 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %470 = ptrtoint ptr %469 to i32
  call void @__asan_store4_noabort(i32 %470)
  store i32 196607, ptr %469, align 4
  %471 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %471)
  %472 = load ptr, ptr %config.i, align 4
  %473 = ptrtoint ptr %472 to i32
  call void @__asan_load1_noabort(i32 %473)
  %474 = load i8, ptr %472, align 1
  %conv.i.i = zext i8 %474 to i16
  %475 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %475)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %476 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %476)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %477 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %477)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %478 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %478)
  %479 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %479, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i328.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i328.i, label %if.end10.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %do.end209.i
  %480 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %480)
  %tobool.not.i.i = icmp eq i32 %480, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.s5h1420_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.s5h1420_writereg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i.i = zext i8 %and212.i to i32
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i.i, i32 noundef 9, i32 noundef %conv6.i.i) #13
  br label %s5h1420_writereg.exit.i

if.end10.i.i:                                     ; preds = %do.end209.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 9
  %481 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %481)
  store i8 %and212.i, ptr %arrayidx.i.i, align 1
  br label %s5h1420_writereg.exit.i

s5h1420_writereg.exit.i:                          ; preds = %if.end10.i.i, %do.end.i.i, %do.body.i.i.s5h1420_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #9
  %shr215.i = lshr i64 %val.0.i, 16
  %conv216.i = trunc i64 %shr215.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i329.i) #9
  %482 = getelementptr inbounds [2 x i8], ptr %buf.i329.i, i32 0, i32 1
  %483 = ptrtoint ptr %buf.i329.i to i32
  call void @__asan_store1_noabort(i32 %483)
  store i8 17, ptr %buf.i329.i, align 1
  %484 = ptrtoint ptr %482 to i32
  call void @__asan_store1_noabort(i32 %484)
  store i8 %conv216.i, ptr %482, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i330.i) #9
  %485 = getelementptr inbounds i8, ptr %msg.i330.i, i32 4
  %486 = ptrtoint ptr %485 to i32
  call void @__asan_store4_noabort(i32 %486)
  store i32 196607, ptr %485, align 4
  %487 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %487)
  %488 = load ptr, ptr %config.i, align 4
  %489 = ptrtoint ptr %488 to i32
  call void @__asan_load1_noabort(i32 %489)
  %490 = load i8, ptr %488, align 1
  %conv.i332.i = zext i8 %490 to i16
  %491 = ptrtoint ptr %msg.i330.i to i32
  call void @__asan_store2_noabort(i32 %491)
  store i16 %conv.i332.i, ptr %msg.i330.i, align 4
  %flags.i333.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i330.i, i32 0, i32 1
  %492 = ptrtoint ptr %flags.i333.i to i32
  call void @__asan_store2_noabort(i32 %492)
  store i16 0, ptr %flags.i333.i, align 2
  %buf1.i335.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i330.i, i32 0, i32 3
  %493 = ptrtoint ptr %buf1.i335.i to i32
  call void @__asan_store4_noabort(i32 %493)
  store ptr %buf.i329.i, ptr %buf1.i335.i, align 4
  %494 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %494)
  %495 = load ptr, ptr %1, align 8
  %call.i336.i = call i32 @i2c_transfer(ptr noundef %495, ptr noundef nonnull %msg.i330.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i336.i)
  %cmp.not.i337.i = icmp eq i32 %call.i336.i, 1
  br i1 %cmp.not.i337.i, label %if.end10.i344.i, label %do.body.i339.i

do.body.i339.i:                                   ; preds = %s5h1420_writereg.exit.i
  %496 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %496)
  %tobool.not.i338.i = icmp eq i32 %496, 0
  br i1 %tobool.not.i338.i, label %do.body.i339.i.s5h1420_writereg.exit346.i_crit_edge, label %do.end.i342.i

do.body.i339.i.s5h1420_writereg.exit346.i_crit_edge: ; preds = %do.body.i339.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit346.i

do.end.i342.i:                                    ; preds = %do.body.i339.i
  call void @__sanitizer_cov_trace_pc() #11
  %497 = trunc i64 %shr215.i to i32
  %conv6.i340.i = and i32 %497, 255
  %call7.i341.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i336.i, i32 noundef 17, i32 noundef %conv6.i340.i) #13
  br label %s5h1420_writereg.exit346.i

if.end10.i344.i:                                  ; preds = %s5h1420_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i343.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 17
  %498 = ptrtoint ptr %arrayidx.i343.i to i32
  call void @__asan_store1_noabort(i32 %498)
  store i8 %conv216.i, ptr %arrayidx.i343.i, align 1
  br label %s5h1420_writereg.exit346.i

s5h1420_writereg.exit346.i:                       ; preds = %if.end10.i344.i, %do.end.i342.i, %do.body.i339.i.s5h1420_writereg.exit346.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i330.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i329.i) #9
  %shr218.i = lshr i64 %val.0.i, 8
  %conv219.i = trunc i64 %shr218.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i347.i) #9
  %499 = getelementptr inbounds [2 x i8], ptr %buf.i347.i, i32 0, i32 1
  %500 = ptrtoint ptr %buf.i347.i to i32
  call void @__asan_store1_noabort(i32 %500)
  store i8 18, ptr %buf.i347.i, align 1
  %501 = ptrtoint ptr %499 to i32
  call void @__asan_store1_noabort(i32 %501)
  store i8 %conv219.i, ptr %499, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i348.i) #9
  %502 = getelementptr inbounds i8, ptr %msg.i348.i, i32 4
  %503 = ptrtoint ptr %502 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 196607, ptr %502, align 4
  %504 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %504)
  %505 = load ptr, ptr %config.i, align 4
  %506 = ptrtoint ptr %505 to i32
  call void @__asan_load1_noabort(i32 %506)
  %507 = load i8, ptr %505, align 1
  %conv.i350.i = zext i8 %507 to i16
  %508 = ptrtoint ptr %msg.i348.i to i32
  call void @__asan_store2_noabort(i32 %508)
  store i16 %conv.i350.i, ptr %msg.i348.i, align 4
  %flags.i351.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i348.i, i32 0, i32 1
  %509 = ptrtoint ptr %flags.i351.i to i32
  call void @__asan_store2_noabort(i32 %509)
  store i16 0, ptr %flags.i351.i, align 2
  %buf1.i353.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i348.i, i32 0, i32 3
  %510 = ptrtoint ptr %buf1.i353.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store ptr %buf.i347.i, ptr %buf1.i353.i, align 4
  %511 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %511)
  %512 = load ptr, ptr %1, align 8
  %call.i354.i = call i32 @i2c_transfer(ptr noundef %512, ptr noundef nonnull %msg.i348.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i354.i)
  %cmp.not.i355.i = icmp eq i32 %call.i354.i, 1
  br i1 %cmp.not.i355.i, label %if.end10.i362.i, label %do.body.i357.i

do.body.i357.i:                                   ; preds = %s5h1420_writereg.exit346.i
  %513 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %513)
  %tobool.not.i356.i = icmp eq i32 %513, 0
  br i1 %tobool.not.i356.i, label %do.body.i357.i.s5h1420_writereg.exit364.i_crit_edge, label %do.end.i360.i

do.body.i357.i.s5h1420_writereg.exit364.i_crit_edge: ; preds = %do.body.i357.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit364.i

do.end.i360.i:                                    ; preds = %do.body.i357.i
  call void @__sanitizer_cov_trace_pc() #11
  %514 = trunc i64 %shr218.i to i32
  %conv6.i358.i = and i32 %514, 255
  %call7.i359.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i354.i, i32 noundef 18, i32 noundef %conv6.i358.i) #13
  br label %s5h1420_writereg.exit364.i

if.end10.i362.i:                                  ; preds = %s5h1420_writereg.exit346.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i361.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 18
  %515 = ptrtoint ptr %arrayidx.i361.i to i32
  call void @__asan_store1_noabort(i32 %515)
  store i8 %conv219.i, ptr %arrayidx.i361.i, align 1
  br label %s5h1420_writereg.exit364.i

s5h1420_writereg.exit364.i:                       ; preds = %if.end10.i362.i, %do.end.i360.i, %do.body.i357.i.s5h1420_writereg.exit364.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i348.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i347.i) #9
  %conv222.i = trunc i64 %val.0.i to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i365.i) #9
  %516 = getelementptr inbounds [2 x i8], ptr %buf.i365.i, i32 0, i32 1
  %517 = ptrtoint ptr %buf.i365.i to i32
  call void @__asan_store1_noabort(i32 %517)
  store i8 19, ptr %buf.i365.i, align 1
  %518 = ptrtoint ptr %516 to i32
  call void @__asan_store1_noabort(i32 %518)
  store i8 %conv222.i, ptr %516, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i366.i) #9
  %519 = getelementptr inbounds i8, ptr %msg.i366.i, i32 4
  %520 = ptrtoint ptr %519 to i32
  call void @__asan_store4_noabort(i32 %520)
  store i32 196607, ptr %519, align 4
  %521 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %521)
  %522 = load ptr, ptr %config.i, align 4
  %523 = ptrtoint ptr %522 to i32
  call void @__asan_load1_noabort(i32 %523)
  %524 = load i8, ptr %522, align 1
  %conv.i368.i = zext i8 %524 to i16
  %525 = ptrtoint ptr %msg.i366.i to i32
  call void @__asan_store2_noabort(i32 %525)
  store i16 %conv.i368.i, ptr %msg.i366.i, align 4
  %flags.i369.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366.i, i32 0, i32 1
  %526 = ptrtoint ptr %flags.i369.i to i32
  call void @__asan_store2_noabort(i32 %526)
  store i16 0, ptr %flags.i369.i, align 2
  %buf1.i371.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i366.i, i32 0, i32 3
  %527 = ptrtoint ptr %buf1.i371.i to i32
  call void @__asan_store4_noabort(i32 %527)
  store ptr %buf.i365.i, ptr %buf1.i371.i, align 4
  %528 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load ptr, ptr %1, align 8
  %call.i372.i = call i32 @i2c_transfer(ptr noundef %529, ptr noundef nonnull %msg.i366.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i372.i)
  %cmp.not.i373.i = icmp eq i32 %call.i372.i, 1
  br i1 %cmp.not.i373.i, label %if.end10.i380.i, label %do.body.i375.i

do.body.i375.i:                                   ; preds = %s5h1420_writereg.exit364.i
  %530 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %530)
  %tobool.not.i374.i = icmp eq i32 %530, 0
  br i1 %tobool.not.i374.i, label %do.body.i375.i.s5h1420_writereg.exit382.i_crit_edge, label %do.end.i378.i

do.body.i375.i.s5h1420_writereg.exit382.i_crit_edge: ; preds = %do.body.i375.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit382.i

do.end.i378.i:                                    ; preds = %do.body.i375.i
  call void @__sanitizer_cov_trace_pc() #11
  %531 = trunc i64 %val.0.i to i32
  %conv6.i376.i = and i32 %531, 255
  %call7.i377.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i372.i, i32 noundef 19, i32 noundef %conv6.i376.i) #13
  br label %s5h1420_writereg.exit382.i

if.end10.i380.i:                                  ; preds = %s5h1420_writereg.exit364.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i379.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 19
  %532 = ptrtoint ptr %arrayidx.i379.i to i32
  call void @__asan_store1_noabort(i32 %532)
  store i8 %conv222.i, ptr %arrayidx.i379.i, align 1
  br label %s5h1420_writereg.exit382.i

s5h1420_writereg.exit382.i:                       ; preds = %if.end10.i380.i, %do.end.i378.i, %do.body.i375.i.s5h1420_writereg.exit382.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i366.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i365.i) #9
  %533 = or i8 %call210.i, -128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i383.i) #9
  %534 = getelementptr inbounds [2 x i8], ptr %buf.i383.i, i32 0, i32 1
  %535 = ptrtoint ptr %buf.i383.i to i32
  call void @__asan_store1_noabort(i32 %535)
  store i8 9, ptr %buf.i383.i, align 1
  %536 = ptrtoint ptr %534 to i32
  call void @__asan_store1_noabort(i32 %536)
  store i8 %533, ptr %534, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i384.i) #9
  %537 = getelementptr inbounds i8, ptr %msg.i384.i, i32 4
  %538 = ptrtoint ptr %537 to i32
  call void @__asan_store4_noabort(i32 %538)
  store i32 196607, ptr %537, align 4
  %539 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %539)
  %540 = load ptr, ptr %config.i, align 4
  %541 = ptrtoint ptr %540 to i32
  call void @__asan_load1_noabort(i32 %541)
  %542 = load i8, ptr %540, align 1
  %conv.i386.i = zext i8 %542 to i16
  %543 = ptrtoint ptr %msg.i384.i to i32
  call void @__asan_store2_noabort(i32 %543)
  store i16 %conv.i386.i, ptr %msg.i384.i, align 4
  %flags.i387.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384.i, i32 0, i32 1
  %544 = ptrtoint ptr %flags.i387.i to i32
  call void @__asan_store2_noabort(i32 %544)
  store i16 0, ptr %flags.i387.i, align 2
  %buf1.i389.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i384.i, i32 0, i32 3
  %545 = ptrtoint ptr %buf1.i389.i to i32
  call void @__asan_store4_noabort(i32 %545)
  store ptr %buf.i383.i, ptr %buf1.i389.i, align 4
  %546 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load ptr, ptr %1, align 8
  %call.i390.i = call i32 @i2c_transfer(ptr noundef %547, ptr noundef nonnull %msg.i384.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i390.i)
  %cmp.not.i391.i = icmp eq i32 %call.i390.i, 1
  br i1 %cmp.not.i391.i, label %if.end10.i398.i, label %do.body.i393.i

do.body.i393.i:                                   ; preds = %s5h1420_writereg.exit382.i
  %548 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %548)
  %tobool.not.i392.i = icmp eq i32 %548, 0
  br i1 %tobool.not.i392.i, label %s5h1420_writereg.exit400.thread.i, label %do.end.i396.i

s5h1420_writereg.exit400.thread.i:                ; preds = %do.body.i393.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i384.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i383.i) #9
  br label %do.end3.i730

do.end.i396.i:                                    ; preds = %do.body.i393.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i394.i = zext i8 %533 to i32
  %call7.i395.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i390.i, i32 noundef 9, i32 noundef %conv6.i394.i) #13
  br label %s5h1420_writereg.exit400.i

if.end10.i398.i:                                  ; preds = %s5h1420_writereg.exit382.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i397.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 9
  %549 = ptrtoint ptr %arrayidx.i397.i to i32
  call void @__asan_store1_noabort(i32 %549)
  store i8 %533, ptr %arrayidx.i397.i, align 1
  br label %s5h1420_writereg.exit400.i

s5h1420_writereg.exit400.i:                       ; preds = %if.end10.i398.i, %do.end.i396.i
  %.pr.i = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i384.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i383.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool229.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool229.not.i, label %s5h1420_writereg.exit400.i.do.end3.i730_crit_edge, label %s5h1420_setsymbolrate.exit

s5h1420_writereg.exit400.i.do.end3.i730_crit_edge: ; preds = %s5h1420_writereg.exit400.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i730

s5h1420_setsymbolrate.exit:                       ; preds = %s5h1420_writereg.exit400.i
  %call235.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.31) #13
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool.not.i727 = icmp eq i32 %.pr, 0
  br i1 %tobool.not.i727, label %s5h1420_setsymbolrate.exit.do.end3.i730_crit_edge, label %do.end.i729

s5h1420_setsymbolrate.exit.do.end3.i730_crit_edge: ; preds = %s5h1420_setsymbolrate.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3.i730

do.end.i729:                                      ; preds = %s5h1420_setsymbolrate.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call.i728 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.37) #13
  br label %do.end3.i730

do.end3.i730:                                     ; preds = %do.end.i729, %s5h1420_setsymbolrate.exit.do.end3.i730_crit_edge, %s5h1420_writereg.exit400.i.do.end3.i730_crit_edge, %s5h1420_writereg.exit400.thread.i
  %inversion4.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %550 = ptrtoint ptr %inversion4.i to i32
  call void @__asan_load4_noabort(i32 %550)
  %551 = load i32, ptr %inversion4.i, align 4
  %552 = zext i32 %551 to i64
  call void @__sanitizer_cov_trace_switch(i64 %552, ptr @__sancov_gen_cov_switch_values)
  switch i32 %551, label %do.end3.i730.if.end21.i_crit_edge [
    i32 0, label %if.then5.i
    i32 1, label %if.then11.i
  ]

do.end3.i730.if.end21.i_crit_edge:                ; preds = %do.end3.i730
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end21.i

if.then5.i:                                       ; preds = %do.end3.i730
  call void @__sanitizer_cov_trace_pc() #11
  %553 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %553)
  %554 = load ptr, ptr %config.i, align 4
  %invert.i = getelementptr inbounds %struct.s5h1420_config, ptr %554, i32 0, i32 1
  %555 = ptrtoint ptr %invert.i to i32
  call void @__asan_load1_noabort(i32 %555)
  %bf.load.i = load i8, ptr %invert.i, align 1
  %556 = lshr i8 %bf.load.i, 4
  %557 = and i8 %556, 8
  br label %if.end21.i

if.then11.i:                                      ; preds = %do.end3.i730
  call void @__sanitizer_cov_trace_pc() #11
  %558 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %558)
  %559 = load ptr, ptr %config.i, align 4
  %invert13.i = getelementptr inbounds %struct.s5h1420_config, ptr %559, i32 0, i32 1
  %560 = ptrtoint ptr %invert13.i to i32
  call void @__asan_load1_noabort(i32 %560)
  %bf.load14.i = load i8, ptr %invert13.i, align 1
  %561 = lshr i8 %bf.load14.i, 4
  %562 = and i8 %561, 8
  %563 = xor i8 %562, 8
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then11.i, %if.then5.i, %do.end3.i730.if.end21.i_crit_edge
  %inversion.0.i = phi i8 [ %557, %if.then5.i ], [ %563, %if.then11.i ], [ 0, %do.end3.i730.if.end21.i_crit_edge ]
  %fec_inner.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 5
  %564 = ptrtoint ptr %fec_inner.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %fec_inner.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %565)
  %cmp22.i = icmp eq i32 %565, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %551)
  %cmp25.i = icmp eq i32 %551, 2
  %or.cond.i732 = select i1 %cmp22.i, i1 true, i1 %cmp25.i
  br i1 %or.cond.i732, label %if.end21.i.if.end35.i_crit_edge, label %if.else28.i

if.end21.i.if.end35.i_crit_edge:                  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35.i

if.else28.i:                                      ; preds = %if.end21.i
  %switch.tableidx = add i32 %565, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %566 = icmp ult i32 %switch.tableidx, 7
  br i1 %566, label %switch.hole_check, label %if.else28.i.s5h1420_setfec_inversion.exit_crit_edge

if.else28.i.s5h1420_setfec_inversion.exit_crit_edge: ; preds = %if.else28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_setfec_inversion.exit

switch.hole_check:                                ; preds = %if.else28.i
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 119, %switch.maskindex
  %567 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %567)
  %switch.lobit.not = icmp eq i8 %567, 0
  br i1 %switch.lobit.not, label %switch.hole_check.s5h1420_setfec_inversion.exit_crit_edge, label %switch.lookup

switch.hole_check.s5h1420_setfec_inversion.exit_crit_edge: ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_setfec_inversion.exit

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [7 x i8], ptr @switch.table.s5h1420_set_frontend, i32 0, i32 %switch.tableidx
  %568 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load1_noabort(i32 %568)
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.gep766 = getelementptr inbounds [7 x i8], ptr @switch.table.s5h1420_set_frontend.61, i32 0, i32 %switch.tableidx
  %569 = ptrtoint ptr %switch.gep766 to i32
  call void @__asan_load1_noabort(i32 %569)
  %switch.load767 = load i8, ptr %switch.gep766, align 1
  br label %if.end35.i

if.end35.i:                                       ; preds = %switch.lookup, %if.end21.i.if.end35.i_crit_edge
  %vit09.0.i = phi i8 [ 0, %if.end21.i.if.end35.i_crit_edge ], [ %switch.load, %switch.lookup ]
  %vit08.0.i = phi i8 [ 63, %if.end21.i.if.end35.i_crit_edge ], [ %switch.load767, %switch.lookup ]
  %or.i = or i8 %vit09.0.i, %inversion.0.i
  %570 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %570)
  %tobool40.not.i = icmp eq i32 %570, 0
  br i1 %tobool40.not.i, label %if.end35.i.do.end51.i_crit_edge, label %do.end44.i

if.end35.i.do.end51.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51.i

do.end44.i:                                       ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv46.i = zext i8 %vit08.0.i to i32
  %conv47.i = zext i8 %or.i to i32
  %call48.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %conv46.i, i32 noundef %conv47.i) #13
  br label %do.end51.i

do.end51.i:                                       ; preds = %do.end44.i, %if.end35.i.do.end51.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i725) #9
  %571 = getelementptr inbounds [2 x i8], ptr %buf.i.i725, i32 0, i32 1
  %572 = ptrtoint ptr %buf.i.i725 to i32
  call void @__asan_store1_noabort(i32 %572)
  store i8 48, ptr %buf.i.i725, align 1
  %573 = ptrtoint ptr %571 to i32
  call void @__asan_store1_noabort(i32 %573)
  store i8 %vit08.0.i, ptr %571, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i726) #9
  %574 = getelementptr inbounds i8, ptr %msg.i.i726, i32 4
  %575 = ptrtoint ptr %574 to i32
  call void @__asan_store4_noabort(i32 %575)
  store i32 196607, ptr %574, align 4
  %576 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %576)
  %577 = load ptr, ptr %config.i, align 4
  %578 = ptrtoint ptr %577 to i32
  call void @__asan_load1_noabort(i32 %578)
  %579 = load i8, ptr %577, align 1
  %conv.i.i734 = zext i8 %579 to i16
  %580 = ptrtoint ptr %msg.i.i726 to i32
  call void @__asan_store2_noabort(i32 %580)
  store i16 %conv.i.i734, ptr %msg.i.i726, align 4
  %flags.i.i735 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i726, i32 0, i32 1
  %581 = ptrtoint ptr %flags.i.i735 to i32
  call void @__asan_store2_noabort(i32 %581)
  store i16 0, ptr %flags.i.i735, align 2
  %buf1.i.i736 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i726, i32 0, i32 3
  %582 = ptrtoint ptr %buf1.i.i736 to i32
  call void @__asan_store4_noabort(i32 %582)
  store ptr %buf.i.i725, ptr %buf1.i.i736, align 4
  %583 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %583)
  %584 = load ptr, ptr %1, align 8
  %call.i.i737 = call i32 @i2c_transfer(ptr noundef %584, ptr noundef nonnull %msg.i.i726, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i737)
  %cmp.not.i.i = icmp eq i32 %call.i.i737, 1
  br i1 %cmp.not.i.i, label %if.end10.i.i744, label %do.body.i.i739

do.body.i.i739:                                   ; preds = %do.end51.i
  %585 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %585)
  %tobool.not.i.i738 = icmp eq i32 %585, 0
  br i1 %tobool.not.i.i738, label %do.body.i.i739.s5h1420_writereg.exit.i745_crit_edge, label %do.end.i.i742

do.body.i.i739.s5h1420_writereg.exit.i745_crit_edge: ; preds = %do.body.i.i739
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit.i745

do.end.i.i742:                                    ; preds = %do.body.i.i739
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i.i740 = zext i8 %vit08.0.i to i32
  %call7.i.i741 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i.i737, i32 noundef 48, i32 noundef %conv6.i.i740) #13
  br label %s5h1420_writereg.exit.i745

if.end10.i.i744:                                  ; preds = %do.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i743 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 48
  %586 = ptrtoint ptr %arrayidx.i.i743 to i32
  call void @__asan_store1_noabort(i32 %586)
  store i8 %vit08.0.i, ptr %arrayidx.i.i743, align 1
  br label %s5h1420_writereg.exit.i745

s5h1420_writereg.exit.i745:                       ; preds = %if.end10.i.i744, %do.end.i.i742, %do.body.i.i739.s5h1420_writereg.exit.i745_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i726) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i725) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i78.i) #9
  %587 = getelementptr inbounds [2 x i8], ptr %buf.i78.i, i32 0, i32 1
  %588 = ptrtoint ptr %buf.i78.i to i32
  call void @__asan_store1_noabort(i32 %588)
  store i8 49, ptr %buf.i78.i, align 1
  %589 = ptrtoint ptr %587 to i32
  call void @__asan_store1_noabort(i32 %589)
  store i8 %or.i, ptr %587, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i79.i) #9
  %590 = getelementptr inbounds i8, ptr %msg.i79.i, i32 4
  %591 = ptrtoint ptr %590 to i32
  call void @__asan_store4_noabort(i32 %591)
  store i32 196607, ptr %590, align 4
  %592 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %592)
  %593 = load ptr, ptr %config.i, align 4
  %594 = ptrtoint ptr %593 to i32
  call void @__asan_load1_noabort(i32 %594)
  %595 = load i8, ptr %593, align 1
  %conv.i81.i = zext i8 %595 to i16
  %596 = ptrtoint ptr %msg.i79.i to i32
  call void @__asan_store2_noabort(i32 %596)
  store i16 %conv.i81.i, ptr %msg.i79.i, align 4
  %flags.i82.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i79.i, i32 0, i32 1
  %597 = ptrtoint ptr %flags.i82.i to i32
  call void @__asan_store2_noabort(i32 %597)
  store i16 0, ptr %flags.i82.i, align 2
  %buf1.i84.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i79.i, i32 0, i32 3
  %598 = ptrtoint ptr %buf1.i84.i to i32
  call void @__asan_store4_noabort(i32 %598)
  store ptr %buf.i78.i, ptr %buf1.i84.i, align 4
  %599 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load ptr, ptr %1, align 8
  %call.i85.i = call i32 @i2c_transfer(ptr noundef %600, ptr noundef nonnull %msg.i79.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i85.i)
  %cmp.not.i86.i = icmp eq i32 %call.i85.i, 1
  br i1 %cmp.not.i86.i, label %if.end10.i93.i, label %do.body.i88.i

do.body.i88.i:                                    ; preds = %s5h1420_writereg.exit.i745
  %601 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %601)
  %tobool.not.i87.i = icmp eq i32 %601, 0
  br i1 %tobool.not.i87.i, label %s5h1420_writereg.exit95.thread.i, label %do.end.i91.i

s5h1420_writereg.exit95.thread.i:                 ; preds = %do.body.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i79.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i78.i) #9
  br label %s5h1420_setfec_inversion.exit

do.end.i91.i:                                     ; preds = %do.body.i88.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i89.i = zext i8 %or.i to i32
  %call7.i90.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i85.i, i32 noundef 49, i32 noundef %conv6.i89.i) #13
  br label %s5h1420_writereg.exit95.i

if.end10.i93.i:                                   ; preds = %s5h1420_writereg.exit.i745
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i92.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 49
  %602 = ptrtoint ptr %arrayidx.i92.i to i32
  call void @__asan_store1_noabort(i32 %602)
  store i8 %or.i, ptr %arrayidx.i92.i, align 1
  br label %s5h1420_writereg.exit95.i

s5h1420_writereg.exit95.i:                        ; preds = %if.end10.i93.i, %do.end.i91.i
  %.pr.i746 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i79.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i78.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i746)
  %tobool55.not.i = icmp eq i32 %.pr.i746, 0
  br i1 %tobool55.not.i, label %s5h1420_writereg.exit95.i.s5h1420_setfec_inversion.exit_crit_edge, label %do.end59.i

s5h1420_writereg.exit95.i.s5h1420_setfec_inversion.exit_crit_edge: ; preds = %s5h1420_writereg.exit95.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_setfec_inversion.exit

do.end59.i:                                       ; preds = %s5h1420_writereg.exit95.i
  call void @__sanitizer_cov_trace_pc() #11
  %call61.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.37) #13
  br label %s5h1420_setfec_inversion.exit

s5h1420_setfec_inversion.exit:                    ; preds = %do.end59.i, %s5h1420_writereg.exit95.i.s5h1420_setfec_inversion.exit_crit_edge, %s5h1420_writereg.exit95.thread.i, %switch.hole_check.s5h1420_setfec_inversion.exit_crit_edge, %if.else28.i.s5h1420_setfec_inversion.exit_crit_edge
  %call189 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 5)
  %603 = or i8 %call189, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i747) #9
  %604 = getelementptr inbounds [2 x i8], ptr %buf.i747, i32 0, i32 1
  %605 = ptrtoint ptr %buf.i747 to i32
  call void @__asan_store1_noabort(i32 %605)
  store i8 5, ptr %buf.i747, align 1
  %606 = ptrtoint ptr %604 to i32
  call void @__asan_store1_noabort(i32 %606)
  store i8 %603, ptr %604, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i748) #9
  %607 = getelementptr inbounds i8, ptr %msg.i748, i32 4
  %608 = ptrtoint ptr %607 to i32
  call void @__asan_store4_noabort(i32 %608)
  store i32 196607, ptr %607, align 4
  %609 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %609)
  %610 = load ptr, ptr %config.i, align 4
  %611 = ptrtoint ptr %610 to i32
  call void @__asan_load1_noabort(i32 %611)
  %612 = load i8, ptr %610, align 1
  %conv.i750 = zext i8 %612 to i16
  %613 = ptrtoint ptr %msg.i748 to i32
  call void @__asan_store2_noabort(i32 %613)
  store i16 %conv.i750, ptr %msg.i748, align 4
  %flags.i751 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i748, i32 0, i32 1
  %614 = ptrtoint ptr %flags.i751 to i32
  call void @__asan_store2_noabort(i32 %614)
  store i16 0, ptr %flags.i751, align 2
  %buf1.i753 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i748, i32 0, i32 3
  %615 = ptrtoint ptr %buf1.i753 to i32
  call void @__asan_store4_noabort(i32 %615)
  store ptr %buf.i747, ptr %buf1.i753, align 4
  %616 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %616)
  %617 = load ptr, ptr %1, align 8
  %call.i754 = call i32 @i2c_transfer(ptr noundef %617, ptr noundef nonnull %msg.i748, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i754)
  %cmp.not.i755 = icmp eq i32 %call.i754, 1
  br i1 %cmp.not.i755, label %if.end10.i762, label %do.body.i757

do.body.i757:                                     ; preds = %s5h1420_setfec_inversion.exit
  %618 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %618)
  %tobool.not.i756 = icmp eq i32 %618, 0
  br i1 %tobool.not.i756, label %do.body.i757.s5h1420_writereg.exit764_crit_edge, label %do.end.i760

do.body.i757.s5h1420_writereg.exit764_crit_edge:  ; preds = %do.body.i757
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit764

do.end.i760:                                      ; preds = %do.body.i757
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i758 = zext i8 %603 to i32
  %call7.i759 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i754, i32 noundef 5, i32 noundef %conv6.i758) #13
  br label %s5h1420_writereg.exit764

if.end10.i762:                                    ; preds = %s5h1420_setfec_inversion.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i761 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 5
  %619 = ptrtoint ptr %arrayidx.i761 to i32
  call void @__asan_store1_noabort(i32 %619)
  store i8 %603, ptr %arrayidx.i761, align 1
  br label %s5h1420_writereg.exit764

s5h1420_writereg.exit764:                         ; preds = %if.end10.i762, %do.end.i760, %do.body.i757.s5h1420_writereg.exit764_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i748) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i747) #9
  %620 = ptrtoint ptr %fec_inner.i to i32
  call void @__asan_load4_noabort(i32 %620)
  %621 = load i32, ptr %fec_inner.i, align 4
  %fec_inner194 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 8
  %622 = ptrtoint ptr %fec_inner194 to i32
  call void @__asan_store4_noabort(i32 %622)
  store i32 %621, ptr %fec_inner194, align 4
  %623 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %symbol_rate.i, align 4
  %symbol_rate196 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 9
  %625 = ptrtoint ptr %symbol_rate196 to i32
  call void @__asan_store4_noabort(i32 %625)
  store i32 %624, ptr %symbol_rate196, align 8
  %postlocked = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 5
  %626 = ptrtoint ptr %postlocked to i32
  call void @__asan_load1_noabort(i32 %626)
  %bf.load197 = load i8, ptr %postlocked, align 1
  %bf.clear198 = and i8 %bf.load197, 127
  store i8 %bf.clear198, ptr %postlocked, align 1
  %627 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %627)
  %628 = load i32, ptr %dtv_property_cache, align 4
  %629 = ptrtoint ptr %tunedfreq to i32
  call void @__asan_store4_noabort(i32 %629)
  store i32 %628, ptr %tunedfreq, align 8
  %630 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %630)
  %tobool202.not = icmp eq i32 %630, 0
  br i1 %tobool202.not, label %s5h1420_writereg.exit764.cleanup_crit_edge, label %do.end206

s5h1420_writereg.exit764.cleanup_crit_edge:       ; preds = %s5h1420_writereg.exit764
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end206:                                        ; preds = %s5h1420_writereg.exit764
  call void @__sanitizer_cov_trace_pc() #11
  %call208 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.12) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end206, %s5h1420_writereg.exit764.cleanup_crit_edge, %do.end56, %do.body51.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @s5h1420_get_tune_settings(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %fesettings) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %symbol_rate = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 10
  %0 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %symbol_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20000000, i32 %1)
  %cmp = icmp ugt i32 %1, 20000000
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 50, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %3 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2000, ptr %step_size, align 4
  br label %if.end41

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 12000000, i32 %1)
  %cmp2 = icmp ugt i32 %1, 12000000
  br i1 %cmp2, label %if.then3, label %if.else7

if.then3:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 100, ptr %fesettings, align 4
  %step_size5 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %5 = ptrtoint ptr %step_size5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1500, ptr %step_size5, align 4
  br label %if.end41

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000000, i32 %1)
  %cmp9 = icmp ugt i32 %1, 8000000
  br i1 %cmp9, label %if.then10, label %if.else14

if.then10:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 100, ptr %fesettings, align 4
  %step_size12 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %7 = ptrtoint ptr %step_size12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1000, ptr %step_size12, align 4
  br label %if.end41

if.else14:                                        ; preds = %if.else7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4000000, i32 %1)
  %cmp16 = icmp ugt i32 %1, 4000000
  br i1 %cmp16, label %if.then17, label %if.else21

if.then17:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 100, ptr %fesettings, align 4
  %step_size19 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %9 = ptrtoint ptr %step_size19 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 500, ptr %step_size19, align 4
  br label %if.end41

if.else21:                                        ; preds = %if.else14
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000000, i32 %1)
  %cmp23 = icmp ugt i32 %1, 2000000
  %10 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 200, ptr %fesettings, align 4
  %11 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %symbol_rate, align 4
  %div = udiv i32 %12, 8000
  %step_size27 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %13 = ptrtoint ptr %step_size27 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div, ptr %step_size27, align 4
  br i1 %cmp23, label %if.then24, label %if.else30

if.then24:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  %mul = mul nuw nsw i32 %div, 14
  br label %if.end41

if.else30:                                        ; preds = %if.else21
  call void @__sanitizer_cov_trace_pc() #11
  %mul36 = mul nuw nsw i32 %div, 18
  br label %if.end41

if.end41:                                         ; preds = %if.else30, %if.then24, %if.then17, %if.then10, %if.then3, %if.then
  %.sink = phi i32 [ 9000, %if.then3 ], [ 7000, %if.then17 ], [ %mul36, %if.else30 ], [ %mul, %if.then24 ], [ 8000, %if.then10 ], [ 8000, %if.then ]
  %max_drift6 = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %14 = ptrtoint ptr %max_drift6 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %.sink, ptr %max_drift6, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_get_frontend(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %p) #2 align 64 {
entry:
  %buf.i32.i = alloca [2 x i8], align 1
  %msg.i33.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [2 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %tunedfreq = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %tunedfreq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tunedfreq, align 8
  %call.i = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 6) #9
  %4 = or i8 %call.i, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #9
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 6, ptr %buf.i.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #9
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i.i, align 2
  %buf1.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i.i, ptr %buf1.i.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call.i.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end10.i.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %entry
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %do.body.i.i.s5h1420_writereg.exit.i_crit_edge, label %do.end.i.i

do.body.i.i.s5h1420_writereg.exit.i_crit_edge:    ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i.i = zext i8 %4 to i32
  %call7.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i.i, i32 noundef 6, i32 noundef %conv6.i.i) #13
  br label %s5h1420_writereg.exit.i

if.end10.i.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 6
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %4, ptr %arrayidx.i.i, align 1
  br label %s5h1420_writereg.exit.i

s5h1420_writereg.exit.i:                          ; preds = %if.end10.i.i, %do.end.i.i, %do.body.i.i.s5h1420_writereg.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #9
  %call3.i = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 14) #9
  %call5.i = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 15) #9
  %call9.i = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 16) #9
  %call12.i = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 6) #9
  %21 = and i8 %call12.i, -9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i32.i) #9
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i32.i, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i32.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 6, ptr %buf.i32.i, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i33.i) #9
  %25 = getelementptr inbounds i8, ptr %msg.i33.i, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i35.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i33.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i35.i, ptr %msg.i33.i, align 4
  %flags.i36.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i36.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i36.i, align 2
  %buf1.i38.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i33.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf1.i38.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i32.i, ptr %buf1.i38.i, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %call.i39.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i33.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i39.i)
  %cmp.not.i40.i = icmp eq i32 %call.i39.i, 1
  br i1 %cmp.not.i40.i, label %if.end10.i47.i, label %do.body.i42.i

do.body.i42.i:                                    ; preds = %s5h1420_writereg.exit.i
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i41.i = icmp eq i32 %36, 0
  br i1 %tobool.not.i41.i, label %do.body.i42.i.s5h1420_getfreqoffset.exit_crit_edge, label %do.end.i45.i

do.body.i42.i.s5h1420_getfreqoffset.exit_crit_edge: ; preds = %do.body.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_getfreqoffset.exit

do.end.i45.i:                                     ; preds = %do.body.i42.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i43.i = zext i8 %21 to i32
  %call7.i44.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i39.i, i32 noundef 6, i32 noundef %conv6.i43.i) #13
  br label %s5h1420_getfreqoffset.exit

if.end10.i47.i:                                   ; preds = %s5h1420_writereg.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i46.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 6
  %37 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %21, ptr %arrayidx.i46.i, align 1
  br label %s5h1420_getfreqoffset.exit

s5h1420_getfreqoffset.exit:                       ; preds = %if.end10.i47.i, %do.end.i45.i, %do.body.i42.i.s5h1420_getfreqoffset.exit_crit_edge
  %conv4.i = zext i8 %call3.i to i32
  %shl.i = shl nuw nsw i32 %conv4.i, 16
  %conv6.i = zext i8 %call5.i to i32
  %shl7.i = shl nuw nsw i32 %conv6.i, 8
  %or8.i = or i32 %shl7.i, %shl.i
  %conv10.i = zext i8 %call9.i to i32
  %or11.i = or i32 %or8.i, %conv10.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i33.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i32.i) #9
  %38 = and i32 %conv4.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i = icmp eq i32 %38, 0
  %or17.i = or i32 %or11.i, -16777216
  %spec.select.i = select i1 %tobool.not.i, i32 %or11.i, i32 %or17.i
  %fclk.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  %39 = ptrtoint ptr %fclk.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fclk.i, align 4
  %div.i = udiv i32 %40, 1000000
  %41 = mul i32 %spec.select.i, %div.i
  %mul.i = sub i32 0, %41
  %div1831.i = lshr i32 %mul.i, 24
  %add = add i32 %div1831.i, %3
  %42 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %add, ptr %p, align 4
  %call.i11 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 50) #9
  %43 = lshr i8 %call.i11, 3
  %.lobit.i = and i8 %43, 1
  %44 = zext i8 %.lobit.i to i32
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 4
  %45 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %inversion, align 4
  %symbol_rate.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 9
  %46 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %symbol_rate.i, align 8
  %symbol_rate = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 10
  %48 = ptrtoint ptr %symbol_rate to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %symbol_rate, align 4
  %call.i12 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 50) #9
  %49 = and i8 %call.i12, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %49)
  %50 = icmp ult i8 %49, 6
  br i1 %50, label %switch.lookup, label %s5h1420_getfreqoffset.exit.s5h1420_getfec.exit_crit_edge

s5h1420_getfreqoffset.exit.s5h1420_getfec.exit_crit_edge: ; preds = %s5h1420_getfreqoffset.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_getfec.exit

switch.lookup:                                    ; preds = %s5h1420_getfreqoffset.exit
  call void @__sanitizer_cov_trace_pc() #11
  %and.i = zext i8 %49 to i32
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.s5h1420_get_frontend, i32 0, i32 %and.i
  %51 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %51)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %s5h1420_getfec.exit

s5h1420_getfec.exit:                              ; preds = %switch.lookup, %s5h1420_getfreqoffset.exit.s5h1420_getfec.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ 0, %s5h1420_getfreqoffset.exit.s5h1420_getfec.exit_crit_edge ]
  %fec_inner = getelementptr inbounds %struct.dtv_frontend_properties, ptr %p, i32 0, i32 5
  %52 = ptrtoint ptr %fec_inner to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %retval.0.i, ptr %fec_inner, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_read_status(ptr nocapture noundef readonly %fe, ptr noundef %status) #2 align 64 {
entry:
  %buf.i363 = alloca [2 x i8], align 1
  %msg.i364 = alloca %struct.i2c_msg, align 4
  %buf.i346 = alloca [2 x i8], align 1
  %msg.i347 = alloca %struct.i2c_msg, align 4
  %buf.i329 = alloca [2 x i8], align 1
  %msg.i330 = alloca %struct.i2c_msg, align 4
  %buf.i312 = alloca [2 x i8], align 1
  %msg.i313 = alloca %struct.i2c_msg, align 4
  %buf.i293 = alloca [2 x i8], align 1
  %msg.i294 = alloca %struct.i2c_msg, align 4
  %buf.i275 = alloca [2 x i8], align 1
  %msg.i276 = alloca %struct.i2c_msg, align 4
  %buf.i258 = alloca [2 x i8], align 1
  %msg.i259 = alloca %struct.i2c_msg, align 4
  %buf.i241 = alloca [2 x i8], align 1
  %msg.i242 = alloca %struct.i2c_msg, align 4
  %buf.i224 = alloca [2 x i8], align 1
  %msg.i225 = alloca %struct.i2c_msg, align 4
  %buf.i198 = alloca [2 x i8], align 1
  %msg.i199 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.43) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %cmp = icmp eq ptr %status, null
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end5

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end5:                                          ; preds = %do.end3
  %call.i = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 20) #9
  %trunc.i = trunc i8 %call.i to i2
  %rev.i = tail call i2 @llvm.bitreverse.i2(i2 %trunc.i) #9
  %3 = zext i2 %rev.i to i32
  %call7.i = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 54) #9
  %conv8.i = zext i8 %call7.i to i32
  %and9.i = shl nuw nsw i32 %conv8.i, 2
  %4 = and i32 %and9.i, 4
  %5 = or i32 %4, %3
  %and15.i = lshr i32 %conv8.i, 2
  %6 = and i32 %and15.i, 8
  %7 = or i32 %5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp.i = icmp eq i32 %7, 15
  %status.4.i = select i1 %cmp.i, i32 31, i32 %7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %status.4.i, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %status.4.i)
  %cmp7 = icmp eq i32 %status.4.i, 7
  br i1 %cmp7, label %if.then8, label %if.end5.if.end23_crit_edge

if.end5.if.end23_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then8:                                         ; preds = %if.end5
  %call9 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 50)
  %conv = zext i8 %call9 to i32
  %and = and i32 %conv, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp10 = icmp eq i32 %and, 3
  br i1 %cmp10, label %if.then12, label %if.then8.if.end23_crit_edge

if.then8.if.end23_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then12:                                        ; preds = %if.then8
  %and14 = and i32 %conv, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %9 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %10 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 49, ptr %buf.i, align 1
  %11 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 19, ptr %9, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %12 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %config.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %15, align 1
  %conv.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  store i16 2, ptr %12, align 4
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i, ptr %buf1.i, align 4
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 8
  %call.i196 = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i196)
  %cmp.not.i = icmp eq i32 %call.i196, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %if.then16
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not.i = icmp eq i32 %23, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i196, i32 noundef 49, i32 noundef 19) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 49
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 19, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  br label %while.body.preheader

if.else:                                          ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i198) #9
  %25 = getelementptr inbounds [2 x i8], ptr %buf.i198, i32 0, i32 1
  %26 = ptrtoint ptr %buf.i198 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 49, ptr %buf.i198, align 1
  %27 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 27, ptr %25, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i199) #9
  %28 = getelementptr inbounds i8, ptr %msg.i199, i32 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 -1, ptr %28, align 4
  %config.i200 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %config.i200 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %config.i200, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %31, align 1
  %conv.i201 = zext i8 %33 to i16
  %34 = ptrtoint ptr %msg.i199 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i201, ptr %msg.i199, align 4
  %flags.i202 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i199, i32 0, i32 1
  %35 = ptrtoint ptr %flags.i202 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 0, ptr %flags.i202, align 2
  store i16 2, ptr %28, align 4
  %buf1.i204 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i199, i32 0, i32 3
  %36 = ptrtoint ptr %buf1.i204 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %buf.i198, ptr %buf1.i204, align 4
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 8
  %call.i205 = call i32 @i2c_transfer(ptr noundef %38, ptr noundef nonnull %msg.i199, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i205)
  %cmp.not.i206 = icmp eq i32 %call.i205, 1
  br i1 %cmp.not.i206, label %if.end10.i212, label %do.body.i208

do.body.i208:                                     ; preds = %if.else
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i207 = icmp eq i32 %39, 0
  br i1 %tobool.not.i207, label %do.body.i208.s5h1420_writereg.exit214_crit_edge, label %do.end.i210

do.body.i208.s5h1420_writereg.exit214_crit_edge:  ; preds = %do.body.i208
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit214

do.end.i210:                                      ; preds = %do.body.i208
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i209 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i205, i32 noundef 49, i32 noundef 27) #13
  br label %s5h1420_writereg.exit214

if.end10.i212:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i211 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 49
  %40 = ptrtoint ptr %arrayidx.i211 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 27, ptr %arrayidx.i211, align 1
  br label %s5h1420_writereg.exit214

s5h1420_writereg.exit214:                         ; preds = %if.end10.i212, %do.end.i210, %do.body.i208.s5h1420_writereg.exit214_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i199) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i198) #9
  br label %while.body.preheader

while.body.preheader:                             ; preds = %s5h1420_writereg.exit214, %s5h1420_writereg.exit
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %__ms.0380 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ 200, %while.body.preheader ]
  %dec = add nsw i32 %__ms.0380, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #9
  %tobool20.not = icmp eq i32 %dec, 0
  br i1 %tobool20.not, label %while.end, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %call.i215 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 20) #9
  %trunc.i216 = trunc i8 %call.i215 to i2
  %rev.i217 = call i2 @llvm.bitreverse.i2(i2 %trunc.i216) #9
  %42 = zext i2 %rev.i217 to i32
  %call7.i218 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 54) #9
  %conv8.i219 = zext i8 %call7.i218 to i32
  %and9.i220 = shl nuw nsw i32 %conv8.i219, 2
  %43 = and i32 %and9.i220, 4
  %44 = or i32 %43, %42
  %and15.i221 = lshr i32 %conv8.i219, 2
  %45 = and i32 %and15.i221, 8
  %46 = or i32 %44, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %46)
  %cmp.i222 = icmp eq i32 %46, 15
  %status.4.i223 = select i1 %cmp.i222, i32 31, i32 %46
  %47 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %status.4.i223, ptr %status, align 4
  br label %if.end23

if.end23:                                         ; preds = %while.end, %if.then8.if.end23_crit_edge, %if.end5.if.end23_crit_edge
  %48 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %status, align 4
  %and24 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end23.do.body136_crit_edge, label %land.lhs.true

if.end23.do.body136_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

land.lhs.true:                                    ; preds = %if.end23
  %postlocked = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %postlocked to i32
  call void @__asan_load1_noabort(i32 %50)
  %bf.load = load i8, ptr %postlocked, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool26.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool26.not, label %if.then27, label %land.lhs.true.do.body136_crit_edge

land.lhs.true.do.body136_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body136

if.then27:                                        ; preds = %land.lhs.true
  %symbol_rate.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 9
  %51 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %symbol_rate.i, align 8
  %call30 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 50)
  %53 = and i8 %call30, 7
  %and32 = zext i8 %53 to i32
  %54 = zext i32 %and32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.62)
  switch i32 %and32, label %if.then27.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb34
    i32 2, label %sw.bb38
    i32 3, label %sw.bb42
    i32 4, label %sw.bb46
    i32 5, label %sw.bb50
  ]

if.then27.sw.epilog_crit_edge:                    ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %mul = and i32 %52, 2147483647
  br label %sw.epilog

sw.bb34:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %mul36 = shl i32 %52, 2
  %div37 = udiv i32 %mul36, 3
  br label %sw.epilog

sw.bb38:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %mul40 = mul i32 %52, 6
  %div41194 = lshr i32 %mul40, 2
  br label %sw.epilog

sw.bb42:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %mul44 = mul i32 %52, 10
  %div45 = udiv i32 %mul44, 6
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %mul48 = mul i32 %52, 12
  %div49 = udiv i32 %mul48, 7
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  %mul52 = mul i32 %52, 14
  %div53193 = lshr i32 %mul52, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb50, %sw.bb46, %sw.bb42, %sw.bb38, %sw.bb34, %sw.bb, %if.then27.sw.epilog_crit_edge
  %tmp28.0 = phi i32 [ %52, %if.then27.sw.epilog_crit_edge ], [ %div53193, %sw.bb50 ], [ %div49, %sw.bb46 ], [ %div45, %sw.bb42 ], [ %div41194, %sw.bb38 ], [ %div37, %sw.bb34 ], [ %mul, %sw.bb ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %tmp28.0)
  %cmp54 = icmp eq i32 %tmp28.0, 0
  br i1 %cmp54, label %do.end59, label %sw.epilog.if.end62_crit_edge

sw.epilog.if.end62_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.end59:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #13
  br label %if.end62

if.end62:                                         ; preds = %do.end59, %sw.epilog.if.end62_crit_edge
  %tmp28.1 = phi i32 [ 1, %do.end59 ], [ %tmp28.0, %sw.epilog.if.end62_crit_edge ]
  %fclk = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 6
  %55 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %fclk, align 4
  %div63 = udiv i32 %56, %tmp28.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %div63)
  %cmp64 = icmp ult i32 %div63, 2
  br i1 %cmp64, label %if.end62.do.body99_crit_edge, label %if.else67

if.end62.do.body99_crit_edge:                     ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.else67:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div63)
  %cmp68 = icmp ult i32 %div63, 5
  br i1 %cmp68, label %if.else67.do.body99_crit_edge, label %if.else71

if.else67.do.body99_crit_edge:                    ; preds = %if.else67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.else71:                                        ; preds = %if.else67
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %div63)
  %cmp72 = icmp ult i32 %div63, 9
  br i1 %cmp72, label %if.else71.do.body99_crit_edge, label %if.else75

if.else71.do.body99_crit_edge:                    ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.else75:                                        ; preds = %if.else71
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %div63)
  %cmp76 = icmp ult i32 %div63, 13
  br i1 %cmp76, label %if.else75.do.body99_crit_edge, label %if.else79

if.else75.do.body99_crit_edge:                    ; preds = %if.else75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.else79:                                        ; preds = %if.else75
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %div63)
  %cmp80 = icmp ult i32 %div63, 17
  br i1 %cmp80, label %if.else79.do.body99_crit_edge, label %if.else83

if.else79.do.body99_crit_edge:                    ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.else83:                                        ; preds = %if.else79
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %div63)
  %cmp84 = icmp ult i32 %div63, 25
  br i1 %cmp84, label %if.else83.do.body99_crit_edge, label %if.else87

if.else83.do.body99_crit_edge:                    ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body99

if.else87:                                        ; preds = %if.else83
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 33, i32 %div63)
  %cmp88 = icmp ult i32 %div63, 33
  %. = select i1 %cmp88, i8 6, i8 7
  br label %do.body99

do.body99:                                        ; preds = %if.else87, %if.else83.do.body99_crit_edge, %if.else79.do.body99_crit_edge, %if.else75.do.body99_crit_edge, %if.else71.do.body99_crit_edge, %if.else67.do.body99_crit_edge, %if.end62.do.body99_crit_edge
  %val.0 = phi i8 [ 0, %if.end62.do.body99_crit_edge ], [ 1, %if.else67.do.body99_crit_edge ], [ 2, %if.else71.do.body99_crit_edge ], [ 3, %if.else75.do.body99_crit_edge ], [ 4, %if.else79.do.body99_crit_edge ], [ 5, %if.else83.do.body99_crit_edge ], [ %., %if.else87 ]
  %57 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool100.not = icmp eq i32 %57, 0
  br i1 %tobool100.not, label %do.body99.do.end110_crit_edge, label %do.end104

do.body99.do.end110_crit_edge:                    ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end110

do.end104:                                        ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #11
  %conv106 = zext i8 %val.0 to i32
  %call107 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48, i32 noundef %div63, i32 noundef %conv106) #13
  br label %do.end110

do.end110:                                        ; preds = %do.end104, %do.body99.do.end110_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i224) #9
  %58 = getelementptr inbounds [2 x i8], ptr %buf.i224, i32 0, i32 1
  %59 = ptrtoint ptr %buf.i224 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 34, ptr %buf.i224, align 1
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 24, ptr %58, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i225) #9
  %61 = getelementptr inbounds i8, ptr %msg.i225, i32 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -1, ptr %61, align 4
  %config.i226 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %63 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %config.i226, align 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %64, align 1
  %conv.i227 = zext i8 %66 to i16
  %67 = ptrtoint ptr %msg.i225 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %conv.i227, ptr %msg.i225, align 4
  %flags.i228 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i225, i32 0, i32 1
  %68 = ptrtoint ptr %flags.i228 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 0, ptr %flags.i228, align 2
  store i16 2, ptr %61, align 4
  %buf1.i230 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i225, i32 0, i32 3
  %69 = ptrtoint ptr %buf1.i230 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %buf.i224, ptr %buf1.i230, align 4
  %70 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %1, align 8
  %call.i231 = call i32 @i2c_transfer(ptr noundef %71, ptr noundef nonnull %msg.i225, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i231)
  %cmp.not.i232 = icmp eq i32 %call.i231, 1
  br i1 %cmp.not.i232, label %if.end10.i238, label %do.body.i234

do.body.i234:                                     ; preds = %do.end110
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i233 = icmp eq i32 %72, 0
  br i1 %tobool.not.i233, label %do.body.i234.s5h1420_writereg.exit240_crit_edge, label %do.end.i236

do.body.i234.s5h1420_writereg.exit240_crit_edge:  ; preds = %do.body.i234
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit240

do.end.i236:                                      ; preds = %do.body.i234
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i231, i32 noundef 34, i32 noundef 24) #13
  br label %s5h1420_writereg.exit240

if.end10.i238:                                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i237 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 34
  %73 = ptrtoint ptr %arrayidx.i237 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 24, ptr %arrayidx.i237, align 1
  br label %s5h1420_writereg.exit240

s5h1420_writereg.exit240:                         ; preds = %if.end10.i238, %do.end.i236, %do.body.i234.s5h1420_writereg.exit240_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i225) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i224) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i241) #9
  %74 = getelementptr inbounds [2 x i8], ptr %buf.i241, i32 0, i32 1
  %75 = ptrtoint ptr %buf.i241 to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 34, ptr %buf.i241, align 1
  %76 = ptrtoint ptr %74 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 16, ptr %74, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i242) #9
  %77 = getelementptr inbounds i8, ptr %msg.i242, i32 4
  %78 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 -1, ptr %77, align 4
  %79 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %config.i226, align 4
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %80, align 1
  %conv.i244 = zext i8 %82 to i16
  %83 = ptrtoint ptr %msg.i242 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i244, ptr %msg.i242, align 4
  %flags.i245 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i242, i32 0, i32 1
  %84 = ptrtoint ptr %flags.i245 to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 0, ptr %flags.i245, align 2
  store i16 2, ptr %77, align 4
  %buf1.i247 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i242, i32 0, i32 3
  %85 = ptrtoint ptr %buf1.i247 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %buf.i241, ptr %buf1.i247, align 4
  %86 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %1, align 8
  %call.i248 = call i32 @i2c_transfer(ptr noundef %87, ptr noundef nonnull %msg.i242, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i248)
  %cmp.not.i249 = icmp eq i32 %call.i248, 1
  br i1 %cmp.not.i249, label %if.end10.i255, label %do.body.i251

do.body.i251:                                     ; preds = %s5h1420_writereg.exit240
  %88 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool.not.i250 = icmp eq i32 %88, 0
  br i1 %tobool.not.i250, label %do.body.i251.s5h1420_writereg.exit257_crit_edge, label %do.end.i253

do.body.i251.s5h1420_writereg.exit257_crit_edge:  ; preds = %do.body.i251
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit257

do.end.i253:                                      ; preds = %do.body.i251
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i252 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i248, i32 noundef 34, i32 noundef 16) #13
  br label %s5h1420_writereg.exit257

if.end10.i255:                                    ; preds = %s5h1420_writereg.exit240
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i254 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 34
  %89 = ptrtoint ptr %arrayidx.i254 to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 16, ptr %arrayidx.i254, align 1
  br label %s5h1420_writereg.exit257

s5h1420_writereg.exit257:                         ; preds = %if.end10.i255, %do.end.i253, %do.body.i251.s5h1420_writereg.exit257_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i242) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i241) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i258) #9
  %90 = getelementptr inbounds [2 x i8], ptr %buf.i258, i32 0, i32 1
  %91 = ptrtoint ptr %buf.i258 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 34, ptr %buf.i258, align 1
  %92 = ptrtoint ptr %90 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %val.0, ptr %90, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i259) #9
  %93 = getelementptr inbounds i8, ptr %msg.i259, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 -1, ptr %93, align 4
  %95 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %config.i226, align 4
  %97 = ptrtoint ptr %96 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %96, align 1
  %conv.i261 = zext i8 %98 to i16
  %99 = ptrtoint ptr %msg.i259 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %conv.i261, ptr %msg.i259, align 4
  %flags.i262 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i259, i32 0, i32 1
  %100 = ptrtoint ptr %flags.i262 to i32
  call void @__asan_store2_noabort(i32 %100)
  store i16 0, ptr %flags.i262, align 2
  store i16 2, ptr %93, align 4
  %buf1.i264 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i259, i32 0, i32 3
  %101 = ptrtoint ptr %buf1.i264 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %buf.i258, ptr %buf1.i264, align 4
  %102 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %1, align 8
  %call.i265 = call i32 @i2c_transfer(ptr noundef %103, ptr noundef nonnull %msg.i259, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i265)
  %cmp.not.i266 = icmp eq i32 %call.i265, 1
  br i1 %cmp.not.i266, label %if.end10.i272, label %do.body.i268

do.body.i268:                                     ; preds = %s5h1420_writereg.exit257
  %104 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool.not.i267 = icmp eq i32 %104, 0
  br i1 %tobool.not.i267, label %do.body.i268.s5h1420_writereg.exit274_crit_edge, label %do.end.i270

do.body.i268.s5h1420_writereg.exit274_crit_edge:  ; preds = %do.body.i268
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit274

do.end.i270:                                      ; preds = %do.body.i268
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %val.0 to i32
  %call7.i269 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i265, i32 noundef 34, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit274

if.end10.i272:                                    ; preds = %s5h1420_writereg.exit257
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i271 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 34
  %105 = ptrtoint ptr %arrayidx.i271 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %val.0, ptr %arrayidx.i271, align 1
  br label %s5h1420_writereg.exit274

s5h1420_writereg.exit274:                         ; preds = %if.end10.i272, %do.end.i270, %do.body.i268.s5h1420_writereg.exit274_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i259) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i258) #9
  %call114 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 57)
  %106 = or i8 %call114, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i275) #9
  %107 = getelementptr inbounds [2 x i8], ptr %buf.i275, i32 0, i32 1
  %108 = ptrtoint ptr %buf.i275 to i32
  call void @__asan_store1_noabort(i32 %108)
  store i8 57, ptr %buf.i275, align 1
  %109 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 %106, ptr %107, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i276) #9
  %110 = getelementptr inbounds i8, ptr %msg.i276, i32 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 196607, ptr %110, align 4
  %112 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %config.i226, align 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %113, align 1
  %conv.i278 = zext i8 %115 to i16
  %116 = ptrtoint ptr %msg.i276 to i32
  call void @__asan_store2_noabort(i32 %116)
  store i16 %conv.i278, ptr %msg.i276, align 4
  %flags.i279 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i276, i32 0, i32 1
  %117 = ptrtoint ptr %flags.i279 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 0, ptr %flags.i279, align 2
  %buf1.i281 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i276, i32 0, i32 3
  %118 = ptrtoint ptr %buf1.i281 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %buf.i275, ptr %buf1.i281, align 4
  %119 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %1, align 8
  %call.i282 = call i32 @i2c_transfer(ptr noundef %120, ptr noundef nonnull %msg.i276, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i282)
  %cmp.not.i283 = icmp eq i32 %call.i282, 1
  br i1 %cmp.not.i283, label %if.end10.i290, label %do.body.i285

do.body.i285:                                     ; preds = %s5h1420_writereg.exit274
  %121 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool.not.i284 = icmp eq i32 %121, 0
  br i1 %tobool.not.i284, label %do.body.i285.s5h1420_writereg.exit292_crit_edge, label %do.end.i288

do.body.i285.s5h1420_writereg.exit292_crit_edge:  ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit292

do.end.i288:                                      ; preds = %do.body.i285
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i286 = zext i8 %106 to i32
  %call7.i287 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i282, i32 noundef 57, i32 noundef %conv6.i286) #13
  br label %s5h1420_writereg.exit292

if.end10.i290:                                    ; preds = %s5h1420_writereg.exit274
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i289 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 57
  %122 = ptrtoint ptr %arrayidx.i289 to i32
  call void @__asan_store1_noabort(i32 %122)
  store i8 %106, ptr %arrayidx.i289, align 1
  br label %s5h1420_writereg.exit292

s5h1420_writereg.exit292:                         ; preds = %if.end10.i290, %do.end.i288, %do.body.i285.s5h1420_writereg.exit292_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i276) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i275) #9
  %call118 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 5)
  %123 = and i8 %call118, 127
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i293) #9
  %124 = getelementptr inbounds [2 x i8], ptr %buf.i293, i32 0, i32 1
  %125 = ptrtoint ptr %buf.i293 to i32
  call void @__asan_store1_noabort(i32 %125)
  store i8 5, ptr %buf.i293, align 1
  %126 = ptrtoint ptr %124 to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %123, ptr %124, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i294) #9
  %127 = getelementptr inbounds i8, ptr %msg.i294, i32 4
  %128 = ptrtoint ptr %127 to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 196607, ptr %127, align 4
  %129 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %config.i226, align 4
  %131 = ptrtoint ptr %130 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %130, align 1
  %conv.i296 = zext i8 %132 to i16
  %133 = ptrtoint ptr %msg.i294 to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv.i296, ptr %msg.i294, align 4
  %flags.i297 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294, i32 0, i32 1
  %134 = ptrtoint ptr %flags.i297 to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %flags.i297, align 2
  %buf1.i299 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i294, i32 0, i32 3
  %135 = ptrtoint ptr %buf1.i299 to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %buf.i293, ptr %buf1.i299, align 4
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 8
  %call.i300 = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %msg.i294, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i300)
  %cmp.not.i301 = icmp eq i32 %call.i300, 1
  br i1 %cmp.not.i301, label %if.end10.i308, label %do.body.i303

do.body.i303:                                     ; preds = %s5h1420_writereg.exit292
  %138 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool.not.i302 = icmp eq i32 %138, 0
  br i1 %tobool.not.i302, label %do.body.i303.s5h1420_writereg.exit310_crit_edge, label %do.end.i306

do.body.i303.s5h1420_writereg.exit310_crit_edge:  ; preds = %do.body.i303
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit310

do.end.i306:                                      ; preds = %do.body.i303
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i304 = zext i8 %123 to i32
  %call7.i305 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i300, i32 noundef 5, i32 noundef %conv6.i304) #13
  br label %s5h1420_writereg.exit310

if.end10.i308:                                    ; preds = %s5h1420_writereg.exit292
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i307 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 5
  %139 = ptrtoint ptr %arrayidx.i307 to i32
  call void @__asan_store1_noabort(i32 %139)
  store i8 %123, ptr %arrayidx.i307, align 1
  br label %s5h1420_writereg.exit310

s5h1420_writereg.exit310:                         ; preds = %if.end10.i308, %do.end.i306, %do.body.i303.s5h1420_writereg.exit310_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i294) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i293) #9
  %140 = ptrtoint ptr %symbol_rate.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %symbol_rate.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 19999999, i32 %141)
  %cmp124 = icmp ugt i32 %141, 19999999
  br i1 %cmp124, label %if.then126, label %if.else129

if.then126:                                       ; preds = %s5h1420_writereg.exit310
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i312) #9
  %142 = getelementptr inbounds [2 x i8], ptr %buf.i312, i32 0, i32 1
  %143 = ptrtoint ptr %buf.i312 to i32
  call void @__asan_store1_noabort(i32 %143)
  store i8 12, ptr %buf.i312, align 1
  %144 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %144)
  store i8 -118, ptr %142, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i313) #9
  %145 = getelementptr inbounds i8, ptr %msg.i313, i32 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_store4_noabort(i32 %146)
  store i32 196607, ptr %145, align 4
  %147 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %config.i226, align 4
  %149 = ptrtoint ptr %148 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %148, align 1
  %conv.i315 = zext i8 %150 to i16
  %151 = ptrtoint ptr %msg.i313 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %conv.i315, ptr %msg.i313, align 4
  %flags.i316 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 1
  %152 = ptrtoint ptr %flags.i316 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %flags.i316, align 2
  %buf1.i318 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i313, i32 0, i32 3
  %153 = ptrtoint ptr %buf1.i318 to i32
  call void @__asan_store4_noabort(i32 %153)
  store ptr %buf.i312, ptr %buf1.i318, align 4
  %154 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %1, align 8
  %call.i319 = call i32 @i2c_transfer(ptr noundef %155, ptr noundef nonnull %msg.i313, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i319)
  %cmp.not.i320 = icmp eq i32 %call.i319, 1
  br i1 %cmp.not.i320, label %if.end10.i326, label %do.body.i322

do.body.i322:                                     ; preds = %if.then126
  %156 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool.not.i321 = icmp eq i32 %156, 0
  br i1 %tobool.not.i321, label %do.body.i322.s5h1420_writereg.exit328_crit_edge, label %do.end.i324

do.body.i322.s5h1420_writereg.exit328_crit_edge:  ; preds = %do.body.i322
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit328

do.end.i324:                                      ; preds = %do.body.i322
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i323 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i319, i32 noundef 12, i32 noundef 138) #13
  br label %s5h1420_writereg.exit328

if.end10.i326:                                    ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i325 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 12
  %157 = ptrtoint ptr %arrayidx.i325 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 -118, ptr %arrayidx.i325, align 1
  br label %s5h1420_writereg.exit328

s5h1420_writereg.exit328:                         ; preds = %if.end10.i326, %do.end.i324, %do.body.i322.s5h1420_writereg.exit328_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i313) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i312) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i329) #9
  %158 = getelementptr inbounds [2 x i8], ptr %buf.i329, i32 0, i32 1
  %159 = ptrtoint ptr %buf.i329 to i32
  call void @__asan_store1_noabort(i32 %159)
  store i8 13, ptr %buf.i329, align 1
  %160 = ptrtoint ptr %158 to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 106, ptr %158, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i330) #9
  %161 = getelementptr inbounds i8, ptr %msg.i330, i32 4
  %162 = ptrtoint ptr %161 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 196607, ptr %161, align 4
  %163 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %config.i226, align 4
  %165 = ptrtoint ptr %164 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %164, align 1
  %conv.i332 = zext i8 %166 to i16
  %167 = ptrtoint ptr %msg.i330 to i32
  call void @__asan_store2_noabort(i32 %167)
  store i16 %conv.i332, ptr %msg.i330, align 4
  %flags.i333 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i330, i32 0, i32 1
  %168 = ptrtoint ptr %flags.i333 to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 0, ptr %flags.i333, align 2
  %buf1.i335 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i330, i32 0, i32 3
  %169 = ptrtoint ptr %buf1.i335 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %buf.i329, ptr %buf1.i335, align 4
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %1, align 8
  %call.i336 = call i32 @i2c_transfer(ptr noundef %171, ptr noundef nonnull %msg.i330, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i336)
  %cmp.not.i337 = icmp eq i32 %call.i336, 1
  br i1 %cmp.not.i337, label %if.end10.i343, label %do.body.i339

do.body.i339:                                     ; preds = %s5h1420_writereg.exit328
  %172 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool.not.i338 = icmp eq i32 %172, 0
  br i1 %tobool.not.i338, label %do.body.i339.s5h1420_writereg.exit345_crit_edge, label %do.end.i341

do.body.i339.s5h1420_writereg.exit345_crit_edge:  ; preds = %do.body.i339
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit345

do.end.i341:                                      ; preds = %do.body.i339
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i340 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i336, i32 noundef 13, i32 noundef 106) #13
  br label %s5h1420_writereg.exit345

if.end10.i343:                                    ; preds = %s5h1420_writereg.exit328
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i342 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 13
  %173 = ptrtoint ptr %arrayidx.i342 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 106, ptr %arrayidx.i342, align 1
  br label %s5h1420_writereg.exit345

s5h1420_writereg.exit345:                         ; preds = %if.end10.i343, %do.end.i341, %do.body.i339.s5h1420_writereg.exit345_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i330) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i329) #9
  br label %if.end132

if.else129:                                       ; preds = %s5h1420_writereg.exit310
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i346) #9
  %174 = getelementptr inbounds [2 x i8], ptr %buf.i346, i32 0, i32 1
  %175 = ptrtoint ptr %buf.i346 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 12, ptr %buf.i346, align 1
  %176 = ptrtoint ptr %174 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 88, ptr %174, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i347) #9
  %177 = getelementptr inbounds i8, ptr %msg.i347, i32 4
  %178 = ptrtoint ptr %177 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 196607, ptr %177, align 4
  %179 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %config.i226, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %180, align 1
  %conv.i349 = zext i8 %182 to i16
  %183 = ptrtoint ptr %msg.i347 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv.i349, ptr %msg.i347, align 4
  %flags.i350 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i347, i32 0, i32 1
  %184 = ptrtoint ptr %flags.i350 to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 0, ptr %flags.i350, align 2
  %buf1.i352 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i347, i32 0, i32 3
  %185 = ptrtoint ptr %buf1.i352 to i32
  call void @__asan_store4_noabort(i32 %185)
  store ptr %buf.i346, ptr %buf1.i352, align 4
  %186 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %1, align 8
  %call.i353 = call i32 @i2c_transfer(ptr noundef %187, ptr noundef nonnull %msg.i347, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i353)
  %cmp.not.i354 = icmp eq i32 %call.i353, 1
  br i1 %cmp.not.i354, label %if.end10.i360, label %do.body.i356

do.body.i356:                                     ; preds = %if.else129
  %188 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool.not.i355 = icmp eq i32 %188, 0
  br i1 %tobool.not.i355, label %do.body.i356.s5h1420_writereg.exit362_crit_edge, label %do.end.i358

do.body.i356.s5h1420_writereg.exit362_crit_edge:  ; preds = %do.body.i356
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit362

do.end.i358:                                      ; preds = %do.body.i356
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i357 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i353, i32 noundef 12, i32 noundef 88) #13
  br label %s5h1420_writereg.exit362

if.end10.i360:                                    ; preds = %if.else129
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i359 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 12
  %189 = ptrtoint ptr %arrayidx.i359 to i32
  call void @__asan_store1_noabort(i32 %189)
  store i8 88, ptr %arrayidx.i359, align 1
  br label %s5h1420_writereg.exit362

s5h1420_writereg.exit362:                         ; preds = %if.end10.i360, %do.end.i358, %do.body.i356.s5h1420_writereg.exit362_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i347) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i346) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i363) #9
  %190 = getelementptr inbounds [2 x i8], ptr %buf.i363, i32 0, i32 1
  %191 = ptrtoint ptr %buf.i363 to i32
  call void @__asan_store1_noabort(i32 %191)
  store i8 13, ptr %buf.i363, align 1
  %192 = ptrtoint ptr %190 to i32
  call void @__asan_store1_noabort(i32 %192)
  store i8 39, ptr %190, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i364) #9
  %193 = getelementptr inbounds i8, ptr %msg.i364, i32 4
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 196607, ptr %193, align 4
  %195 = ptrtoint ptr %config.i226 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %config.i226, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load1_noabort(i32 %197)
  %198 = load i8, ptr %196, align 1
  %conv.i366 = zext i8 %198 to i16
  %199 = ptrtoint ptr %msg.i364 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 %conv.i366, ptr %msg.i364, align 4
  %flags.i367 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i364, i32 0, i32 1
  %200 = ptrtoint ptr %flags.i367 to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 0, ptr %flags.i367, align 2
  %buf1.i369 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i364, i32 0, i32 3
  %201 = ptrtoint ptr %buf1.i369 to i32
  call void @__asan_store4_noabort(i32 %201)
  store ptr %buf.i363, ptr %buf1.i369, align 4
  %202 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %1, align 8
  %call.i370 = call i32 @i2c_transfer(ptr noundef %203, ptr noundef nonnull %msg.i364, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i370)
  %cmp.not.i371 = icmp eq i32 %call.i370, 1
  br i1 %cmp.not.i371, label %if.end10.i377, label %do.body.i373

do.body.i373:                                     ; preds = %s5h1420_writereg.exit362
  %204 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %204)
  %tobool.not.i372 = icmp eq i32 %204, 0
  br i1 %tobool.not.i372, label %do.body.i373.s5h1420_writereg.exit379_crit_edge, label %do.end.i375

do.body.i373.s5h1420_writereg.exit379_crit_edge:  ; preds = %do.body.i373
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit379

do.end.i375:                                      ; preds = %do.body.i373
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i374 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i370, i32 noundef 13, i32 noundef 39) #13
  br label %s5h1420_writereg.exit379

if.end10.i377:                                    ; preds = %s5h1420_writereg.exit362
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i376 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 13
  %205 = ptrtoint ptr %arrayidx.i376 to i32
  call void @__asan_store1_noabort(i32 %205)
  store i8 39, ptr %arrayidx.i376, align 1
  br label %s5h1420_writereg.exit379

s5h1420_writereg.exit379:                         ; preds = %if.end10.i377, %do.end.i375, %do.body.i373.s5h1420_writereg.exit379_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i364) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i363) #9
  br label %if.end132

if.end132:                                        ; preds = %s5h1420_writereg.exit379, %s5h1420_writereg.exit345
  %206 = ptrtoint ptr %postlocked to i32
  call void @__asan_load1_noabort(i32 %206)
  %bf.load134 = load i8, ptr %postlocked, align 1
  %bf.set = or i8 %bf.load134, -128
  store i8 %bf.set, ptr %postlocked, align 1
  br label %do.body136

do.body136:                                       ; preds = %if.end132, %land.lhs.true.do.body136_crit_edge, %if.end23.do.body136_crit_edge
  %207 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %207)
  %tobool137.not = icmp eq i32 %207, 0
  br i1 %tobool137.not, label %do.body136.cleanup_crit_edge, label %do.end141

do.body136.cleanup_crit_edge:                     ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end141:                                        ; preds = %do.body136
  call void @__sanitizer_cov_trace_pc() #11
  %call143 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.43) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end141, %do.body136.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ 0, %do.end141 ], [ 0, %do.body136.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ber) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 70, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 29, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 70, i32 noundef 29) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 70
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 29, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #9
  %call1 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 72)
  %conv = zext i8 %call1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %call2 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 71)
  %conv3 = zext i8 %call2 to i32
  %or = or i32 %shl, %conv3
  %43 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %ber, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 21)
  %conv = zext i8 %call to i16
  %or = mul nuw i16 %conv, 257
  %2 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %or, ptr %strength, align 2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %ucblocks) #2 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 70, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 31, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 70, i32 noundef 31) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 70
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 31, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %18(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %19(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %20(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %22(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %23(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %24(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %25(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %26(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %27(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %28(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %29(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %30(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %31(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %32(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %34(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %35(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %36(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %37(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %38(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %39(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %40(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %41(i32 noundef 214748000) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %42(i32 noundef 214748000) #9
  %call1 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 72)
  %conv = zext i8 %call1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %call2 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 71)
  %conv3 = zext i8 %call2 to i32
  %or = or i32 %shl, %conv3
  %43 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or, ptr %ucblocks, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_send_master_cmd(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %cmd) #2 align 64 {
entry:
  %buf.i100 = alloca [2 x i8], align 1
  %msg.i101 = alloca %struct.i2c_msg, align 4
  %buf.i82 = alloca [2 x i8], align 1
  %msg.i83 = alloca %struct.i2c_msg, align 4
  %buf.i65 = alloca [2 x i8], align 1
  %msg.i66 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.52) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_master_cmd, ptr %cmd, i32 0, i32 1
  %3 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %4)
  %cmp = icmp ugt i8 %4, 6
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %call7 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 59, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf1.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %if.end6
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 59, i32 noundef 2) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 2, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @msleep(i32 noundef 15) #9
  %21 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %msg_len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp11119.not = icmp eq i8 %22, 0
  br i1 %cmp11119.not, label %s5h1420_writereg.exit.for.end_crit_edge, label %for.body.lr.ph

s5h1420_writereg.exit.for.end_crit_edge:          ; preds = %s5h1420_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %s5h1420_writereg.exit
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i65, i32 0, i32 1
  %24 = getelementptr inbounds i8, ptr %msg.i66, i32 4
  %flags.i69 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 1
  %buf1.i71 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i66, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %s5h1420_writereg.exit81.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %s5h1420_writereg.exit81.for.body_crit_edge ]
  %25 = trunc i32 %i.0120 to i8
  %conv13 = add i8 %25, 61
  %arrayidx = getelementptr [6 x i8], ptr %cmd, i32 0, i32 %i.0120
  %26 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i65) #9
  %28 = ptrtoint ptr %buf.i65 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %conv13, ptr %buf.i65, align 1
  %29 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %27, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i66) #9
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %24, align 4
  %31 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %config.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %32, align 1
  %conv.i68 = zext i8 %34 to i16
  %35 = ptrtoint ptr %msg.i66 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv.i68, ptr %msg.i66, align 4
  %36 = ptrtoint ptr %flags.i69 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 0, ptr %flags.i69, align 2
  store i16 2, ptr %24, align 4
  %37 = ptrtoint ptr %buf1.i71 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %buf.i65, ptr %buf1.i71, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %call.i72 = call i32 @i2c_transfer(ptr noundef %39, ptr noundef nonnull %msg.i66, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i72)
  %cmp.not.i73 = icmp eq i32 %call.i72, 1
  br i1 %cmp.not.i73, label %if.end10.i79, label %do.body.i75

do.body.i75:                                      ; preds = %for.body
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i74 = icmp eq i32 %40, 0
  br i1 %tobool.not.i74, label %do.body.i75.s5h1420_writereg.exit81_crit_edge, label %do.end.i77

do.body.i75.s5h1420_writereg.exit81_crit_edge:    ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit81

do.end.i77:                                       ; preds = %do.body.i75
  call void @__sanitizer_cov_trace_pc() #11
  %conv5.i = zext i8 %conv13 to i32
  %conv6.i = zext i8 %27 to i32
  %call7.i76 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i72, i32 noundef %conv5.i, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit81

if.end10.i79:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %idxprom.i = zext i8 %conv13 to i32
  %arrayidx.i78 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 %idxprom.i
  %41 = ptrtoint ptr %arrayidx.i78 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %27, ptr %arrayidx.i78, align 1
  br label %s5h1420_writereg.exit81

s5h1420_writereg.exit81:                          ; preds = %if.end10.i79, %do.end.i77, %do.body.i75.s5h1420_writereg.exit81_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i66) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i65) #9
  %inc = add nuw nsw i32 %i.0120, 1
  %42 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %msg_len, align 1
  %conv10 = zext i8 %43 to i32
  %cmp11 = icmp ult i32 %inc, %conv10
  br i1 %cmp11, label %s5h1420_writereg.exit81.for.body_crit_edge, label %s5h1420_writereg.exit81.for.end_crit_edge

s5h1420_writereg.exit81.for.end_crit_edge:        ; preds = %s5h1420_writereg.exit81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

s5h1420_writereg.exit81.for.body_crit_edge:       ; preds = %s5h1420_writereg.exit81
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %s5h1420_writereg.exit81.for.end_crit_edge, %s5h1420_writereg.exit.for.end_crit_edge
  %call15 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %44 = ptrtoint ptr %msg_len to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %msg_len, align 1
  %sub = shl i8 %45, 4
  %shl = add i8 %sub, -16
  %or = or i8 %call15, %shl
  %or19 = or i8 %or, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i82) #9
  %46 = getelementptr inbounds [2 x i8], ptr %buf.i82, i32 0, i32 1
  %47 = ptrtoint ptr %buf.i82 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 59, ptr %buf.i82, align 1
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %or19, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i83) #9
  %49 = getelementptr inbounds i8, ptr %msg.i83, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 196607, ptr %49, align 4
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %config.i, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %52, align 1
  %conv.i85 = zext i8 %54 to i16
  %55 = ptrtoint ptr %msg.i83 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 %conv.i85, ptr %msg.i83, align 4
  %flags.i86 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 0, i32 1
  %56 = ptrtoint ptr %flags.i86 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %flags.i86, align 2
  %buf1.i88 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i83, i32 0, i32 3
  %57 = ptrtoint ptr %buf1.i88 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i82, ptr %buf1.i88, align 4
  %58 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %1, align 8
  %call.i89 = call i32 @i2c_transfer(ptr noundef %59, ptr noundef nonnull %msg.i83, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i89)
  %cmp.not.i90 = icmp eq i32 %call.i89, 1
  br i1 %cmp.not.i90, label %if.end10.i97, label %do.body.i92

do.body.i92:                                      ; preds = %for.end
  %60 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool.not.i91 = icmp eq i32 %60, 0
  br i1 %tobool.not.i91, label %do.body.i92.s5h1420_writereg.exit99_crit_edge, label %do.end.i95

do.body.i92.s5h1420_writereg.exit99_crit_edge:    ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit99

do.end.i95:                                       ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i93 = zext i8 %or19 to i32
  %call7.i94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i89, i32 noundef 59, i32 noundef %conv6.i93) #13
  br label %s5h1420_writereg.exit99

if.end10.i97:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i96 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %61 = ptrtoint ptr %arrayidx.i96 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %or19, ptr %arrayidx.i96, align 1
  br label %s5h1420_writereg.exit99

s5h1420_writereg.exit99:                          ; preds = %if.end10.i97, %do.end.i95, %do.body.i92.s5h1420_writereg.exit99_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i83) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i82) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %add22 = add i32 %62, 10
  %63 = load volatile i32, ptr @jiffies, align 128
  %sub23121 = sub i32 %63, %add22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub23121)
  %cmp24122 = icmp slt i32 %sub23121, 0
  br i1 %cmp24122, label %s5h1420_writereg.exit99.while.body_crit_edge, label %s5h1420_writereg.exit99.while.end_crit_edge

s5h1420_writereg.exit99.while.end_crit_edge:      ; preds = %s5h1420_writereg.exit99
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

s5h1420_writereg.exit99.while.body_crit_edge:     ; preds = %s5h1420_writereg.exit99
  br label %while.body

while.body:                                       ; preds = %if.end30.while.body_crit_edge, %s5h1420_writereg.exit99.while.body_crit_edge
  %call26 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %64 = and i8 %call26, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool28.not = icmp eq i8 %64, 0
  br i1 %tobool28.not, label %while.body.while.end_crit_edge, label %if.end30

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end30:                                         ; preds = %while.body
  call void @msleep(i32 noundef 5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %65 = load volatile i32, ptr @jiffies, align 128
  %sub23 = sub i32 %65, %add22
  %cmp24 = icmp slt i32 %sub23, 0
  br i1 %cmp24, label %if.end30.while.body_crit_edge, label %if.end30.while.end_crit_edge

if.end30.while.end_crit_edge:                     ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end30.while.body_crit_edge:                    ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end30.while.end_crit_edge, %while.body.while.end_crit_edge, %s5h1420_writereg.exit99.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %66 = load volatile i32, ptr @jiffies, align 128
  %sub31 = sub i32 %add22, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub31)
  %cmp32 = icmp slt i32 %sub31, 0
  %spec.select = select i1 %cmp32, i32 -110, i32 0
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i100) #9
  %67 = getelementptr inbounds [2 x i8], ptr %buf.i100, i32 0, i32 1
  %68 = ptrtoint ptr %buf.i100 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 59, ptr %buf.i100, align 1
  %69 = ptrtoint ptr %67 to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %call7, ptr %67, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i101) #9
  %70 = getelementptr inbounds i8, ptr %msg.i101, i32 4
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 196607, ptr %70, align 4
  %72 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %config.i, align 4
  %74 = ptrtoint ptr %73 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %73, align 1
  %conv.i103 = zext i8 %75 to i16
  %76 = ptrtoint ptr %msg.i101 to i32
  call void @__asan_store2_noabort(i32 %76)
  store i16 %conv.i103, ptr %msg.i101, align 4
  %flags.i104 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 0, i32 1
  %77 = ptrtoint ptr %flags.i104 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 0, ptr %flags.i104, align 2
  %buf1.i106 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i101, i32 0, i32 3
  %78 = ptrtoint ptr %buf1.i106 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %buf.i100, ptr %buf1.i106, align 4
  %79 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %1, align 8
  %call.i107 = call i32 @i2c_transfer(ptr noundef %80, ptr noundef nonnull %msg.i101, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i107)
  %cmp.not.i108 = icmp eq i32 %call.i107, 1
  br i1 %cmp.not.i108, label %if.end10.i115, label %do.body.i110

do.body.i110:                                     ; preds = %while.end
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i109 = icmp eq i32 %81, 0
  br i1 %tobool.not.i109, label %do.body.i110.s5h1420_writereg.exit117_crit_edge, label %do.end.i113

do.body.i110.s5h1420_writereg.exit117_crit_edge:  ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit117

do.end.i113:                                      ; preds = %do.body.i110
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i111 = zext i8 %call7 to i32
  %call7.i112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i107, i32 noundef 59, i32 noundef %conv6.i111) #13
  br label %s5h1420_writereg.exit117

if.end10.i115:                                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i114 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %82 = ptrtoint ptr %arrayidx.i114 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 %call7, ptr %arrayidx.i114, align 1
  br label %s5h1420_writereg.exit117

s5h1420_writereg.exit117:                         ; preds = %if.end10.i115, %do.end.i113, %do.body.i110.s5h1420_writereg.exit117_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i101) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i100) #9
  call void @msleep(i32 noundef 15) #9
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool38.not = icmp eq i32 %83, 0
  br i1 %tobool38.not, label %s5h1420_writereg.exit117.cleanup_crit_edge, label %do.end42

s5h1420_writereg.exit117.cleanup_crit_edge:       ; preds = %s5h1420_writereg.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end42:                                         ; preds = %s5h1420_writereg.exit117
  call void @__sanitizer_cov_trace_pc() #11
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.52) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end42, %s5h1420_writereg.exit117.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end3.cleanup_crit_edge ], [ %spec.select, %do.end42 ], [ %spec.select, %s5h1420_writereg.exit117.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_recv_slave_reply(ptr nocapture noundef readonly %fe, ptr nocapture noundef %reply) #2 align 64 {
entry:
  %buf.i41 = alloca [2 x i8], align 1
  %msg.i42 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 59, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -126, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %5 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 196607, ptr %5, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config.i, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1
  %conv.i = zext i8 %10 to i16
  %11 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf1.i, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 59, i32 noundef 130) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -126, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @msleep(i32 noundef 15) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %18 = load volatile i32, ptr @jiffies, align 128
  %timeout2 = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %reply, i32 0, i32 2
  %19 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %timeout2, align 4
  %mul = mul i32 %20, 100
  %div = sdiv i32 %mul, 1000
  %add = add i32 %div, %18
  %21 = load volatile i32, ptr @jiffies, align 128
  %sub58 = sub i32 %21, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub58)
  %cmp59 = icmp slt i32 %sub58, 0
  br i1 %cmp59, label %s5h1420_writereg.exit.while.body_crit_edge, label %s5h1420_writereg.exit.while.end_crit_edge

s5h1420_writereg.exit.while.end_crit_edge:        ; preds = %s5h1420_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

s5h1420_writereg.exit.while.body_crit_edge:       ; preds = %s5h1420_writereg.exit
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %s5h1420_writereg.exit.while.body_crit_edge
  %call3 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %call3)
  %tobool.not = icmp sgt i8 %call3, -1
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end:                                           ; preds = %while.body
  call void @msleep(i32 noundef 5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %22, %add
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %if.end.while.body_crit_edge, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %s5h1420_writereg.exit.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub4 = sub i32 %add, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub4)
  %cmp5 = icmp slt i32 %sub4, 0
  br i1 %cmp5, label %while.end.exit_crit_edge, label %if.end8

while.end.exit_crit_edge:                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end8:                                          ; preds = %while.end
  %call9 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 73)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %call9)
  %tobool10.not = icmp eq i8 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.exit_crit_edge

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end12:                                         ; preds = %if.end8
  %call13 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %24 = lshr i8 %call13, 4
  %25 = and i8 %24, 7
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %cmp16 = icmp ugt i8 %25, 4
  br i1 %cmp16, label %if.end12.exit_crit_edge, label %if.end19

if.end12.exit_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end19:                                         ; preds = %if.end12
  %msg_len = getelementptr inbounds %struct.dvb_diseqc_slave_reply, ptr %reply, i32 0, i32 1
  %26 = ptrtoint ptr %msg_len to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %msg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp2160.not = icmp eq i8 %25, 0
  br i1 %cmp2160.not, label %if.end19.exit_crit_edge, label %for.body

if.end19.exit_crit_edge:                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body:                                         ; preds = %if.end19
  %call25 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 61)
  %27 = ptrtoint ptr %reply to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %call25, ptr %reply, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %25)
  %exitcond.not = icmp eq i8 %25, 1
  br i1 %exitcond.not, label %for.body.exit_crit_edge, label %for.body.1

for.body.exit_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.1:                                       ; preds = %for.body
  %call25.1 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 62)
  %arrayidx.1 = getelementptr [4 x i8], ptr %reply, i32 0, i32 1
  %28 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %call25.1, ptr %arrayidx.1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %25)
  %exitcond.not.1 = icmp eq i8 %25, 2
  br i1 %exitcond.not.1, label %for.body.1.exit_crit_edge, label %for.body.2

for.body.1.exit_crit_edge:                        ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.2:                                       ; preds = %for.body.1
  %call25.2 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 63)
  %arrayidx.2 = getelementptr [4 x i8], ptr %reply, i32 0, i32 2
  %29 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %call25.2, ptr %arrayidx.2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %25)
  %exitcond.not.2 = icmp eq i8 %25, 3
  br i1 %exitcond.not.2, label %for.body.2.exit_crit_edge, label %for.body.3

for.body.2.exit_crit_edge:                        ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.3:                                       ; preds = %for.body.2
  %call25.3 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 64)
  %arrayidx.3 = getelementptr [4 x i8], ptr %reply, i32 0, i32 3
  %30 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %call25.3, ptr %arrayidx.3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %25)
  %exitcond.not.3 = icmp eq i8 %25, 4
  br i1 %exitcond.not.3, label %for.body.3.exit_crit_edge, label %for.body.4

for.body.3.exit_crit_edge:                        ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.4:                                       ; preds = %for.body.3
  %call25.4 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 65)
  %arrayidx.4 = getelementptr [4 x i8], ptr %reply, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %call25.4, ptr %arrayidx.4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %25)
  %exitcond.not.4 = icmp eq i8 %25, 5
  br i1 %exitcond.not.4, label %for.body.4.exit_crit_edge, label %for.body.5

for.body.4.exit_crit_edge:                        ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.5:                                       ; preds = %for.body.4
  %call25.5 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 66)
  %arrayidx.5 = getelementptr [4 x i8], ptr %reply, i32 0, i32 5
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %call25.5, ptr %arrayidx.5, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %25)
  %exitcond.not.5 = icmp eq i8 %25, 6
  br i1 %exitcond.not.5, label %for.body.5.exit_crit_edge, label %for.body.6

for.body.5.exit_crit_edge:                        ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

for.body.6:                                       ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #11
  %call25.6 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 67)
  %arrayidx.6 = getelementptr [4 x i8], ptr %reply, i32 0, i32 6
  %33 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %call25.6, ptr %arrayidx.6, align 1
  br label %exit

exit:                                             ; preds = %for.body.6, %for.body.5.exit_crit_edge, %for.body.4.exit_crit_edge, %for.body.3.exit_crit_edge, %for.body.2.exit_crit_edge, %for.body.1.exit_crit_edge, %for.body.exit_crit_edge, %if.end19.exit_crit_edge, %if.end12.exit_crit_edge, %if.end8.exit_crit_edge, %while.end.exit_crit_edge
  %result.0 = phi i32 [ -110, %while.end.exit_crit_edge ], [ -5, %if.end8.exit_crit_edge ], [ -75, %if.end12.exit_crit_edge ], [ 0, %if.end19.exit_crit_edge ], [ 0, %for.body.6 ], [ 0, %for.body.5.exit_crit_edge ], [ 0, %for.body.4.exit_crit_edge ], [ 0, %for.body.3.exit_crit_edge ], [ 0, %for.body.2.exit_crit_edge ], [ 0, %for.body.1.exit_crit_edge ], [ 0, %for.body.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i41) #9
  %34 = getelementptr inbounds [2 x i8], ptr %buf.i41, i32 0, i32 1
  %35 = ptrtoint ptr %buf.i41 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 59, ptr %buf.i41, align 1
  %36 = ptrtoint ptr %34 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %call, ptr %34, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i42) #9
  %37 = getelementptr inbounds i8, ptr %msg.i42, i32 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 196607, ptr %37, align 4
  %39 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %config.i, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %40, align 1
  %conv.i44 = zext i8 %42 to i16
  %43 = ptrtoint ptr %msg.i42 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i44, ptr %msg.i42, align 4
  %flags.i45 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 1
  %44 = ptrtoint ptr %flags.i45 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 0, ptr %flags.i45, align 2
  %buf1.i47 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i42, i32 0, i32 3
  %45 = ptrtoint ptr %buf1.i47 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %buf.i41, ptr %buf1.i47, align 4
  %46 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %1, align 8
  %call.i48 = call i32 @i2c_transfer(ptr noundef %47, ptr noundef nonnull %msg.i42, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i48)
  %cmp.not.i49 = icmp eq i32 %call.i48, 1
  br i1 %cmp.not.i49, label %if.end10.i55, label %do.body.i51

do.body.i51:                                      ; preds = %exit
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.not.i50 = icmp eq i32 %48, 0
  br i1 %tobool.not.i50, label %do.body.i51.s5h1420_writereg.exit57_crit_edge, label %do.end.i53

do.body.i51.s5h1420_writereg.exit57_crit_edge:    ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit57

do.end.i53:                                       ; preds = %do.body.i51
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %call to i32
  %call7.i52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i48, i32 noundef 59, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit57

if.end10.i55:                                     ; preds = %exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i54 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %49 = ptrtoint ptr %arrayidx.i54 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %call, ptr %arrayidx.i54, align 1
  br label %s5h1420_writereg.exit57

s5h1420_writereg.exit57:                          ; preds = %if.end10.i55, %do.end.i53, %do.body.i51.s5h1420_writereg.exit57_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i42) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i41) #9
  call void @msleep(i32 noundef 15) #9
  ret i32 %result.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_send_burst(ptr nocapture noundef readonly %fe, i32 noundef %minicmd) #2 align 64 {
entry:
  %buf.i73 = alloca [2 x i8], align 1
  %msg.i74 = alloca %struct.i2c_msg, align 4
  %buf.i55 = alloca [2 x i8], align 1
  %msg.i56 = alloca %struct.i2c_msg, align 4
  %buf.i37 = alloca [2 x i8], align 1
  %msg.i38 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %call = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %call1 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %2 = and i8 %call1, 112
  %3 = or i8 %2, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 59, ptr %buf.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %3, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %7 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 196607, ptr %7, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 1
  %conv.i = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %14 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i, ptr %buf1.i, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %entry
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i = icmp eq i32 %18, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %3 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 59, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %3, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %minicmd)
  %cmp = icmp eq i32 %minicmd, 1
  br i1 %cmp, label %if.then, label %s5h1420_writereg.exit.if.end_crit_edge

s5h1420_writereg.exit.if.end_crit_edge:           ; preds = %s5h1420_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %s5h1420_writereg.exit
  %call5 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %20 = or i8 %call5, 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i37) #9
  %21 = getelementptr inbounds [2 x i8], ptr %buf.i37, i32 0, i32 1
  %22 = ptrtoint ptr %buf.i37 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 59, ptr %buf.i37, align 1
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %20, ptr %21, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i38) #9
  %24 = getelementptr inbounds i8, ptr %msg.i38, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 196607, ptr %24, align 4
  %26 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %config.i, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %27, align 1
  %conv.i40 = zext i8 %29 to i16
  %30 = ptrtoint ptr %msg.i38 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i40, ptr %msg.i38, align 4
  %flags.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 1
  %31 = ptrtoint ptr %flags.i41 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 0, ptr %flags.i41, align 2
  %buf1.i43 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i38, i32 0, i32 3
  %32 = ptrtoint ptr %buf1.i43 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %buf.i37, ptr %buf1.i43, align 4
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 8
  %call.i44 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i38, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i44)
  %cmp.not.i45 = icmp eq i32 %call.i44, 1
  br i1 %cmp.not.i45, label %if.end10.i52, label %do.body.i47

do.body.i47:                                      ; preds = %if.then
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i46 = icmp eq i32 %35, 0
  br i1 %tobool.not.i46, label %do.body.i47.s5h1420_writereg.exit54_crit_edge, label %do.end.i50

do.body.i47.s5h1420_writereg.exit54_crit_edge:    ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit54

do.end.i50:                                       ; preds = %do.body.i47
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i48 = zext i8 %20 to i32
  %call7.i49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i44, i32 noundef 59, i32 noundef %conv6.i48) #13
  br label %s5h1420_writereg.exit54

if.end10.i52:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i51 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %36 = ptrtoint ptr %arrayidx.i51 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %20, ptr %arrayidx.i51, align 1
  br label %s5h1420_writereg.exit54

s5h1420_writereg.exit54:                          ; preds = %if.end10.i52, %do.end.i50, %do.body.i47.s5h1420_writereg.exit54_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i38) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i37) #9
  br label %if.end

if.end:                                           ; preds = %s5h1420_writereg.exit54, %s5h1420_writereg.exit.if.end_crit_edge
  call void @msleep(i32 noundef 15) #9
  %call10 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %37 = or i8 %call10, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i55) #9
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i55, i32 0, i32 1
  %39 = ptrtoint ptr %buf.i55 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 59, ptr %buf.i55, align 1
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %37, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i56) #9
  %41 = getelementptr inbounds i8, ptr %msg.i56, i32 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 196607, ptr %41, align 4
  %43 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %config.i, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %44, align 1
  %conv.i58 = zext i8 %46 to i16
  %47 = ptrtoint ptr %msg.i56 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %conv.i58, ptr %msg.i56, align 4
  %flags.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 1
  %48 = ptrtoint ptr %flags.i59 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %flags.i59, align 2
  %buf1.i61 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i56, i32 0, i32 3
  %49 = ptrtoint ptr %buf1.i61 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %buf.i55, ptr %buf1.i61, align 4
  %50 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %1, align 8
  %call.i62 = call i32 @i2c_transfer(ptr noundef %51, ptr noundef nonnull %msg.i56, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i62)
  %cmp.not.i63 = icmp eq i32 %call.i62, 1
  br i1 %cmp.not.i63, label %if.end10.i70, label %do.body.i65

do.body.i65:                                      ; preds = %if.end
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool.not.i64 = icmp eq i32 %52, 0
  br i1 %tobool.not.i64, label %do.body.i65.s5h1420_writereg.exit72_crit_edge, label %do.end.i68

do.body.i65.s5h1420_writereg.exit72_crit_edge:    ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit72

do.end.i68:                                       ; preds = %do.body.i65
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i66 = zext i8 %37 to i32
  %call7.i67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i62, i32 noundef 59, i32 noundef %conv6.i66) #13
  br label %s5h1420_writereg.exit72

if.end10.i70:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i69 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %53 = ptrtoint ptr %arrayidx.i69 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %37, ptr %arrayidx.i69, align 1
  br label %s5h1420_writereg.exit72

s5h1420_writereg.exit72:                          ; preds = %if.end10.i70, %do.end.i68, %do.body.i65.s5h1420_writereg.exit72_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i56) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i55) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %54 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %54, 10
  %55 = load volatile i32, ptr @jiffies, align 128
  %sub91 = sub i32 %55, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub91)
  %cmp1592 = icmp slt i32 %sub91, 0
  br i1 %cmp1592, label %s5h1420_writereg.exit72.while.body_crit_edge, label %s5h1420_writereg.exit72.while.end_crit_edge

s5h1420_writereg.exit72.while.end_crit_edge:      ; preds = %s5h1420_writereg.exit72
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

s5h1420_writereg.exit72.while.body_crit_edge:     ; preds = %s5h1420_writereg.exit72
  br label %while.body

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %s5h1420_writereg.exit72.while.body_crit_edge
  %call17 = call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %56 = and i8 %call17, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not = icmp eq i8 %56, 0
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end21

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end21:                                         ; preds = %while.body
  call void @msleep(i32 noundef 5) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %57, %add
  %cmp15 = icmp slt i32 %sub, 0
  br i1 %cmp15, label %if.end21.while.body_crit_edge, label %if.end21.while.end_crit_edge

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %while.body.while.end_crit_edge, %s5h1420_writereg.exit72.while.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %58 = load volatile i32, ptr @jiffies, align 128
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i73) #9
  %59 = getelementptr inbounds [2 x i8], ptr %buf.i73, i32 0, i32 1
  %60 = ptrtoint ptr %buf.i73 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 59, ptr %buf.i73, align 1
  %61 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %call, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i74) #9
  %62 = getelementptr inbounds i8, ptr %msg.i74, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 196607, ptr %62, align 4
  %64 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %config.i, align 4
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %65, align 1
  %conv.i76 = zext i8 %67 to i16
  %68 = ptrtoint ptr %msg.i74 to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %conv.i76, ptr %msg.i74, align 4
  %flags.i77 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 1
  %69 = ptrtoint ptr %flags.i77 to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %flags.i77, align 2
  %buf1.i79 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i74, i32 0, i32 3
  %70 = ptrtoint ptr %buf1.i79 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %buf.i73, ptr %buf1.i79, align 4
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 8
  %call.i80 = call i32 @i2c_transfer(ptr noundef %72, ptr noundef nonnull %msg.i74, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i80)
  %cmp.not.i81 = icmp eq i32 %call.i80, 1
  br i1 %cmp.not.i81, label %if.end10.i88, label %do.body.i83

do.body.i83:                                      ; preds = %while.end
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i82 = icmp eq i32 %73, 0
  br i1 %tobool.not.i82, label %do.body.i83.s5h1420_writereg.exit90_crit_edge, label %do.end.i86

do.body.i83.s5h1420_writereg.exit90_crit_edge:    ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit90

do.end.i86:                                       ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i84 = zext i8 %call to i32
  %call7.i85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i80, i32 noundef 59, i32 noundef %conv6.i84) #13
  br label %s5h1420_writereg.exit90

if.end10.i88:                                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i87 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %74 = ptrtoint ptr %arrayidx.i87 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %call, ptr %arrayidx.i87, align 1
  br label %s5h1420_writereg.exit90

s5h1420_writereg.exit90:                          ; preds = %if.end10.i88, %do.end.i86, %do.body.i83.s5h1420_writereg.exit90_crit_edge
  %sub22 = sub i32 %add, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub22)
  %cmp23 = icmp slt i32 %sub22, 0
  %spec.select = select i1 %cmp23, i32 -110, i32 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i74) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i73) #9
  call void @msleep(i32 noundef 15) #9
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_set_tone(ptr nocapture noundef readonly %fe, i32 noundef %tone) #2 align 64 {
entry:
  %buf.i28 = alloca [2 x i8], align 1
  %msg.i29 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.55) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = zext i32 %tone to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.63)
  switch i32 %tone, label %do.end3.do.body14_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
  ]

do.end3.do.body14_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body14

sw.bb:                                            ; preds = %do.end3
  %call4 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %4 = and i8 %call4, 116
  %5 = or i8 %4, 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 59, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf1.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %5 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 59, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %5, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  br label %do.body14

sw.bb7:                                           ; preds = %do.end3
  %call8 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 59)
  %22 = and i8 %call8, 116
  %23 = or i8 %22, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i28) #9
  %24 = getelementptr inbounds [2 x i8], ptr %buf.i28, i32 0, i32 1
  %25 = ptrtoint ptr %buf.i28 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 59, ptr %buf.i28, align 1
  %26 = ptrtoint ptr %24 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %23, ptr %24, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i29) #9
  %27 = getelementptr inbounds i8, ptr %msg.i29, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 196607, ptr %27, align 4
  %config.i30 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %config.i30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %config.i30, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %30, align 1
  %conv.i31 = zext i8 %32 to i16
  %33 = ptrtoint ptr %msg.i29 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv.i31, ptr %msg.i29, align 4
  %flags.i32 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 1
  %34 = ptrtoint ptr %flags.i32 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 0, ptr %flags.i32, align 2
  %buf1.i34 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i29, i32 0, i32 3
  %35 = ptrtoint ptr %buf1.i34 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %buf.i28, ptr %buf1.i34, align 4
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %call.i35 = call i32 @i2c_transfer(ptr noundef %37, ptr noundef nonnull %msg.i29, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i35)
  %cmp.not.i36 = icmp eq i32 %call.i35, 1
  br i1 %cmp.not.i36, label %if.end10.i43, label %do.body.i38

do.body.i38:                                      ; preds = %sw.bb7
  %38 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.not.i37 = icmp eq i32 %38, 0
  br i1 %tobool.not.i37, label %do.body.i38.s5h1420_writereg.exit45_crit_edge, label %do.end.i41

do.body.i38.s5h1420_writereg.exit45_crit_edge:    ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit45

do.end.i41:                                       ; preds = %do.body.i38
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i39 = zext i8 %23 to i32
  %call7.i40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i35, i32 noundef 59, i32 noundef %conv6.i39) #13
  br label %s5h1420_writereg.exit45

if.end10.i43:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i42 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 59
  %39 = ptrtoint ptr %arrayidx.i42 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %23, ptr %arrayidx.i42, align 1
  br label %s5h1420_writereg.exit45

s5h1420_writereg.exit45:                          ; preds = %if.end10.i43, %do.end.i41, %do.body.i38.s5h1420_writereg.exit45_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i29) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i28) #9
  br label %do.body14

do.body14:                                        ; preds = %s5h1420_writereg.exit45, %s5h1420_writereg.exit, %do.end3.do.body14_crit_edge
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool15.not = icmp eq i32 %40, 0
  br i1 %tobool15.not, label %do.body14.do.end24_crit_edge, label %do.end19

do.body14.do.end24_crit_edge:                     ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

do.end19:                                         ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.55) #13
  br label %do.end24

do.end24:                                         ; preds = %do.end19, %do.body14.do.end24_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_set_voltage(ptr nocapture noundef readonly %fe, i32 noundef %voltage) #2 align 64 {
entry:
  %buf.i53 = alloca [2 x i8], align 1
  %msg.i54 = alloca %struct.i2c_msg, align 4
  %buf.i35 = alloca [2 x i8], align 1
  %msg.i36 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.58) #13
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = zext i32 %voltage to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.64)
  switch i32 %voltage, label %do.end3.do.body19_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb13
  ]

do.end3.do.body19_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body19

sw.bb:                                            ; preds = %do.end3
  %call4 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 60)
  %4 = and i8 %call4, -4
  %5 = or i8 %4, 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %6 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %7 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 60, ptr %buf.i, align 1
  %8 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %5, ptr %6, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %9 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 196607, ptr %9, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 1
  %conv.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %17 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %buf.i, ptr %buf1.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %sw.bb
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %5 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 60, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 60
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %5, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  br label %do.body19

sw.bb7:                                           ; preds = %do.end3
  %call8 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 60)
  %22 = or i8 %call8, 3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i35) #9
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i35, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 60, ptr %buf.i35, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %22, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i36) #9
  %26 = getelementptr inbounds i8, ptr %msg.i36, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 196607, ptr %26, align 4
  %config.i37 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %28 = ptrtoint ptr %config.i37 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i37, align 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  %conv.i38 = zext i8 %31 to i16
  %32 = ptrtoint ptr %msg.i36 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv.i38, ptr %msg.i36, align 4
  %flags.i39 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 1
  %33 = ptrtoint ptr %flags.i39 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %flags.i39, align 2
  %buf1.i41 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i36, i32 0, i32 3
  %34 = ptrtoint ptr %buf1.i41 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i35, ptr %buf1.i41, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 8
  %call.i42 = call i32 @i2c_transfer(ptr noundef %36, ptr noundef nonnull %msg.i36, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i42)
  %cmp.not.i43 = icmp eq i32 %call.i42, 1
  br i1 %cmp.not.i43, label %if.end10.i50, label %do.body.i45

do.body.i45:                                      ; preds = %sw.bb7
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i44 = icmp eq i32 %37, 0
  br i1 %tobool.not.i44, label %do.body.i45.s5h1420_writereg.exit52_crit_edge, label %do.end.i48

do.body.i45.s5h1420_writereg.exit52_crit_edge:    ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit52

do.end.i48:                                       ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i46 = zext i8 %22 to i32
  %call7.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i42, i32 noundef 60, i32 noundef %conv6.i46) #13
  br label %s5h1420_writereg.exit52

if.end10.i50:                                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i49 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 60
  %38 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %22, ptr %arrayidx.i49, align 1
  br label %s5h1420_writereg.exit52

s5h1420_writereg.exit52:                          ; preds = %if.end10.i50, %do.end.i48, %do.body.i45.s5h1420_writereg.exit52_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i36) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i35) #9
  br label %do.body19

sw.bb13:                                          ; preds = %do.end3
  %call14 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %1, i8 noundef zeroext 60)
  %39 = and i8 %call14, -3
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i53) #9
  %40 = getelementptr inbounds [2 x i8], ptr %buf.i53, i32 0, i32 1
  %41 = ptrtoint ptr %buf.i53 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 60, ptr %buf.i53, align 1
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %39, ptr %40, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i54) #9
  %43 = getelementptr inbounds i8, ptr %msg.i54, i32 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 196607, ptr %43, align 4
  %config.i55 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %45 = ptrtoint ptr %config.i55 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i55, align 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %46, align 1
  %conv.i56 = zext i8 %48 to i16
  %49 = ptrtoint ptr %msg.i54 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %conv.i56, ptr %msg.i54, align 4
  %flags.i57 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 1
  %50 = ptrtoint ptr %flags.i57 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %flags.i57, align 2
  %buf1.i59 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i54, i32 0, i32 3
  %51 = ptrtoint ptr %buf1.i59 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %buf.i53, ptr %buf1.i59, align 4
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %1, align 8
  %call.i60 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i54, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i60)
  %cmp.not.i61 = icmp eq i32 %call.i60, 1
  br i1 %cmp.not.i61, label %if.end10.i68, label %do.body.i63

do.body.i63:                                      ; preds = %sw.bb13
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool.not.i62 = icmp eq i32 %54, 0
  br i1 %tobool.not.i62, label %do.body.i63.s5h1420_writereg.exit70_crit_edge, label %do.end.i66

do.body.i63.s5h1420_writereg.exit70_crit_edge:    ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit70

do.end.i66:                                       ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i64 = zext i8 %39 to i32
  %call7.i65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i60, i32 noundef 60, i32 noundef %conv6.i64) #13
  br label %s5h1420_writereg.exit70

if.end10.i68:                                     ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i67 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 60
  %55 = ptrtoint ptr %arrayidx.i67 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 %39, ptr %arrayidx.i67, align 1
  br label %s5h1420_writereg.exit70

s5h1420_writereg.exit70:                          ; preds = %if.end10.i68, %do.end.i66, %do.body.i63.s5h1420_writereg.exit70_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i54) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i53) #9
  br label %do.body19

do.body19:                                        ; preds = %s5h1420_writereg.exit70, %s5h1420_writereg.exit52, %s5h1420_writereg.exit, %do.end3.do.body19_crit_edge
  %56 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool20.not = icmp eq i32 %56, 0
  br i1 %tobool20.not, label %do.body19.do.end29_crit_edge, label %do.end24

do.body19.do.end29_crit_edge:                     ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end29

do.end24:                                         ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #11
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.58) #13
  br label %do.end29

do.end29:                                         ; preds = %do.end24, %do.body19.do.end29_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @s5h1420_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #2 align 64 {
entry:
  %buf.i9 = alloca [2 x i8], align 1
  %msg.i10 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %CON_1_val2 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %CON_1_val2 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %CON_1_val2, align 8
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %4 = or i8 %3, 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %4, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf1.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %if.then
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %4 to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 2, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 2
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %4, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end10.i ], [ -121, %do.end.i ], [ -121, %do.body.i.s5h1420_writereg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  br label %cleanup

if.else:                                          ; preds = %entry
  %21 = and i8 %3, -2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i9) #9
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i9, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i9 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %buf.i9, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %21, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i10) #9
  %25 = getelementptr inbounds i8, ptr %msg.i10, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %config.i11 = getelementptr inbounds %struct.s5h1420_state, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %config.i11 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i11, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i12 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i10 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i12, ptr %msg.i10, align 4
  %flags.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i13 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i13, align 2
  %buf1.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i10, i32 0, i32 3
  %33 = ptrtoint ptr %buf1.i15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i9, ptr %buf1.i15, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 8
  %call.i16 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i10, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i16)
  %cmp.not.i17 = icmp eq i32 %call.i16, 1
  br i1 %cmp.not.i17, label %if.end10.i24, label %do.body.i19

do.body.i19:                                      ; preds = %if.else
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i18 = icmp eq i32 %36, 0
  br i1 %tobool.not.i18, label %do.body.i19.s5h1420_writereg.exit26_crit_edge, label %do.end.i22

do.body.i19.s5h1420_writereg.exit26_crit_edge:    ; preds = %do.body.i19
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit26

do.end.i22:                                       ; preds = %do.body.i19
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i20 = zext i8 %21 to i32
  %call7.i21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i16, i32 noundef 2, i32 noundef %conv6.i20) #13
  br label %s5h1420_writereg.exit26

if.end10.i24:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i23 = getelementptr %struct.s5h1420_state, ptr %1, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %arrayidx.i23 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %21, ptr %arrayidx.i23, align 1
  br label %s5h1420_writereg.exit26

s5h1420_writereg.exit26:                          ; preds = %if.end10.i24, %do.end.i22, %do.body.i19.s5h1420_writereg.exit26_crit_edge
  %retval.0.i25 = phi i32 [ 0, %if.end10.i24 ], [ -121, %do.end.i22 ], [ -121, %do.body.i19.s5h1420_writereg.exit26_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i10) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i9) #9
  br label %cleanup

cleanup:                                          ; preds = %s5h1420_writereg.exit26, %s5h1420_writereg.exit
  %retval.0 = phi i32 [ %retval.0.i, %s5h1420_writereg.exit ], [ %retval.0.i25, %s5h1420_writereg.exit26 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1420_reset(ptr nocapture noundef %state) unnamed_addr #2 align 64 {
entry:
  %buf.i6 = alloca [2 x i8], align 1
  %msg.i7 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end2_crit_edge, label %do.end

entry.do.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end2

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #13
  br label %do.end2

do.end2:                                          ; preds = %do.end, %entry.do.end2_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %1 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %2 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %buf.i, align 1
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 8, ptr %1, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %4 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 196607, ptr %4, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %12 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %buf.i, ptr %buf1.i, align 4
  %13 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %14, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %do.end2
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 1, i32 noundef 8) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %do.end2
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 1
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 8, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i6) #9
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i6, i32 0, i32 1
  %18 = ptrtoint ptr %buf.i6 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %buf.i6, align 1
  %19 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i7) #9
  %20 = getelementptr inbounds i8, ptr %msg.i7, i32 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 196607, ptr %20, align 4
  %22 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %config.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 1
  %conv.i9 = zext i8 %25 to i16
  %26 = ptrtoint ptr %msg.i7 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv.i9, ptr %msg.i7, align 4
  %flags.i10 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 1
  %27 = ptrtoint ptr %flags.i10 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 0, ptr %flags.i10, align 2
  %buf1.i12 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i7, i32 0, i32 3
  %28 = ptrtoint ptr %buf1.i12 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i6, ptr %buf1.i12, align 4
  %29 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %state, align 8
  %call.i13 = call i32 @i2c_transfer(ptr noundef %30, ptr noundef nonnull %msg.i7, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i13)
  %cmp.not.i14 = icmp eq i32 %call.i13, 1
  br i1 %cmp.not.i14, label %if.end10.i20, label %do.body.i16

do.body.i16:                                      ; preds = %s5h1420_writereg.exit
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i15 = icmp eq i32 %31, 0
  br i1 %tobool.not.i15, label %do.body.i16.s5h1420_writereg.exit22_crit_edge, label %do.end.i18

do.body.i16.s5h1420_writereg.exit22_crit_edge:    ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit22

do.end.i18:                                       ; preds = %do.body.i16
  call void @__sanitizer_cov_trace_pc() #11
  %call7.i17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i13, i32 noundef 1, i32 noundef 0) #13
  br label %s5h1420_writereg.exit22

if.end10.i20:                                     ; preds = %s5h1420_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i19 = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 1
  %32 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 0, ptr %arrayidx.i19, align 1
  br label %s5h1420_writereg.exit22

s5h1420_writereg.exit22:                          ; preds = %if.end10.i20, %do.end.i18, %do.body.i16.s5h1420_writereg.exit22_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i7) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i6) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %33(i32 noundef 2147480) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @s5h1420_setfreqoffset(ptr nocapture noundef %state, i32 noundef %freqoffset) unnamed_addr #2 align 64 {
entry:
  %buf.i106 = alloca [2 x i8], align 1
  %msg.i107 = alloca %struct.i2c_msg, align 4
  %buf.i88 = alloca [2 x i8], align 1
  %msg.i89 = alloca %struct.i2c_msg, align 4
  %buf.i70 = alloca [2 x i8], align 1
  %msg.i71 = alloca %struct.i2c_msg, align 4
  %buf.i52 = alloca [2 x i8], align 1
  %msg.i53 = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [2 x i8], align 1
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %do.end3.thread, label %do.end3

do.end3.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %mul124 = shl i32 %freqoffset, 24
  %fclk125 = getelementptr inbounds %struct.s5h1420_state, ptr %state, i32 0, i32 6
  %1 = ptrtoint ptr %fclk125 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %fclk125, align 4
  %div126 = udiv i32 %2, 1000000
  %div4127 = udiv i32 %mul124, %div126
  %sub128 = sub i32 0, %div4127
  br label %do.end15

do.end3:                                          ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.25) #13
  %.pr = load i32, ptr @debug, align 4
  %mul = shl i32 %freqoffset, 24
  %fclk = getelementptr inbounds %struct.s5h1420_state, ptr %state, i32 0, i32 6
  %3 = ptrtoint ptr %fclk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %fclk, align 4
  %div = udiv i32 %4, 1000000
  %div4 = udiv i32 %mul, %div
  %sub = sub i32 0, %div4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool6.not = icmp eq i32 %.pr, 0
  br i1 %tobool6.not, label %do.end3.do.end15_crit_edge, label %do.end10

do.end3.do.end15_crit_edge:                       ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.end10:                                         ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, i32 noundef %freqoffset, i32 noundef %sub) #13
  br label %do.end15

do.end15:                                         ; preds = %do.end10, %do.end3.do.end15_crit_edge, %do.end3.thread
  %sub130 = phi i32 [ %sub128, %do.end3.thread ], [ %sub, %do.end10 ], [ %sub, %do.end3.do.end15_crit_edge ]
  %call16 = tail call fastcc zeroext i8 @s5h1420_readreg(ptr noundef %state, i8 noundef zeroext 9)
  %and = and i8 %call16, -65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #9
  %5 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %6 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 9, ptr %buf.i, align 1
  %7 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %and, ptr %5, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #9
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 196607, ptr %8, align 4
  %config.i = getelementptr inbounds %struct.s5h1420_state, ptr %state, i32 0, i32 1
  %10 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %config.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %11, align 1
  %conv.i = zext i8 %13 to i16
  %14 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %15 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %flags.i, align 2
  %buf1.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %16 = ptrtoint ptr %buf1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %buf.i, ptr %buf1.i, align 4
  %17 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state, align 8
  %call.i = call i32 @i2c_transfer(ptr noundef %18, ptr noundef nonnull %msg.i, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %if.end10.i, label %do.body.i

do.body.i:                                        ; preds = %do.end15
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i, label %do.body.i.s5h1420_writereg.exit_crit_edge, label %do.end.i

do.body.i.s5h1420_writereg.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i = zext i8 %and to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i, i32 noundef 9, i32 noundef %conv6.i) #13
  br label %s5h1420_writereg.exit

if.end10.i:                                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 9
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %and, ptr %arrayidx.i, align 1
  br label %s5h1420_writereg.exit

s5h1420_writereg.exit:                            ; preds = %if.end10.i, %do.end.i, %do.body.i.s5h1420_writereg.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #9
  %21 = lshr i32 %sub130, 16
  %conv19 = trunc i32 %21 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i52) #9
  %22 = getelementptr inbounds [2 x i8], ptr %buf.i52, i32 0, i32 1
  %23 = ptrtoint ptr %buf.i52 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 14, ptr %buf.i52, align 1
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv19, ptr %22, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i53) #9
  %25 = getelementptr inbounds i8, ptr %msg.i53, i32 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 196607, ptr %25, align 4
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %config.i, align 4
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %28, align 1
  %conv.i55 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i53 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i55, ptr %msg.i53, align 4
  %flags.i56 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i56 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i56, align 2
  %buf1.i58 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i53, i32 0, i32 3
  %33 = ptrtoint ptr %buf1.i58 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %buf.i52, ptr %buf1.i58, align 4
  %34 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %state, align 8
  %call.i59 = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i53, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i59)
  %cmp.not.i60 = icmp eq i32 %call.i59, 1
  br i1 %cmp.not.i60, label %if.end10.i67, label %do.body.i62

do.body.i62:                                      ; preds = %s5h1420_writereg.exit
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i61 = icmp eq i32 %36, 0
  br i1 %tobool.not.i61, label %do.body.i62.s5h1420_writereg.exit69_crit_edge, label %do.end.i65

do.body.i62.s5h1420_writereg.exit69_crit_edge:    ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit69

do.end.i65:                                       ; preds = %do.body.i62
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i63 = and i32 %21, 255
  %call7.i64 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i59, i32 noundef 14, i32 noundef %conv6.i63) #13
  br label %s5h1420_writereg.exit69

if.end10.i67:                                     ; preds = %s5h1420_writereg.exit
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i66 = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 14
  %37 = ptrtoint ptr %arrayidx.i66 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %conv19, ptr %arrayidx.i66, align 1
  br label %s5h1420_writereg.exit69

s5h1420_writereg.exit69:                          ; preds = %if.end10.i67, %do.end.i65, %do.body.i62.s5h1420_writereg.exit69_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i53) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i52) #9
  %38 = lshr i32 %sub130, 8
  %conv22 = trunc i32 %38 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i70) #9
  %39 = getelementptr inbounds [2 x i8], ptr %buf.i70, i32 0, i32 1
  %40 = ptrtoint ptr %buf.i70 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 15, ptr %buf.i70, align 1
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %conv22, ptr %39, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i71) #9
  %42 = getelementptr inbounds i8, ptr %msg.i71, i32 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 196607, ptr %42, align 4
  %44 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %config.i, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %45, align 1
  %conv.i73 = zext i8 %47 to i16
  %48 = ptrtoint ptr %msg.i71 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv.i73, ptr %msg.i71, align 4
  %flags.i74 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71, i32 0, i32 1
  %49 = ptrtoint ptr %flags.i74 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %flags.i74, align 2
  %buf1.i76 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i71, i32 0, i32 3
  %50 = ptrtoint ptr %buf1.i76 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %buf.i70, ptr %buf1.i76, align 4
  %51 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %state, align 8
  %call.i77 = call i32 @i2c_transfer(ptr noundef %52, ptr noundef nonnull %msg.i71, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i77)
  %cmp.not.i78 = icmp eq i32 %call.i77, 1
  br i1 %cmp.not.i78, label %if.end10.i85, label %do.body.i80

do.body.i80:                                      ; preds = %s5h1420_writereg.exit69
  %53 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.not.i79 = icmp eq i32 %53, 0
  br i1 %tobool.not.i79, label %do.body.i80.s5h1420_writereg.exit87_crit_edge, label %do.end.i83

do.body.i80.s5h1420_writereg.exit87_crit_edge:    ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit87

do.end.i83:                                       ; preds = %do.body.i80
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i81 = and i32 %38, 255
  %call7.i82 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i77, i32 noundef 15, i32 noundef %conv6.i81) #13
  br label %s5h1420_writereg.exit87

if.end10.i85:                                     ; preds = %s5h1420_writereg.exit69
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i84 = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 15
  %54 = ptrtoint ptr %arrayidx.i84 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %conv22, ptr %arrayidx.i84, align 1
  br label %s5h1420_writereg.exit87

s5h1420_writereg.exit87:                          ; preds = %if.end10.i85, %do.end.i83, %do.body.i80.s5h1420_writereg.exit87_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i71) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i70) #9
  %conv25 = trunc i32 %sub130 to i8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i88) #9
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i88, i32 0, i32 1
  %56 = ptrtoint ptr %buf.i88 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 16, ptr %buf.i88, align 1
  %57 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %conv25, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i89) #9
  %58 = getelementptr inbounds i8, ptr %msg.i89, i32 4
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 196607, ptr %58, align 4
  %60 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %config.i, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %61, align 1
  %conv.i91 = zext i8 %63 to i16
  %64 = ptrtoint ptr %msg.i89 to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i91, ptr %msg.i89, align 4
  %flags.i92 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 1
  %65 = ptrtoint ptr %flags.i92 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 0, ptr %flags.i92, align 2
  %buf1.i94 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i89, i32 0, i32 3
  %66 = ptrtoint ptr %buf1.i94 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %buf.i88, ptr %buf1.i94, align 4
  %67 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %state, align 8
  %call.i95 = call i32 @i2c_transfer(ptr noundef %68, ptr noundef nonnull %msg.i89, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i95)
  %cmp.not.i96 = icmp eq i32 %call.i95, 1
  br i1 %cmp.not.i96, label %if.end10.i103, label %do.body.i98

do.body.i98:                                      ; preds = %s5h1420_writereg.exit87
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i97 = icmp eq i32 %69, 0
  br i1 %tobool.not.i97, label %do.body.i98.s5h1420_writereg.exit105_crit_edge, label %do.end.i101

do.body.i98.s5h1420_writereg.exit105_crit_edge:   ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  br label %s5h1420_writereg.exit105

do.end.i101:                                      ; preds = %do.body.i98
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i99 = and i32 %sub130, 255
  %call7.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i95, i32 noundef 16, i32 noundef %conv6.i99) #13
  br label %s5h1420_writereg.exit105

if.end10.i103:                                    ; preds = %s5h1420_writereg.exit87
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i102 = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 16
  %70 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %conv25, ptr %arrayidx.i102, align 1
  br label %s5h1420_writereg.exit105

s5h1420_writereg.exit105:                         ; preds = %if.end10.i103, %do.end.i101, %do.body.i98.s5h1420_writereg.exit105_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i89) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i88) #9
  %71 = or i8 %call16, 64
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i106) #9
  %72 = getelementptr inbounds [2 x i8], ptr %buf.i106, i32 0, i32 1
  %73 = ptrtoint ptr %buf.i106 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 9, ptr %buf.i106, align 1
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %71, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i107) #9
  %75 = getelementptr inbounds i8, ptr %msg.i107, i32 4
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 196607, ptr %75, align 4
  %77 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %config.i, align 4
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %78, align 1
  %conv.i109 = zext i8 %80 to i16
  %81 = ptrtoint ptr %msg.i107 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i109, ptr %msg.i107, align 4
  %flags.i110 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 1
  %82 = ptrtoint ptr %flags.i110 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 0, ptr %flags.i110, align 2
  %buf1.i112 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i107, i32 0, i32 3
  %83 = ptrtoint ptr %buf1.i112 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %buf.i106, ptr %buf1.i112, align 4
  %84 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %state, align 8
  %call.i113 = call i32 @i2c_transfer(ptr noundef %85, ptr noundef nonnull %msg.i107, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i113)
  %cmp.not.i114 = icmp eq i32 %call.i113, 1
  br i1 %cmp.not.i114, label %if.end10.i121, label %do.body.i116

do.body.i116:                                     ; preds = %s5h1420_writereg.exit105
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i115 = icmp eq i32 %86, 0
  br i1 %tobool.not.i115, label %s5h1420_writereg.exit123.thread, label %do.end.i119

s5h1420_writereg.exit123.thread:                  ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i106) #9
  br label %do.end40

do.end.i119:                                      ; preds = %do.body.i116
  call void @__sanitizer_cov_trace_pc() #11
  %conv6.i117 = zext i8 %71 to i32
  %call7.i118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef %call.i113, i32 noundef 9, i32 noundef %conv6.i117) #13
  br label %s5h1420_writereg.exit123

if.end10.i121:                                    ; preds = %s5h1420_writereg.exit105
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx.i120 = getelementptr %struct.s5h1420_state, ptr %state, i32 0, i32 10, i32 9
  %87 = ptrtoint ptr %arrayidx.i120 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %71, ptr %arrayidx.i120, align 1
  br label %s5h1420_writereg.exit123

s5h1420_writereg.exit123:                         ; preds = %if.end10.i121, %do.end.i119
  %.pr131 = load i32, ptr @debug, align 4
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i107) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i106) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr131)
  %tobool31.not = icmp eq i32 %.pr131, 0
  br i1 %tobool31.not, label %s5h1420_writereg.exit123.do.end40_crit_edge, label %do.end35

s5h1420_writereg.exit123.do.end40_crit_edge:      ; preds = %s5h1420_writereg.exit123
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end40

do.end35:                                         ; preds = %s5h1420_writereg.exit123
  call void @__sanitizer_cov_trace_pc() #11
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25) #13
  br label %do.end40

do.end40:                                         ; preds = %do.end35, %s5h1420_writereg.exit123.do.end40_crit_edge, %s5h1420_writereg.exit123.thread
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i2 @llvm.bitreverse.i2(i2) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !19, !21, !23, !24, !26, !27, !29, !31, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !47, !49, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !82, !83, !85, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !115, !116, !118, !119, !120, !122, !123, !125, !126, !127, !129, !130, !132, !133, !134, !136}
!llvm.module.flags = !{!137, !138, !139, !140, !141, !142, !143, !144}
!llvm.ident = !{!145}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 57, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 58, i32 1}
!5 = !{ptr @__ksymtab_s5h1420_get_tuner_i2c_adapter, !6, !"__ksymtab_s5h1420_get_tuner_i2c_adapter", i1 false, i1 false}
!6 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 867, i32 1}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 905, i32 41}
!9 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 911, i32 3}
!11 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @s5h1420_attach._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @s5h1420_attach._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @__ksymtab_s5h1420_attach, !16, !"__ksymtab_s5h1420_attach", i1 false, i1 false}
!16 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 921, i32 1}
!17 = !{ptr @__UNIQUE_ID_description292, !18, !"__UNIQUE_ID_description292", i1 false, i1 false}
!18 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 962, i32 1}
!19 = !{ptr @__UNIQUE_ID_author293, !20, !"__UNIQUE_ID_author293", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 963, i32 1}
!21 = !{ptr @__UNIQUE_ID_file294, !22, !"__UNIQUE_ID_file294", i1 false, i1 false}
!22 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 964, i32 1}
!23 = !{ptr @__UNIQUE_ID_license295, !22, !"__UNIQUE_ID_license295", i1 false, i1 false}
!24 = !{ptr @debug, !25, !"debug", i1 false, i1 false}
!25 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 56, i32 12}
!26 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!27 = !{ptr @s5h1420_tuner_i2c_algo, !28, !"s5h1420_tuner_i2c_algo", i1 false, i1 false}
!28 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 857, i32 35}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 840, i32 3}
!31 = !{ptr @.str.5, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @s5h1420_tuner_i2c_tuner_xfer._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @s5h1420_tuner_i2c_tuner_xfer._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @s5h1420_ops, !36, !"s5h1420_ops", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 923, i32 38}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 105, i32 3}
!39 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @s5h1420_writereg._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @s5h1420_writereg._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 458, i32 2}
!44 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @s5h1420_reset._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @s5h1420_reset._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.11, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 635, i32 2}
!49 = !{ptr @.str.12, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @s5h1420_set_frontend._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @s5h1420_set_frontend._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.14, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 658, i32 3}
!54 = !{ptr @s5h1420_set_frontend._entry.13, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @s5h1420_set_frontend._entry_ptr.15, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 661, i32 2}
!58 = !{ptr @s5h1420_set_frontend._entry.16, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @s5h1420_set_frontend._entry_ptr.18, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.20, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 678, i32 2}
!62 = !{ptr @s5h1420_set_frontend._entry.19, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @s5h1420_set_frontend._entry_ptr.21, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.23, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 741, i32 2}
!66 = !{ptr @s5h1420_set_frontend._entry.22, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @s5h1420_set_frontend._entry_ptr.24, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.25, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 498, i32 2}
!70 = !{ptr @s5h1420_setfreqoffset._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @s5h1420_setfreqoffset._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.27, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 504, i32 2}
!74 = !{ptr @s5h1420_setfreqoffset._entry.26, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @s5h1420_setfreqoffset._entry_ptr.28, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @s5h1420_setfreqoffset._entry.29, !77, !"_entry", i1 false, i1 false}
!77 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 512, i32 2}
!78 = !{ptr @s5h1420_setfreqoffset._entry_ptr.30, !77, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 470, i32 2}
!81 = !{ptr @s5h1420_setsymbolrate._entry, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @s5h1420_setsymbolrate._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 477, i32 2}
!85 = !{ptr @s5h1420_setsymbolrate._entry.32, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @s5h1420_setsymbolrate._entry_ptr.34, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @s5h1420_setsymbolrate._entry.35, !88, !"_entry", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 485, i32 2}
!89 = !{ptr @s5h1420_setsymbolrate._entry_ptr.36, !88, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 541, i32 2}
!92 = !{ptr @s5h1420_setfec_inversion._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @s5h1420_setfec_inversion._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 588, i32 2}
!96 = !{ptr @s5h1420_setfec_inversion._entry.38, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @s5h1420_setfec_inversion._entry_ptr.40, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @s5h1420_setfec_inversion._entry.41, !99, !"_entry", i1 false, i1 false}
!99 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 591, i32 2}
!100 = !{ptr @s5h1420_setfec_inversion._entry_ptr.42, !99, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 326, i32 2}
!103 = !{ptr @s5h1420_read_status._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @s5h1420_read_status._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 365, i32 4}
!107 = !{ptr @s5h1420_read_status._entry.44, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @s5h1420_read_status._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 388, i32 3}
!111 = !{ptr @s5h1420_read_status._entry.47, !110, !"_entry", i1 false, i1 false}
!112 = !{ptr @s5h1420_read_status._entry_ptr.49, !110, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @s5h1420_read_status._entry.50, !114, !"_entry", i1 false, i1 false}
!114 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 416, i32 2}
!115 = !{ptr @s5h1420_read_status._entry_ptr.51, !114, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 170, i32 2}
!118 = !{ptr @s5h1420_send_master_cmd._entry, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @s5h1420_send_master_cmd._entry_ptr, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @s5h1420_send_master_cmd._entry.53, !121, !"_entry", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 202, i32 2}
!122 = !{ptr @s5h1420_send_master_cmd._entry_ptr.54, !121, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 144, i32 2}
!125 = !{ptr @s5h1420_set_tone._entry, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @s5h1420_set_tone._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @s5h1420_set_tone._entry.56, !128, !"_entry", i1 false, i1 false}
!128 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 156, i32 2}
!129 = !{ptr @s5h1420_set_tone._entry_ptr.57, !128, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.58, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 118, i32 2}
!132 = !{ptr @s5h1420_set_voltage._entry, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @s5h1420_set_voltage._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @s5h1420_set_voltage._entry.59, !135, !"_entry", i1 false, i1 false}
!135 = !{!"../drivers/media/dvb-frontends/s5h1420.c", i32 135, i32 2}
!136 = !{ptr @s5h1420_set_voltage._entry_ptr.60, !135, !"_entry_ptr", i1 false, i1 false}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 1, !"min_enum_size", i32 4}
!139 = !{i32 8, !"branch-target-enforcement", i32 0}
!140 = !{i32 8, !"sign-return-address", i32 0}
!141 = !{i32 8, !"sign-return-address-all", i32 0}
!142 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!143 = !{i32 7, !"uwtable", i32 1}
!144 = !{i32 7, !"frame-pointer", i32 2}
!145 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!146 = !{!"auto-init"}
!147 = !{!"branch_weights", i32 2000, i32 1}
!148 = !{i64 2148623244, i64 2148623524, i64 2148623858, i64 2148624192}
