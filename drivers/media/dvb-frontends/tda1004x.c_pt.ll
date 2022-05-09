; ModuleID = '/llk/IR_all_yes/drivers/media/dvb-frontends/tda1004x.c_pt.bc'
source_filename = "../drivers/media/dvb-frontends/tda1004x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tda10045_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda10045_attach\09\09\09\09"
module asm "\09.long\09__crc_tda10045_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10045_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10045_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10045_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tda10046_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_tda10046_attach\09\09\09\09"
module asm "\09.long\09__crc_tda10046_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tda10046_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22tda10046_attach\22\09\09\09\09\09"
module asm "__kstrtabns_tda10046_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.78 }
%union.anon.78 = type { ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.tda1004x_state = type { ptr, ptr, %struct.dvb_frontend, i32 }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon }>
%union.anon = type { i64 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.tda1004x_config = type { i8, i8, i8, i32, i32, i32, i32, i32, i8, i8, i8, ptr }
%struct.firmware = type { i32, ptr, ptr }
%struct.dvb_frontend_tune_settings = type { i32, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.i2c_lock_operations = type { ptr, ptr, ptr }

@tda10045_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Can't allocate memory for tda10045 state\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10045_attach\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/media/dvb-frontends/tda1004x.c\00", [57 x i8] zeroinitializer }, align 32
@tda10045_attach._entry_ptr = internal global ptr @tda10045_attach._entry, section ".printk_index", align 4
@tda10045_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tda10045: chip is not answering. Giving up.\0A\00", [49 x i8] zeroinitializer }, align 32
@tda10045_attach._entry_ptr.5 = internal global ptr @tda10045_attach._entry.3, section ".printk_index", align 4
@tda10045_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1294, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Invalid tda1004x ID = 0x%02x. Can't proceed\0A\00", [49 x i8] zeroinitializer }, align 32
@tda10045_attach._entry_ptr.8 = internal global ptr @tda10045_attach._entry.6, section ".printk_index", align 4
@tda10045_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10045H DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 732846 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @tda1004x_release, ptr null, ptr @tda10045_init, ptr @tda1004x_sleep, ptr null, ptr null, ptr @tda1004x_write, ptr null, ptr null, ptr @tda1004x_set_fe, ptr @tda1004x_get_tune_settings, ptr @tda1004x_get_fe, ptr @tda1004x_read_status, ptr @tda1004x_read_ber, ptr @tda1004x_read_signal_strength, ptr @tda1004x_read_snr, ptr @tda1004x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda1004x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@tda10046_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 1346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Can't allocate memory for tda10046 state\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda10046_attach\00", [16 x i8] zeroinitializer }, align 32
@tda10046_attach._entry_ptr = internal global ptr @tda10046_attach._entry, section ".printk_index", align 4
@tda10046_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 1358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013tda10046: chip is not answering. Giving up.\0A\00", [49 x i8] zeroinitializer }, align 32
@tda10046_attach._entry_ptr.13 = internal global ptr @tda10046_attach._entry.11, section ".printk_index", align 4
@tda10046_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.10, ptr @.str.2, i32 1363, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda10046_attach._entry_ptr.15 = internal global ptr @tda10046_attach._entry.14, section ".printk_index", align 4
@tda10046_ops = internal constant { %struct.dvb_frontend_ops, [128 x i8] } { %struct.dvb_frontend_ops { %struct.dvb_frontend_internal_info { [128 x i8] c"Philips TDA10046H DVB-T\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 51000000, i32 858000000, i32 166667, i32 0, i32 0, i32 0, i32 0, i32 732846 }, [8 x i8] c"\03\00\00\00\00\00\00\00", ptr null, ptr @tda1004x_release, ptr null, ptr @tda10046_init, ptr @tda1004x_sleep, ptr null, ptr null, ptr @tda1004x_write, ptr null, ptr null, ptr @tda1004x_set_fe, ptr @tda1004x_get_tune_settings, ptr @tda1004x_get_fe, ptr @tda1004x_read_status, ptr @tda1004x_read_ber, ptr @tda1004x_read_signal_strength, ptr @tda1004x_read_snr, ptr @tda1004x_read_ucblocks, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tda1004x_i2c_gate_ctrl, ptr null, ptr null, ptr null, %struct.dvb_tuner_ops zeroinitializer, %struct.analog_demod_ops zeroinitializer }, [128 x i8] zeroinitializer }, align 32
@__param_str_debug = internal constant [15 x i8] c"tda1004x.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.78 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [28 x i8] c"tda1004x.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [66 x i8] c"tda1004x.parm=debug:Turn on/off frontend debugging (default:off).\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [69 x i8] c"tda1004x.description=Philips TDA10045H & TDA10046H DVB-T Demodulator\00", section ".modinfo", align 1
@__UNIQUE_ID_author293 = internal constant [54 x i8] c"tda1004x.author=Andrew de Quincey & Robert Schlabbach\00", section ".modinfo", align 1
@__UNIQUE_ID_file294 = internal constant [51 x i8] c"tda1004x.file=drivers/media/dvb-frontends/tda1004x\00", section ".modinfo", align 1
@__UNIQUE_ID_license295 = internal constant [21 x i8] c"tda1004x.license=GPL\00", section ".modinfo", align 1
@__kstrtab_tda10045_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10045_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10045_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10045_attach to i32), ptr @__kstrtab_tda10045_attach, ptr @__kstrtabns_tda10045_attach }, section "___ksymtab+tda10045_attach", align 4
@__kstrtab_tda10046_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_tda10046_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_tda10046_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tda10046_attach to i32), ptr @__kstrtab_tda10046_attach, ptr @__kstrtabns_tda10046_attach }, section "___ksymtab+tda10046_attach", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tda1004x_read_byte._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017tda1004x: %s: reg=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda1004x_read_byte\00", [45 x i8] zeroinitializer }, align 32
@tda1004x_read_byte._entry_ptr = internal global ptr @tda1004x_read_byte._entry, section ".printk_index", align 4
@tda1004x_read_byte._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 151, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017tda1004x: %s: error reg=0x%x, ret=%i\0A\00", [56 x i8] zeroinitializer }, align 32
@tda1004x_read_byte._entry_ptr.20 = internal global ptr @tda1004x_read_byte._entry.18, section ".printk_index", align 4
@tda1004x_read_byte._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.2, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017tda1004x: %s: success reg=0x%x, data=0x%x, ret=%i\0A\00", [43 x i8] zeroinitializer }, align 32
@tda1004x_read_byte._entry_ptr.23 = internal global ptr @tda1004x_read_byte._entry.21, section ".printk_index", align 4
@tda10045_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\017tda1004x: %s\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda10045_init\00", [18 x i8] zeroinitializer }, align 32
@tda10045_init._entry_ptr = internal global ptr @tda10045_init._entry, section ".printk_index", align 4
@tda10045_init._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.25, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"tda1004x: firmware upload failed\0A\00", [62 x i8] zeroinitializer }, align 32
@tda10045_init._entry_ptr.28 = internal global ptr @tda10045_init._entry.26, section ".printk_index", align 4
@tda10045_fwupload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016tda1004x: waiting for firmware upload (%s)...\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10045_fwupload\00", [46 x i8] zeroinitializer }, align 32
@tda10045_fwupload._entry_ptr = internal global ptr @tda10045_fwupload._entry, section ".printk_index", align 4
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb-fe-tda10045.fw\00", [45 x i8] zeroinitializer }, align 32
@tda10045_fwupload._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.30, ptr @.str.2, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\013tda1004x: no firmware upload (timeout or file not found?)\0A\00", [35 x i8] zeroinitializer }, align 32
@tda10045_fwupload._entry_ptr.34 = internal global ptr @tda10045_fwupload._entry.32, section ".printk_index", align 4
@tda10045_fwupload._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.30, ptr @.str.2, i32 409, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016tda1004x: firmware upload complete\0A\00", [58 x i8] zeroinitializer }, align 32
@tda10045_fwupload._entry_ptr.37 = internal global ptr @tda10045_fwupload._entry.35, section ".printk_index", align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tda1004x_check_upload_ok._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013tda1004x: timeout waiting for DSP ready\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tda1004x_check_upload_ok\00", [39 x i8] zeroinitializer }, align 32
@tda1004x_check_upload_ok._entry_ptr = internal global ptr @tda1004x_check_upload_ok._entry, section ".printk_index", align 4
@tda1004x_check_upload_ok._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.2, i32 371, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016tda1004x: found firmware revision %x -- invalid\0A\00", [45 x i8] zeroinitializer }, align 32
@tda1004x_check_upload_ok._entry_ptr.42 = internal global ptr @tda1004x_check_upload_ok._entry.40, section ".printk_index", align 4
@tda1004x_check_upload_ok._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.39, ptr @.str.2, i32 374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016tda1004x: found firmware revision %x -- ok\0A\00", [50 x i8] zeroinitializer }, align 32
@tda1004x_check_upload_ok._entry_ptr.45 = internal global ptr @tda1004x_check_upload_ok._entry.43, section ".printk_index", align 4
@tda10045h_set_bandwidth.bandwidth_6mhz = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\00=\00`\1E\A7EO", [23 x i8] zeroinitializer }, align 32
@tda10045h_set_bandwidth.bandwidth_7mhz = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\007\00J/mv\DB", [23 x i8] zeroinitializer }, align 32
@tda10045h_set_bandwidth.bandwidth_8mhz = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\02\00=\00H\17\89\C7\14", [23 x i8] zeroinitializer }, align 32
@tda1004x_write_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.2, i32 184, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017tda1004x: %s: reg=0x%x, len=0x%x\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda1004x_write_buf\00", [45 x i8] zeroinitializer }, align 32
@tda1004x_write_buf._entry_ptr = internal global ptr @tda1004x_write_buf._entry, section ".printk_index", align 4
@tda1004x_do_upload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013tda1004x: Error during firmware upload\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda1004x_do_upload\00", [45 x i8] zeroinitializer }, align 32
@tda1004x_do_upload._entry_ptr = internal global ptr @tda1004x_do_upload._entry, section ".printk_index", align 4
@tda1004x_do_upload._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.49, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017tda1004x: %s: fw_pos=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@tda1004x_do_upload._entry_ptr.52 = internal global ptr @tda1004x_do_upload._entry.50, section ".printk_index", align 4
@tda1004x_write_mask._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.2, i32 164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017tda1004x: %s: reg=0x%x, mask=0x%x, data=0x%x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tda1004x_write_mask\00", [44 x i8] zeroinitializer }, align 32
@tda1004x_write_mask._entry_ptr = internal global ptr @tda1004x_write_mask._entry, section ".printk_index", align 4
@tda1004x_write_byteI._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.56, ptr @.str.2, i32 121, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017tda1004x: %s: reg=0x%x, data=0x%x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda1004x_write_byteI\00", [43 x i8] zeroinitializer }, align 32
@tda1004x_write_byteI._entry_ptr = internal global ptr @tda1004x_write_byteI._entry, section ".printk_index", align 4
@tda1004x_write_byteI._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.56, ptr @.str.2, i32 128, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017tda1004x: %s: error reg=0x%x, data=0x%x, ret=%i\0A\00", [45 x i8] zeroinitializer }, align 32
@tda1004x_write_byteI._entry_ptr.59 = internal global ptr @tda1004x_write_byteI._entry.57, section ".printk_index", align 4
@tda1004x_write_byteI._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.56, ptr @.str.2, i32 131, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda1004x_write_byteI._entry_ptr.61 = internal global ptr @tda1004x_write_byteI._entry.60, section ".printk_index", align 4
@tda1004x_set_fe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.62, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda1004x_set_fe\00", [16 x i8] zeroinitializer }, align 32
@tda1004x_set_fe._entry_ptr = internal global ptr @tda1004x_set_fe._entry, section ".printk_index", align 4
@tda10046h_set_bandwidth.bandwidth_6mhz_53M = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"{.\11\F0\D2", [27 x i8] zeroinitializer }, align 32
@tda10046h_set_bandwidth.bandwidth_7mhz_53M = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"j\02jC\9F", [27 x i8] zeroinitializer }, align 32
@tda10046h_set_bandwidth.bandwidth_8mhz_53M = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"\\2\C2\96m", [27 x i8] zeroinitializer }, align 32
@tda10046h_set_bandwidth.bandwidth_6mhz_48M = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"p\02I$\92", [27 x i8] zeroinitializer }, align 32
@tda10046h_set_bandwidth.bandwidth_7mhz_48M = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"`\02\AA\AA\AB", [27 x i8] zeroinitializer }, align 32
@tda10046h_set_bandwidth.bandwidth_8mhz_48M = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"T\03\0C0\C3", [27 x i8] zeroinitializer }, align 32
@tda1004x_get_fe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.63, ptr @.str.2, i32 895, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tda1004x_get_fe\00", [16 x i8] zeroinitializer }, align 32
@tda1004x_get_fe._entry_ptr = internal global ptr @tda1004x_get_fe._entry, section ".printk_index", align 4
@tda1004x_read_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.64, ptr @.str.2, i32 1012, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"tda1004x_read_status\00", [43 x i8] zeroinitializer }, align 32
@tda1004x_read_status._entry_ptr = internal global ptr @tda1004x_read_status._entry, section ".printk_index", align 4
@tda1004x_read_status._entry.65 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.64, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\017tda1004x: %s: fe_status=0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@tda1004x_read_status._entry_ptr.67 = internal global ptr @tda1004x_read_status._entry.65, section ".printk_index", align 4
@tda1004x_read_ber._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.68, ptr @.str.2, i32 1164, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda1004x_read_ber\00", [46 x i8] zeroinitializer }, align 32
@tda1004x_read_ber._entry_ptr = internal global ptr @tda1004x_read_ber._entry, section ".printk_index", align 4
@tda1004x_read_ber._entry.69 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.68, ptr @.str.2, i32 1178, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017tda1004x: %s: ber=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@tda1004x_read_ber._entry_ptr.71 = internal global ptr @tda1004x_read_ber._entry.69, section ".printk_index", align 4
@tda1004x_read_signal_strength._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.72, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"tda1004x_read_signal_strength\00", [34 x i8] zeroinitializer }, align 32
@tda1004x_read_signal_strength._entry_ptr = internal global ptr @tda1004x_read_signal_strength._entry, section ".printk_index", align 4
@tda1004x_read_signal_strength._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.72, ptr @.str.2, i32 1100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\017tda1004x: %s: signal=0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@tda1004x_read_signal_strength._entry_ptr.75 = internal global ptr @tda1004x_read_signal_strength._entry.73, section ".printk_index", align 4
@tda1004x_read_snr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.76, ptr @.str.2, i32 1109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda1004x_read_snr\00", [46 x i8] zeroinitializer }, align 32
@tda1004x_read_snr._entry_ptr = internal global ptr @tda1004x_read_snr._entry, section ".printk_index", align 4
@tda1004x_read_snr._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.76, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\017tda1004x: %s: snr=0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@tda1004x_read_snr._entry_ptr.79 = internal global ptr @tda1004x_read_snr._entry.77, section ".printk_index", align 4
@tda1004x_read_ucblocks._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.80, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tda1004x_read_ucblocks\00", [41 x i8] zeroinitializer }, align 32
@tda1004x_read_ucblocks._entry_ptr = internal global ptr @tda1004x_read_ucblocks._entry, section ".printk_index", align 4
@tda1004x_read_ucblocks._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 1155, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\017tda1004x: %s: ucblocks=0x%x\0A\00", [33 x i8] zeroinitializer }, align 32
@tda1004x_read_ucblocks._entry_ptr.83 = internal global ptr @tda1004x_read_ucblocks._entry.81, section ".printk_index", align 4
@tda1004x_enable_tuner_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.84, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tda1004x_enable_tuner_i2c\00", [38 x i8] zeroinitializer }, align 32
@tda1004x_enable_tuner_i2c._entry_ptr = internal global ptr @tda1004x_enable_tuner_i2c._entry, section ".printk_index", align 4
@tda1004x_disable_tuner_i2c._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.85, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tda1004x_disable_tuner_i2c\00", [37 x i8] zeroinitializer }, align 32
@tda1004x_disable_tuner_i2c._entry_ptr = internal global ptr @tda1004x_disable_tuner_i2c._entry, section ".printk_index", align 4
@tda10046_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.86, ptr @.str.2, i32 636, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tda10046_init\00", [18 x i8] zeroinitializer }, align 32
@tda10046_init._entry_ptr = internal global ptr @tda10046_init._entry, section ".printk_index", align 4
@tda10046_init._entry.87 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.86, ptr @.str.2, i32 639, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda10046_init._entry_ptr.88 = internal global ptr @tda10046_init._entry.87, section ".printk_index", align 4
@tda10046_fwupload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.90, ptr @.str.2, i32 482, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\017tda1004x: %s: 16MHz Xtal, reducing I2C speed\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tda10046_fwupload\00", [46 x i8] zeroinitializer }, align 32
@tda10046_fwupload._entry_ptr = internal global ptr @tda10046_fwupload._entry, section ".printk_index", align 4
@tda10046_fwupload._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.90, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016tda1004x: trying to boot from eeprom\0A\00", [56 x i8] zeroinitializer }, align 32
@tda10046_fwupload._entry_ptr.93 = internal global ptr @tda10046_fwupload._entry.91, section ".printk_index", align 4
@tda10046_fwupload._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.90, ptr @.str.2, i32 529, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\016tda1004x: waiting for firmware upload...\0A\00", [52 x i8] zeroinitializer }, align 32
@tda10046_fwupload._entry_ptr.96 = internal global ptr @tda10046_fwupload._entry.94, section ".printk_index", align 4
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dvb-fe-tda10046.fw\00", [45 x i8] zeroinitializer }, align 32
@tda10046_fwupload._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.90, ptr @.str.2, i32 535, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@tda10046_fwupload._entry_ptr.99 = internal global ptr @tda10046_fwupload._entry.98, section ".printk_index", align 4
@tda10046_fwupload._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.90, ptr @.str.2, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016tda1004x: please rename the firmware file to %s\0A\00", [45 x i8] zeroinitializer }, align 32
@tda10046_fwupload._entry_ptr.102 = internal global ptr @tda10046_fwupload._entry.100, section ".printk_index", align 4
@tda10046_fwupload._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.90, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013tda1004x: no request function defined, can't upload from file\0A\00", [63 x i8] zeroinitializer }, align 32
@tda10046_fwupload._entry_ptr.105 = internal global ptr @tda10046_fwupload._entry.103, section ".printk_index", align 4
@tda10046_init_plls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 431, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016tda1004x: setting up plls for 53MHz sampling clock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tda10046_init_plls\00", [45 x i8] zeroinitializer }, align 32
@tda10046_init_plls._entry_ptr = internal global ptr @tda10046_init_plls._entry, section ".printk_index", align 4
@tda10046_init_plls._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\016tda1004x: setting up plls for 48MHz sampling clock\0A\00", [42 x i8] zeroinitializer }, align 32
@tda10046_init_plls._entry_ptr.110 = internal global ptr @tda10046_init_plls._entry.108, section ".printk_index", align 4
@tda10046_init_plls._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\017tda1004x: %s: setting up PLLs for a 4 MHz Xtal\0A\00", [46 x i8] zeroinitializer }, align 32
@tda10046_init_plls._entry_ptr.113 = internal global ptr @tda10046_init_plls._entry.111, section ".printk_index", align 4
@tda10046_init_plls._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\017tda1004x: %s: setting up PLLs for a 16 MHz Xtal\0A\00", [45 x i8] zeroinitializer }, align 32
@tda10046_init_plls._entry_ptr.116 = internal global ptr @tda10046_init_plls._entry.114, section ".printk_index", align 4
@switch.table.tda1004x_set_fe = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 1, i32 2, i32 0, i32 3, i32 0, i32 4], [36 x i8] zeroinitializer }, align 32
@switch.table.tda1004x_set_fe.117 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 8, i32 16, i32 0, i32 24, i32 0, i32 32], [36 x i8] zeroinitializer }, align 32
@switch.table.tda1004x_get_fe = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.tda1004x_get_fe.118 = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 1, i32 2, i32 3, i32 5, i32 7], [44 x i8] zeroinitializer }, align 32
@switch.table.tda1004x_get_fe.119 = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 3], [20 x i8] zeroinitializer }, align 32
@switch.table.tda10046_init = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 215, i32 215, i32 12, i32 13], [16 x i8] zeroinitializer }, align 32
@switch.table.tda10046_init.120 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 89, i32 63, i32 0, i32 199], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.122 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.124 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.125 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.127 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.128 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 79, i64 219]
@__sancov_gen_cov_switch_values.130 = internal global [8 x i64] [i64 6, i64 32, i64 84, i64 92, i64 96, i64 106, i64 112, i64 123]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.133 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1276, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1288, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1294, i32 3 }
@___asan_gen_.158 = private unnamed_addr constant [13 x i8] c"tda10045_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1235, i32 38 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1346, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1358, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1363, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant [13 x i8] c"tda10046_ops\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1305, i32 38 }
@___asan_gen_.182 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 29, i32 12 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 143, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 150, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 155, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 606, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 609, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 389, i32 2 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 392, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 409, i32 2 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 356, i32 5 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 371, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 374, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant [15 x i8] c"bandwidth_6mhz\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 216, i32 12 }
@___asan_gen_.269 = private unnamed_addr constant [15 x i8] c"bandwidth_7mhz\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 217, i32 12 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"bandwidth_8mhz\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 218, i32 12 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 184, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 331, i32 4 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 337, i32 3 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 163, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 121, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 127, i32 3 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 130, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 698, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant [19 x i8] c"bandwidth_6mhz_53M\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 245, i32 12 }
@___asan_gen_.335 = private unnamed_addr constant [19 x i8] c"bandwidth_7mhz_53M\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 246, i32 12 }
@___asan_gen_.338 = private unnamed_addr constant [19 x i8] c"bandwidth_8mhz_53M\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 247, i32 12 }
@___asan_gen_.341 = private unnamed_addr constant [19 x i8] c"bandwidth_6mhz_48M\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 249, i32 12 }
@___asan_gen_.344 = private unnamed_addr constant [19 x i8] c"bandwidth_7mhz_48M\00", align 1
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 250, i32 12 }
@___asan_gen_.347 = private unnamed_addr constant [19 x i8] c"bandwidth_8mhz_48M\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 251, i32 12 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 895, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1012, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1071, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1164, i32 2 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1178, i32 2 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1081, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1100, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1109, i32 2 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1118, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1129, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 1155, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 199, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 208, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 636, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 639, i32 3 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 482, i32 3 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 516, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 529, i32 3 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 530, i32 50 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 535, i32 5 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 538, i32 5 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 543, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 431, i32 3 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 434, i32 3 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 438, i32 3 }
@___asan_gen_.497 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.500 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.501 = private constant [42 x i8] c"../drivers/media/dvb-frontends/tda1004x.c\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.501, i32 441, i32 3 }
@___asan_gen_.503 = private unnamed_addr constant [29 x i8] c"switch.table.tda1004x_set_fe\00", align 1
@___asan_gen_.504 = private unnamed_addr constant [33 x i8] c"switch.table.tda1004x_set_fe.117\00", align 1
@___asan_gen_.505 = private unnamed_addr constant [29 x i8] c"switch.table.tda1004x_get_fe\00", align 1
@___asan_gen_.506 = private unnamed_addr constant [33 x i8] c"switch.table.tda1004x_get_fe.118\00", align 1
@___asan_gen_.507 = private unnamed_addr constant [33 x i8] c"switch.table.tda1004x_get_fe.119\00", align 1
@___asan_gen_.508 = private unnamed_addr constant [27 x i8] c"switch.table.tda10046_init\00", align 1
@___asan_gen_.509 = private unnamed_addr constant [31 x i8] c"switch.table.tda10046_init.120\00", align 1
@llvm.compiler.used = appending global [189 x ptr] [ptr @__UNIQUE_ID_author293, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file294, ptr @__UNIQUE_ID_license295, ptr @__ksymtab_tda10045_attach, ptr @__ksymtab_tda10046_attach, ptr @__param_debug, ptr @tda10045_attach._entry, ptr @tda10045_attach._entry.3, ptr @tda10045_attach._entry.6, ptr @tda10045_attach._entry_ptr, ptr @tda10045_attach._entry_ptr.5, ptr @tda10045_attach._entry_ptr.8, ptr @tda10045_fwupload._entry, ptr @tda10045_fwupload._entry.32, ptr @tda10045_fwupload._entry.35, ptr @tda10045_fwupload._entry_ptr, ptr @tda10045_fwupload._entry_ptr.34, ptr @tda10045_fwupload._entry_ptr.37, ptr @tda10045_init._entry, ptr @tda10045_init._entry.26, ptr @tda10045_init._entry_ptr, ptr @tda10045_init._entry_ptr.28, ptr @tda10046_attach._entry, ptr @tda10046_attach._entry.11, ptr @tda10046_attach._entry.14, ptr @tda10046_attach._entry_ptr, ptr @tda10046_attach._entry_ptr.13, ptr @tda10046_attach._entry_ptr.15, ptr @tda10046_fwupload._entry, ptr @tda10046_fwupload._entry.100, ptr @tda10046_fwupload._entry.103, ptr @tda10046_fwupload._entry.91, ptr @tda10046_fwupload._entry.94, ptr @tda10046_fwupload._entry.98, ptr @tda10046_fwupload._entry_ptr, ptr @tda10046_fwupload._entry_ptr.102, ptr @tda10046_fwupload._entry_ptr.105, ptr @tda10046_fwupload._entry_ptr.93, ptr @tda10046_fwupload._entry_ptr.96, ptr @tda10046_fwupload._entry_ptr.99, ptr @tda10046_init._entry, ptr @tda10046_init._entry.87, ptr @tda10046_init._entry_ptr, ptr @tda10046_init._entry_ptr.88, ptr @tda10046_init_plls._entry, ptr @tda10046_init_plls._entry.108, ptr @tda10046_init_plls._entry.111, ptr @tda10046_init_plls._entry.114, ptr @tda10046_init_plls._entry_ptr, ptr @tda10046_init_plls._entry_ptr.110, ptr @tda10046_init_plls._entry_ptr.113, ptr @tda10046_init_plls._entry_ptr.116, ptr @tda1004x_check_upload_ok._entry, ptr @tda1004x_check_upload_ok._entry.40, ptr @tda1004x_check_upload_ok._entry.43, ptr @tda1004x_check_upload_ok._entry_ptr, ptr @tda1004x_check_upload_ok._entry_ptr.42, ptr @tda1004x_check_upload_ok._entry_ptr.45, ptr @tda1004x_disable_tuner_i2c._entry, ptr @tda1004x_disable_tuner_i2c._entry_ptr, ptr @tda1004x_do_upload._entry, ptr @tda1004x_do_upload._entry.50, ptr @tda1004x_do_upload._entry_ptr, ptr @tda1004x_do_upload._entry_ptr.52, ptr @tda1004x_enable_tuner_i2c._entry, ptr @tda1004x_enable_tuner_i2c._entry_ptr, ptr @tda1004x_get_fe._entry, ptr @tda1004x_get_fe._entry_ptr, ptr @tda1004x_read_ber._entry, ptr @tda1004x_read_ber._entry.69, ptr @tda1004x_read_ber._entry_ptr, ptr @tda1004x_read_ber._entry_ptr.71, ptr @tda1004x_read_byte._entry, ptr @tda1004x_read_byte._entry.18, ptr @tda1004x_read_byte._entry.21, ptr @tda1004x_read_byte._entry_ptr, ptr @tda1004x_read_byte._entry_ptr.20, ptr @tda1004x_read_byte._entry_ptr.23, ptr @tda1004x_read_signal_strength._entry, ptr @tda1004x_read_signal_strength._entry.73, ptr @tda1004x_read_signal_strength._entry_ptr, ptr @tda1004x_read_signal_strength._entry_ptr.75, ptr @tda1004x_read_snr._entry, ptr @tda1004x_read_snr._entry.77, ptr @tda1004x_read_snr._entry_ptr, ptr @tda1004x_read_snr._entry_ptr.79, ptr @tda1004x_read_status._entry, ptr @tda1004x_read_status._entry.65, ptr @tda1004x_read_status._entry_ptr, ptr @tda1004x_read_status._entry_ptr.67, ptr @tda1004x_read_ucblocks._entry, ptr @tda1004x_read_ucblocks._entry.81, ptr @tda1004x_read_ucblocks._entry_ptr, ptr @tda1004x_read_ucblocks._entry_ptr.83, ptr @tda1004x_set_fe._entry, ptr @tda1004x_set_fe._entry_ptr, ptr @tda1004x_write_buf._entry, ptr @tda1004x_write_buf._entry_ptr, ptr @tda1004x_write_byteI._entry, ptr @tda1004x_write_byteI._entry.57, ptr @tda1004x_write_byteI._entry.60, ptr @tda1004x_write_byteI._entry_ptr, ptr @tda1004x_write_byteI._entry_ptr.59, ptr @tda1004x_write_byteI._entry_ptr.61, ptr @tda1004x_write_mask._entry, ptr @tda1004x_write_mask._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @tda10045_ops, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @tda10046_ops, ptr @debug, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @.str.44, ptr @tda10045h_set_bandwidth.bandwidth_6mhz, ptr @tda10045h_set_bandwidth.bandwidth_7mhz, ptr @tda10045h_set_bandwidth.bandwidth_8mhz, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.58, ptr @.str.62, ptr @tda10046h_set_bandwidth.bandwidth_6mhz_53M, ptr @tda10046h_set_bandwidth.bandwidth_7mhz_53M, ptr @tda10046h_set_bandwidth.bandwidth_8mhz_53M, ptr @tda10046h_set_bandwidth.bandwidth_6mhz_48M, ptr @tda10046h_set_bandwidth.bandwidth_7mhz_48M, ptr @tda10046h_set_bandwidth.bandwidth_8mhz_48M, ptr @.str.63, ptr @.str.64, ptr @.str.66, ptr @.str.68, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.76, ptr @.str.78, ptr @.str.80, ptr @.str.82, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.89, ptr @.str.90, ptr @.str.92, ptr @.str.95, ptr @.str.97, ptr @.str.101, ptr @.str.104, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @switch.table.tda1004x_set_fe, ptr @switch.table.tda1004x_set_fe.117, ptr @switch.table.tda1004x_get_fe, ptr @switch.table.tda1004x_get_fe.118, ptr @switch.table.tda1004x_get_fe.119, ptr @switch.table.tda10046_init, ptr @switch.table.tda10046_init.120], section "llvm.metadata"
@0 = internal global [130 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_ops to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_byte._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_byte._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_byte._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_init._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_fwupload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_fwupload._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045_fwupload._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_check_upload_ok._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_check_upload_ok._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_check_upload_ok._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045h_set_bandwidth.bandwidth_6mhz to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045h_set_bandwidth.bandwidth_7mhz to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10045h_set_bandwidth.bandwidth_8mhz to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_write_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_do_upload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_do_upload._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_write_mask._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_write_byteI._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_write_byteI._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_write_byteI._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_set_fe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046h_set_bandwidth.bandwidth_6mhz_53M to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046h_set_bandwidth.bandwidth_7mhz_53M to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046h_set_bandwidth.bandwidth_8mhz_53M to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046h_set_bandwidth.bandwidth_6mhz_48M to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046h_set_bandwidth.bandwidth_7mhz_48M to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046h_set_bandwidth.bandwidth_8mhz_48M to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_get_fe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_status._entry.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_ber._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_ber._entry.69 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_signal_strength._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_signal_strength._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_snr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_snr._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_ucblocks._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_read_ucblocks._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_enable_tuner_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda1004x_disable_tuner_i2c._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_init._entry.87 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_fwupload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_fwupload._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_fwupload._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_fwupload._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_fwupload._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_fwupload._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_init_plls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_init_plls._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_init_plls._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tda10046_init_plls._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda1004x_set_fe to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda1004x_set_fe.117 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda1004x_get_fe to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda1004x_get_fe.118 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda1004x_get_fe.119 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda10046_init to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.tda10046_init.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda10045_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1052) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %config2 = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config2, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %demod_type = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %demod_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %demod_type, align 8
  %call4 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 37, i32 %call4)
  %cmp12.not = icmp eq i32 %call4, 37
  br i1 %cmp12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call4) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %frontend = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @tda10045_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end8, %do.end
  %retval.0 = phi ptr [ null, %do.end8 ], [ null, %do.end16 ], [ %frontend, %if.end19 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_read_byte(ptr nocapture noundef readonly %state, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  %b0 = alloca [1 x i8], align 1
  %b1 = alloca [1 x i8], align 1
  %msg = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b0) #7
  %conv = trunc i32 %reg to i8
  %0 = ptrtoint ptr %b0 to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %b0, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %b1) #7
  %1 = ptrtoint ptr %b1 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %b1, align 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg) #7
  %2 = getelementptr inbounds i8, ptr %msg, i32 4
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 1, ptr %len, align 4
  %buf = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %6 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %b0, ptr %buf, align 4
  %arrayinit.element = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1
  %flags3 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 1
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 1, ptr %flags3, align 2
  %len4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 2
  %8 = ptrtoint ptr %len4 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 1, ptr %len4, align 4
  %buf5 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 1, i32 3
  %9 = ptrtoint ptr %buf5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %b1, ptr %buf5, align 4
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %entry.do.end9_crit_edge, label %do.end

entry.do.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef %reg) #11
  br label %do.end9

do.end9:                                          ; preds = %do.end, %entry.do.end9_crit_edge
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %state, i32 0, i32 1
  %11 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %config, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %12, align 4
  %conv10 = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv10, ptr %msg, align 4
  %16 = load i8, ptr %12, align 4
  %conv14 = zext i8 %16 to i16
  %17 = ptrtoint ptr %arrayinit.element to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %conv14, ptr %arrayinit.element, align 4
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %state, align 4
  %call18 = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call18)
  %cmp.not = icmp eq i32 %call18, 2
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool34.not = icmp eq i32 %20, 0
  br i1 %cmp.not, label %do.body33, label %do.body21

do.body21:                                        ; preds = %do.end9
  br i1 %tobool34.not, label %do.body21.cleanup_crit_edge, label %do.end26

do.body21.cleanup_crit_edge:                      ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end26:                                         ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, i32 noundef %reg, i32 noundef %call18) #11
  br label %cleanup

do.body33:                                        ; preds = %do.end9
  br i1 %tobool34.not, label %do.body33.do.end45_crit_edge, label %do.end38

do.body33.do.end45_crit_edge:                     ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

do.end38:                                         ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %b1, align 1
  %conv41 = zext i8 %22 to i32
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.17, i32 noundef %reg, i32 noundef %conv41, i32 noundef 2) #11
  br label %do.end45

do.end45:                                         ; preds = %do.end38, %do.body33.do.end45_crit_edge
  %23 = ptrtoint ptr %b1 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %b1, align 1
  %conv47 = zext i8 %24 to i32
  br label %cleanup

cleanup:                                          ; preds = %do.end45, %do.end26, %do.body21.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv47, %do.end45 ], [ -22, %do.end26 ], [ -22, %do.body21.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b1) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %b0) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tda10046_attach(ptr noundef %config, ptr noundef %i2c) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 1052) #10
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %config2 = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %config2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %config, ptr %config2, align 4
  %2 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %i2c, ptr %call7.i.i, align 8
  %demod_type = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 3
  %3 = ptrtoint ptr %demod_type to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %demod_type, align 8
  %call4 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef nonnull %call7.i.i, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end8, label %if.end11

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 70, i32 %call4)
  %cmp12.not = icmp eq i32 %call4, 70
  br i1 %cmp12.not, label %if.end19, label %do.end16

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %call4) #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %frontend = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 2
  %ops = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 2, i32 1
  %4 = call ptr @memcpy(ptr %ops, ptr @tda10046_ops, i32 544)
  %demodulator_priv = getelementptr inbounds %struct.tda1004x_state, ptr %call7.i.i, i32 0, i32 2, i32 3
  %5 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i, ptr %demodulator_priv, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %do.end16, %do.end8, %do.end
  %retval.0 = phi ptr [ null, %do.end8 ], [ null, %do.end16 ], [ %frontend, %if.end19 ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tda1004x_release(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  tail call void @kfree(ptr noundef %1) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10045_init(ptr noundef %fe) #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !262
  %call.i = tail call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %tda10045_fwupload.exit.thread150, label %do.end.i

tda10045_fwupload.exit.thread150:                 ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %if.end12

do.end.i:                                         ; preds = %do.end3
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.31) #11
  %config.i = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %request_firmware.i = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %request_firmware.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %request_firmware.i, align 4
  %call2.i = call i32 %9(ptr noundef %fe, ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %do.end6.i

do.end6.i:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call8.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  br label %tda10045_fwupload.exit.thread

if.end9.i:                                        ; preds = %do.end.i
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.end9.i.do.end3.i.i_crit_edge, label %do.end.i.i

if.end9.i.do.end3.i.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 16, i32 noundef 0) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.end9.i.do.end3.i.i_crit_edge
  %call4.i.i = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end3.i.i.tda1004x_write_mask.exit.i_crit_edge, label %if.end6.i.i

do.end3.i.i.tda1004x_write_mask.exit.i_crit_edge: ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit.i

if.end6.i.i:                                      ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %call4.i.i, -17
  %call8.i.i = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %and.i.i) #7
  br label %tda1004x_write_mask.exit.i

tda1004x_write_mask.exit.i:                       ; preds = %if.end6.i.i, %do.end3.i.i.tda1004x_write_mask.exit.i_crit_edge
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i37.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i37.i, label %tda1004x_write_mask.exit.i.do.end3.i42.i_crit_edge, label %do.end.i39.i

tda1004x_write_mask.exit.i.do.end3.i42.i_crit_edge: ; preds = %tda1004x_write_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i42.i

do.end.i39.i:                                     ; preds = %tda1004x_write_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i38.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 8, i32 noundef 8) #11
  br label %do.end3.i42.i

do.end3.i42.i:                                    ; preds = %do.end.i39.i, %tda1004x_write_mask.exit.i.do.end3.i42.i_crit_edge
  %call4.i40.i = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i40.i)
  %cmp.i41.i = icmp slt i32 %call4.i40.i, 0
  br i1 %cmp.i41.i, label %do.end3.i42.i.tda1004x_write_mask.exit47.i_crit_edge, label %if.end6.i45.i

do.end3.i42.i.tda1004x_write_mask.exit47.i_crit_edge: ; preds = %do.end3.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit47.i

if.end6.i45.i:                                    ; preds = %do.end3.i42.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %call4.i40.i, 8
  %call8.i44.i = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %or.i.i) #7
  br label %tda1004x_write_mask.exit47.i

tda1004x_write_mask.exit47.i:                     ; preds = %if.end6.i45.i, %do.end3.i42.i.tda1004x_write_mask.exit47.i_crit_edge
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i48.i = icmp eq i32 %12, 0
  br i1 %tobool.not.i48.i, label %tda1004x_write_mask.exit47.i.do.end3.i53.i_crit_edge, label %do.end.i50.i

tda1004x_write_mask.exit47.i.do.end3.i53.i_crit_edge: ; preds = %tda1004x_write_mask.exit47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i53.i

do.end.i50.i:                                     ; preds = %tda1004x_write_mask.exit47.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 8, i32 noundef 0) #11
  br label %do.end3.i53.i

do.end3.i53.i:                                    ; preds = %do.end.i50.i, %tda1004x_write_mask.exit47.i.do.end3.i53.i_crit_edge
  %call4.i51.i = call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i51.i)
  %cmp.i52.i = icmp slt i32 %call4.i51.i, 0
  br i1 %cmp.i52.i, label %do.end3.i53.i.tda1004x_write_mask.exit58.i_crit_edge, label %if.end6.i56.i

do.end3.i53.i.tda1004x_write_mask.exit58.i_crit_edge: ; preds = %do.end3.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit58.i

if.end6.i56.i:                                    ; preds = %do.end3.i53.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i54.i = and i32 %call4.i51.i, -9
  %call8.i55.i = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %and.i54.i) #7
  br label %tda1004x_write_mask.exit58.i

tda1004x_write_mask.exit58.i:                     ; preds = %if.end6.i56.i, %do.end3.i53.i.tda1004x_write_mask.exit58.i_crit_edge
  call void @msleep(i32 noundef 10) #7
  %13 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not.i16.i.i = icmp eq i32 %13, 0
  br i1 %tobool.not.i16.i.i, label %tda1004x_write_mask.exit58.i.for.body.i29.i.i.preheader_crit_edge, label %do.end.i18.i.i

tda1004x_write_mask.exit58.i.for.body.i29.i.i.preheader_crit_edge: ; preds = %tda1004x_write_mask.exit58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29.i.i.preheader

do.end.i18.i.i:                                   ; preds = %tda1004x_write_mask.exit58.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 45, i32 noundef 9) #11
  br label %for.body.i29.i.i.preheader

for.body.i29.i.i.preheader:                       ; preds = %do.end.i18.i.i, %tda1004x_write_mask.exit58.i.for.body.i29.i.i.preheader_crit_edge
  br label %for.body.i29.i.i

for.body.i29.i.i:                                 ; preds = %for.body.i29.i.i.for.body.i29.i.i_crit_edge, %for.body.i29.i.i.preheader
  %i.02.i20.i.i = phi i32 [ %inc.i26.i.i, %for.body.i29.i.i.for.body.i29.i.i_crit_edge ], [ 0, %for.body.i29.i.i.preheader ]
  %add.i21.i.i = add nuw nsw i32 %i.02.i20.i.i, 45
  %arrayidx.i22.i.i = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_8mhz, i32 %i.02.i20.i.i
  %14 = ptrtoint ptr %arrayidx.i22.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.i22.i.i, align 1
  %conv.i23.i.i = zext i8 %15 to i32
  %call4.i24.i.i = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef %add.i21.i.i, i32 noundef %conv.i23.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i24.i.i)
  %cmp5.not.i25.i.i = icmp ne i32 %call4.i24.i.i, 0
  %inc.i26.i.i = add nuw nsw i32 %i.02.i20.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.i26.i.i)
  %exitcond.not.i27.i.i = icmp eq i32 %inc.i26.i.i, 9
  %or.cond.i28.i.i = select i1 %cmp5.not.i25.i.i, i1 true, i1 %exitcond.not.i27.i.i
  br i1 %or.cond.i28.i.i, label %tda10045h_set_bandwidth.exit.i, label %for.body.i29.i.i.for.body.i29.i.i_crit_edge

for.body.i29.i.i.for.body.i29.i.i_crit_edge:      ; preds = %for.body.i29.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29.i.i

tda10045h_set_bandwidth.exit.i:                   ; preds = %for.body.i29.i.i
  %call5.i.i = call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 56, i32 noundef 0) #7
  %16 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %call14.i = call fastcc i32 @tda1004x_do_upload(ptr noundef %4, ptr noundef %19, i32 noundef %21, i8 noundef zeroext 14, i8 noundef zeroext 13) #7
  %22 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %tobool15.not.i = icmp eq i32 %call14.i, 0
  br i1 %tobool15.not.i, label %tda10045_fwupload.exit, label %tda10045h_set_bandwidth.exit.i.tda10045_fwupload.exit.thread_crit_edge

tda10045h_set_bandwidth.exit.i.tda10045_fwupload.exit.thread_crit_edge: ; preds = %tda10045h_set_bandwidth.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda10045_fwupload.exit.thread

tda10045_fwupload.exit.thread:                    ; preds = %tda10045h_set_bandwidth.exit.i.tda10045_fwupload.exit.thread_crit_edge, %do.end6.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %do.end9

tda10045_fwupload.exit:                           ; preds = %tda10045h_set_bandwidth.exit.i
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #11
  call void @msleep(i32 noundef 100) #7
  %call23.i = call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool5.not = icmp eq i32 %call23.i, 0
  br i1 %tobool5.not, label %tda10045_fwupload.exit.if.end12_crit_edge, label %tda10045_fwupload.exit.do.end9_crit_edge

tda10045_fwupload.exit.do.end9_crit_edge:         ; preds = %tda10045_fwupload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

tda10045_fwupload.exit.if.end12_crit_edge:        ; preds = %tda10045_fwupload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end9:                                          ; preds = %tda10045_fwupload.exit.do.end9_crit_edge, %tda10045_fwupload.exit.thread
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end12:                                         ; preds = %tda10045_fwupload.exit.if.end12_crit_edge, %tda10045_fwupload.exit.thread150
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not.i40 = icmp eq i32 %24, 0
  br i1 %tobool.not.i40, label %if.end12.do.end3.i_crit_edge, label %do.end.i42

if.end12.do.end3.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i42:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call.i41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 21, i32 noundef 16, i32 noundef 0) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i42, %if.end12.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i43 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i43, label %do.end3.i.tda1004x_write_mask.exit_crit_edge, label %if.end6.i

do.end3.i.tda1004x_write_mask.exit_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call4.i, -17
  %call8.i44 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 21, i32 noundef %and.i) #7
  br label %tda1004x_write_mask.exit

tda1004x_write_mask.exit:                         ; preds = %if.end6.i, %do.end3.i.tda1004x_write_mask.exit_crit_edge
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i46 = icmp eq i32 %25, 0
  br i1 %tobool.not.i46, label %tda1004x_write_mask.exit.do.end3.i51_crit_edge, label %do.end.i48

tda1004x_write_mask.exit.do.end3.i51_crit_edge:   ; preds = %tda1004x_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i51

do.end.i48:                                       ; preds = %tda1004x_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 32, i32 noundef 0) #11
  br label %do.end3.i51

do.end3.i51:                                      ; preds = %do.end.i48, %tda1004x_write_mask.exit.do.end3.i51_crit_edge
  %call4.i49 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i49)
  %cmp.i50 = icmp slt i32 %call4.i49, 0
  br i1 %cmp.i50, label %do.end3.i51.tda1004x_write_mask.exit56_crit_edge, label %if.end6.i54

do.end3.i51.tda1004x_write_mask.exit56_crit_edge: ; preds = %do.end3.i51
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit56

if.end6.i54:                                      ; preds = %do.end3.i51
  call void @__sanitizer_cov_trace_pc() #9
  %and.i52 = and i32 %call4.i49, -33
  %call8.i53 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 7, i32 noundef %and.i52) #7
  br label %tda1004x_write_mask.exit56

tda1004x_write_mask.exit56:                       ; preds = %if.end6.i54, %do.end3.i51.tda1004x_write_mask.exit56_crit_edge
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i57 = icmp eq i32 %26, 0
  br i1 %tobool.not.i57, label %tda1004x_write_mask.exit56.do.end3.i62_crit_edge, label %do.end.i59

tda1004x_write_mask.exit56.do.end3.i62_crit_edge: ; preds = %tda1004x_write_mask.exit56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i62

do.end.i59:                                       ; preds = %tda1004x_write_mask.exit56
  call void @__sanitizer_cov_trace_pc() #9
  %call.i58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 8, i32 noundef 0) #11
  br label %do.end3.i62

do.end3.i62:                                      ; preds = %do.end.i59, %tda1004x_write_mask.exit56.do.end3.i62_crit_edge
  %call4.i60 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i60)
  %cmp.i61 = icmp slt i32 %call4.i60, 0
  br i1 %cmp.i61, label %do.end3.i62.tda1004x_write_mask.exit67_crit_edge, label %if.end6.i65

do.end3.i62.tda1004x_write_mask.exit67_crit_edge: ; preds = %do.end3.i62
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit67

if.end6.i65:                                      ; preds = %do.end3.i62
  call void @__sanitizer_cov_trace_pc() #9
  %and.i63 = and i32 %call4.i60, -9
  %call8.i64 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i63) #7
  br label %tda1004x_write_mask.exit67

tda1004x_write_mask.exit67:                       ; preds = %if.end6.i65, %do.end3.i62.tda1004x_write_mask.exit67_crit_edge
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i68 = icmp eq i32 %27, 0
  br i1 %tobool.not.i68, label %tda1004x_write_mask.exit67.do.end3.i73_crit_edge, label %do.end.i70

tda1004x_write_mask.exit67.do.end3.i73_crit_edge: ; preds = %tda1004x_write_mask.exit67
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i73

do.end.i70:                                       ; preds = %tda1004x_write_mask.exit67
  call void @__sanitizer_cov_trace_pc() #9
  %call.i69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 22, i32 noundef 64, i32 noundef 0) #11
  br label %do.end3.i73

do.end3.i73:                                      ; preds = %do.end.i70, %tda1004x_write_mask.exit67.do.end3.i73_crit_edge
  %call4.i71 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i71)
  %cmp.i72 = icmp slt i32 %call4.i71, 0
  br i1 %cmp.i72, label %do.end3.i73.tda1004x_write_mask.exit78_crit_edge, label %if.end6.i76

do.end3.i73.tda1004x_write_mask.exit78_crit_edge: ; preds = %do.end3.i73
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit78

if.end6.i76:                                      ; preds = %do.end3.i73
  call void @__sanitizer_cov_trace_pc() #9
  %and.i74 = and i32 %call4.i71, -65
  %call8.i75 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 22, i32 noundef %and.i74) #7
  br label %tda1004x_write_mask.exit78

tda1004x_write_mask.exit78:                       ; preds = %if.end6.i76, %do.end3.i73.tda1004x_write_mask.exit78_crit_edge
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i79 = icmp eq i32 %28, 0
  br i1 %tobool.not.i79, label %tda1004x_write_mask.exit78.do.end3.i84_crit_edge, label %do.end.i81

tda1004x_write_mask.exit78.do.end3.i84_crit_edge: ; preds = %tda1004x_write_mask.exit78
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i84

do.end.i81:                                       ; preds = %tda1004x_write_mask.exit78
  call void @__sanitizer_cov_trace_pc() #9
  %call.i80 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 22, i32 noundef 128, i32 noundef 128) #11
  br label %do.end3.i84

do.end3.i84:                                      ; preds = %do.end.i81, %tda1004x_write_mask.exit78.do.end3.i84_crit_edge
  %call4.i82 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i82)
  %cmp.i83 = icmp slt i32 %call4.i82, 0
  br i1 %cmp.i83, label %do.end3.i84.tda1004x_write_mask.exit89_crit_edge, label %if.end6.i87

do.end3.i84.tda1004x_write_mask.exit89_crit_edge: ; preds = %do.end3.i84
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit89

if.end6.i87:                                      ; preds = %do.end3.i84
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %call4.i82, 128
  %call8.i86 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 22, i32 noundef %or.i) #7
  br label %tda1004x_write_mask.exit89

tda1004x_write_mask.exit89:                       ; preds = %if.end6.i87, %do.end3.i84.tda1004x_write_mask.exit89_crit_edge
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i90 = icmp eq i32 %29, 0
  br i1 %tobool.not.i90, label %tda1004x_write_mask.exit89.do.end3.i95_crit_edge, label %do.end.i92

tda1004x_write_mask.exit89.do.end3.i95_crit_edge: ; preds = %tda1004x_write_mask.exit89
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i95

do.end.i92:                                       ; preds = %tda1004x_write_mask.exit89
  call void @__sanitizer_cov_trace_pc() #9
  %call.i91 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 16, i32 noundef 16) #11
  br label %do.end3.i95

do.end3.i95:                                      ; preds = %do.end.i92, %tda1004x_write_mask.exit89.do.end3.i95_crit_edge
  %call4.i93 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i93)
  %cmp.i94 = icmp slt i32 %call4.i93, 0
  br i1 %cmp.i94, label %do.end3.i95.tda1004x_write_mask.exit101_crit_edge, label %if.end6.i99

do.end3.i95.tda1004x_write_mask.exit101_crit_edge: ; preds = %do.end3.i95
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit101

if.end6.i99:                                      ; preds = %do.end3.i95
  call void @__sanitizer_cov_trace_pc() #9
  %or.i97 = or i32 %call4.i93, 16
  %call8.i98 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %or.i97) #7
  br label %tda1004x_write_mask.exit101

tda1004x_write_mask.exit101:                      ; preds = %if.end6.i99, %do.end3.i95.tda1004x_write_mask.exit101_crit_edge
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i102 = icmp eq i32 %30, 0
  br i1 %tobool.not.i102, label %tda1004x_write_mask.exit101.do.end3.i107_crit_edge, label %do.end.i104

tda1004x_write_mask.exit101.do.end3.i107_crit_edge: ; preds = %tda1004x_write_mask.exit101
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i107

do.end.i104:                                      ; preds = %tda1004x_write_mask.exit101
  call void @__sanitizer_cov_trace_pc() #9
  %call.i103 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 3, i32 noundef 192, i32 noundef 0) #11
  br label %do.end3.i107

do.end3.i107:                                     ; preds = %do.end.i104, %tda1004x_write_mask.exit101.do.end3.i107_crit_edge
  %call4.i105 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i105)
  %cmp.i106 = icmp slt i32 %call4.i105, 0
  br i1 %cmp.i106, label %do.end3.i107.tda1004x_write_mask.exit112_crit_edge, label %if.end6.i110

do.end3.i107.tda1004x_write_mask.exit112_crit_edge: ; preds = %do.end3.i107
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit112

if.end6.i110:                                     ; preds = %do.end3.i107
  call void @__sanitizer_cov_trace_pc() #9
  %and.i108 = and i32 %call4.i105, -193
  %call8.i109 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 3, i32 noundef %and.i108) #7
  br label %tda1004x_write_mask.exit112

tda1004x_write_mask.exit112:                      ; preds = %if.end6.i110, %do.end3.i107.tda1004x_write_mask.exit112_crit_edge
  %call20 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 30, i32 noundef 0)
  %call21 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 31, i32 noundef 0)
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i113 = icmp eq i32 %31, 0
  br i1 %tobool.not.i113, label %tda1004x_write_mask.exit112.do.end3.i118_crit_edge, label %do.end.i115

tda1004x_write_mask.exit112.do.end3.i118_crit_edge: ; preds = %tda1004x_write_mask.exit112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i118

do.end.i115:                                      ; preds = %tda1004x_write_mask.exit112
  call void @__sanitizer_cov_trace_pc() #9
  %call.i114 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 36, i32 noundef 224, i32 noundef 160) #11
  br label %do.end3.i118

do.end3.i118:                                     ; preds = %do.end.i115, %tda1004x_write_mask.exit112.do.end3.i118_crit_edge
  %call4.i116 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i116)
  %cmp.i117 = icmp slt i32 %call4.i116, 0
  br i1 %cmp.i117, label %do.end3.i118.tda1004x_write_mask.exit124_crit_edge, label %if.end6.i122

do.end3.i118.tda1004x_write_mask.exit124_crit_edge: ; preds = %do.end3.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit124

if.end6.i122:                                     ; preds = %do.end3.i118
  call void @__sanitizer_cov_trace_pc() #9
  %and.i119 = and i32 %call4.i116, -225
  %or.i120 = or i32 %and.i119, 160
  %call8.i121 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 36, i32 noundef %or.i120) #7
  br label %tda1004x_write_mask.exit124

tda1004x_write_mask.exit124:                      ; preds = %if.end6.i122, %do.end3.i118.tda1004x_write_mask.exit124_crit_edge
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not.i125 = icmp eq i32 %32, 0
  br i1 %tobool.not.i125, label %tda1004x_write_mask.exit124.do.end3.i130_crit_edge, label %do.end.i127

tda1004x_write_mask.exit124.do.end3.i130_crit_edge: ; preds = %tda1004x_write_mask.exit124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i130

do.end.i127:                                      ; preds = %tda1004x_write_mask.exit124
  call void @__sanitizer_cov_trace_pc() #9
  %call.i126 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 22, i32 noundef 16, i32 noundef 0) #11
  br label %do.end3.i130

do.end3.i130:                                     ; preds = %do.end.i127, %tda1004x_write_mask.exit124.do.end3.i130_crit_edge
  %call4.i128 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i128)
  %cmp.i129 = icmp slt i32 %call4.i128, 0
  br i1 %cmp.i129, label %do.end3.i130.tda1004x_write_mask.exit135_crit_edge, label %if.end6.i133

do.end3.i130.tda1004x_write_mask.exit135_crit_edge: ; preds = %do.end3.i130
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit135

if.end6.i133:                                     ; preds = %do.end3.i130
  call void @__sanitizer_cov_trace_pc() #9
  %and.i131 = and i32 %call4.i128, -17
  %call8.i132 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 22, i32 noundef %and.i131) #7
  br label %tda1004x_write_mask.exit135

tda1004x_write_mask.exit135:                      ; preds = %if.end6.i133, %do.end3.i130.tda1004x_write_mask.exit135_crit_edge
  %call24 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 21, i32 noundef 46)
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config, align 4
  %invert_oclk = getelementptr inbounds %struct.tda1004x_config, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %invert_oclk to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %invert_oclk, align 2
  %conv = zext i8 %36 to i32
  %37 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool.not.i136 = icmp eq i32 %37, 0
  br i1 %tobool.not.i136, label %tda1004x_write_mask.exit135.do.end3.i141_crit_edge, label %do.end.i138

tda1004x_write_mask.exit135.do.end3.i141_crit_edge: ; preds = %tda1004x_write_mask.exit135
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i141

do.end.i138:                                      ; preds = %tda1004x_write_mask.exit135
  call void @__sanitizer_cov_trace_pc() #9
  %call.i137 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 31, i32 noundef 1, i32 noundef %conv) #11
  br label %do.end3.i141

do.end3.i141:                                     ; preds = %do.end.i138, %tda1004x_write_mask.exit135.do.end3.i141_crit_edge
  %call4.i139 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i139)
  %cmp.i140 = icmp slt i32 %call4.i139, 0
  br i1 %cmp.i140, label %do.end3.i141.cleanup_crit_edge, label %if.end6.i145

do.end3.i141.cleanup_crit_edge:                   ; preds = %do.end3.i141
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i145:                                     ; preds = %do.end3.i141
  call void @__sanitizer_cov_trace_pc() #9
  %and.i142 = and i32 %call4.i139, -2
  %or.i143 = or i32 %and.i142, %conv
  %call8.i144 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 31, i32 noundef %or.i143) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i145, %do.end3.i141.cleanup_crit_edge, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ 0, %do.end3.i141.cleanup_crit_edge ], [ 0, %if.end6.i145 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %demod_type = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %demod_type, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %sw.bb.do.end3.i_crit_edge, label %do.end.i

sw.bb.do.end3.i_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 21, i32 noundef 16, i32 noundef 16) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %sw.bb.do.end3.i_crit_edge
  %call4.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end3.i.sw.epilog_crit_edge, label %if.end6.i

do.end3.i.sw.epilog_crit_edge:                    ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %call4.i, 16
  %call8.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 21, i32 noundef %or.i) #7
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 59, i32 noundef 255)
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %gpio_config = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %gpio_config to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gpio_config, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %9)
  %cmp = icmp sgt i32 %9, 127
  br i1 %cmp, label %if.then, label %sw.bb1.if.end_crit_edge

sw.bb1.if.end_crit_edge:                          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %sw.bb1
  %and = and i32 %9, 15
  %xor = xor i32 %and, 10
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i13 = icmp eq i32 %10, 0
  br i1 %tobool.not.i13, label %if.then.do.end3.i18_crit_edge, label %do.end.i15

if.then.do.end3.i18_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i18

do.end.i15:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call.i14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 61, i32 noundef 15, i32 noundef %xor) #11
  br label %do.end3.i18

do.end3.i18:                                      ; preds = %do.end.i15, %if.then.do.end3.i18_crit_edge
  %call4.i16 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i16)
  %cmp.i17 = icmp slt i32 %call4.i16, 0
  br i1 %cmp.i17, label %do.end3.i18.if.end_crit_edge, label %if.end6.i22

do.end3.i18.if.end_crit_edge:                     ; preds = %do.end3.i18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end6.i22:                                      ; preds = %do.end3.i18
  call void @__sanitizer_cov_trace_pc() #9
  %and.i19 = and i32 %call4.i16, -16
  %or.i20 = or i32 %and.i19, %xor
  %call8.i21 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 61, i32 noundef %or.i20) #7
  br label %if.end

if.end:                                           ; preds = %if.end6.i22, %do.end3.i18.if.end_crit_edge, %sw.bb1.if.end_crit_edge
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i25 = icmp eq i32 %11, 0
  br i1 %tobool.not.i25, label %if.end.do.end3.i30_crit_edge, label %do.end.i27

if.end.do.end3.i30_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i30

do.end.i27:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i26 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 55, i32 noundef 192, i32 noundef 192) #11
  br label %do.end3.i30

do.end3.i30:                                      ; preds = %do.end.i27, %if.end.do.end3.i30_crit_edge
  %call4.i28 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i28)
  %cmp.i29 = icmp slt i32 %call4.i28, 0
  br i1 %cmp.i29, label %do.end3.i30.tda1004x_write_mask.exit36_crit_edge, label %if.end6.i34

do.end3.i30.tda1004x_write_mask.exit36_crit_edge: ; preds = %do.end3.i30
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit36

if.end6.i34:                                      ; preds = %do.end3.i30
  call void @__sanitizer_cov_trace_pc() #9
  %or.i32 = or i32 %call4.i28, 192
  %call8.i33 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 55, i32 noundef %or.i32) #7
  br label %tda1004x_write_mask.exit36

tda1004x_write_mask.exit36:                       ; preds = %if.end6.i34, %do.end3.i30.tda1004x_write_mask.exit36_crit_edge
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not.i37 = icmp eq i32 %12, 0
  br i1 %tobool.not.i37, label %tda1004x_write_mask.exit36.do.end3.i42_crit_edge, label %do.end.i39

tda1004x_write_mask.exit36.do.end3.i42_crit_edge: ; preds = %tda1004x_write_mask.exit36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i42

do.end.i39:                                       ; preds = %tda1004x_write_mask.exit36
  call void @__sanitizer_cov_trace_pc() #9
  %call.i38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 1, i32 noundef 1) #11
  br label %do.end3.i42

do.end3.i42:                                      ; preds = %do.end.i39, %tda1004x_write_mask.exit36.do.end3.i42_crit_edge
  %call4.i40 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i40)
  %cmp.i41 = icmp slt i32 %call4.i40, 0
  br i1 %cmp.i41, label %do.end3.i42.sw.epilog_crit_edge, label %if.end6.i46

do.end3.i42.sw.epilog_crit_edge:                  ; preds = %do.end3.i42
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i46:                                      ; preds = %do.end3.i42
  call void @__sanitizer_cov_trace_pc() #9
  %or.i44 = or i32 %call4.i40, 1
  %call8.i45 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 7, i32 noundef %or.i44) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end6.i46, %do.end3.i42.sw.epilog_crit_edge, %if.end6.i, %do.end3.i.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_write(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %buf, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len)
  %cmp.not = icmp eq i32 %len, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %buf, align 1
  %conv = zext i8 %3 to i32
  %arrayidx1 = getelementptr i8, ptr %buf, i32 1
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %conv2 = zext i8 %5 to i32
  %call = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef %conv, i32 noundef %conv2)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_set_fe(ptr noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.62) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %demod_type = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp eq i32 %4, 1
  br i1 %cmp, label %if.then5, label %do.end4.if.end10_crit_edge

do.end4.if.end10_crit_edge:                       ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then5:                                         ; preds = %do.end4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then5.do.end3.i_crit_edge, label %do.end.i

if.then5.do.end3.i_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 16, i32 noundef 16) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.then5.do.end3.i_crit_edge
  %call4.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end3.i.tda1004x_write_mask.exit_crit_edge, label %if.end6.i

do.end3.i.tda1004x_write_mask.exit_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i = or i32 %call4.i, 16
  %call8.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %or.i) #7
  br label %tda1004x_write_mask.exit

tda1004x_write_mask.exit:                         ; preds = %if.end6.i, %do.end3.i.tda1004x_write_mask.exit_crit_edge
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i206 = icmp eq i32 %6, 0
  br i1 %tobool.not.i206, label %tda1004x_write_mask.exit.do.end3.i211_crit_edge, label %do.end.i208

tda1004x_write_mask.exit.do.end3.i211_crit_edge:  ; preds = %tda1004x_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i211

do.end.i208:                                      ; preds = %tda1004x_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 128, i32 noundef 0) #11
  br label %do.end3.i211

do.end3.i211:                                     ; preds = %do.end.i208, %tda1004x_write_mask.exit.do.end3.i211_crit_edge
  %call4.i209 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i209)
  %cmp.i210 = icmp slt i32 %call4.i209, 0
  br i1 %cmp.i210, label %do.end3.i211.tda1004x_write_mask.exit216_crit_edge, label %if.end6.i214

do.end3.i211.tda1004x_write_mask.exit216_crit_edge: ; preds = %do.end3.i211
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit216

if.end6.i214:                                     ; preds = %do.end3.i211
  call void @__sanitizer_cov_trace_pc() #9
  %and.i212 = and i32 %call4.i209, -129
  %call8.i213 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 2, i32 noundef %and.i212) #7
  br label %tda1004x_write_mask.exit216

tda1004x_write_mask.exit216:                      ; preds = %if.end6.i214, %do.end3.i211.tda1004x_write_mask.exit216_crit_edge
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i217 = icmp eq i32 %7, 0
  br i1 %tobool.not.i217, label %tda1004x_write_mask.exit216.do.end3.i222_crit_edge, label %do.end.i219

tda1004x_write_mask.exit216.do.end3.i222_crit_edge: ; preds = %tda1004x_write_mask.exit216
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i222

do.end.i219:                                      ; preds = %tda1004x_write_mask.exit216
  call void @__sanitizer_cov_trace_pc() #9
  %call.i218 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 3, i32 noundef 192, i32 noundef 0) #11
  br label %do.end3.i222

do.end3.i222:                                     ; preds = %do.end.i219, %tda1004x_write_mask.exit216.do.end3.i222_crit_edge
  %call4.i220 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i220)
  %cmp.i221 = icmp slt i32 %call4.i220, 0
  br i1 %cmp.i221, label %do.end3.i222.tda1004x_write_mask.exit227_crit_edge, label %if.end6.i225

do.end3.i222.tda1004x_write_mask.exit227_crit_edge: ; preds = %do.end3.i222
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit227

if.end6.i225:                                     ; preds = %do.end3.i222
  call void @__sanitizer_cov_trace_pc() #9
  %and.i223 = and i32 %call4.i220, -193
  %call8.i224 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 3, i32 noundef %and.i223) #7
  br label %tda1004x_write_mask.exit227

tda1004x_write_mask.exit227:                      ; preds = %if.end6.i225, %do.end3.i222.tda1004x_write_mask.exit227_crit_edge
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i228 = icmp eq i32 %8, 0
  br i1 %tobool.not.i228, label %tda1004x_write_mask.exit227.do.end3.i233_crit_edge, label %do.end.i230

tda1004x_write_mask.exit227.do.end3.i233_crit_edge: ; preds = %tda1004x_write_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i233

do.end.i230:                                      ; preds = %tda1004x_write_mask.exit227
  call void @__sanitizer_cov_trace_pc() #9
  %call.i229 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 67, i32 noundef 4, i32 noundef 0) #11
  br label %do.end3.i233

do.end3.i233:                                     ; preds = %do.end.i230, %tda1004x_write_mask.exit227.do.end3.i233_crit_edge
  %call4.i231 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i231)
  %cmp.i232 = icmp slt i32 %call4.i231, 0
  br i1 %cmp.i232, label %do.end3.i233.if.end10_crit_edge, label %if.end6.i236

do.end3.i233.if.end10_crit_edge:                  ; preds = %do.end3.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end6.i236:                                     ; preds = %do.end3.i233
  call void @__sanitizer_cov_trace_pc() #9
  %and.i234 = and i32 %call4.i231, -5
  %call8.i235 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 67, i32 noundef %and.i234) #7
  br label %if.end10

if.end10:                                         ; preds = %if.end6.i236, %do.end3.i233.if.end10_crit_edge, %do.end4.if.end10_crit_edge
  %set_params = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32, i32 6
  %9 = ptrtoint ptr %set_params to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %set_params, align 4
  %tobool11.not = icmp eq ptr %10, null
  br i1 %tobool11.not, label %if.end10.if.end24_crit_edge, label %if.then12

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then12:                                        ; preds = %if.end10
  %call16 = tail call i32 %10(ptr noundef %fe) #7
  %i2c_gate_ctrl = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 28
  %11 = ptrtoint ptr %i2c_gate_ctrl to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c_gate_ctrl, align 4
  %tobool18.not = icmp eq ptr %12, null
  br i1 %tobool18.not, label %if.then12.if.end24_crit_edge, label %if.then19

if.then12.if.end24_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

if.then19:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 %12(ptr noundef %fe, i32 noundef 0) #7
  br label %if.end24

if.end24:                                         ; preds = %if.then19, %if.then12.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %13 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %demod_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp26 = icmp eq i32 %14, 0
  br i1 %cmp26, label %if.then27, label %if.end24.if.end28_crit_edge

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %code_rate_HP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %15 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %code_rate_HP, align 4
  %guard_interval = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %16 = ptrtoint ptr %guard_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %guard_interval, align 4
  %transmission_mode = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %17 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %transmission_mode, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then27, %if.end24.if.end28_crit_edge
  %code_rate_HP29 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 11
  %18 = ptrtoint ptr %code_rate_HP29 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %code_rate_HP29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %19)
  %cmp30 = icmp eq i32 %19, 9
  br i1 %cmp30, label %if.end28.if.then36_crit_edge, label %lor.lhs.false

if.end28.if.then36_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

lor.lhs.false:                                    ; preds = %if.end28
  %code_rate_LP = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 12
  %20 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %code_rate_LP, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %21)
  %cmp31 = icmp eq i32 %21, 9
  br i1 %cmp31, label %lor.lhs.false.if.then36_crit_edge, label %lor.lhs.false32

lor.lhs.false.if.then36_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

lor.lhs.false32:                                  ; preds = %lor.lhs.false
  %modulation = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %modulation, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %23)
  %cmp33 = icmp eq i32 %23, 6
  br i1 %cmp33, label %lor.lhs.false32.if.then36_crit_edge, label %lor.lhs.false34

lor.lhs.false32.if.then36_crit_edge:              ; preds = %lor.lhs.false32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

lor.lhs.false34:                                  ; preds = %lor.lhs.false32
  %hierarchy = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 9
  %24 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %hierarchy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %25)
  %cmp35 = icmp eq i32 %25, 4
  br i1 %cmp35, label %lor.lhs.false34.if.then36_crit_edge, label %if.else

lor.lhs.false34.if.then36_crit_edge:              ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false34.if.then36_crit_edge, %lor.lhs.false32.if.then36_crit_edge, %lor.lhs.false.if.then36_crit_edge, %if.end28.if.then36_crit_edge
  %26 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i239 = icmp eq i32 %26, 0
  br i1 %tobool.not.i239, label %if.then36.do.end3.i244_crit_edge, label %do.end.i241

if.then36.do.end3.i244_crit_edge:                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i244

do.end.i241:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %call.i240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 1, i32 noundef 1) #11
  br label %do.end3.i244

do.end3.i244:                                     ; preds = %do.end.i241, %if.then36.do.end3.i244_crit_edge
  %call4.i242 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i242)
  %cmp.i243 = icmp slt i32 %call4.i242, 0
  br i1 %cmp.i243, label %do.end3.i244.tda1004x_write_mask.exit250_crit_edge, label %if.end6.i248

do.end3.i244.tda1004x_write_mask.exit250_crit_edge: ; preds = %do.end3.i244
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit250

if.end6.i248:                                     ; preds = %do.end3.i244
  call void @__sanitizer_cov_trace_pc() #9
  %or.i246 = or i32 %call4.i242, 1
  %call8.i247 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %or.i246) #7
  br label %tda1004x_write_mask.exit250

tda1004x_write_mask.exit250:                      ; preds = %if.end6.i248, %do.end3.i244.tda1004x_write_mask.exit250_crit_edge
  %27 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i251 = icmp eq i32 %27, 0
  br i1 %tobool.not.i251, label %tda1004x_write_mask.exit250.do.end3.i256_crit_edge, label %do.end.i253

tda1004x_write_mask.exit250.do.end3.i256_crit_edge: ; preds = %tda1004x_write_mask.exit250
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i256

do.end.i253:                                      ; preds = %tda1004x_write_mask.exit250
  call void @__sanitizer_cov_trace_pc() #9
  %call.i252 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 3, i32 noundef 0) #11
  br label %do.end3.i256

do.end3.i256:                                     ; preds = %do.end.i253, %tda1004x_write_mask.exit250.do.end3.i256_crit_edge
  %call4.i254 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i254)
  %cmp.i255 = icmp slt i32 %call4.i254, 0
  br i1 %cmp.i255, label %do.end3.i256.tda1004x_write_mask.exit261_crit_edge, label %if.end6.i259

do.end3.i256.tda1004x_write_mask.exit261_crit_edge: ; preds = %do.end3.i256
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit261

if.end6.i259:                                     ; preds = %do.end3.i256
  call void @__sanitizer_cov_trace_pc() #9
  %and.i257 = and i32 %call4.i254, -4
  %call8.i258 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 2, i32 noundef %and.i257) #7
  br label %tda1004x_write_mask.exit261

tda1004x_write_mask.exit261:                      ; preds = %if.end6.i259, %do.end3.i256.tda1004x_write_mask.exit261_crit_edge
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.not.i262 = icmp eq i32 %28, 0
  br i1 %tobool.not.i262, label %tda1004x_write_mask.exit261.do.end3.i267_crit_edge, label %do.end.i264

tda1004x_write_mask.exit261.do.end3.i267_crit_edge: ; preds = %tda1004x_write_mask.exit261
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i267

do.end.i264:                                      ; preds = %tda1004x_write_mask.exit261
  call void @__sanitizer_cov_trace_pc() #9
  %call.i263 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 96, i32 noundef 0) #11
  br label %do.end3.i267

do.end3.i267:                                     ; preds = %do.end.i264, %tda1004x_write_mask.exit261.do.end3.i267_crit_edge
  %call4.i265 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i265)
  %cmp.i266 = icmp slt i32 %call4.i265, 0
  br i1 %cmp.i266, label %do.end3.i267.tda1004x_write_mask.exit272_crit_edge, label %if.end6.i270

do.end3.i267.tda1004x_write_mask.exit272_crit_edge: ; preds = %do.end3.i267
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit272

if.end6.i270:                                     ; preds = %do.end3.i267
  call void @__sanitizer_cov_trace_pc() #9
  %and.i268 = and i32 %call4.i265, -97
  %call8.i269 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 2, i32 noundef %and.i268) #7
  br label %tda1004x_write_mask.exit272

tda1004x_write_mask.exit272:                      ; preds = %if.end6.i270, %do.end3.i267.tda1004x_write_mask.exit272_crit_edge
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not.i273 = icmp eq i32 %29, 0
  br i1 %tobool.not.i273, label %tda1004x_write_mask.exit272.do.end3.i278_crit_edge, label %do.end.i275

tda1004x_write_mask.exit272.do.end3.i278_crit_edge: ; preds = %tda1004x_write_mask.exit272
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i278

do.end.i275:                                      ; preds = %tda1004x_write_mask.exit272
  call void @__sanitizer_cov_trace_pc() #9
  %call.i274 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 3, i32 noundef 63, i32 noundef 0) #11
  br label %do.end3.i278

do.end3.i278:                                     ; preds = %do.end.i275, %tda1004x_write_mask.exit272.do.end3.i278_crit_edge
  %call4.i276 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i276)
  %cmp.i277 = icmp slt i32 %call4.i276, 0
  br i1 %cmp.i277, label %do.end3.i278.if.end71_crit_edge, label %if.end6.i281

do.end3.i278.if.end71_crit_edge:                  ; preds = %do.end3.i278
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

if.end6.i281:                                     ; preds = %do.end3.i278
  call void @__sanitizer_cov_trace_pc() #9
  %and.i279 = and i32 %call4.i276, -64
  %call8.i280 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 3, i32 noundef %and.i279) #7
  br label %if.end71

if.else:                                          ; preds = %lor.lhs.false34
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i284 = icmp eq i32 %30, 0
  br i1 %tobool.not.i284, label %if.else.do.end3.i289_crit_edge, label %do.end.i286

if.else.do.end3.i289_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i289

do.end.i286:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i285 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 1, i32 noundef 0) #11
  br label %do.end3.i289

do.end3.i289:                                     ; preds = %do.end.i286, %if.else.do.end3.i289_crit_edge
  %call4.i287 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i287)
  %cmp.i288 = icmp slt i32 %call4.i287, 0
  br i1 %cmp.i288, label %do.end3.i289.tda1004x_write_mask.exit294_crit_edge, label %if.end6.i292

do.end3.i289.tda1004x_write_mask.exit294_crit_edge: ; preds = %do.end3.i289
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit294

if.end6.i292:                                     ; preds = %do.end3.i289
  call void @__sanitizer_cov_trace_pc() #9
  %and.i290 = and i32 %call4.i287, -2
  %call8.i291 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i290) #7
  br label %tda1004x_write_mask.exit294

tda1004x_write_mask.exit294:                      ; preds = %if.end6.i292, %do.end3.i289.tda1004x_write_mask.exit294_crit_edge
  %31 = ptrtoint ptr %code_rate_HP29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %code_rate_HP29, align 4
  %switch.tableidx = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %33 = icmp ult i32 %switch.tableidx, 7
  br i1 %33, label %switch.hole_check, label %tda1004x_write_mask.exit294.cleanup_crit_edge

tda1004x_write_mask.exit294.cleanup_crit_edge:    ; preds = %tda1004x_write_mask.exit294
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check:                                ; preds = %tda1004x_write_mask.exit294
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 87, %switch.maskindex
  %34 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %switch.lobit.not = icmp eq i8 %34, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.tda1004x_set_fe, i32 0, i32 %switch.tableidx
  %35 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %35)
  %switch.load = load i32, ptr %switch.gep, align 4
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool.not.i296 = icmp eq i32 %36, 0
  br i1 %tobool.not.i296, label %switch.lookup.do.end3.i301_crit_edge, label %do.end.i298

switch.lookup.do.end3.i301_crit_edge:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i301

do.end.i298:                                      ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  %call.i297 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 3, i32 noundef 7, i32 noundef %switch.load) #11
  br label %do.end3.i301

do.end3.i301:                                     ; preds = %do.end.i298, %switch.lookup.do.end3.i301_crit_edge
  %call4.i299 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i299)
  %cmp.i300 = icmp slt i32 %call4.i299, 0
  br i1 %cmp.i300, label %do.end3.i301.tda1004x_write_mask.exit307_crit_edge, label %if.end6.i305

do.end3.i301.tda1004x_write_mask.exit307_crit_edge: ; preds = %do.end3.i301
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit307

if.end6.i305:                                     ; preds = %do.end3.i301
  call void @__sanitizer_cov_trace_pc() #9
  %and.i302 = and i32 %call4.i299, -8
  %or.i303 = or i32 %and.i302, %switch.load
  %call8.i304 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 3, i32 noundef %or.i303) #7
  br label %tda1004x_write_mask.exit307

tda1004x_write_mask.exit307:                      ; preds = %if.end6.i305, %do.end3.i301.tda1004x_write_mask.exit307_crit_edge
  %37 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %code_rate_LP, align 4
  %switch.tableidx588 = add i32 %38, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx588)
  %39 = icmp ult i32 %switch.tableidx588, 7
  br i1 %39, label %switch.hole_check589, label %tda1004x_write_mask.exit307.cleanup_crit_edge

tda1004x_write_mask.exit307.cleanup_crit_edge:    ; preds = %tda1004x_write_mask.exit307
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.hole_check589:                             ; preds = %tda1004x_write_mask.exit307
  %switch.maskindex591 = trunc i32 %switch.tableidx588 to i8
  %switch.shifted592 = lshr i8 87, %switch.maskindex591
  %40 = and i8 %switch.shifted592, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %switch.lobit593.not = icmp eq i8 %40, 0
  br i1 %switch.lobit593.not, label %switch.hole_check589.cleanup_crit_edge, label %switch.lookup590

switch.hole_check589.cleanup_crit_edge:           ; preds = %switch.hole_check589
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

switch.lookup590:                                 ; preds = %switch.hole_check589
  %switch.gep594 = getelementptr inbounds [7 x i32], ptr @switch.table.tda1004x_set_fe.117, i32 0, i32 %switch.tableidx588
  %41 = ptrtoint ptr %switch.gep594 to i32
  call void @__asan_load4_noabort(i32 %41)
  %switch.load595 = load i32, ptr %switch.gep594, align 4
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool.not.i315 = icmp eq i32 %42, 0
  br i1 %tobool.not.i315, label %switch.lookup590.do.end3.i320_crit_edge, label %do.end.i317

switch.lookup590.do.end3.i320_crit_edge:          ; preds = %switch.lookup590
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i320

do.end.i317:                                      ; preds = %switch.lookup590
  call void @__sanitizer_cov_trace_pc() #9
  %call.i316 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 3, i32 noundef 56, i32 noundef %switch.load595) #11
  br label %do.end3.i320

do.end3.i320:                                     ; preds = %do.end.i317, %switch.lookup590.do.end3.i320_crit_edge
  %call4.i318 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i318)
  %cmp.i319 = icmp slt i32 %call4.i318, 0
  br i1 %cmp.i319, label %do.end3.i320.tda1004x_write_mask.exit327_crit_edge, label %if.end6.i325

do.end3.i320.tda1004x_write_mask.exit327_crit_edge: ; preds = %do.end3.i320
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit327

if.end6.i325:                                     ; preds = %do.end3.i320
  call void @__sanitizer_cov_trace_pc() #9
  %and.i321 = and i32 %call4.i318, -57
  %or.i323 = or i32 %and.i321, %switch.load595
  %call8.i324 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 3, i32 noundef %or.i323) #7
  br label %tda1004x_write_mask.exit327

tda1004x_write_mask.exit327:                      ; preds = %if.end6.i325, %do.end3.i320.tda1004x_write_mask.exit327_crit_edge
  %43 = ptrtoint ptr %modulation to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %modulation, align 4
  %45 = zext i32 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.121)
  switch i32 %44, label %tda1004x_write_mask.exit327.cleanup_crit_edge [
    i32 0, label %tda1004x_write_mask.exit327.sw.epilog_crit_edge
    i32 1, label %sw.bb56
    i32 3, label %sw.bb58
  ]

tda1004x_write_mask.exit327.sw.epilog_crit_edge:  ; preds = %tda1004x_write_mask.exit327
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

tda1004x_write_mask.exit327.cleanup_crit_edge:    ; preds = %tda1004x_write_mask.exit327
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb56:                                          ; preds = %tda1004x_write_mask.exit327
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb58:                                          ; preds = %tda1004x_write_mask.exit327
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb58, %sw.bb56, %tda1004x_write_mask.exit327.sw.epilog_crit_edge
  %.sink = phi i32 [ 2, %sw.bb58 ], [ 1, %sw.bb56 ], [ %44, %tda1004x_write_mask.exit327.sw.epilog_crit_edge ]
  %call59 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %1, i32 noundef 2, i32 noundef 3, i32 noundef %.sink)
  %46 = ptrtoint ptr %hierarchy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hierarchy, align 4
  %48 = zext i32 %47 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.122)
  switch i32 %47, label %sw.epilog.cleanup_crit_edge [
    i32 0, label %sw.bb61
    i32 1, label %sw.bb63
    i32 2, label %sw.bb65
    i32 3, label %sw.bb67
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb61:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call62 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %1, i32 noundef 2, i32 noundef 96, i32 noundef 0)
  br label %if.end71

sw.bb63:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call64 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %1, i32 noundef 2, i32 noundef 96, i32 noundef 32)
  br label %if.end71

sw.bb65:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call66 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %1, i32 noundef 2, i32 noundef 96, i32 noundef 64)
  br label %if.end71

sw.bb67:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call68 = tail call fastcc i32 @tda1004x_write_mask(ptr noundef %1, i32 noundef 2, i32 noundef 96, i32 noundef 96)
  br label %if.end71

if.end71:                                         ; preds = %sw.bb67, %sw.bb65, %sw.bb63, %sw.bb61, %if.end6.i281, %do.end3.i278.if.end71_crit_edge
  %49 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %demod_type, align 4
  %51 = zext i32 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.123)
  switch i32 %50, label %if.end71.sw.epilog78_crit_edge [
    i32 0, label %sw.bb73
    i32 1, label %sw.bb75
  ]

if.end71.sw.epilog78_crit_edge:                   ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog78

sw.bb73:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %52 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %bandwidth_hz, align 4
  tail call fastcc void @tda10045h_set_bandwidth(ptr noundef %1, i32 noundef %53)
  br label %sw.epilog78

sw.bb75:                                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  %bandwidth_hz76 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %54 = ptrtoint ptr %bandwidth_hz76 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %bandwidth_hz76, align 4
  tail call fastcc void @tda10046h_set_bandwidth(ptr noundef %1, i32 noundef %55)
  br label %sw.epilog78

sw.epilog78:                                      ; preds = %sw.bb75, %sw.bb73, %if.end71.sw.epilog78_crit_edge
  %inversion79 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 4
  %56 = ptrtoint ptr %inversion79 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %inversion79, align 4
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 1
  %58 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %config, align 4
  %invert = getelementptr inbounds %struct.tda1004x_config, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool80.not = icmp eq i8 %61, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool82.not = icmp eq i32 %57, 0
  %cond = zext i1 %tobool82.not to i32
  %inversion.0 = select i1 %tobool80.not, i32 %57, i32 %cond
  %62 = zext i32 %inversion.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values.124)
  switch i32 %inversion.0, label %sw.epilog78.cleanup_crit_edge [
    i32 0, label %sw.bb84
    i32 1, label %sw.bb86
  ]

sw.epilog78.cleanup_crit_edge:                    ; preds = %sw.epilog78
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb84:                                          ; preds = %sw.epilog78
  %63 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not.i328 = icmp eq i32 %63, 0
  br i1 %tobool.not.i328, label %sw.bb84.do.end3.i333_crit_edge, label %do.end.i330

sw.bb84.do.end3.i333_crit_edge:                   ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i333

do.end.i330:                                      ; preds = %sw.bb84
  call void @__sanitizer_cov_trace_pc() #9
  %call.i329 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 22, i32 noundef 32, i32 noundef 0) #11
  br label %do.end3.i333

do.end3.i333:                                     ; preds = %do.end.i330, %sw.bb84.do.end3.i333_crit_edge
  %call4.i331 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i331)
  %cmp.i332 = icmp slt i32 %call4.i331, 0
  br i1 %cmp.i332, label %do.end3.i333.sw.epilog89_crit_edge, label %if.end6.i336

do.end3.i333.sw.epilog89_crit_edge:               ; preds = %do.end3.i333
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog89

if.end6.i336:                                     ; preds = %do.end3.i333
  call void @__sanitizer_cov_trace_pc() #9
  %and.i334 = and i32 %call4.i331, -33
  br label %sw.epilog89.sink.split

sw.bb86:                                          ; preds = %sw.epilog78
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool.not.i339 = icmp eq i32 %64, 0
  br i1 %tobool.not.i339, label %sw.bb86.do.end3.i344_crit_edge, label %do.end.i341

sw.bb86.do.end3.i344_crit_edge:                   ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i344

do.end.i341:                                      ; preds = %sw.bb86
  call void @__sanitizer_cov_trace_pc() #9
  %call.i340 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 22, i32 noundef 32, i32 noundef 32) #11
  br label %do.end3.i344

do.end3.i344:                                     ; preds = %do.end.i341, %sw.bb86.do.end3.i344_crit_edge
  %call4.i342 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i342)
  %cmp.i343 = icmp slt i32 %call4.i342, 0
  br i1 %cmp.i343, label %do.end3.i344.sw.epilog89_crit_edge, label %if.end6.i348

do.end3.i344.sw.epilog89_crit_edge:               ; preds = %do.end3.i344
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog89

if.end6.i348:                                     ; preds = %do.end3.i344
  call void @__sanitizer_cov_trace_pc() #9
  %or.i346 = or i32 %call4.i342, 32
  br label %sw.epilog89.sink.split

sw.epilog89.sink.split:                           ; preds = %if.end6.i348, %if.end6.i336
  %or.i346.sink = phi i32 [ %or.i346, %if.end6.i348 ], [ %and.i334, %if.end6.i336 ]
  %call8.i347 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 22, i32 noundef %or.i346.sink) #7
  br label %sw.epilog89

sw.epilog89:                                      ; preds = %sw.epilog89.sink.split, %do.end3.i344.sw.epilog89_crit_edge, %do.end3.i333.sw.epilog89_crit_edge
  %guard_interval90 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 8
  %65 = ptrtoint ptr %guard_interval90 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %guard_interval90, align 4
  %67 = zext i32 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %67, ptr @__sancov_gen_cov_switch_values.125)
  switch i32 %66, label %sw.epilog89.cleanup_crit_edge [
    i32 0, label %sw.bb91
    i32 1, label %sw.bb94
    i32 2, label %sw.bb97
    i32 3, label %sw.bb100
    i32 4, label %sw.bb103
  ]

sw.epilog89.cleanup_crit_edge:                    ; preds = %sw.epilog89
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb91:                                          ; preds = %sw.epilog89
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i351 = icmp eq i32 %68, 0
  br i1 %tobool.not.i351, label %sw.bb91.do.end3.i356_crit_edge, label %do.end.i353

sw.bb91.do.end3.i356_crit_edge:                   ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i356

do.end.i353:                                      ; preds = %sw.bb91
  call void @__sanitizer_cov_trace_pc() #9
  %call.i352 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 2, i32 noundef 0) #11
  br label %do.end3.i356

do.end3.i356:                                     ; preds = %do.end.i353, %sw.bb91.do.end3.i356_crit_edge
  %call4.i354 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i354)
  %cmp.i355 = icmp slt i32 %call4.i354, 0
  br i1 %cmp.i355, label %do.end3.i356.tda1004x_write_mask.exit361_crit_edge, label %if.end6.i359

do.end3.i356.tda1004x_write_mask.exit361_crit_edge: ; preds = %do.end3.i356
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit361

if.end6.i359:                                     ; preds = %do.end3.i356
  call void @__sanitizer_cov_trace_pc() #9
  %and.i357 = and i32 %call4.i354, -3
  %call8.i358 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i357) #7
  br label %tda1004x_write_mask.exit361

tda1004x_write_mask.exit361:                      ; preds = %if.end6.i359, %do.end3.i356.tda1004x_write_mask.exit361_crit_edge
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i362 = icmp eq i32 %69, 0
  br i1 %tobool.not.i362, label %tda1004x_write_mask.exit361.do.end3.i367_crit_edge, label %do.end.i364

tda1004x_write_mask.exit361.do.end3.i367_crit_edge: ; preds = %tda1004x_write_mask.exit361
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i367

do.end.i364:                                      ; preds = %tda1004x_write_mask.exit361
  call void @__sanitizer_cov_trace_pc() #9
  %call.i363 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 12, i32 noundef 0) #11
  br label %do.end3.i367

do.end3.i367:                                     ; preds = %do.end.i364, %tda1004x_write_mask.exit361.do.end3.i367_crit_edge
  %call4.i365 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i365)
  %cmp.i366 = icmp slt i32 %call4.i365, 0
  br i1 %cmp.i366, label %do.end3.i367.sw.epilog107_crit_edge, label %if.end6.i370

do.end3.i367.sw.epilog107_crit_edge:              ; preds = %do.end3.i367
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.end6.i370:                                     ; preds = %do.end3.i367
  call void @__sanitizer_cov_trace_pc() #9
  %and.i368 = and i32 %call4.i365, -13
  br label %sw.epilog107.sink.split

sw.bb94:                                          ; preds = %sw.epilog89
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i373 = icmp eq i32 %70, 0
  br i1 %tobool.not.i373, label %sw.bb94.do.end3.i378_crit_edge, label %do.end.i375

sw.bb94.do.end3.i378_crit_edge:                   ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i378

do.end.i375:                                      ; preds = %sw.bb94
  call void @__sanitizer_cov_trace_pc() #9
  %call.i374 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 2, i32 noundef 0) #11
  br label %do.end3.i378

do.end3.i378:                                     ; preds = %do.end.i375, %sw.bb94.do.end3.i378_crit_edge
  %call4.i376 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i376)
  %cmp.i377 = icmp slt i32 %call4.i376, 0
  br i1 %cmp.i377, label %do.end3.i378.tda1004x_write_mask.exit383_crit_edge, label %if.end6.i381

do.end3.i378.tda1004x_write_mask.exit383_crit_edge: ; preds = %do.end3.i378
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit383

if.end6.i381:                                     ; preds = %do.end3.i378
  call void @__sanitizer_cov_trace_pc() #9
  %and.i379 = and i32 %call4.i376, -3
  %call8.i380 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i379) #7
  br label %tda1004x_write_mask.exit383

tda1004x_write_mask.exit383:                      ; preds = %if.end6.i381, %do.end3.i378.tda1004x_write_mask.exit383_crit_edge
  %71 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.not.i384 = icmp eq i32 %71, 0
  br i1 %tobool.not.i384, label %tda1004x_write_mask.exit383.do.end3.i389_crit_edge, label %do.end.i386

tda1004x_write_mask.exit383.do.end3.i389_crit_edge: ; preds = %tda1004x_write_mask.exit383
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i389

do.end.i386:                                      ; preds = %tda1004x_write_mask.exit383
  call void @__sanitizer_cov_trace_pc() #9
  %call.i385 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 12, i32 noundef 4) #11
  br label %do.end3.i389

do.end3.i389:                                     ; preds = %do.end.i386, %tda1004x_write_mask.exit383.do.end3.i389_crit_edge
  %call4.i387 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i387)
  %cmp.i388 = icmp slt i32 %call4.i387, 0
  br i1 %cmp.i388, label %do.end3.i389.sw.epilog107_crit_edge, label %if.end6.i393

do.end3.i389.sw.epilog107_crit_edge:              ; preds = %do.end3.i389
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.end6.i393:                                     ; preds = %do.end3.i389
  call void @__sanitizer_cov_trace_pc() #9
  %and.i390 = and i32 %call4.i387, -13
  %or.i391 = or i32 %and.i390, 4
  br label %sw.epilog107.sink.split

sw.bb97:                                          ; preds = %sw.epilog89
  %72 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool.not.i396 = icmp eq i32 %72, 0
  br i1 %tobool.not.i396, label %sw.bb97.do.end3.i401_crit_edge, label %do.end.i398

sw.bb97.do.end3.i401_crit_edge:                   ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i401

do.end.i398:                                      ; preds = %sw.bb97
  call void @__sanitizer_cov_trace_pc() #9
  %call.i397 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 2, i32 noundef 0) #11
  br label %do.end3.i401

do.end3.i401:                                     ; preds = %do.end.i398, %sw.bb97.do.end3.i401_crit_edge
  %call4.i399 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i399)
  %cmp.i400 = icmp slt i32 %call4.i399, 0
  br i1 %cmp.i400, label %do.end3.i401.tda1004x_write_mask.exit406_crit_edge, label %if.end6.i404

do.end3.i401.tda1004x_write_mask.exit406_crit_edge: ; preds = %do.end3.i401
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit406

if.end6.i404:                                     ; preds = %do.end3.i401
  call void @__sanitizer_cov_trace_pc() #9
  %and.i402 = and i32 %call4.i399, -3
  %call8.i403 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i402) #7
  br label %tda1004x_write_mask.exit406

tda1004x_write_mask.exit406:                      ; preds = %if.end6.i404, %do.end3.i401.tda1004x_write_mask.exit406_crit_edge
  %73 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool.not.i407 = icmp eq i32 %73, 0
  br i1 %tobool.not.i407, label %tda1004x_write_mask.exit406.do.end3.i412_crit_edge, label %do.end.i409

tda1004x_write_mask.exit406.do.end3.i412_crit_edge: ; preds = %tda1004x_write_mask.exit406
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i412

do.end.i409:                                      ; preds = %tda1004x_write_mask.exit406
  call void @__sanitizer_cov_trace_pc() #9
  %call.i408 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 12, i32 noundef 8) #11
  br label %do.end3.i412

do.end3.i412:                                     ; preds = %do.end.i409, %tda1004x_write_mask.exit406.do.end3.i412_crit_edge
  %call4.i410 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i410)
  %cmp.i411 = icmp slt i32 %call4.i410, 0
  br i1 %cmp.i411, label %do.end3.i412.sw.epilog107_crit_edge, label %if.end6.i416

do.end3.i412.sw.epilog107_crit_edge:              ; preds = %do.end3.i412
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.end6.i416:                                     ; preds = %do.end3.i412
  call void @__sanitizer_cov_trace_pc() #9
  %and.i413 = and i32 %call4.i410, -13
  %or.i414 = or i32 %and.i413, 8
  br label %sw.epilog107.sink.split

sw.bb100:                                         ; preds = %sw.epilog89
  %74 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool.not.i419 = icmp eq i32 %74, 0
  br i1 %tobool.not.i419, label %sw.bb100.do.end3.i424_crit_edge, label %do.end.i421

sw.bb100.do.end3.i424_crit_edge:                  ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i424

do.end.i421:                                      ; preds = %sw.bb100
  call void @__sanitizer_cov_trace_pc() #9
  %call.i420 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 2, i32 noundef 0) #11
  br label %do.end3.i424

do.end3.i424:                                     ; preds = %do.end.i421, %sw.bb100.do.end3.i424_crit_edge
  %call4.i422 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i422)
  %cmp.i423 = icmp slt i32 %call4.i422, 0
  br i1 %cmp.i423, label %do.end3.i424.tda1004x_write_mask.exit429_crit_edge, label %if.end6.i427

do.end3.i424.tda1004x_write_mask.exit429_crit_edge: ; preds = %do.end3.i424
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit429

if.end6.i427:                                     ; preds = %do.end3.i424
  call void @__sanitizer_cov_trace_pc() #9
  %and.i425 = and i32 %call4.i422, -3
  %call8.i426 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i425) #7
  br label %tda1004x_write_mask.exit429

tda1004x_write_mask.exit429:                      ; preds = %if.end6.i427, %do.end3.i424.tda1004x_write_mask.exit429_crit_edge
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i430 = icmp eq i32 %75, 0
  br i1 %tobool.not.i430, label %tda1004x_write_mask.exit429.do.end3.i435_crit_edge, label %do.end.i432

tda1004x_write_mask.exit429.do.end3.i435_crit_edge: ; preds = %tda1004x_write_mask.exit429
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i435

do.end.i432:                                      ; preds = %tda1004x_write_mask.exit429
  call void @__sanitizer_cov_trace_pc() #9
  %call.i431 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 12, i32 noundef 12) #11
  br label %do.end3.i435

do.end3.i435:                                     ; preds = %do.end.i432, %tda1004x_write_mask.exit429.do.end3.i435_crit_edge
  %call4.i433 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i433)
  %cmp.i434 = icmp slt i32 %call4.i433, 0
  br i1 %cmp.i434, label %do.end3.i435.sw.epilog107_crit_edge, label %if.end6.i439

do.end3.i435.sw.epilog107_crit_edge:              ; preds = %do.end3.i435
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.end6.i439:                                     ; preds = %do.end3.i435
  call void @__sanitizer_cov_trace_pc() #9
  %or.i437 = or i32 %call4.i433, 12
  br label %sw.epilog107.sink.split

sw.bb103:                                         ; preds = %sw.epilog89
  %76 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %tobool.not.i442 = icmp eq i32 %76, 0
  br i1 %tobool.not.i442, label %sw.bb103.do.end3.i447_crit_edge, label %do.end.i444

sw.bb103.do.end3.i447_crit_edge:                  ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i447

do.end.i444:                                      ; preds = %sw.bb103
  call void @__sanitizer_cov_trace_pc() #9
  %call.i443 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 2, i32 noundef 2) #11
  br label %do.end3.i447

do.end3.i447:                                     ; preds = %do.end.i444, %sw.bb103.do.end3.i447_crit_edge
  %call4.i445 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i445)
  %cmp.i446 = icmp slt i32 %call4.i445, 0
  br i1 %cmp.i446, label %do.end3.i447.tda1004x_write_mask.exit453_crit_edge, label %if.end6.i451

do.end3.i447.tda1004x_write_mask.exit453_crit_edge: ; preds = %do.end3.i447
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit453

if.end6.i451:                                     ; preds = %do.end3.i447
  call void @__sanitizer_cov_trace_pc() #9
  %or.i449 = or i32 %call4.i445, 2
  %call8.i450 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %or.i449) #7
  br label %tda1004x_write_mask.exit453

tda1004x_write_mask.exit453:                      ; preds = %if.end6.i451, %do.end3.i447.tda1004x_write_mask.exit453_crit_edge
  %77 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool.not.i454 = icmp eq i32 %77, 0
  br i1 %tobool.not.i454, label %tda1004x_write_mask.exit453.do.end3.i459_crit_edge, label %do.end.i456

tda1004x_write_mask.exit453.do.end3.i459_crit_edge: ; preds = %tda1004x_write_mask.exit453
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i459

do.end.i456:                                      ; preds = %tda1004x_write_mask.exit453
  call void @__sanitizer_cov_trace_pc() #9
  %call.i455 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 12, i32 noundef 0) #11
  br label %do.end3.i459

do.end3.i459:                                     ; preds = %do.end.i456, %tda1004x_write_mask.exit453.do.end3.i459_crit_edge
  %call4.i457 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i457)
  %cmp.i458 = icmp slt i32 %call4.i457, 0
  br i1 %cmp.i458, label %do.end3.i459.sw.epilog107_crit_edge, label %if.end6.i462

do.end3.i459.sw.epilog107_crit_edge:              ; preds = %do.end3.i459
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog107

if.end6.i462:                                     ; preds = %do.end3.i459
  call void @__sanitizer_cov_trace_pc() #9
  %and.i460 = and i32 %call4.i457, -13
  br label %sw.epilog107.sink.split

sw.epilog107.sink.split:                          ; preds = %if.end6.i462, %if.end6.i439, %if.end6.i416, %if.end6.i393, %if.end6.i370
  %and.i460.sink = phi i32 [ %and.i460, %if.end6.i462 ], [ %or.i437, %if.end6.i439 ], [ %or.i414, %if.end6.i416 ], [ %or.i391, %if.end6.i393 ], [ %and.i368, %if.end6.i370 ]
  %call8.i461 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 2, i32 noundef %and.i460.sink) #7
  br label %sw.epilog107

sw.epilog107:                                     ; preds = %sw.epilog107.sink.split, %do.end3.i459.sw.epilog107_crit_edge, %do.end3.i435.sw.epilog107_crit_edge, %do.end3.i412.sw.epilog107_crit_edge, %do.end3.i389.sw.epilog107_crit_edge, %do.end3.i367.sw.epilog107_crit_edge
  %transmission_mode108 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 6
  %78 = ptrtoint ptr %transmission_mode108 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %transmission_mode108, align 4
  %80 = zext i32 %79 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.126)
  switch i32 %79, label %sw.epilog107.cleanup_crit_edge [
    i32 0, label %sw.bb109
    i32 1, label %sw.bb112
    i32 2, label %sw.bb115
  ]

sw.epilog107.cleanup_crit_edge:                   ; preds = %sw.epilog107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb109:                                         ; preds = %sw.epilog107
  %81 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool.not.i465 = icmp eq i32 %81, 0
  br i1 %tobool.not.i465, label %sw.bb109.do.end3.i470_crit_edge, label %do.end.i467

sw.bb109.do.end3.i470_crit_edge:                  ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i470

do.end.i467:                                      ; preds = %sw.bb109
  call void @__sanitizer_cov_trace_pc() #9
  %call.i466 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 4, i32 noundef 0) #11
  br label %do.end3.i470

do.end3.i470:                                     ; preds = %do.end.i467, %sw.bb109.do.end3.i470_crit_edge
  %call4.i468 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i468)
  %cmp.i469 = icmp slt i32 %call4.i468, 0
  br i1 %cmp.i469, label %do.end3.i470.tda1004x_write_mask.exit475_crit_edge, label %if.end6.i473

do.end3.i470.tda1004x_write_mask.exit475_crit_edge: ; preds = %do.end3.i470
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit475

if.end6.i473:                                     ; preds = %do.end3.i470
  call void @__sanitizer_cov_trace_pc() #9
  %and.i471 = and i32 %call4.i468, -5
  %call8.i472 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i471) #7
  br label %tda1004x_write_mask.exit475

tda1004x_write_mask.exit475:                      ; preds = %if.end6.i473, %do.end3.i470.tda1004x_write_mask.exit475_crit_edge
  %82 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %tobool.not.i476 = icmp eq i32 %82, 0
  br i1 %tobool.not.i476, label %tda1004x_write_mask.exit475.do.end3.i481_crit_edge, label %do.end.i478

tda1004x_write_mask.exit475.do.end3.i481_crit_edge: ; preds = %tda1004x_write_mask.exit475
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i481

do.end.i478:                                      ; preds = %tda1004x_write_mask.exit475
  call void @__sanitizer_cov_trace_pc() #9
  %call.i477 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 16, i32 noundef 0) #11
  br label %do.end3.i481

do.end3.i481:                                     ; preds = %do.end.i478, %tda1004x_write_mask.exit475.do.end3.i481_crit_edge
  %call4.i479 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i479)
  %cmp.i480 = icmp slt i32 %call4.i479, 0
  br i1 %cmp.i480, label %do.end3.i481.sw.epilog119_crit_edge, label %if.end6.i484

do.end3.i481.sw.epilog119_crit_edge:              ; preds = %do.end3.i481
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog119

if.end6.i484:                                     ; preds = %do.end3.i481
  call void @__sanitizer_cov_trace_pc() #9
  %and.i482 = and i32 %call4.i479, -17
  br label %sw.epilog119.sink.split

sw.bb112:                                         ; preds = %sw.epilog107
  %83 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool.not.i487 = icmp eq i32 %83, 0
  br i1 %tobool.not.i487, label %sw.bb112.do.end3.i492_crit_edge, label %do.end.i489

sw.bb112.do.end3.i492_crit_edge:                  ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i492

do.end.i489:                                      ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #9
  %call.i488 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 4, i32 noundef 0) #11
  br label %do.end3.i492

do.end3.i492:                                     ; preds = %do.end.i489, %sw.bb112.do.end3.i492_crit_edge
  %call4.i490 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i490)
  %cmp.i491 = icmp slt i32 %call4.i490, 0
  br i1 %cmp.i491, label %do.end3.i492.tda1004x_write_mask.exit497_crit_edge, label %if.end6.i495

do.end3.i492.tda1004x_write_mask.exit497_crit_edge: ; preds = %do.end3.i492
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit497

if.end6.i495:                                     ; preds = %do.end3.i492
  call void @__sanitizer_cov_trace_pc() #9
  %and.i493 = and i32 %call4.i490, -5
  %call8.i494 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %and.i493) #7
  br label %tda1004x_write_mask.exit497

tda1004x_write_mask.exit497:                      ; preds = %if.end6.i495, %do.end3.i492.tda1004x_write_mask.exit497_crit_edge
  %84 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool.not.i498 = icmp eq i32 %84, 0
  br i1 %tobool.not.i498, label %tda1004x_write_mask.exit497.do.end3.i503_crit_edge, label %do.end.i500

tda1004x_write_mask.exit497.do.end3.i503_crit_edge: ; preds = %tda1004x_write_mask.exit497
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i503

do.end.i500:                                      ; preds = %tda1004x_write_mask.exit497
  call void @__sanitizer_cov_trace_pc() #9
  %call.i499 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 16, i32 noundef 16) #11
  br label %do.end3.i503

do.end3.i503:                                     ; preds = %do.end.i500, %tda1004x_write_mask.exit497.do.end3.i503_crit_edge
  %call4.i501 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i501)
  %cmp.i502 = icmp slt i32 %call4.i501, 0
  br i1 %cmp.i502, label %do.end3.i503.sw.epilog119_crit_edge, label %if.end6.i507

do.end3.i503.sw.epilog119_crit_edge:              ; preds = %do.end3.i503
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog119

if.end6.i507:                                     ; preds = %do.end3.i503
  call void @__sanitizer_cov_trace_pc() #9
  %or.i505 = or i32 %call4.i501, 16
  br label %sw.epilog119.sink.split

sw.bb115:                                         ; preds = %sw.epilog107
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i510 = icmp eq i32 %85, 0
  br i1 %tobool.not.i510, label %sw.bb115.do.end3.i515_crit_edge, label %do.end.i512

sw.bb115.do.end3.i515_crit_edge:                  ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i515

do.end.i512:                                      ; preds = %sw.bb115
  call void @__sanitizer_cov_trace_pc() #9
  %call.i511 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 4, i32 noundef 4) #11
  br label %do.end3.i515

do.end3.i515:                                     ; preds = %do.end.i512, %sw.bb115.do.end3.i515_crit_edge
  %call4.i513 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i513)
  %cmp.i514 = icmp slt i32 %call4.i513, 0
  br i1 %cmp.i514, label %do.end3.i515.tda1004x_write_mask.exit521_crit_edge, label %if.end6.i519

do.end3.i515.tda1004x_write_mask.exit521_crit_edge: ; preds = %do.end3.i515
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit521

if.end6.i519:                                     ; preds = %do.end3.i515
  call void @__sanitizer_cov_trace_pc() #9
  %or.i517 = or i32 %call4.i513, 4
  %call8.i518 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %or.i517) #7
  br label %tda1004x_write_mask.exit521

tda1004x_write_mask.exit521:                      ; preds = %if.end6.i519, %do.end3.i515.tda1004x_write_mask.exit521_crit_edge
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i522 = icmp eq i32 %86, 0
  br i1 %tobool.not.i522, label %tda1004x_write_mask.exit521.do.end3.i527_crit_edge, label %do.end.i524

tda1004x_write_mask.exit521.do.end3.i527_crit_edge: ; preds = %tda1004x_write_mask.exit521
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i527

do.end.i524:                                      ; preds = %tda1004x_write_mask.exit521
  call void @__sanitizer_cov_trace_pc() #9
  %call.i523 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 2, i32 noundef 16, i32 noundef 0) #11
  br label %do.end3.i527

do.end3.i527:                                     ; preds = %do.end.i524, %tda1004x_write_mask.exit521.do.end3.i527_crit_edge
  %call4.i525 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i525)
  %cmp.i526 = icmp slt i32 %call4.i525, 0
  br i1 %cmp.i526, label %do.end3.i527.sw.epilog119_crit_edge, label %if.end6.i530

do.end3.i527.sw.epilog119_crit_edge:              ; preds = %do.end3.i527
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog119

if.end6.i530:                                     ; preds = %do.end3.i527
  call void @__sanitizer_cov_trace_pc() #9
  %and.i528 = and i32 %call4.i525, -17
  br label %sw.epilog119.sink.split

sw.epilog119.sink.split:                          ; preds = %if.end6.i530, %if.end6.i507, %if.end6.i484
  %and.i528.sink = phi i32 [ %and.i528, %if.end6.i530 ], [ %or.i505, %if.end6.i507 ], [ %and.i482, %if.end6.i484 ]
  %call8.i529 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 2, i32 noundef %and.i528.sink) #7
  br label %sw.epilog119

sw.epilog119:                                     ; preds = %sw.epilog119.sink.split, %do.end3.i527.sw.epilog119_crit_edge, %do.end3.i503.sw.epilog119_crit_edge, %do.end3.i481.sw.epilog119_crit_edge
  %87 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %demod_type, align 4
  %89 = zext i32 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.127)
  switch i32 %88, label %sw.epilog119.sw.epilog127_crit_edge [
    i32 0, label %sw.bb121
    i32 1, label %sw.bb124
  ]

sw.epilog119.sw.epilog127_crit_edge:              ; preds = %sw.epilog119
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog127

sw.bb121:                                         ; preds = %sw.epilog119
  %90 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i533 = icmp eq i32 %90, 0
  br i1 %tobool.not.i533, label %sw.bb121.do.end3.i538_crit_edge, label %do.end.i535

sw.bb121.do.end3.i538_crit_edge:                  ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i538

do.end.i535:                                      ; preds = %sw.bb121
  call void @__sanitizer_cov_trace_pc() #9
  %call.i534 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 8, i32 noundef 8) #11
  br label %do.end3.i538

do.end3.i538:                                     ; preds = %do.end.i535, %sw.bb121.do.end3.i538_crit_edge
  %call4.i536 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i536)
  %cmp.i537 = icmp slt i32 %call4.i536, 0
  br i1 %cmp.i537, label %do.end3.i538.tda1004x_write_mask.exit544_crit_edge, label %if.end6.i542

do.end3.i538.tda1004x_write_mask.exit544_crit_edge: ; preds = %do.end3.i538
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit544

if.end6.i542:                                     ; preds = %do.end3.i538
  call void @__sanitizer_cov_trace_pc() #9
  %or.i540 = or i32 %call4.i536, 8
  %call8.i541 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 7, i32 noundef %or.i540) #7
  br label %tda1004x_write_mask.exit544

tda1004x_write_mask.exit544:                      ; preds = %if.end6.i542, %do.end3.i538.tda1004x_write_mask.exit544_crit_edge
  %91 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool.not.i545 = icmp eq i32 %91, 0
  br i1 %tobool.not.i545, label %tda1004x_write_mask.exit544.do.end3.i550_crit_edge, label %do.end.i547

tda1004x_write_mask.exit544.do.end3.i550_crit_edge: ; preds = %tda1004x_write_mask.exit544
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i550

do.end.i547:                                      ; preds = %tda1004x_write_mask.exit544
  call void @__sanitizer_cov_trace_pc() #9
  %call.i546 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 8, i32 noundef 0) #11
  br label %do.end3.i550

do.end3.i550:                                     ; preds = %do.end.i547, %tda1004x_write_mask.exit544.do.end3.i550_crit_edge
  %call4.i548 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i548)
  %cmp.i549 = icmp slt i32 %call4.i548, 0
  br i1 %cmp.i549, label %do.end3.i550.sw.epilog127_crit_edge, label %if.end6.i553

do.end3.i550.sw.epilog127_crit_edge:              ; preds = %do.end3.i550
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog127

if.end6.i553:                                     ; preds = %do.end3.i550
  call void @__sanitizer_cov_trace_pc() #9
  %and.i551 = and i32 %call4.i548, -9
  %call8.i552 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 7, i32 noundef %and.i551) #7
  br label %sw.epilog127

sw.bb124:                                         ; preds = %sw.epilog119
  %92 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool.not.i556 = icmp eq i32 %92, 0
  br i1 %tobool.not.i556, label %sw.bb124.do.end3.i561_crit_edge, label %do.end.i558

sw.bb124.do.end3.i561_crit_edge:                  ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i561

do.end.i558:                                      ; preds = %sw.bb124
  call void @__sanitizer_cov_trace_pc() #9
  %call.i557 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 64, i32 noundef 64) #11
  br label %do.end3.i561

do.end3.i561:                                     ; preds = %do.end.i558, %sw.bb124.do.end3.i561_crit_edge
  %call4.i559 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i559)
  %cmp.i560 = icmp slt i32 %call4.i559, 0
  br i1 %cmp.i560, label %do.end3.i561.tda1004x_write_mask.exit567_crit_edge, label %if.end6.i565

do.end3.i561.tda1004x_write_mask.exit567_crit_edge: ; preds = %do.end3.i561
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit567

if.end6.i565:                                     ; preds = %do.end3.i561
  call void @__sanitizer_cov_trace_pc() #9
  %or.i563 = or i32 %call4.i559, 64
  %call8.i564 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef %or.i563) #7
  br label %tda1004x_write_mask.exit567

tda1004x_write_mask.exit567:                      ; preds = %if.end6.i565, %do.end3.i561.tda1004x_write_mask.exit567_crit_edge
  tail call void @msleep(i32 noundef 1) #7
  %93 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool.not.i568 = icmp eq i32 %93, 0
  br i1 %tobool.not.i568, label %tda1004x_write_mask.exit567.do.end3.i573_crit_edge, label %do.end.i570

tda1004x_write_mask.exit567.do.end3.i573_crit_edge: ; preds = %tda1004x_write_mask.exit567
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i573

do.end.i570:                                      ; preds = %tda1004x_write_mask.exit567
  call void @__sanitizer_cov_trace_pc() #9
  %call.i569 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 67, i32 noundef 4, i32 noundef 1) #11
  br label %do.end3.i573

do.end3.i573:                                     ; preds = %do.end.i570, %tda1004x_write_mask.exit567.do.end3.i573_crit_edge
  %call4.i571 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i571)
  %cmp.i572 = icmp slt i32 %call4.i571, 0
  br i1 %cmp.i572, label %do.end3.i573.sw.epilog127_crit_edge, label %if.end6.i577

do.end3.i573.sw.epilog127_crit_edge:              ; preds = %do.end3.i573
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog127

if.end6.i577:                                     ; preds = %do.end3.i573
  call void @__sanitizer_cov_trace_pc() #9
  %and.i574 = and i32 %call4.i571, -6
  %or.i575 = or i32 %and.i574, 1
  %call8.i576 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 67, i32 noundef %or.i575) #7
  br label %sw.epilog127

sw.epilog127:                                     ; preds = %if.end6.i577, %do.end3.i573.sw.epilog127_crit_edge, %if.end6.i553, %do.end3.i550.sw.epilog127_crit_edge, %sw.epilog119.sw.epilog127_crit_edge
  tail call void @msleep(i32 noundef 10) #7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog127, %sw.epilog107.cleanup_crit_edge, %sw.epilog89.cleanup_crit_edge, %sw.epilog78.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %tda1004x_write_mask.exit327.cleanup_crit_edge, %switch.hole_check589.cleanup_crit_edge, %tda1004x_write_mask.exit307.cleanup_crit_edge, %switch.hole_check.cleanup_crit_edge, %tda1004x_write_mask.exit294.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog127 ], [ -22, %tda1004x_write_mask.exit327.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.epilog78.cleanup_crit_edge ], [ -22, %sw.epilog89.cleanup_crit_edge ], [ -22, %sw.epilog107.cleanup_crit_edge ], [ -22, %tda1004x_write_mask.exit294.cleanup_crit_edge ], [ -22, %tda1004x_write_mask.exit307.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ], [ -22, %switch.hole_check589.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @tda1004x_get_tune_settings(ptr nocapture noundef readnone %fe, ptr nocapture noundef writeonly %fesettings) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fesettings to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 800, ptr %fesettings, align 4
  %step_size = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 1
  %1 = ptrtoint ptr %step_size to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %step_size, align 4
  %max_drift = getelementptr inbounds %struct.dvb_frontend_tune_settings, ptr %fesettings, i32 0, i32 2
  %2 = ptrtoint ptr %max_drift to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %max_drift, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_get_fe(ptr nocapture noundef readonly %fe, ptr noundef %fe_params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.63) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %and = and i32 %call4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %if.end6.cleanup_crit_edge, label %if.end9

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %inversion = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 4
  %3 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %inversion, align 4
  %call10 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 22)
  %and11 = and i32 %call10, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end9.if.end15_crit_edge, label %if.then13

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %inversion, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end9.if.end15_crit_edge
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %config, align 4
  %invert = getelementptr inbounds %struct.tda1004x_config, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool16.not = icmp eq i8 %8, 0
  br i1 %tobool16.not, label %if.end15.if.end21_crit_edge, label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %inversion to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %inversion, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool19.not = icmp eq i32 %10, 0
  %cond = zext i1 %tobool19.not to i32
  %11 = ptrtoint ptr %inversion to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %cond, ptr %inversion, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15.if.end21_crit_edge
  %demod_type = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %demod_type, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.128)
  switch i32 %13, label %if.end21.sw.epilog37_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb28
  ]

if.end21.sw.epilog37_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37

sw.bb:                                            ; preds = %if.end21
  %call22 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 53)
  %15 = zext i32 %call22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.129)
  switch i32 %call22, label %sw.bb.sw.epilog37_crit_edge [
    i32 20, label %sw.bb.sw.epilog37.sink.split_crit_edge
    i32 219, label %sw.bb24
    i32 79, label %sw.bb26
  ]

sw.bb.sw.epilog37.sink.split_crit_edge:           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37.sink.split

sw.bb.sw.epilog37_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37

sw.bb24:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37.sink.split

sw.bb26:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37.sink.split

sw.bb28:                                          ; preds = %if.end21
  %call29 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 49)
  %16 = zext i32 %call29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.130)
  switch i32 %call29, label %sw.bb28.sw.epilog37_crit_edge [
    i32 92, label %sw.bb28.sw.epilog37.sink.split_crit_edge
    i32 84, label %sw.bb28.sw.epilog37.sink.split_crit_edge133
    i32 106, label %sw.bb28.sw.bb32_crit_edge
    i32 96, label %sw.bb28.sw.bb32_crit_edge134
    i32 123, label %sw.bb28.sw.bb34_crit_edge
    i32 112, label %sw.bb28.sw.bb34_crit_edge135
  ]

sw.bb28.sw.bb34_crit_edge135:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

sw.bb28.sw.bb34_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb34

sw.bb28.sw.bb32_crit_edge134:                     ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

sw.bb28.sw.bb32_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb32

sw.bb28.sw.epilog37.sink.split_crit_edge133:      ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37.sink.split

sw.bb28.sw.epilog37.sink.split_crit_edge:         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37.sink.split

sw.bb28.sw.epilog37_crit_edge:                    ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog37

sw.bb32:                                          ; preds = %sw.bb28.sw.bb32_crit_edge, %sw.bb28.sw.bb32_crit_edge134
  br label %sw.epilog37.sink.split

sw.bb34:                                          ; preds = %sw.bb28.sw.bb34_crit_edge, %sw.bb28.sw.bb34_crit_edge135
  br label %sw.epilog37.sink.split

sw.epilog37.sink.split:                           ; preds = %sw.bb34, %sw.bb32, %sw.bb28.sw.epilog37.sink.split_crit_edge, %sw.bb28.sw.epilog37.sink.split_crit_edge133, %sw.bb26, %sw.bb24, %sw.bb.sw.epilog37.sink.split_crit_edge
  %.sink = phi i32 [ 7000000, %sw.bb32 ], [ 6000000, %sw.bb34 ], [ 7000000, %sw.bb24 ], [ 6000000, %sw.bb26 ], [ 8000000, %sw.bb.sw.epilog37.sink.split_crit_edge ], [ 8000000, %sw.bb28.sw.epilog37.sink.split_crit_edge ], [ 8000000, %sw.bb28.sw.epilog37.sink.split_crit_edge133 ]
  %bandwidth_hz31 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 7
  %17 = ptrtoint ptr %bandwidth_hz31 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %.sink, ptr %bandwidth_hz31, align 4
  br label %sw.epilog37

sw.epilog37:                                      ; preds = %sw.epilog37.sink.split, %sw.bb28.sw.epilog37_crit_edge, %sw.bb.sw.epilog37_crit_edge, %if.end21.sw.epilog37_crit_edge
  %call38 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 5)
  %and39 = and i32 %call38, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and39)
  %18 = icmp ult i32 %and39, 5
  br i1 %18, label %switch.lookup, label %sw.epilog37.tda1004x_decode_fec.exit_crit_edge

sw.epilog37.tda1004x_decode_fec.exit_crit_edge:   ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_decode_fec.exit

switch.lookup:                                    ; preds = %sw.epilog37
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.tda1004x_get_fe, i32 0, i32 %and39
  %19 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %19)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %tda1004x_decode_fec.exit

tda1004x_decode_fec.exit:                         ; preds = %switch.lookup, %sw.epilog37.tda1004x_decode_fec.exit_crit_edge
  %retval.0.i = phi i32 [ %switch.load, %switch.lookup ], [ -1, %sw.epilog37.tda1004x_decode_fec.exit_crit_edge ]
  %code_rate_HP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 11
  %20 = ptrtoint ptr %code_rate_HP to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i, ptr %code_rate_HP, align 4
  %call41 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 5)
  %21 = lshr i32 %call41, 3
  %and42 = and i32 %21, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %and42)
  %22 = icmp ult i32 %and42, 5
  br i1 %22, label %switch.lookup127, label %tda1004x_decode_fec.exit.tda1004x_decode_fec.exit123_crit_edge

tda1004x_decode_fec.exit.tda1004x_decode_fec.exit123_crit_edge: ; preds = %tda1004x_decode_fec.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_decode_fec.exit123

switch.lookup127:                                 ; preds = %tda1004x_decode_fec.exit
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep128 = getelementptr inbounds [5 x i32], ptr @switch.table.tda1004x_get_fe.118, i32 0, i32 %and42
  %23 = ptrtoint ptr %switch.gep128 to i32
  call void @__asan_load4_noabort(i32 %23)
  %switch.load129 = load i32, ptr %switch.gep128, align 4
  br label %tda1004x_decode_fec.exit123

tda1004x_decode_fec.exit123:                      ; preds = %switch.lookup127, %tda1004x_decode_fec.exit.tda1004x_decode_fec.exit123_crit_edge
  %retval.0.i122 = phi i32 [ %switch.load129, %switch.lookup127 ], [ -1, %tda1004x_decode_fec.exit.tda1004x_decode_fec.exit123_crit_edge ]
  %code_rate_LP = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 12
  %24 = ptrtoint ptr %code_rate_LP to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %retval.0.i122, ptr %code_rate_LP, align 4
  %call44 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 4)
  %and45 = and i32 %call44, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and45)
  %.not = icmp eq i32 %and45, 3
  br i1 %.not, label %tda1004x_decode_fec.exit123.sw.epilog51_crit_edge, label %switch.lookup130

tda1004x_decode_fec.exit123.sw.epilog51_crit_edge: ; preds = %tda1004x_decode_fec.exit123
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog51

switch.lookup130:                                 ; preds = %tda1004x_decode_fec.exit123
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep131 = getelementptr inbounds [3 x i32], ptr @switch.table.tda1004x_get_fe.119, i32 0, i32 %and45
  %25 = ptrtoint ptr %switch.gep131 to i32
  call void @__asan_load4_noabort(i32 %25)
  %switch.load132 = load i32, ptr %switch.gep131, align 4
  %modulation50 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 1
  %26 = ptrtoint ptr %modulation50 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %switch.load132, ptr %modulation50, align 4
  br label %sw.epilog51

sw.epilog51:                                      ; preds = %switch.lookup130, %tda1004x_decode_fec.exit123.sw.epilog51_crit_edge
  %transmission_mode = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 6
  %27 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %transmission_mode, align 4
  %call52 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 4)
  %and53 = and i32 %call52, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and53)
  %tobool54.not = icmp eq i32 %and53, 0
  br i1 %tobool54.not, label %sw.epilog51.if.end57_crit_edge, label %if.then55

sw.epilog51.if.end57_crit_edge:                   ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then55:                                        ; preds = %sw.epilog51
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %transmission_mode to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %transmission_mode, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %sw.epilog51.if.end57_crit_edge
  %call58 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 4)
  %and59 = lshr i32 %call58, 2
  %29 = and i32 %and59, 3
  %guard_interval67 = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 8
  %30 = ptrtoint ptr %guard_interval67 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %guard_interval67, align 4
  %call69 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 4)
  %and70 = lshr i32 %call69, 5
  %31 = and i32 %and70, 3
  %hierarchy = getelementptr inbounds %struct.dtv_frontend_properties, ptr %fe_params, i32 0, i32 9
  %32 = ptrtoint ptr %hierarchy to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %hierarchy, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %if.end6.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end3.cleanup_crit_edge ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_read_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef %fe_status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.64) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 6)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call4)
  %cmp = icmp eq i32 %call4, -1
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  %and = lshr i32 %call4, 2
  %and.lobit = and i32 %and, 1
  %and10 = and i32 %call4, 2
  %3 = or i32 %and10, %and.lobit
  %4 = ptrtoint ptr %fe_status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %fe_status, align 4
  %and15 = and i32 %call4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %if.end6.if.end19_crit_edge, label %if.then17

if.end6.if.end19_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fe_status, align 4
  %or18 = or i32 %6, 28
  store i32 %or18, ptr %fe_status, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end6.if.end19_crit_edge
  %7 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %fe_status, align 4
  %and20 = and i32 %8, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %if.then22, label %if.end19.if.end37_crit_edge

if.end19.if.end37_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then22:                                        ; preds = %if.end19
  %call23 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call23)
  %cmp24 = icmp eq i32 %call23, -1
  br i1 %cmp24, label %if.then22.cleanup_crit_edge, label %if.end26

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end26:                                         ; preds = %if.then22
  %call27 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call27)
  %cmp28 = icmp eq i32 %call27, -1
  br i1 %cmp28, label %if.end26.cleanup_crit_edge, label %if.end30

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %shl = shl i32 %call27, 8
  %or31 = or i32 %shl, %call23
  %call32 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 32)
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %or31)
  %cmp33.not = icmp eq i32 %or31, 65535
  br i1 %cmp33.not, label %if.end30.if.end37_crit_edge, label %if.then34

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then34:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %fe_status, align 4
  %or35 = or i32 %10, 4
  store i32 %or35, ptr %fe_status, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.then34, %if.end30.if.end37_crit_edge, %if.end19.if.end37_crit_edge
  %11 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %fe_status, align 4
  %13 = and i32 %12, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %14 = icmp eq i32 %13, 4
  br i1 %14, label %if.then42, label %if.end37.do.body66_crit_edge

if.end37.do.body66_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

if.then42:                                        ; preds = %if.end37
  %call43 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 38)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call43)
  %cmp44 = icmp eq i32 %call43, -1
  br i1 %cmp44, label %if.then42.cleanup_crit_edge, label %if.end46

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end46:                                         ; preds = %if.then42
  %call47 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 37)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call47)
  %cmp48 = icmp eq i32 %call47, -1
  br i1 %cmp48, label %if.end46.cleanup_crit_edge, label %if.end50

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end50:                                         ; preds = %if.end46
  %call53 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call53)
  %cmp54 = icmp eq i32 %call53, -1
  br i1 %cmp54, label %if.end50.cleanup_crit_edge, label %if.end56

if.end50.cleanup_crit_edge:                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end56:                                         ; preds = %if.end50
  %shl51 = shl i32 %call47, 8
  %or52 = or i32 %shl51, %call43
  %and57 = shl i32 %call53, 16
  %shl58 = and i32 %and57, 983040
  %or59 = or i32 %or52, %shl58
  %call60 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 35)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16632, i32 %or59)
  %cmp61 = icmp slt i32 %or59, 16632
  br i1 %cmp61, label %if.then62, label %if.end56.do.body66_crit_edge

if.end56.do.body66_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body66

if.then62:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %fe_status, align 4
  %or63 = or i32 %16, 8
  store i32 %or63, ptr %fe_status, align 4
  br label %do.body66

do.body66:                                        ; preds = %if.then62, %if.end56.do.body66_crit_edge, %if.end37.do.body66_crit_edge
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool67.not = icmp eq i32 %17, 0
  br i1 %tobool67.not, label %do.body66.cleanup_crit_edge, label %do.end71

do.body66.cleanup_crit_edge:                      ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end71:                                         ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %fe_status to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %fe_status, align 4
  %call73 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.64, i32 noundef %19) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end71, %do.body66.cleanup_crit_edge, %if.end50.cleanup_crit_edge, %if.end46.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then22.cleanup_crit_edge, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end3.cleanup_crit_edge ], [ -5, %if.then22.cleanup_crit_edge ], [ -5, %if.end26.cleanup_crit_edge ], [ -5, %if.then42.cleanup_crit_edge ], [ -5, %if.end46.cleanup_crit_edge ], [ -5, %if.end50.cleanup_crit_edge ], [ 0, %do.end71 ], [ 0, %do.body66.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_read_ber(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ber) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.68) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 34)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %shl = shl nuw i32 %call5, 1
  %3 = ptrtoint ptr %ber to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %ber, align 4
  %call8 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 33)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %shl12 = shl i32 %call8, 9
  %4 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ber, align 4
  %or = or i32 %5, %shl12
  store i32 %or, ptr %ber, align 4
  %call13 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 32)
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool15.not = icmp eq i32 %6, 0
  br i1 %tobool15.not, label %if.end11.cleanup_crit_edge, label %do.end19

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ber to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ber, align 4
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.68, i32 noundef %8) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end4.cleanup_crit_edge ], [ -5, %if.end7.cleanup_crit_edge ], [ 0, %do.end19 ], [ 0, %if.end11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_read_signal_strength(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %signal) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.72) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %demod_type = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %demod_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp = icmp eq i32 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 82, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.selectcmp27 = icmp eq i32 %4, 0
  %switch.select28 = select i1 %switch.selectcmp27, i32 26, i32 %switch.select
  %call6 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef %switch.select28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end8

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end4
  %shl = shl i32 %call6, 8
  %or = or i32 %shl, %call6
  %conv = trunc i32 %or to i16
  %5 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv, ptr %signal, align 2
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool10.not = icmp eq i32 %6, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %do.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %conv16 = and i32 %or, 65535
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.72, i32 noundef %conv16) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end14, %if.end8.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end4.cleanup_crit_edge ], [ 0, %do.end14 ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_read_snr(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %snr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end4_crit_edge, label %do.end

entry.do.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end4

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.76) #11
  br label %do.end4

do.end4:                                          ; preds = %do.end, %entry.do.end4_crit_edge
  %call5 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 28)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end4.cleanup_crit_edge, label %if.end7

do.end4.cleanup_crit_edge:                        ; preds = %do.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %do.end4
  %sub = sub nsw i32 255, %call5
  %shl = shl i32 %sub, 8
  %or = or i32 %shl, %sub
  %conv = trunc i32 %or to i16
  %3 = ptrtoint ptr %snr to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %conv, ptr %snr, align 2
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool9.not = icmp eq i32 %4, 0
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %do.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %conv15 = and i32 %or, 65535
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.76, i32 noundef %conv15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end7.cleanup_crit_edge, %do.end4.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end4.cleanup_crit_edge ], [ 0, %do.end13 ], [ 0, %if.end7.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_read_ucblocks(ptr nocapture noundef readonly %fe, ptr nocapture noundef %ucblocks) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.80) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %call6 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end5.cleanup_crit_edge, label %if.end8

do.end5.cleanup_crit_edge:                        ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %do.end5
  %and = and i32 %call6, 127
  br label %while.cond

while.cond:                                       ; preds = %if.end16.while.cond_crit_edge, %if.end8
  %counter.0 = phi i32 [ 0, %if.end8 ], [ %inc, %if.end16.while.cond_crit_edge ]
  %inc = add nuw nsw i32 %counter.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %counter.0)
  %exitcond.not = icmp eq i32 %counter.0, 5
  br i1 %exitcond.not, label %while.cond.while.end_crit_edge, label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %while.cond
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %while.body.do.end3.i_crit_edge, label %do.end.i

while.body.do.end3.i_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 39, i32 noundef 128, i32 noundef 0) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %while.body.do.end3.i_crit_edge
  %call4.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end3.i.tda1004x_write_mask.exit_crit_edge, label %if.end6.i

do.end3.i.tda1004x_write_mask.exit_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call4.i, -129
  %call8.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 39, i32 noundef %and.i) #7
  br label %tda1004x_write_mask.exit

tda1004x_write_mask.exit:                         ; preds = %if.end6.i, %do.end3.i.tda1004x_write_mask.exit_crit_edge
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i52 = icmp eq i32 %4, 0
  br i1 %tobool.not.i52, label %tda1004x_write_mask.exit.do.end3.i57_crit_edge, label %do.end.i54

tda1004x_write_mask.exit.do.end3.i57_crit_edge:   ; preds = %tda1004x_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i57

do.end.i54:                                       ; preds = %tda1004x_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call.i53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 39, i32 noundef 128, i32 noundef 0) #11
  br label %do.end3.i57

do.end3.i57:                                      ; preds = %do.end.i54, %tda1004x_write_mask.exit.do.end3.i57_crit_edge
  %call4.i55 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i55)
  %cmp.i56 = icmp slt i32 %call4.i55, 0
  br i1 %cmp.i56, label %do.end3.i57.tda1004x_write_mask.exit62_crit_edge, label %if.end6.i60

do.end3.i57.tda1004x_write_mask.exit62_crit_edge: ; preds = %do.end3.i57
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit62

if.end6.i60:                                      ; preds = %do.end3.i57
  call void @__sanitizer_cov_trace_pc() #9
  %and.i58 = and i32 %call4.i55, -129
  %call8.i59 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 39, i32 noundef %and.i58) #7
  br label %tda1004x_write_mask.exit62

tda1004x_write_mask.exit62:                       ; preds = %if.end6.i60, %do.end3.i57.tda1004x_write_mask.exit62_crit_edge
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i63 = icmp eq i32 %5, 0
  br i1 %tobool.not.i63, label %tda1004x_write_mask.exit62.do.end3.i68_crit_edge, label %do.end.i65

tda1004x_write_mask.exit62.do.end3.i68_crit_edge: ; preds = %tda1004x_write_mask.exit62
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i68

do.end.i65:                                       ; preds = %tda1004x_write_mask.exit62
  call void @__sanitizer_cov_trace_pc() #9
  %call.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 39, i32 noundef 128, i32 noundef 0) #11
  br label %do.end3.i68

do.end3.i68:                                      ; preds = %do.end.i65, %tda1004x_write_mask.exit62.do.end3.i68_crit_edge
  %call4.i66 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 39) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i66)
  %cmp.i67 = icmp slt i32 %call4.i66, 0
  br i1 %cmp.i67, label %do.end3.i68.tda1004x_write_mask.exit73_crit_edge, label %if.end6.i71

do.end3.i68.tda1004x_write_mask.exit73_crit_edge: ; preds = %do.end3.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit73

if.end6.i71:                                      ; preds = %do.end3.i68
  call void @__sanitizer_cov_trace_pc() #9
  %and.i69 = and i32 %call4.i66, -129
  %call8.i70 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 39, i32 noundef %and.i69) #7
  br label %tda1004x_write_mask.exit73

tda1004x_write_mask.exit73:                       ; preds = %if.end6.i71, %do.end3.i68.tda1004x_write_mask.exit73_crit_edge
  %call13 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %tda1004x_write_mask.exit73.cleanup_crit_edge, label %if.end16

tda1004x_write_mask.exit73.cleanup_crit_edge:     ; preds = %tda1004x_write_mask.exit73
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %tda1004x_write_mask.exit73
  %and17 = and i32 %call13, 127
  call void @__sanitizer_cov_trace_cmp4(i32 %and17, i32 %and)
  %cmp18 = icmp ult i32 %and17, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %cmp19 = icmp eq i32 %and17, 0
  %or.cond = or i1 %cmp18, %cmp19
  br i1 %or.cond, label %if.end16.while.end_crit_edge, label %if.end16.while.cond_crit_edge

if.end16.while.cond_crit_edge:                    ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond

if.end16.while.end_crit_edge:                     ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end16.while.end_crit_edge, %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %and)
  %cmp22.not = icmp eq i32 %and, 127
  %.and = select i1 %cmp22.not, i32 -1, i32 %and
  %6 = ptrtoint ptr %ucblocks to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.and, ptr %ucblocks, align 4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool26.not = icmp eq i32 %7, 0
  br i1 %tobool26.not, label %while.end.cleanup_crit_edge, label %do.end30

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end30:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.80, i32 noundef %.and) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end30, %while.end.cleanup_crit_edge, %tda1004x_write_mask.exit73.cleanup_crit_edge, %do.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end5.cleanup_crit_edge ], [ 0, %do.end30 ], [ 0, %while.end.cleanup_crit_edge ], [ -5, %tda1004x_write_mask.exit73.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda1004x_i2c_gate_ctrl(ptr nocapture noundef readonly %fe, i32 noundef %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demodulator_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 3
  %0 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %demodulator_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not.i3 = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i3, label %if.then.do.end3.i.i_crit_edge, label %do.end3.i

if.then.do.end3.i.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end3.i:                                        ; preds = %if.then
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.84) #11
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool.not.i.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool.not.i.i, label %do.end3.i.do.end3.i.i_crit_edge, label %do.end.i.i

do.end3.i.do.end3.i.i_crit_edge:                  ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 2, i32 noundef 2) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %do.end3.i.do.end3.i.i_crit_edge, %if.then.do.end3.i.i_crit_edge
  %call4.i.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end3.i.i.tda1004x_enable_tuner_i2c.exit_crit_edge, label %if.end6.i.i

do.end3.i.i.tda1004x_enable_tuner_i2c.exit_crit_edge: ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_enable_tuner_i2c.exit

if.end6.i.i:                                      ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %or.i.i = or i32 %call4.i.i, 2
  %call8.i.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 7, i32 noundef %or.i.i) #7
  br label %tda1004x_enable_tuner_i2c.exit

tda1004x_enable_tuner_i2c.exit:                   ; preds = %if.end6.i.i, %do.end3.i.i.tda1004x_enable_tuner_i2c.exit_crit_edge
  %retval.0.i.i = phi i32 [ %call8.i.i, %if.end6.i.i ], [ %call4.i.i, %do.end3.i.i.tda1004x_enable_tuner_i2c.exit_crit_edge ]
  tail call void @msleep(i32 noundef 20) #7
  br label %cleanup

if.else:                                          ; preds = %entry
  br i1 %tobool.not.i3, label %if.else.do.end3.i.i11_crit_edge, label %do.end2.i

if.else.do.end3.i.i11_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i11

do.end2.i:                                        ; preds = %if.else
  %call.i4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.85) #11
  %.pr.i5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i5)
  %tobool.not.i.i6 = icmp eq i32 %.pr.i5, 0
  br i1 %tobool.not.i.i6, label %do.end2.i.do.end3.i.i11_crit_edge, label %do.end.i.i8

do.end2.i.do.end3.i.i11_crit_edge:                ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i11

do.end.i.i8:                                      ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 2, i32 noundef 0) #11
  br label %do.end3.i.i11

do.end3.i.i11:                                    ; preds = %do.end.i.i8, %do.end2.i.do.end3.i.i11_crit_edge, %if.else.do.end3.i.i11_crit_edge
  %call4.i.i9 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i9)
  %cmp.i.i10 = icmp slt i32 %call4.i.i9, 0
  br i1 %cmp.i.i10, label %do.end3.i.i11.cleanup_crit_edge, label %if.end6.i.i13

do.end3.i.i11.cleanup_crit_edge:                  ; preds = %do.end3.i.i11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6.i.i13:                                    ; preds = %do.end3.i.i11
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %call4.i.i9, -3
  %call8.i.i12 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 7, i32 noundef %and.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end6.i.i13, %do.end3.i.i11.cleanup_crit_edge, %tda1004x_enable_tuner_i2c.exit
  %retval.0 = phi i32 [ %retval.0.i.i, %tda1004x_enable_tuner_i2c.exit ], [ %call8.i.i12, %if.end6.i.i13 ], [ %call4.i.i9, %do.end3.i.i11.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_write_mask(ptr nocapture noundef readonly %state, i32 noundef %reg, i32 noundef %mask, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end3_crit_edge, label %do.end

entry.do.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef %reg, i32 noundef %mask, i32 noundef %data) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %call4 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %state, i32 noundef %reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end3.cleanup_crit_edge, label %if.end6

do.end3.cleanup_crit_edge:                        ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i32 %mask, -1
  %and = and i32 %call4, %neg
  %and7 = and i32 %data, 255
  %or = or i32 %and, %and7
  %call8 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef %reg, i32 noundef %or)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end3.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.end6 ], [ %call4, %do.end3.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_write_byteI(ptr nocapture noundef readonly %state, i32 noundef %reg, i32 noundef %data) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [2 x i8], align 1
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #7
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  %conv = trunc i32 %reg to i8
  %1 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %buf, align 1
  %conv1 = trunc i32 %data to i8
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #7
  %3 = getelementptr inbounds i8, ptr %msg, i32 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 2, ptr %len, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %buf2, align 4
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.do.end5_crit_edge, label %do.end

entry.do.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end5

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, i32 noundef %reg, i32 noundef %data) #11
  br label %do.end5

do.end5:                                          ; preds = %do.end, %entry.do.end5_crit_edge
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %config, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %10, align 4
  %conv6 = zext i8 %12 to i16
  %13 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %conv6, ptr %msg, align 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %state, align 4
  %call8 = call i32 @i2c_transfer(ptr noundef %15, ptr noundef nonnull %msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call8)
  %cmp.not = icmp eq i32 %call8, 1
  br i1 %cmp.not, label %do.end5.do.body23_crit_edge, label %do.body11

do.end5.do.body23_crit_edge:                      ; preds = %do.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body23

do.body11:                                        ; preds = %do.end5
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool12.not = icmp eq i32 %16, 0
  br i1 %tobool12.not, label %do.body11.do.end33_crit_edge, label %do.end16

do.body11.do.end33_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end16:                                         ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.56, i32 noundef %reg, i32 noundef %data, i32 noundef %call8) #11
  br label %do.body23

do.body23:                                        ; preds = %do.end16, %do.end5.do.body23_crit_edge
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool24.not = icmp eq i32 %.pr, 0
  br i1 %tobool24.not, label %do.body23.do.end33_crit_edge, label %do.end28

do.body23.do.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end28:                                         ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.56, i32 noundef %reg, i32 noundef %data, i32 noundef %call8) #11
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %do.body23.do.end33_crit_edge, %do.body11.do.end33_crit_edge
  %not.cmp.not = xor i1 %cmp.not, true
  %cond = sext i1 %not.cmp.not to i32
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #7
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_check_upload_ok(ptr nocapture noundef readonly %state) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %demod_type = getelementptr inbounds %struct.tda1004x_state, ptr %state, i32 0, i32 3
  %0 = ptrtoint ptr %demod_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %demod_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %2, 200
  %call44 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %state, i32 noundef 6)
  %and45 = and i32 %call44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool.not46 = icmp eq i32 %and45, 0
  br i1 %tobool.not46, label %if.then.while.body_crit_edge, label %if.then.if.end4_crit_edge

if.then.if.end4_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then.while.body_crit_edge:                     ; preds = %if.then
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %if.then.while.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %3 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp1 = icmp slt i32 %sub, 0
  br i1 %cmp1, label %do.end, label %if.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38) #11
  br label %if.end4

if.end:                                           ; preds = %while.body
  tail call void @msleep(i32 noundef 1) #7
  %call = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %state, i32 noundef 6)
  %and = and i32 %call, 32
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.while.body_crit_edge, label %if.end.if.end4_crit_edge

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @msleep(i32 noundef 100) #7
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end.if.end4_crit_edge, %do.end, %if.then.if.end4_crit_edge
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %if.end4.do.end3.i_crit_edge, label %do.end.i

if.end4.do.end3.i_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 16, i32 noundef 0) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i, %if.end4.do.end3.i_crit_edge
  %call4.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %state, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i = icmp slt i32 %call4.i, 0
  br i1 %cmp.i, label %do.end3.i.tda1004x_write_mask.exit_crit_edge, label %if.end6.i

do.end3.i.tda1004x_write_mask.exit_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i = and i32 %call4.i, -17
  %call8.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 7, i32 noundef %and.i) #7
  br label %tda1004x_write_mask.exit

tda1004x_write_mask.exit:                         ; preds = %if.end6.i, %do.end3.i.tda1004x_write_mask.exit_crit_edge
  %call6 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 17, i32 noundef 103)
  %call7 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %state, i32 noundef 19)
  %call8 = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %state, i32 noundef 20)
  %conv10 = and i32 %call7, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 103, i32 %conv10)
  %cmp11.not = icmp ne i32 %conv10, 103
  %conv13 = and i32 %call8, 255
  %5 = add nsw i32 %conv13, -47
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %5)
  %6 = icmp ult i32 %5, -15
  %or.cond = select i1 %cmp11.not, i1 true, i1 %6
  %.str.41..str.44 = select i1 %or.cond, ptr @.str.41, ptr @.str.44
  %. = select i1 %or.cond, i32 -5, i32 0
  %call33 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.41..str.44, i32 noundef %conv13) #11
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda10045h_set_bandwidth(ptr nocapture noundef readonly %state, i32 noundef %bandwidth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.131)
  switch i32 %bandwidth, label %entry.return_crit_edge [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb1
    i32 8000000, label %sw.bb3
  ]

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

sw.bb:                                            ; preds = %entry
  %1 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not.i = icmp eq i32 %1, 0
  br i1 %tobool.not.i, label %sw.bb.for.body.i.preheader_crit_edge, label %do.end.i

sw.bb.for.body.i.preheader_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.preheader

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 45, i32 noundef 9) #11
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %do.end.i, %sw.bb.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.02.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %add.i = add nuw nsw i32 %i.02.i, 45
  %arrayidx.i = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_6mhz, i32 %i.02.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %3 to i32
  %call4.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef %add.i, i32 noundef %conv.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i = icmp ne i32 %call4.i, 0
  %inc.i = add nuw nsw i32 %i.02.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.i)
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  %or.cond.i = select i1 %cmp5.not.i, i1 true, i1 %exitcond.not.i
  br i1 %or.cond.i, label %for.body.i.sw.epilog_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i1 = icmp eq i32 %4, 0
  br i1 %tobool.not.i1, label %sw.bb1.for.body.i14.preheader_crit_edge, label %do.end.i3

sw.bb1.for.body.i14.preheader_crit_edge:          ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i14.preheader

do.end.i3:                                        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #9
  %call.i2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 45, i32 noundef 9) #11
  br label %for.body.i14.preheader

for.body.i14.preheader:                           ; preds = %do.end.i3, %sw.bb1.for.body.i14.preheader_crit_edge
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %for.body.i14.preheader
  %i.02.i5 = phi i32 [ %inc.i11, %for.body.i14.for.body.i14_crit_edge ], [ 0, %for.body.i14.preheader ]
  %add.i6 = add nuw nsw i32 %i.02.i5, 45
  %arrayidx.i7 = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_7mhz, i32 %i.02.i5
  %5 = ptrtoint ptr %arrayidx.i7 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx.i7, align 1
  %conv.i8 = zext i8 %6 to i32
  %call4.i9 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef %add.i6, i32 noundef %conv.i8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i9)
  %cmp5.not.i10 = icmp ne i32 %call4.i9, 0
  %inc.i11 = add nuw nsw i32 %i.02.i5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.i11)
  %exitcond.not.i12 = icmp eq i32 %inc.i11, 9
  %or.cond.i13 = select i1 %cmp5.not.i10, i1 true, i1 %exitcond.not.i12
  br i1 %or.cond.i13, label %for.body.i14.sw.epilog_crit_edge, label %for.body.i14.for.body.i14_crit_edge

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i14

for.body.i14.sw.epilog_crit_edge:                 ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i16 = icmp eq i32 %7, 0
  br i1 %tobool.not.i16, label %sw.bb3.for.body.i29.preheader_crit_edge, label %do.end.i18

sw.bb3.for.body.i29.preheader_crit_edge:          ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29.preheader

do.end.i18:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 45, i32 noundef 9) #11
  br label %for.body.i29.preheader

for.body.i29.preheader:                           ; preds = %do.end.i18, %sw.bb3.for.body.i29.preheader_crit_edge
  br label %for.body.i29

for.body.i29:                                     ; preds = %for.body.i29.for.body.i29_crit_edge, %for.body.i29.preheader
  %i.02.i20 = phi i32 [ %inc.i26, %for.body.i29.for.body.i29_crit_edge ], [ 0, %for.body.i29.preheader ]
  %add.i21 = add nuw nsw i32 %i.02.i20, 45
  %arrayidx.i22 = getelementptr i8, ptr @tda10045h_set_bandwidth.bandwidth_8mhz, i32 %i.02.i20
  %8 = ptrtoint ptr %arrayidx.i22 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i22, align 1
  %conv.i23 = zext i8 %9 to i32
  %call4.i24 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef %add.i21, i32 noundef %conv.i23) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i24)
  %cmp5.not.i25 = icmp ne i32 %call4.i24, 0
  %inc.i26 = add nuw nsw i32 %i.02.i20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %inc.i26)
  %exitcond.not.i27 = icmp eq i32 %inc.i26, 9
  %or.cond.i28 = select i1 %cmp5.not.i25, i1 true, i1 %exitcond.not.i27
  br i1 %or.cond.i28, label %for.body.i29.sw.epilog_crit_edge, label %for.body.i29.for.body.i29_crit_edge

for.body.i29.for.body.i29_crit_edge:              ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29

for.body.i29.sw.epilog_crit_edge:                 ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %for.body.i29.sw.epilog_crit_edge, %for.body.i14.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge
  %call5 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 56, i32 noundef 0)
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tda1004x_do_upload(ptr nocapture noundef readonly %state, ptr nocapture noundef readonly %mem, i32 noundef %len, i8 noundef zeroext %dspCodeCounterReg, i8 noundef zeroext %dspCodeInReg) unnamed_addr #0 align 64 {
entry:
  %buf = alloca [65 x i8], align 1
  %fw_msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 65, ptr nonnull %buf) #7
  %0 = call ptr @memset(ptr %buf, i32 255, i32 65)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %fw_msg) #7
  %1 = getelementptr inbounds i8, ptr %fw_msg, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %fw_msg, i32 0, i32 1
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %flags, align 2
  %len1 = getelementptr inbounds %struct.i2c_msg, ptr %fw_msg, i32 0, i32 2
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 0, ptr %len1, align 4
  %buf2 = getelementptr inbounds %struct.i2c_msg, ptr %fw_msg, i32 0, i32 3
  %5 = ptrtoint ptr %buf2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %buf, ptr %buf2, align 4
  %conv = zext i8 %dspCodeCounterReg to i32
  %call = call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef %conv, i32 noundef 0)
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %state, i32 0, i32 1
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 4
  %conv3 = zext i8 %9 to i16
  %10 = ptrtoint ptr %fw_msg to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv3, ptr %fw_msg, align 4
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %state, align 4
  %lock_ops.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 4
  %13 = ptrtoint ptr %lock_ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %lock_ops.i, align 8
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  call void %16(ptr noundef %12, i32 noundef 2) #7
  %17 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %dspCodeInReg, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp.not51 = icmp eq i32 %len, 0
  br i1 %cmp.not51, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %add.ptr = getelementptr inbounds i8, ptr %buf, i32 1
  br label %while.body

while.body:                                       ; preds = %do.end30.while.body_crit_edge, %while.body.lr.ph
  %pos.052 = phi i32 [ 0, %while.body.lr.ph ], [ %add20, %do.end30.while.body_crit_edge ]
  %sub = sub i32 %len, %pos.052
  %18 = call i32 @llvm.smin.i32(i32 %sub, i32 16)
  %add.ptr9 = getelementptr i8, ptr %mem, i32 %pos.052
  %19 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr9, i32 %18)
  %20 = trunc i32 %18 to i16
  %conv10 = add i16 %20, 1
  %21 = ptrtoint ptr %len1 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv10, ptr %len1, align 4
  %22 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state, align 4
  %call13 = call i32 @__i2c_transfer(ptr noundef %23, ptr noundef nonnull %fw_msg, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call13)
  %cmp14.not = icmp eq i32 %call13, 1
  br i1 %cmp14.not, label %if.end19, label %do.end

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.48) #11
  %24 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %state, align 4
  %lock_ops.i48 = getelementptr inbounds %struct.i2c_adapter, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %lock_ops.i48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %lock_ops.i48, align 8
  %unlock_bus.i = getelementptr inbounds %struct.i2c_lock_operations, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %unlock_bus.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %unlock_bus.i, align 4
  call void %29(ptr noundef %25, i32 noundef 2) #7
  br label %cleanup

if.end19:                                         ; preds = %while.body
  %add20 = add i32 %18, %pos.052
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not = icmp eq i32 %30, 0
  br i1 %tobool.not, label %if.end19.do.end30_crit_edge, label %do.end25

if.end19.do.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end25:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.49, i32 noundef %add20) #11
  br label %do.end30

do.end30:                                         ; preds = %do.end25, %if.end19.do.end30_crit_edge
  %cmp.not = icmp eq i32 %add20, %len
  br i1 %cmp.not, label %do.end30.while.end_crit_edge, label %do.end30.while.body_crit_edge

do.end30.while.body_crit_edge:                    ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

do.end30.while.end_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end30.while.end_crit_edge, %entry.while.end_crit_edge
  %31 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %state, align 4
  %lock_ops.i49 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 4
  %33 = ptrtoint ptr %lock_ops.i49 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lock_ops.i49, align 8
  %unlock_bus.i50 = getelementptr inbounds %struct.i2c_lock_operations, ptr %34, i32 0, i32 2
  %35 = ptrtoint ptr %unlock_bus.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unlock_bus.i50, align 4
  call void %36(ptr noundef %32, i32 noundef 2) #7
  call void @msleep(i32 noundef 100) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %while.end ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %fw_msg) #7
  call void @llvm.lifetime.end.p0(i64 65, ptr nonnull %buf) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tda10046h_set_bandwidth(ptr nocapture noundef readonly %state, i32 noundef %bandwidth) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %state, i32 0, i32 1
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %config, align 4
  %if_freq = getelementptr inbounds %struct.tda1004x_config, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %if_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %if_freq, align 4
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %4)
  %switch = icmp eq i32 %4, 2
  %5 = zext i32 %bandwidth to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.132)
  switch i32 %bandwidth, label %entry.cleanup_crit_edge [
    i32 6000000, label %sw.bb
    i32 7000000, label %sw.bb15
    i32 8000000, label %sw.bb29
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i1 = icmp eq i32 %6, 0
  br i1 %switch, label %if.else5, label %if.then4

if.then4:                                         ; preds = %sw.bb
  br i1 %tobool.not.i1, label %if.then4.for.body.i_crit_edge, label %do.end.i

if.then4.for.body.i_crit_edge:                    ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

do.end.i:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 49, i32 noundef 5) #11
  br label %for.body.i

for.body.i:                                       ; preds = %do.end.i, %if.then4.for.body.i_crit_edge
  %call4.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 49, i32 noundef 123) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp5.not.i.not = icmp eq i32 %call4.i, 0
  br i1 %cmp5.not.i.not, label %for.body.i.1, label %for.body.i.if.end7_crit_edge

for.body.i.if.end7_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i.1:                                     ; preds = %for.body.i
  %call4.i.1 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 50, i32 noundef 46) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.1)
  %cmp5.not.i.1.not = icmp eq i32 %call4.i.1, 0
  br i1 %cmp5.not.i.1.not, label %for.body.i.2, label %for.body.i.1.if.end7_crit_edge

for.body.i.1.if.end7_crit_edge:                   ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i.2:                                     ; preds = %for.body.i.1
  %call4.i.2 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 51, i32 noundef 17) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.2)
  %cmp5.not.i.2.not = icmp eq i32 %call4.i.2, 0
  br i1 %cmp5.not.i.2.not, label %for.body.i.3, label %for.body.i.2.if.end7_crit_edge

for.body.i.2.if.end7_crit_edge:                   ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i.3:                                     ; preds = %for.body.i.2
  %call4.i.3 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 52, i32 noundef 240) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.3)
  %cmp5.not.i.3.not = icmp eq i32 %call4.i.3, 0
  br i1 %cmp5.not.i.3.not, label %for.body.i.4, label %for.body.i.3.if.end7_crit_edge

for.body.i.3.if.end7_crit_edge:                   ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i.4:                                     ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i.4 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 53, i32 noundef 210) #7
  br label %if.end7

if.else5:                                         ; preds = %sw.bb
  br i1 %tobool.not.i1, label %if.else5.for.body.i14_crit_edge, label %do.end.i3

if.else5.for.body.i14_crit_edge:                  ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i14

do.end.i3:                                        ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #9
  %call.i2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 49, i32 noundef 5) #11
  br label %for.body.i14

for.body.i14:                                     ; preds = %do.end.i3, %if.else5.for.body.i14_crit_edge
  %call4.i9 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 49, i32 noundef 112) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i9)
  %cmp5.not.i10.not = icmp eq i32 %call4.i9, 0
  br i1 %cmp5.not.i10.not, label %for.body.i14.1, label %for.body.i14.if.end7_crit_edge

for.body.i14.if.end7_crit_edge:                   ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i14.1:                                   ; preds = %for.body.i14
  %call4.i9.1 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 50, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i9.1)
  %cmp5.not.i10.1.not = icmp eq i32 %call4.i9.1, 0
  br i1 %cmp5.not.i10.1.not, label %for.body.i14.2, label %for.body.i14.1.if.end7_crit_edge

for.body.i14.1.if.end7_crit_edge:                 ; preds = %for.body.i14.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i14.2:                                   ; preds = %for.body.i14.1
  %call4.i9.2 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 51, i32 noundef 73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i9.2)
  %cmp5.not.i10.2.not = icmp eq i32 %call4.i9.2, 0
  br i1 %cmp5.not.i10.2.not, label %for.body.i14.3, label %for.body.i14.2.if.end7_crit_edge

for.body.i14.2.if.end7_crit_edge:                 ; preds = %for.body.i14.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i14.3:                                   ; preds = %for.body.i14.2
  %call4.i9.3 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 52, i32 noundef 36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i9.3)
  %cmp5.not.i10.3.not = icmp eq i32 %call4.i9.3, 0
  br i1 %cmp5.not.i10.3.not, label %for.body.i14.4, label %for.body.i14.3.if.end7_crit_edge

for.body.i14.3.if.end7_crit_edge:                 ; preds = %for.body.i14.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

for.body.i14.4:                                   ; preds = %for.body.i14.3
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i9.4 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 53, i32 noundef 146) #7
  br label %if.end7

if.end7:                                          ; preds = %for.body.i14.4, %for.body.i14.3.if.end7_crit_edge, %for.body.i14.2.if.end7_crit_edge, %for.body.i14.1.if.end7_crit_edge, %for.body.i14.if.end7_crit_edge, %for.body.i.4, %for.body.i.3.if.end7_crit_edge, %for.body.i.2.if.end7_crit_edge, %for.body.i.1.if.end7_crit_edge, %for.body.i.if.end7_crit_edge
  %7 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %config, align 4
  %if_freq9 = getelementptr inbounds %struct.tda1004x_config, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %if_freq9 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %if_freq9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %10)
  %cmp10 = icmp eq i32 %10, 2
  br i1 %cmp10, label %if.end7.cleanup.sink.split_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.cleanup.sink.split_crit_edge:             ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb15:                                          ; preds = %entry
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i31 = icmp eq i32 %11, 0
  br i1 %switch, label %if.else19, label %if.then17

if.then17:                                        ; preds = %sw.bb15
  br i1 %tobool.not.i31, label %if.then17.for.body.i29_crit_edge, label %do.end.i18

if.then17.for.body.i29_crit_edge:                 ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29

do.end.i18:                                       ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %call.i17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 49, i32 noundef 5) #11
  br label %for.body.i29

for.body.i29:                                     ; preds = %do.end.i18, %if.then17.for.body.i29_crit_edge
  %call4.i24 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 49, i32 noundef 106) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i24)
  %cmp5.not.i25.not = icmp eq i32 %call4.i24, 0
  br i1 %cmp5.not.i25.not, label %for.body.i29.1, label %for.body.i29.if.end21_crit_edge

for.body.i29.if.end21_crit_edge:                  ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i29.1:                                   ; preds = %for.body.i29
  %call4.i24.1 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 50, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i24.1)
  %cmp5.not.i25.1.not = icmp eq i32 %call4.i24.1, 0
  br i1 %cmp5.not.i25.1.not, label %for.body.i29.2, label %for.body.i29.1.if.end21_crit_edge

for.body.i29.1.if.end21_crit_edge:                ; preds = %for.body.i29.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i29.2:                                   ; preds = %for.body.i29.1
  %call4.i24.2 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 51, i32 noundef 106) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i24.2)
  %cmp5.not.i25.2.not = icmp eq i32 %call4.i24.2, 0
  br i1 %cmp5.not.i25.2.not, label %for.body.i29.3, label %for.body.i29.2.if.end21_crit_edge

for.body.i29.2.if.end21_crit_edge:                ; preds = %for.body.i29.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i29.3:                                   ; preds = %for.body.i29.2
  %call4.i24.3 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 52, i32 noundef 67) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i24.3)
  %cmp5.not.i25.3.not = icmp eq i32 %call4.i24.3, 0
  br i1 %cmp5.not.i25.3.not, label %for.body.i29.4, label %for.body.i29.3.if.end21_crit_edge

for.body.i29.3.if.end21_crit_edge:                ; preds = %for.body.i29.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i29.4:                                   ; preds = %for.body.i29.3
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i24.4 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 53, i32 noundef 159) #7
  br label %if.end21

if.else19:                                        ; preds = %sw.bb15
  br i1 %tobool.not.i31, label %if.else19.for.body.i44_crit_edge, label %do.end.i33

if.else19.for.body.i44_crit_edge:                 ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i44

do.end.i33:                                       ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  %call.i32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 49, i32 noundef 5) #11
  br label %for.body.i44

for.body.i44:                                     ; preds = %do.end.i33, %if.else19.for.body.i44_crit_edge
  %call4.i39 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 49, i32 noundef 96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i39)
  %cmp5.not.i40.not = icmp eq i32 %call4.i39, 0
  br i1 %cmp5.not.i40.not, label %for.body.i44.1, label %for.body.i44.if.end21_crit_edge

for.body.i44.if.end21_crit_edge:                  ; preds = %for.body.i44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i44.1:                                   ; preds = %for.body.i44
  %call4.i39.1 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 50, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i39.1)
  %cmp5.not.i40.1.not = icmp eq i32 %call4.i39.1, 0
  br i1 %cmp5.not.i40.1.not, label %for.body.i44.2, label %for.body.i44.1.if.end21_crit_edge

for.body.i44.1.if.end21_crit_edge:                ; preds = %for.body.i44.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i44.2:                                   ; preds = %for.body.i44.1
  %call4.i39.2 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 51, i32 noundef 170) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i39.2)
  %cmp5.not.i40.2.not = icmp eq i32 %call4.i39.2, 0
  br i1 %cmp5.not.i40.2.not, label %for.body.i44.3, label %for.body.i44.2.if.end21_crit_edge

for.body.i44.2.if.end21_crit_edge:                ; preds = %for.body.i44.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i44.3:                                   ; preds = %for.body.i44.2
  %call4.i39.3 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 52, i32 noundef 170) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i39.3)
  %cmp5.not.i40.3.not = icmp eq i32 %call4.i39.3, 0
  br i1 %cmp5.not.i40.3.not, label %for.body.i44.4, label %for.body.i44.3.if.end21_crit_edge

for.body.i44.3.if.end21_crit_edge:                ; preds = %for.body.i44.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

for.body.i44.4:                                   ; preds = %for.body.i44.3
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i39.4 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 53, i32 noundef 171) #7
  br label %if.end21

if.end21:                                         ; preds = %for.body.i44.4, %for.body.i44.3.if.end21_crit_edge, %for.body.i44.2.if.end21_crit_edge, %for.body.i44.1.if.end21_crit_edge, %for.body.i44.if.end21_crit_edge, %for.body.i29.4, %for.body.i29.3.if.end21_crit_edge, %for.body.i29.2.if.end21_crit_edge, %for.body.i29.1.if.end21_crit_edge, %for.body.i29.if.end21_crit_edge
  %12 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config, align 4
  %if_freq23 = getelementptr inbounds %struct.tda1004x_config, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %if_freq23 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %if_freq23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %cmp24 = icmp eq i32 %15, 2
  br i1 %cmp24, label %if.end21.cleanup.sink.split_crit_edge, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21.cleanup.sink.split_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

sw.bb29:                                          ; preds = %entry
  %16 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i61 = icmp eq i32 %16, 0
  br i1 %switch, label %if.else33, label %if.then31

if.then31:                                        ; preds = %sw.bb29
  br i1 %tobool.not.i61, label %if.then31.for.body.i59_crit_edge, label %do.end.i48

if.then31.for.body.i59_crit_edge:                 ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i59

do.end.i48:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %call.i47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 49, i32 noundef 5) #11
  br label %for.body.i59

for.body.i59:                                     ; preds = %do.end.i48, %if.then31.for.body.i59_crit_edge
  %call4.i54 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 49, i32 noundef 92) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i54)
  %cmp5.not.i55.not = icmp eq i32 %call4.i54, 0
  br i1 %cmp5.not.i55.not, label %for.body.i59.1, label %for.body.i59.if.end35_crit_edge

for.body.i59.if.end35_crit_edge:                  ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i59.1:                                   ; preds = %for.body.i59
  %call4.i54.1 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 50, i32 noundef 50) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i54.1)
  %cmp5.not.i55.1.not = icmp eq i32 %call4.i54.1, 0
  br i1 %cmp5.not.i55.1.not, label %for.body.i59.2, label %for.body.i59.1.if.end35_crit_edge

for.body.i59.1.if.end35_crit_edge:                ; preds = %for.body.i59.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i59.2:                                   ; preds = %for.body.i59.1
  %call4.i54.2 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 51, i32 noundef 194) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i54.2)
  %cmp5.not.i55.2.not = icmp eq i32 %call4.i54.2, 0
  br i1 %cmp5.not.i55.2.not, label %for.body.i59.3, label %for.body.i59.2.if.end35_crit_edge

for.body.i59.2.if.end35_crit_edge:                ; preds = %for.body.i59.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i59.3:                                   ; preds = %for.body.i59.2
  %call4.i54.3 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 52, i32 noundef 150) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i54.3)
  %cmp5.not.i55.3.not = icmp eq i32 %call4.i54.3, 0
  br i1 %cmp5.not.i55.3.not, label %for.body.i59.4, label %for.body.i59.3.if.end35_crit_edge

for.body.i59.3.if.end35_crit_edge:                ; preds = %for.body.i59.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i59.4:                                   ; preds = %for.body.i59.3
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i54.4 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 53, i32 noundef 109) #7
  br label %if.end35

if.else33:                                        ; preds = %sw.bb29
  br i1 %tobool.not.i61, label %if.else33.for.body.i74_crit_edge, label %do.end.i63

if.else33.for.body.i74_crit_edge:                 ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i74

do.end.i63:                                       ; preds = %if.else33
  call void @__sanitizer_cov_trace_pc() #9
  %call.i62 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef 49, i32 noundef 5) #11
  br label %for.body.i74

for.body.i74:                                     ; preds = %do.end.i63, %if.else33.for.body.i74_crit_edge
  %call4.i69 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 49, i32 noundef 84) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i69)
  %cmp5.not.i70.not = icmp eq i32 %call4.i69, 0
  br i1 %cmp5.not.i70.not, label %for.body.i74.1, label %for.body.i74.if.end35_crit_edge

for.body.i74.if.end35_crit_edge:                  ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i74.1:                                   ; preds = %for.body.i74
  %call4.i69.1 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 50, i32 noundef 3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i69.1)
  %cmp5.not.i70.1.not = icmp eq i32 %call4.i69.1, 0
  br i1 %cmp5.not.i70.1.not, label %for.body.i74.2, label %for.body.i74.1.if.end35_crit_edge

for.body.i74.1.if.end35_crit_edge:                ; preds = %for.body.i74.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i74.2:                                   ; preds = %for.body.i74.1
  %call4.i69.2 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 51, i32 noundef 12) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i69.2)
  %cmp5.not.i70.2.not = icmp eq i32 %call4.i69.2, 0
  br i1 %cmp5.not.i70.2.not, label %for.body.i74.3, label %for.body.i74.2.if.end35_crit_edge

for.body.i74.2.if.end35_crit_edge:                ; preds = %for.body.i74.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i74.3:                                   ; preds = %for.body.i74.2
  %call4.i69.3 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 52, i32 noundef 48) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i69.3)
  %cmp5.not.i70.3.not = icmp eq i32 %call4.i69.3, 0
  br i1 %cmp5.not.i70.3.not, label %for.body.i74.4, label %for.body.i74.3.if.end35_crit_edge

for.body.i74.3.if.end35_crit_edge:                ; preds = %for.body.i74.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

for.body.i74.4:                                   ; preds = %for.body.i74.3
  call void @__sanitizer_cov_trace_pc() #9
  %call4.i69.4 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 53, i32 noundef 195) #7
  br label %if.end35

if.end35:                                         ; preds = %for.body.i74.4, %for.body.i74.3.if.end35_crit_edge, %for.body.i74.2.if.end35_crit_edge, %for.body.i74.1.if.end35_crit_edge, %for.body.i74.if.end35_crit_edge, %for.body.i59.4, %for.body.i59.3.if.end35_crit_edge, %for.body.i59.2.if.end35_crit_edge, %for.body.i59.1.if.end35_crit_edge, %for.body.i59.if.end35_crit_edge
  %17 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %config, align 4
  %if_freq37 = getelementptr inbounds %struct.tda1004x_config, ptr %18, i32 0, i32 5
  %19 = ptrtoint ptr %if_freq37 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %if_freq37, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp38 = icmp eq i32 %20, 2
  br i1 %cmp38, label %if.end35.cleanup.sink.split_crit_edge, label %if.end35.cleanup_crit_edge

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35.cleanup.sink.split_crit_edge:            ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end35.cleanup.sink.split_crit_edge, %if.end21.cleanup.sink.split_crit_edge, %if.end7.cleanup.sink.split_crit_edge
  %.sink85 = phi i32 [ 10, %if.end7.cleanup.sink.split_crit_edge ], [ 12, %if.end21.cleanup.sink.split_crit_edge ], [ 13, %if.end35.cleanup.sink.split_crit_edge ]
  %.sink = phi i32 [ 171, %if.end7.cleanup.sink.split_crit_edge ], [ 0, %if.end21.cleanup.sink.split_crit_edge ], [ 85, %if.end35.cleanup.sink.split_crit_edge ]
  %call12 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 77, i32 noundef %.sink85)
  %call13 = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %state, i32 noundef 78, i32 noundef %.sink)
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end35.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tda10046_init(ptr noundef %fe) #0 align 64 {
entry:
  %fw.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.86) #11
  br label %do.end3

do.end3:                                          ; preds = %do.end, %entry.do.end3_crit_edge
  %3 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %demodulator_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw.i) #7
  %5 = ptrtoint ptr %fw.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw.i, align 4, !annotation !262
  %config.i = getelementptr inbounds %struct.tda1004x_state, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %config.i, align 4
  %xtal_freq.i = getelementptr inbounds %struct.tda1004x_config, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %xtal_freq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xtal_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i = icmp eq i32 %9, 0
  br i1 %cmp.i, label %do.end3.if.end5.i_crit_edge, label %do.body.i

do.end3.if.end5.i_crit_edge:                      ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

do.body.i:                                        ; preds = %do.end3
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i, label %do.body.i.if.end5.i_crit_edge, label %do.end.i

do.body.i.if.end5.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef nonnull @.str.90) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %do.end.i, %do.body.i.if.end5.i_crit_edge, %do.end3.if.end5.i_crit_edge
  %confc4.0.i = phi i32 [ 0, %do.end3.if.end5.i_crit_edge ], [ 128, %do.end.i ], [ 128, %do.body.i.if.end5.i_crit_edge ]
  %call6.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %confc4.0.i) #7
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not.i.i = icmp eq i32 %11, 0
  br i1 %tobool.not.i.i, label %if.end5.i.do.end3.i.i_crit_edge, label %do.end.i.i

if.end5.i.do.end3.i.i_crit_edge:                  ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i.i

do.end.i.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 59, i32 noundef 1, i32 noundef 0) #11
  br label %do.end3.i.i

do.end3.i.i:                                      ; preds = %do.end.i.i, %if.end5.i.do.end3.i.i_crit_edge
  %call4.i.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i)
  %cmp.i.i = icmp slt i32 %call4.i.i, 0
  br i1 %cmp.i.i, label %do.end3.i.i.tda1004x_write_mask.exit.i_crit_edge, label %if.end6.i.i

do.end3.i.i.tda1004x_write_mask.exit.i_crit_edge: ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit.i

if.end6.i.i:                                      ; preds = %do.end3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i.i = and i32 %call4.i.i, -2
  %call8.i.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 59, i32 noundef %and.i.i) #7
  br label %tda1004x_write_mask.exit.i

tda1004x_write_mask.exit.i:                       ; preds = %if.end6.i.i, %do.end3.i.i.tda1004x_write_mask.exit.i_crit_edge
  %12 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %config.i, align 4
  %gpio_config.i = getelementptr inbounds %struct.tda1004x_config, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %gpio_config.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %gpio_config.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp9.not.i = icmp eq i32 %15, 0
  br i1 %cmp9.not.i, label %tda1004x_write_mask.exit.i.if.end15.i_crit_edge, label %if.then10.i

tda1004x_write_mask.exit.i.if.end15.i_crit_edge:  ; preds = %tda1004x_write_mask.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.then10.i:                                      ; preds = %tda1004x_write_mask.exit.i
  %call11.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 60, i32 noundef 51) #7
  %16 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %config.i, align 4
  %gpio_config13.i = getelementptr inbounds %struct.tda1004x_config, ptr %17, i32 0, i32 7
  %18 = ptrtoint ptr %gpio_config13.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gpio_config13.i, align 4
  %and.i = and i32 %19, 15
  %20 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not.i99.i = icmp eq i32 %20, 0
  br i1 %tobool.not.i99.i, label %if.then10.i.do.end3.i104.i_crit_edge, label %do.end.i101.i

if.then10.i.do.end3.i104.i_crit_edge:             ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i104.i

do.end.i101.i:                                    ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i100.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 61, i32 noundef 15, i32 noundef %and.i) #11
  br label %do.end3.i104.i

do.end3.i104.i:                                   ; preds = %do.end.i101.i, %if.then10.i.do.end3.i104.i_crit_edge
  %call4.i102.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i102.i)
  %cmp.i103.i = icmp slt i32 %call4.i102.i, 0
  br i1 %cmp.i103.i, label %do.end3.i104.i.if.end15.i_crit_edge, label %if.end6.i107.i

do.end3.i104.i.if.end15.i_crit_edge:              ; preds = %do.end3.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15.i

if.end6.i107.i:                                   ; preds = %do.end3.i104.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i105.i = and i32 %call4.i102.i, -16
  %or.i.i = or i32 %and.i105.i, %and.i
  %call8.i106.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 61, i32 noundef %or.i.i) #7
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.end6.i107.i, %do.end3.i104.i.if.end15.i_crit_edge, %tda1004x_write_mask.exit.i.if.end15.i_crit_edge
  tail call void @msleep(i32 noundef 10) #7
  %21 = ptrtoint ptr %demodulator_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %demodulator_priv, align 4
  %config.i.i = getelementptr inbounds %struct.tda1004x_state, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %config.i.i, align 4
  %if_freq.i.i = getelementptr inbounds %struct.tda1004x_config, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %if_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %if_freq.i.i, align 4
  %27 = and i32 %26, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %27)
  %switch.i.i = icmp eq i32 %27, 2
  %call.i110.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %22, i32 noundef 45, i32 noundef 240) #7
  %.str.109..str.106.i.i = select i1 %switch.i.i, ptr @.str.109, ptr @.str.106
  %..i.i = select i1 %switch.i.i, i32 3, i32 8
  %call12.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.109..str.106.i.i) #11
  %call13.i.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %22, i32 noundef 47, i32 noundef %..i.i) #7
  %28 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %config.i.i, align 4
  %xtal_freq.i.i = getelementptr inbounds %struct.tda1004x_config, ptr %29, i32 0, i32 4
  %30 = ptrtoint ptr %xtal_freq.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xtal_freq.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp16.i.i = icmp eq i32 %31, 0
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool19.not.i.i = icmp eq i32 %32, 0
  %.88.i.i = select i1 %cmp16.i.i, i32 0, i32 3
  br i1 %tobool19.not.i.i, label %if.end15.i.if.end43.i.i_crit_edge, label %if.end43.sink.split.i.i

if.end15.i.if.end43.i.i_crit_edge:                ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

if.end43.sink.split.i.i:                          ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #9
  %.str.112..str.115.i.i = select i1 %cmp16.i.i, ptr @.str.112, ptr @.str.115
  %call38.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.112..str.115.i.i, ptr noundef nonnull @.str.107) #11
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end43.sink.split.i.i, %if.end15.i.if.end43.i.i_crit_edge
  %call42.i.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %22, i32 noundef 48, i32 noundef %.88.i.i) #7
  %.sink85.i.i = select i1 %switch.i.i, i32 114, i32 103
  %call48.i.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %22, i32 noundef 62, i32 noundef %.sink85.i.i) #7
  %33 = ptrtoint ptr %config.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %config.i.i, align 4
  %if_freq51.i.i = getelementptr inbounds %struct.tda1004x_config, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %if_freq51.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %if_freq51.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %37 = icmp ult i32 %36, 4
  br i1 %37, label %switch.lookup, label %if.end43.i.i.tda10046_init_plls.exit.i_crit_edge

if.end43.i.i.tda10046_init_plls.exit.i_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda10046_init_plls.exit.i

switch.lookup:                                    ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.tda10046_init, i32 0, i32 %36
  %38 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep201 = getelementptr inbounds [4 x i32], ptr @switch.table.tda10046_init.120, i32 0, i32 %36
  %39 = ptrtoint ptr %switch.gep201 to i32
  call void @__asan_load4_noabort(i32 %39)
  %switch.load202 = load i32, ptr %switch.gep201, align 4
  %call61.i.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %22, i32 noundef 77, i32 noundef %switch.load) #7
  %call62.i.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %22, i32 noundef 78, i32 noundef %switch.load202) #7
  br label %tda10046_init_plls.exit.i

tda10046_init_plls.exit.i:                        ; preds = %switch.lookup, %if.end43.i.i.tda10046_init_plls.exit.i_crit_edge
  tail call fastcc void @tda10046h_set_bandwidth(ptr noundef %22, i32 noundef 8000000) #7
  tail call void @msleep(i32 noundef 120) #7
  %40 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool.not.i111.i = icmp eq i32 %40, 0
  br i1 %tobool.not.i111.i, label %tda10046_init_plls.exit.i.do.end3.i116.i_crit_edge, label %do.end.i113.i

tda10046_init_plls.exit.i.do.end3.i116.i_crit_edge: ; preds = %tda10046_init_plls.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i116.i

do.end.i113.i:                                    ; preds = %tda10046_init_plls.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i112.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 55, i32 noundef 192, i32 noundef 0) #11
  br label %do.end3.i116.i

do.end3.i116.i:                                   ; preds = %do.end.i113.i, %tda10046_init_plls.exit.i.do.end3.i116.i_crit_edge
  %call4.i114.i = tail call fastcc i32 @tda1004x_read_byte(ptr noundef %4, i32 noundef 55) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i114.i)
  %cmp.i115.i = icmp slt i32 %call4.i114.i, 0
  br i1 %cmp.i115.i, label %do.end3.i116.i.tda1004x_write_mask.exit121.i_crit_edge, label %if.end6.i119.i

do.end3.i116.i.tda1004x_write_mask.exit121.i_crit_edge: ; preds = %do.end3.i116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit121.i

if.end6.i119.i:                                   ; preds = %do.end3.i116.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i117.i = and i32 %call4.i114.i, -193
  %call8.i118.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 55, i32 noundef %and.i117.i) #7
  br label %tda1004x_write_mask.exit121.i

tda1004x_write_mask.exit121.i:                    ; preds = %if.end6.i119.i, %do.end3.i116.i.tda1004x_write_mask.exit121.i_crit_edge
  %call17.i = tail call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 0
  br i1 %cmp18.i, label %tda1004x_write_mask.exit121.i.tda10046_fwupload.exit.thread_crit_edge, label %do.end23.i

tda1004x_write_mask.exit121.i.tda10046_fwupload.exit.thread_crit_edge: ; preds = %tda1004x_write_mask.exit121.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda10046_fwupload.exit.thread

do.end23.i:                                       ; preds = %tda1004x_write_mask.exit121.i
  %call25.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92) #11
  %call26.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef 4) #7
  tail call void @msleep(i32 noundef 300) #7
  %call27.i = tail call fastcc i32 @tda1004x_write_byteI(ptr noundef %4, i32 noundef 7, i32 noundef %confc4.0.i) #7
  %call28.i = tail call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %cmp29.i = icmp eq i32 %call28.i, 0
  br i1 %cmp29.i, label %do.end23.i.tda10046_fwupload.exit.thread_crit_edge, label %if.end31.i

do.end23.i.tda10046_fwupload.exit.thread_crit_edge: ; preds = %do.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda10046_fwupload.exit.thread

if.end31.i:                                       ; preds = %do.end23.i
  %41 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %config.i, align 4
  %request_firmware.i = getelementptr inbounds %struct.tda1004x_config, ptr %42, i32 0, i32 11
  %43 = ptrtoint ptr %request_firmware.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %request_firmware.i, align 4
  %cmp33.not.i = icmp eq ptr %44, null
  br i1 %cmp33.not.i, label %do.end66.i, label %do.end37.i

do.end37.i:                                       ; preds = %if.end31.i
  %call39.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95) #11
  %45 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %config.i, align 4
  %request_firmware41.i = getelementptr inbounds %struct.tda1004x_config, ptr %46, i32 0, i32 11
  %47 = ptrtoint ptr %request_firmware41.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %request_firmware41.i, align 4
  %call42.i = call i32 %48(ptr noundef %fe, ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.97) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %do.end37.i.tda10046_fwupload.exit_crit_edge, label %if.then44.i

do.end37.i.tda10046_fwupload.exit_crit_edge:      ; preds = %do.end37.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda10046_fwupload.exit

if.then44.i:                                      ; preds = %do.end37.i
  %49 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %config.i, align 4
  %request_firmware46.i = getelementptr inbounds %struct.tda1004x_config, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %request_firmware46.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %request_firmware46.i, align 4
  %call47.i = call i32 %52(ptr noundef %fe, ptr noundef nonnull %fw.i, ptr noundef nonnull @.str.31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i)
  %tobool48.not.i = icmp eq i32 %call47.i, 0
  br i1 %tobool48.not.i, label %do.end58.i, label %do.end52.i

do.end52.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  %call54.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33) #11
  br label %tda10046_fwupload.exit.thread198

do.end58.i:                                       ; preds = %if.then44.i
  call void @__sanitizer_cov_trace_pc() #9
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.97) #11
  br label %tda10046_fwupload.exit

do.end66.i:                                       ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %call68.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.104) #11
  br label %tda10046_fwupload.exit.thread198

tda10046_fwupload.exit.thread:                    ; preds = %do.end23.i.tda10046_fwupload.exit.thread_crit_edge, %tda1004x_write_mask.exit121.i.tda10046_fwupload.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %if.end12

tda10046_fwupload.exit.thread198:                 ; preds = %do.end66.i, %do.end52.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  br label %do.end9

tda10046_fwupload.exit:                           ; preds = %do.end58.i, %do.end37.i.tda10046_fwupload.exit_crit_edge
  %call70.i = call fastcc i32 @tda1004x_write_mask(ptr noundef %4, i32 noundef 7, i32 noundef 8, i32 noundef 8) #7
  %53 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %fw.i, align 4
  %data.i = getelementptr inbounds %struct.firmware, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 4
  %call71.i = call fastcc i32 @tda1004x_do_upload(ptr noundef %4, ptr noundef %56, i32 noundef %58, i8 noundef zeroext 87, i8 noundef zeroext 88) #7
  %59 = ptrtoint ptr %fw.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %fw.i, align 4
  call void @release_firmware(ptr noundef %60) #7
  %call72.i = call fastcc i32 @tda1004x_check_upload_ok(ptr noundef %4) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool5.not = icmp eq i32 %call72.i, 0
  br i1 %tobool5.not, label %tda10046_fwupload.exit.if.end12_crit_edge, label %tda10046_fwupload.exit.do.end9_crit_edge

tda10046_fwupload.exit.do.end9_crit_edge:         ; preds = %tda10046_fwupload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end9

tda10046_fwupload.exit.if.end12_crit_edge:        ; preds = %tda10046_fwupload.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end9:                                          ; preds = %tda10046_fwupload.exit.do.end9_crit_edge, %tda10046_fwupload.exit.thread198
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end12:                                         ; preds = %tda10046_fwupload.exit.if.end12_crit_edge, %tda10046_fwupload.exit.thread
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i82 = icmp eq i32 %61, 0
  br i1 %tobool.not.i82, label %if.end12.do.end3.i_crit_edge, label %do.end.i84

if.end12.do.end3.i_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i

do.end.i84:                                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call.i83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 7, i32 noundef 32, i32 noundef 0) #11
  br label %do.end3.i

do.end3.i:                                        ; preds = %do.end.i84, %if.end12.do.end3.i_crit_edge
  %call4.i = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 7) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %cmp.i85 = icmp slt i32 %call4.i, 0
  br i1 %cmp.i85, label %do.end3.i.tda1004x_write_mask.exit_crit_edge, label %if.end6.i

do.end3.i.tda1004x_write_mask.exit_crit_edge:     ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit

if.end6.i:                                        ; preds = %do.end3.i
  call void @__sanitizer_cov_trace_pc() #9
  %and.i86 = and i32 %call4.i, -33
  %call8.i = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 7, i32 noundef %and.i86) #7
  br label %tda1004x_write_mask.exit

tda1004x_write_mask.exit:                         ; preds = %if.end6.i, %do.end3.i.tda1004x_write_mask.exit_crit_edge
  %call14 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 1, i32 noundef 135)
  %call15 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 22, i32 noundef 136)
  %config = getelementptr inbounds %struct.tda1004x_state, ptr %1, i32 0, i32 1
  %62 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %config, align 4
  %agc_config = getelementptr inbounds %struct.tda1004x_config, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %agc_config to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %agc_config, align 4
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.133)
  switch i32 %65, label %tda1004x_write_mask.exit.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb18
    i32 2, label %sw.bb21
    i32 3, label %sw.bb24
  ]

tda1004x_write_mask.exit.sw.epilog_crit_edge:     ; preds = %tda1004x_write_mask.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %tda1004x_write_mask.exit
  %call16 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 67, i32 noundef 0)
  %67 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool.not.i88 = icmp eq i32 %67, 0
  br i1 %tobool.not.i88, label %sw.bb.do.end3.i93_crit_edge, label %do.end.i90

sw.bb.do.end3.i93_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i93

do.end.i90:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call.i89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 61, i32 noundef 240, i32 noundef 96) #11
  br label %do.end3.i93

do.end3.i93:                                      ; preds = %do.end.i90, %sw.bb.do.end3.i93_crit_edge
  %call4.i91 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i91)
  %cmp.i92 = icmp slt i32 %call4.i91, 0
  br i1 %cmp.i92, label %do.end3.i93.sw.epilog_crit_edge, label %if.end6.i96

do.end3.i93.sw.epilog_crit_edge:                  ; preds = %do.end3.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i96:                                      ; preds = %do.end3.i93
  call void @__sanitizer_cov_trace_pc() #9
  %and.i94 = and i32 %call4.i91, -241
  %or.i = or i32 %and.i94, 96
  br label %sw.epilog.sink.split

sw.bb18:                                          ; preds = %tda1004x_write_mask.exit
  %call19 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 67, i32 noundef 10)
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool.not.i99 = icmp eq i32 %68, 0
  br i1 %tobool.not.i99, label %sw.bb18.do.end3.i104_crit_edge, label %do.end.i101

sw.bb18.do.end3.i104_crit_edge:                   ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i104

do.end.i101:                                      ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #9
  %call.i100 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 61, i32 noundef 240, i32 noundef 96) #11
  br label %do.end3.i104

do.end3.i104:                                     ; preds = %do.end.i101, %sw.bb18.do.end3.i104_crit_edge
  %call4.i102 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i102)
  %cmp.i103 = icmp slt i32 %call4.i102, 0
  br i1 %cmp.i103, label %do.end3.i104.sw.epilog_crit_edge, label %if.end6.i108

do.end3.i104.sw.epilog_crit_edge:                 ; preds = %do.end3.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i108:                                     ; preds = %do.end3.i104
  call void @__sanitizer_cov_trace_pc() #9
  %and.i105 = and i32 %call4.i102, -241
  %or.i106 = or i32 %and.i105, 96
  br label %sw.epilog.sink.split

sw.bb21:                                          ; preds = %tda1004x_write_mask.exit
  %call22 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 67, i32 noundef 10)
  %69 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool.not.i111 = icmp eq i32 %69, 0
  br i1 %tobool.not.i111, label %sw.bb21.do.end3.i116_crit_edge, label %do.end.i113

sw.bb21.do.end3.i116_crit_edge:                   ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i116

do.end.i113:                                      ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %call.i112 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 61, i32 noundef 240, i32 noundef 0) #11
  br label %do.end3.i116

do.end3.i116:                                     ; preds = %do.end.i113, %sw.bb21.do.end3.i116_crit_edge
  %call4.i114 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i114)
  %cmp.i115 = icmp slt i32 %call4.i114, 0
  br i1 %cmp.i115, label %do.end3.i116.sw.epilog_crit_edge, label %if.end6.i119

do.end3.i116.sw.epilog_crit_edge:                 ; preds = %do.end3.i116
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i119:                                     ; preds = %do.end3.i116
  call void @__sanitizer_cov_trace_pc() #9
  %and.i117 = and i32 %call4.i114, -241
  br label %sw.epilog.sink.split

sw.bb24:                                          ; preds = %tda1004x_write_mask.exit
  %call25 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 67, i32 noundef 2)
  %call26 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 68, i32 noundef 112)
  %call27 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 69, i32 noundef 8)
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.not.i122 = icmp eq i32 %70, 0
  br i1 %tobool.not.i122, label %sw.bb24.do.end3.i127_crit_edge, label %do.end.i124

sw.bb24.do.end3.i127_crit_edge:                   ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i127

do.end.i124:                                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #9
  %call.i123 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 61, i32 noundef 240, i32 noundef 96) #11
  br label %do.end3.i127

do.end3.i127:                                     ; preds = %do.end.i124, %sw.bb24.do.end3.i127_crit_edge
  %call4.i125 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i125)
  %cmp.i126 = icmp slt i32 %call4.i125, 0
  br i1 %cmp.i126, label %do.end3.i127.sw.epilog_crit_edge, label %if.end6.i131

do.end3.i127.sw.epilog_crit_edge:                 ; preds = %do.end3.i127
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end6.i131:                                     ; preds = %do.end3.i127
  call void @__sanitizer_cov_trace_pc() #9
  %and.i128 = and i32 %call4.i125, -241
  %or.i129 = or i32 %and.i128, 96
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %if.end6.i131, %if.end6.i119, %if.end6.i108, %if.end6.i96
  %or.i129.sink = phi i32 [ %or.i129, %if.end6.i131 ], [ %and.i117, %if.end6.i119 ], [ %or.i106, %if.end6.i108 ], [ %or.i, %if.end6.i96 ]
  %call8.i130 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 61, i32 noundef %or.i129.sink) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %do.end3.i127.sw.epilog_crit_edge, %do.end3.i116.sw.epilog_crit_edge, %do.end3.i104.sw.epilog_crit_edge, %do.end3.i93.sw.epilog_crit_edge, %tda1004x_write_mask.exit.sw.epilog_crit_edge
  %71 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %config, align 4
  %ts_mode = getelementptr inbounds %struct.tda1004x_config, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %ts_mode to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ts_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %cmp = icmp eq i32 %74, 0
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool.not.i134 = icmp eq i32 %75, 0
  br i1 %cmp, label %if.then30, label %if.else

if.then30:                                        ; preds = %sw.epilog
  br i1 %tobool.not.i134, label %if.then30.do.end3.i139_crit_edge, label %do.end.i136

if.then30.do.end3.i139_crit_edge:                 ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i139

do.end.i136:                                      ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %call.i135 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 59, i32 noundef 192, i32 noundef 64) #11
  br label %do.end3.i139

do.end3.i139:                                     ; preds = %do.end.i136, %if.then30.do.end3.i139_crit_edge
  %call4.i137 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i137)
  %cmp.i138 = icmp slt i32 %call4.i137, 0
  br i1 %cmp.i138, label %do.end3.i139.tda1004x_write_mask.exit145_crit_edge, label %if.end6.i143

do.end3.i139.tda1004x_write_mask.exit145_crit_edge: ; preds = %do.end3.i139
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit145

if.end6.i143:                                     ; preds = %do.end3.i139
  call void @__sanitizer_cov_trace_pc() #9
  %and.i140 = and i32 %call4.i137, -193
  %or.i141 = or i32 %and.i140, 64
  %call8.i142 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 59, i32 noundef %or.i141) #7
  br label %tda1004x_write_mask.exit145

tda1004x_write_mask.exit145:                      ; preds = %if.end6.i143, %do.end3.i139.tda1004x_write_mask.exit145_crit_edge
  %76 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %config, align 4
  %invert_oclk = getelementptr inbounds %struct.tda1004x_config, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %invert_oclk to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %invert_oclk, align 2
  %conv = zext i8 %79 to i32
  %shl = shl nuw nsw i32 %conv, 7
  %80 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool.not.i146 = icmp eq i32 %80, 0
  br i1 %tobool.not.i146, label %tda1004x_write_mask.exit145.do.end3.i151_crit_edge, label %do.end.i148

tda1004x_write_mask.exit145.do.end3.i151_crit_edge: ; preds = %tda1004x_write_mask.exit145
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i151

do.end.i148:                                      ; preds = %tda1004x_write_mask.exit145
  call void @__sanitizer_cov_trace_pc() #9
  %call.i147 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 58, i32 noundef 128, i32 noundef %shl) #11
  br label %do.end3.i151

do.end3.i151:                                     ; preds = %do.end.i148, %tda1004x_write_mask.exit145.do.end3.i151_crit_edge
  %call4.i149 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i149)
  %cmp.i150 = icmp slt i32 %call4.i149, 0
  br i1 %cmp.i150, label %do.end3.i151.if.end40_crit_edge, label %if.end6.i155

do.end3.i151.if.end40_crit_edge:                  ; preds = %do.end3.i151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end6.i155:                                     ; preds = %do.end3.i151
  call void @__sanitizer_cov_trace_pc() #9
  %and.i152 = and i32 %call4.i149, -129
  %and7.i = and i32 %shl, 128
  %or.i153 = or i32 %and.i152, %and7.i
  %call8.i154 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 58, i32 noundef %or.i153) #7
  br label %if.end40

if.else:                                          ; preds = %sw.epilog
  br i1 %tobool.not.i134, label %if.else.do.end3.i163_crit_edge, label %do.end.i160

if.else.do.end3.i163_crit_edge:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i163

do.end.i160:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call.i159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 59, i32 noundef 192, i32 noundef 128) #11
  br label %do.end3.i163

do.end3.i163:                                     ; preds = %do.end.i160, %if.else.do.end3.i163_crit_edge
  %call4.i161 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i161)
  %cmp.i162 = icmp slt i32 %call4.i161, 0
  br i1 %cmp.i162, label %do.end3.i163.tda1004x_write_mask.exit169_crit_edge, label %if.end6.i167

do.end3.i163.tda1004x_write_mask.exit169_crit_edge: ; preds = %do.end3.i163
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit169

if.end6.i167:                                     ; preds = %do.end3.i163
  call void @__sanitizer_cov_trace_pc() #9
  %and.i164 = and i32 %call4.i161, -193
  %or.i165 = or i32 %and.i164, 128
  %call8.i166 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 59, i32 noundef %or.i165) #7
  br label %tda1004x_write_mask.exit169

tda1004x_write_mask.exit169:                      ; preds = %if.end6.i167, %do.end3.i163.tda1004x_write_mask.exit169_crit_edge
  %81 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %config, align 4
  %invert_oclk36 = getelementptr inbounds %struct.tda1004x_config, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %invert_oclk36 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %invert_oclk36, align 2
  %conv37 = zext i8 %84 to i32
  %shl38 = shl nuw nsw i32 %conv37, 4
  %85 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool.not.i170 = icmp eq i32 %85, 0
  br i1 %tobool.not.i170, label %tda1004x_write_mask.exit169.do.end3.i175_crit_edge, label %do.end.i172

tda1004x_write_mask.exit169.do.end3.i175_crit_edge: ; preds = %tda1004x_write_mask.exit169
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i175

do.end.i172:                                      ; preds = %tda1004x_write_mask.exit169
  call void @__sanitizer_cov_trace_pc() #9
  %call.i171 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 61, i32 noundef 16, i32 noundef %shl38) #11
  br label %do.end3.i175

do.end3.i175:                                     ; preds = %do.end.i172, %tda1004x_write_mask.exit169.do.end3.i175_crit_edge
  %call4.i173 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i173)
  %cmp.i174 = icmp slt i32 %call4.i173, 0
  br i1 %cmp.i174, label %do.end3.i175.if.end40_crit_edge, label %if.end6.i180

do.end3.i175.if.end40_crit_edge:                  ; preds = %do.end3.i175
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

if.end6.i180:                                     ; preds = %do.end3.i175
  call void @__sanitizer_cov_trace_pc() #9
  %and.i176 = and i32 %call4.i173, -17
  %and7.i177 = and i32 %shl38, 240
  %or.i178 = or i32 %and.i176, %and7.i177
  %call8.i179 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 61, i32 noundef %or.i178) #7
  br label %if.end40

if.end40:                                         ; preds = %if.end6.i180, %do.end3.i175.if.end40_crit_edge, %if.end6.i155, %do.end3.i151.if.end40_crit_edge
  %call41 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 55, i32 noundef 56)
  %86 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool.not.i183 = icmp eq i32 %86, 0
  br i1 %tobool.not.i183, label %if.end40.do.end3.i188_crit_edge, label %do.end.i185

if.end40.do.end3.i188_crit_edge:                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end3.i188

do.end.i185:                                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call.i184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54, i32 noundef 59, i32 noundef 62, i32 noundef 56) #11
  br label %do.end3.i188

do.end3.i188:                                     ; preds = %do.end.i185, %if.end40.do.end3.i188_crit_edge
  %call4.i186 = call fastcc i32 @tda1004x_read_byte(ptr noundef %1, i32 noundef 59) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i186)
  %cmp.i187 = icmp slt i32 %call4.i186, 0
  br i1 %cmp.i187, label %do.end3.i188.tda1004x_write_mask.exit194_crit_edge, label %if.end6.i192

do.end3.i188.tda1004x_write_mask.exit194_crit_edge: ; preds = %do.end3.i188
  call void @__sanitizer_cov_trace_pc() #9
  br label %tda1004x_write_mask.exit194

if.end6.i192:                                     ; preds = %do.end3.i188
  call void @__sanitizer_cov_trace_pc() #9
  %and.i189 = and i32 %call4.i186, -63
  %or.i190 = or i32 %and.i189, 56
  %call8.i191 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 59, i32 noundef %or.i190) #7
  br label %tda1004x_write_mask.exit194

tda1004x_write_mask.exit194:                      ; preds = %if.end6.i192, %do.end3.i188.tda1004x_write_mask.exit194_crit_edge
  %call43 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 71, i32 noundef 0)
  %call44 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 72, i32 noundef 255)
  %call45 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 73, i32 noundef 0)
  %call46 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 74, i32 noundef 255)
  %call47 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 70, i32 noundef 18)
  %call48 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 79, i32 noundef 26)
  %call49 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 30, i32 noundef 7)
  %call50 = call fastcc i32 @tda1004x_write_byteI(ptr noundef %1, i32 noundef 31, i32 noundef 192)
  br label %cleanup

cleanup:                                          ; preds = %tda1004x_write_mask.exit194, %do.end9
  %retval.0 = phi i32 [ -5, %do.end9 ], [ 0, %tda1004x_write_mask.exit194 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 130)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(2) }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !16, !17, !18, !19, !21, !22, !23, !25, !26, !28, !29, !31, !33, !35, !37, !38, !40, !42, !44, !46, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !61, !62, !63, !64, !66, !67, !68, !70, !71, !72, !73, !74, !76, !77, !78, !80, !81, !82, !84, !85, !86, !87, !89, !90, !91, !93, !94, !95, !97, !99, !101, !103, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !131, !132, !134, !135, !136, !138, !140, !142, !144, !146, !148, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !164, !166, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !202, !204, !205, !206, !208, !209, !211, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !240, !242, !243, !244, !246, !247, !248, !250, !251, !252}
!llvm.module.flags = !{!253, !254, !255, !256, !257, !258, !259, !260}
!llvm.ident = !{!261}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1276, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tda10045_attach._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tda10045_attach._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1288, i32 3}
!8 = !{ptr @tda10045_attach._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @tda10045_attach._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1294, i32 3}
!12 = !{ptr @tda10045_attach._entry.6, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tda10045_attach._entry_ptr.8, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1346, i32 3}
!16 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tda10046_attach._entry, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @tda10046_attach._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1358, i32 3}
!21 = !{ptr @tda10046_attach._entry.11, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @tda10046_attach._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @tda10046_attach._entry.14, !24, !"_entry", i1 false, i1 false}
!24 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1363, i32 3}
!25 = !{ptr @tda10046_attach._entry_ptr.15, !24, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__param_debug, !27, !"__param_debug", i1 false, i1 false}
!27 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1374, i32 1}
!28 = !{ptr @__UNIQUE_ID_debugtype290, !27, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_debug291, !30, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!30 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1375, i32 1}
!31 = !{ptr @__UNIQUE_ID_description292, !32, !"__UNIQUE_ID_description292", i1 false, i1 false}
!32 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1377, i32 1}
!33 = !{ptr @__UNIQUE_ID_author293, !34, !"__UNIQUE_ID_author293", i1 false, i1 false}
!34 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1378, i32 1}
!35 = !{ptr @__UNIQUE_ID_file294, !36, !"__UNIQUE_ID_file294", i1 false, i1 false}
!36 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1379, i32 1}
!37 = !{ptr @__UNIQUE_ID_license295, !36, !"__UNIQUE_ID_license295", i1 false, i1 false}
!38 = !{ptr @__ksymtab_tda10045_attach, !39, !"__ksymtab_tda10045_attach", i1 false, i1 false}
!39 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1381, i32 1}
!40 = !{ptr @__ksymtab_tda10046_attach, !41, !"__ksymtab_tda10046_attach", i1 false, i1 false}
!41 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1382, i32 1}
!42 = !{ptr @debug, !43, !"debug", i1 false, i1 false}
!43 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 29, i32 12}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 143, i32 2}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @tda1004x_read_byte._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @tda1004x_read_byte._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 150, i32 3}
!51 = !{ptr @tda1004x_read_byte._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @tda1004x_read_byte._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 155, i32 2}
!55 = !{ptr @tda1004x_read_byte._entry.21, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @tda1004x_read_byte._entry_ptr.23, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @tda10045_ops, !58, !"tda10045_ops", i1 false, i1 false}
!58 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1235, i32 38}
!59 = !{ptr @.str.24, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 606, i32 2}
!61 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @tda10045_init._entry, !60, !"_entry", i1 false, i1 false}
!63 = !{ptr @tda10045_init._entry_ptr, !60, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 609, i32 3}
!66 = !{ptr @tda10045_init._entry.26, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @tda10045_init._entry_ptr.28, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 389, i32 2}
!70 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @tda10045_fwupload._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @tda10045_fwupload._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.31, !69, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 392, i32 3}
!76 = !{ptr @tda10045_fwupload._entry.32, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @tda10045_fwupload._entry_ptr.34, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 409, i32 2}
!80 = !{ptr @tda10045_fwupload._entry.35, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @tda10045_fwupload._entry_ptr.37, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.38, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 356, i32 5}
!84 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @tda1004x_check_upload_ok._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @tda1004x_check_upload_ok._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.41, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 371, i32 3}
!89 = !{ptr @tda1004x_check_upload_ok._entry.40, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @tda1004x_check_upload_ok._entry_ptr.42, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 374, i32 2}
!93 = !{ptr @tda1004x_check_upload_ok._entry.43, !92, !"_entry", i1 false, i1 false}
!94 = !{ptr @tda1004x_check_upload_ok._entry_ptr.45, !92, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @tda10045h_set_bandwidth.bandwidth_6mhz, !96, !"bandwidth_6mhz", i1 false, i1 false}
!96 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 216, i32 12}
!97 = !{ptr @tda10045h_set_bandwidth.bandwidth_7mhz, !98, !"bandwidth_7mhz", i1 false, i1 false}
!98 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 217, i32 12}
!99 = !{ptr @tda10045h_set_bandwidth.bandwidth_8mhz, !100, !"bandwidth_8mhz", i1 false, i1 false}
!100 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 218, i32 12}
!101 = !{ptr @.str.46, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 184, i32 2}
!103 = !{ptr @.str.47, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @tda1004x_write_buf._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @tda1004x_write_buf._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.48, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 331, i32 4}
!108 = !{ptr @.str.49, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @tda1004x_do_upload._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @tda1004x_do_upload._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 337, i32 3}
!113 = !{ptr @tda1004x_do_upload._entry.50, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @tda1004x_do_upload._entry_ptr.52, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 163, i32 2}
!117 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @tda1004x_write_mask._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @tda1004x_write_mask._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.55, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 121, i32 2}
!122 = !{ptr @.str.56, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @tda1004x_write_byteI._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @tda1004x_write_byteI._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 127, i32 3}
!127 = !{ptr @tda1004x_write_byteI._entry.57, !126, !"_entry", i1 false, i1 false}
!128 = !{ptr @tda1004x_write_byteI._entry_ptr.59, !126, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @tda1004x_write_byteI._entry.60, !130, !"_entry", i1 false, i1 false}
!130 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 130, i32 2}
!131 = !{ptr @tda1004x_write_byteI._entry_ptr.61, !130, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 698, i32 2}
!134 = !{ptr @tda1004x_set_fe._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @tda1004x_set_fe._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @tda10046h_set_bandwidth.bandwidth_6mhz_53M, !137, !"bandwidth_6mhz_53M", i1 false, i1 false}
!137 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 245, i32 12}
!138 = !{ptr @tda10046h_set_bandwidth.bandwidth_7mhz_53M, !139, !"bandwidth_7mhz_53M", i1 false, i1 false}
!139 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 246, i32 12}
!140 = !{ptr @tda10046h_set_bandwidth.bandwidth_8mhz_53M, !141, !"bandwidth_8mhz_53M", i1 false, i1 false}
!141 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 247, i32 12}
!142 = !{ptr @tda10046h_set_bandwidth.bandwidth_6mhz_48M, !143, !"bandwidth_6mhz_48M", i1 false, i1 false}
!143 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 249, i32 12}
!144 = !{ptr @tda10046h_set_bandwidth.bandwidth_7mhz_48M, !145, !"bandwidth_7mhz_48M", i1 false, i1 false}
!145 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 250, i32 12}
!146 = !{ptr @tda10046h_set_bandwidth.bandwidth_8mhz_48M, !147, !"bandwidth_8mhz_48M", i1 false, i1 false}
!147 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 251, i32 12}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 895, i32 2}
!150 = !{ptr @tda1004x_get_fe._entry, !149, !"_entry", i1 false, i1 false}
!151 = !{ptr @tda1004x_get_fe._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1012, i32 2}
!154 = !{ptr @tda1004x_read_status._entry, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @tda1004x_read_status._entry_ptr, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.66, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1071, i32 2}
!158 = !{ptr @tda1004x_read_status._entry.65, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @tda1004x_read_status._entry_ptr.67, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.68, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1164, i32 2}
!162 = !{ptr @tda1004x_read_ber._entry, !161, !"_entry", i1 false, i1 false}
!163 = !{ptr @tda1004x_read_ber._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!164 = !{ptr @.str.70, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1178, i32 2}
!166 = !{ptr @tda1004x_read_ber._entry.69, !165, !"_entry", i1 false, i1 false}
!167 = !{ptr @tda1004x_read_ber._entry_ptr.71, !165, !"_entry_ptr", i1 false, i1 false}
!168 = !{ptr @.str.72, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1081, i32 2}
!170 = !{ptr @tda1004x_read_signal_strength._entry, !169, !"_entry", i1 false, i1 false}
!171 = !{ptr @tda1004x_read_signal_strength._entry_ptr, !169, !"_entry_ptr", i1 false, i1 false}
!172 = !{ptr @.str.74, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1100, i32 2}
!174 = !{ptr @tda1004x_read_signal_strength._entry.73, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @tda1004x_read_signal_strength._entry_ptr.75, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.76, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1109, i32 2}
!178 = !{ptr @tda1004x_read_snr._entry, !177, !"_entry", i1 false, i1 false}
!179 = !{ptr @tda1004x_read_snr._entry_ptr, !177, !"_entry_ptr", i1 false, i1 false}
!180 = !{ptr @.str.78, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1118, i32 2}
!182 = !{ptr @tda1004x_read_snr._entry.77, !181, !"_entry", i1 false, i1 false}
!183 = !{ptr @tda1004x_read_snr._entry_ptr.79, !181, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.80, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1129, i32 2}
!186 = !{ptr @tda1004x_read_ucblocks._entry, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @tda1004x_read_ucblocks._entry_ptr, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.82, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1155, i32 2}
!190 = !{ptr @tda1004x_read_ucblocks._entry.81, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @tda1004x_read_ucblocks._entry_ptr.83, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.84, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 199, i32 2}
!194 = !{ptr @tda1004x_enable_tuner_i2c._entry, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @tda1004x_enable_tuner_i2c._entry_ptr, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.85, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 208, i32 2}
!198 = !{ptr @tda1004x_disable_tuner_i2c._entry, !197, !"_entry", i1 false, i1 false}
!199 = !{ptr @tda1004x_disable_tuner_i2c._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!200 = !{ptr @tda10046_ops, !201, !"tda10046_ops", i1 false, i1 false}
!201 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 1305, i32 38}
!202 = !{ptr @.str.86, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 636, i32 2}
!204 = !{ptr @tda10046_init._entry, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @tda10046_init._entry_ptr, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @tda10046_init._entry.87, !207, !"_entry", i1 false, i1 false}
!207 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 639, i32 3}
!208 = !{ptr @tda10046_init._entry_ptr.88, !207, !"_entry_ptr", i1 false, i1 false}
!209 = !{ptr @.str.89, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 482, i32 3}
!211 = !{ptr @.str.90, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @tda10046_fwupload._entry, !210, !"_entry", i1 false, i1 false}
!213 = !{ptr @tda10046_fwupload._entry_ptr, !210, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.92, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 516, i32 2}
!216 = !{ptr @tda10046_fwupload._entry.91, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @tda10046_fwupload._entry_ptr.93, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.95, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 529, i32 3}
!220 = !{ptr @tda10046_fwupload._entry.94, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @tda10046_fwupload._entry_ptr.96, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.97, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 530, i32 50}
!224 = !{ptr @tda10046_fwupload._entry.98, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 535, i32 5}
!226 = !{ptr @tda10046_fwupload._entry_ptr.99, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.101, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 538, i32 5}
!229 = !{ptr @tda10046_fwupload._entry.100, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @tda10046_fwupload._entry_ptr.102, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.104, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 543, i32 3}
!233 = !{ptr @tda10046_fwupload._entry.103, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @tda10046_fwupload._entry_ptr.105, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.106, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 431, i32 3}
!237 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!238 = !{ptr @tda10046_init_plls._entry, !236, !"_entry", i1 false, i1 false}
!239 = !{ptr @tda10046_init_plls._entry_ptr, !236, !"_entry_ptr", i1 false, i1 false}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 434, i32 3}
!242 = !{ptr @tda10046_init_plls._entry.108, !241, !"_entry", i1 false, i1 false}
!243 = !{ptr @tda10046_init_plls._entry_ptr.110, !241, !"_entry_ptr", i1 false, i1 false}
!244 = !{ptr @.str.112, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 438, i32 3}
!246 = !{ptr @tda10046_init_plls._entry.111, !245, !"_entry", i1 false, i1 false}
!247 = !{ptr @tda10046_init_plls._entry_ptr.113, !245, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.115, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/media/dvb-frontends/tda1004x.c", i32 441, i32 3}
!250 = !{ptr @tda10046_init_plls._entry.114, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @tda10046_init_plls._entry_ptr.116, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @__param_str_debug, !27, !"__param_str_debug", i1 false, i1 false}
!253 = !{i32 1, !"wchar_size", i32 2}
!254 = !{i32 1, !"min_enum_size", i32 4}
!255 = !{i32 8, !"branch-target-enforcement", i32 0}
!256 = !{i32 8, !"sign-return-address", i32 0}
!257 = !{i32 8, !"sign-return-address-all", i32 0}
!258 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!259 = !{i32 7, !"uwtable", i32 1}
!260 = !{i32 7, !"frame-pointer", i32 2}
!261 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!262 = !{!"auto-init"}
