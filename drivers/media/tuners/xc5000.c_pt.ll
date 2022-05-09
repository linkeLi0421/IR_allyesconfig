; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/xc5000.c_pt.bc'
source_filename = "../drivers/media/tuners/xc5000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xc5000_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_xc5000_attach\09\09\09\09"
module asm "\09.long\09__crc_xc5000_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xc5000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22xc5000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_xc5000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_tuner_ops = type { %struct.dvb_tuner_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_tuner_info = type { [128 x i8], i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.xc5000_fw_cfg = type { ptr, i16, i16, i8, i8 }
%struct.XC_TV_STANDARD = type { ptr, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
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
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.xc5000_priv = type { %struct.tuner_i2c_props, %struct.list_head, i32, i16, i32, i32, i32, i8, i32, i8, i8, i16, i32, i16, i8, i8, ptr, %struct.delayed_work, ptr }
%struct.dvb_frontend = type { %struct.kref, %struct.dvb_frontend_ops, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dtv_frontend_properties, ptr, i32, i32 }
%struct.dvb_frontend_ops = type { %struct.dvb_frontend_internal_info, [8 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.dvb_tuner_ops, %struct.analog_demod_ops }
%struct.dvb_frontend_internal_info = type { [128 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.analog_demod_ops = type { %struct.analog_demod_info, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.analog_demod_info = type { ptr }
%struct.dtv_frontend_properties = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i8, [3 x %struct.anon.84], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats, %struct.dtv_fe_stats }
%struct.anon.84 = type { i8, i32, i32, i8 }
%struct.dtv_fe_stats = type { i8, [4 x %struct.dtv_stats] }
%struct.dtv_stats = type <{ i8, %union.anon.85 }>
%union.anon.85 = type { i64 }
%struct.xc5000_config = type { i8, i32, i8, i16, i16, i32 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_debug = internal constant [13 x i8] c"xc5000.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"xc5000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [55 x i8] c"xc5000.parm=debug:Turn on/off debugging (default:off).\00", section ".modinfo", align 1
@__param_str_no_poweroff = internal constant [19 x i8] c"xc5000.no_poweroff\00", align 1
@no_poweroff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_poweroff = internal constant %struct.kernel_param { ptr @__param_str_no_poweroff, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @no_poweroff } }, section "__param", align 4
@__UNIQUE_ID_no_powerofftype292 = internal constant [32 x i8] c"xc5000.parmtype=no_poweroff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_poweroff293 = internal constant [193 x i8] c"xc5000.parm=no_poweroff:0 (default) powers device off when not used.\0A\09\091 keep device energized and with tuner ready all the times.\0A\09\09Faster, but consumes more power and keeps the device hotter\00", section ".modinfo", align 1
@xc5000_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1374, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: %s(%d-%04x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/xc5000.c\00", [34 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr = internal global ptr @xc5000_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xc5000\00", [25 x i8] zeroinitializer }, align 32
@xc5000_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.27, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xc5000_list_mutex, i64 52), ptr getelementptr (i8, ptr @xc5000_list_mutex, i64 52) }, ptr @xc5000_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.28, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@xc5000_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr.6 = internal global ptr @xc5000_attach._entry.4, section ".printk_index", align 4
@xc5000_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr.9 = internal global ptr @xc5000_attach._entry.7, section ".printk_index", align 4
@xc5000_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"(work_completion)(&(&priv->timer_sleep)->work)\00", [49 x i8] zeroinitializer }, align 32
@xc5000_attach.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"&(&priv->timer_sleep)->timer\00", [35 x i8] zeroinitializer }, align 32
@xc5000_attach._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1433, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016xc5000: Successfully identified at address 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr.15 = internal global ptr @xc5000_attach._entry.13, section ".printk_index", align 4
@xc5000_attach._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 1435, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016xc5000: Firmware has been loaded previously\0A\00", [49 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr.18 = internal global ptr @xc5000_attach._entry.16, section ".printk_index", align 4
@xc5000_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 1440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr.20 = internal global ptr @xc5000_attach._entry.19, section ".printk_index", align 4
@xc5000_attach._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.1, ptr @.str.2, i32 1442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016xc5000: Firmware has not been loaded previously\0A\00", [45 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr.23 = internal global ptr @xc5000_attach._entry.21, section ".printk_index", align 4
@xc5000_attach._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.1, ptr @.str.2, i32 1447, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013xc5000: Device not found at addr 0x%02x (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@xc5000_attach._entry_ptr.26 = internal global ptr @xc5000_attach._entry.24, section ".printk_index", align 4
@xc5000_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Xceive XC5000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1023000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @xc5000_release, ptr @xc5000_init, ptr @xc5000_sleep, ptr @xc5000_suspend, ptr @xc5000_resume, ptr @xc5000_set_digital_params, ptr @xc5000_set_analog_params, ptr @xc5000_set_config, ptr @xc5000_get_frequency, ptr @xc5000_get_bandwidth, ptr @xc5000_get_if_frequency, ptr @xc5000_get_status, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_xc5000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_xc5000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_xc5000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xc5000_attach to i32), ptr @__kstrtab_xc5000_attach, ptr @__kstrtabns_xc5000_attach }, section "___ksymtab+xc5000_attach", align 4
@__UNIQUE_ID_author294 = internal constant [26 x i8] c"xc5000.author=Steven Toth\00", section ".modinfo", align 1
@__UNIQUE_ID_description295 = internal constant [54 x i8] c"xc5000.description=Xceive xc5000 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file296 = internal constant [40 x i8] c"xc5000.file=drivers/media/tuners/xc5000\00", section ".modinfo", align 1
@__UNIQUE_ID_license297 = internal constant [19 x i8] c"xc5000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware298 = internal constant [41 x i8] c"xc5000.firmware=dvb-fe-xc5000-1.6.114.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware299 = internal constant [43 x i8] c"xc5000.firmware=dvb-fe-xc5000c-4.1.30.7.fw\00", section ".modinfo", align 1
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xc5000_list_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc5000_list_mutex\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xc5000_do_timer_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xc5000_do_timer_sleep\00", [42 x i8] zeroinitializer }, align 32
@xc5000_do_timer_sleep._entry_ptr = internal global ptr @xc5000_do_timer_sleep._entry, section ".printk_index", align 4
@xc5000_do_timer_sleep._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.2, i32 1232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013xc5000: %s() unable to shutdown tuner\0A\00", [55 x i8] zeroinitializer }, align 32
@xc5000_do_timer_sleep._entry_ptr.33 = internal global ptr @xc5000_do_timer_sleep._entry.31, section ".printk_index", align 4
@xc5000_tuner_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.34, ptr @.str.2, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xc5000_tuner_reset\00", [45 x i8] zeroinitializer }, align 32
@xc5000_tuner_reset._entry_ptr = internal global ptr @xc5000_tuner_reset._entry, section ".printk_index", align 4
@xc5000_tuner_reset._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.2, i32 307, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013xc5000: reset failed\0A\00", [40 x i8] zeroinitializer }, align 32
@xc5000_tuner_reset._entry_ptr.37 = internal global ptr @xc5000_tuner_reset._entry.35, section ".printk_index", align 4
@xc5000_tuner_reset._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.34, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013xc5000: no tuner reset callback function, fatal\0A\00", [45 x i8] zeroinitializer }, align 32
@xc5000_tuner_reset._entry_ptr.40 = internal global ptr @xc5000_tuner_reset._entry.38, section ".printk_index", align 4
@xc5000_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\014xc5000: I2C read failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc5000_readreg\00", [17 x i8] zeroinitializer }, align 32
@xc5000_readreg._entry_ptr = internal global ptr @xc5000_readreg._entry, section ".printk_index", align 4
@xc5000_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.43, ptr @.str.2, i32 1286, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xc5000_init\00", [20 x i8] zeroinitializer }, align 32
@xc5000_init._entry_ptr = internal global ptr @xc5000_init._entry, section ".printk_index", align 4
@xc5000_init._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.43, ptr @.str.2, i32 1289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013xc5000: Unable to initialise tuner\0A\00", [58 x i8] zeroinitializer }, align 32
@xc5000_init._entry_ptr.46 = internal global ptr @xc5000_init._entry.44, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.2, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013xc5000: Upload failed. rc %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xc_load_fw_and_init_tuner\00", [38 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr = internal global ptr @xc_load_fw_and_init_tuner._entry, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: firmware read %zu bytes.\0A\00", [32 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.51 = internal global ptr @xc_load_fw_and_init_tuner._entry.49, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.48, ptr @.str.2, i32 1123, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013xc5000: Firmware file with incorrect size\0A\00", [51 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.54 = internal global ptr @xc_load_fw_and_init_tuner._entry.52, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.48, ptr @.str.2, i32 1134, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\01c - retrying to upload firmware.\0A\00", [61 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.57 = internal global ptr @xc_load_fw_and_init_tuner._entry.55, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.48, ptr @.str.2, i32 1145, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013xc5000: FW checksum reading failed.\00", [58 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.60 = internal global ptr @xc_load_fw_and_init_tuner._entry.58, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.48, ptr @.str.2, i32 1152, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013xc5000: FW checksum failed = 0x%04x.\00", [57 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.63 = internal global ptr @xc_load_fw_and_init_tuner._entry.61, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.48, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013xc5000: Can't request self-calibration.\00", [54 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.66 = internal global ptr @xc_load_fw_and_init_tuner._entry.64, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.48, ptr @.str.2, i32 1174, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013xc5000: FW failed reading init status.\00", [55 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.69 = internal global ptr @xc_load_fw_and_init_tuner._entry.67, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.48, ptr @.str.2, i32 1181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013xc5000: FW init status failed = 0x%04x.\00", [54 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.72 = internal global ptr @xc_load_fw_and_init_tuner._entry.70, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.48, ptr @.str.2, i32 1194, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013xc5000: PLL not running after fwload.\00", [56 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.75 = internal global ptr @xc_load_fw_and_init_tuner._entry.73, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.48, ptr @.str.2, i32 1203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013xc5000: can't set to cable mode.\00", [61 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.78 = internal global ptr @xc_load_fw_and_init_tuner._entry.76, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.48, ptr @.str.2, i32 1209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016xc5000: Firmware %s loaded and running.\0A\00", [53 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.81 = internal global ptr @xc_load_fw_and_init_tuner._entry.79, section ".printk_index", align 4
@xc_load_fw_and_init_tuner._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.48, ptr @.str.2, i32 1211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\01c - too many retries. Giving up\0A\00", [62 x i8] zeroinitializer }, align 32
@xc_load_fw_and_init_tuner._entry_ptr.84 = internal global ptr @xc_load_fw_and_init_tuner._entry.82, section ".printk_index", align 4
@xc5000a_1_6_114 = internal constant { %struct.xc5000_fw_cfg, [20 x i8] } { %struct.xc5000_fw_cfg { ptr @.str.85, i16 12401, i16 -32660, i8 0, i8 0 }, [20 x i8] zeroinitializer }, align 32
@xc5000c_41_024_5 = internal constant { %struct.xc5000_fw_cfg, [20 x i8] } { %struct.xc5000_fw_cfg { ptr @.str.86, i16 16497, i16 19, i8 1, i8 1 }, [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dvb-fe-xc5000-1.6.114.fw\00", [39 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dvb-fe-xc5000c-4.1.30.7.fw\00", [37 x i8] zeroinitializer }, align 32
@xc5000_is_firmware_loaded._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 829, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s() returns id = 0x%x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xc5000_is_firmware_loaded\00", [38 x i8] zeroinitializer }, align 32
@xc5000_is_firmware_loaded._entry_ptr = internal global ptr @xc5000_is_firmware_loaded._entry, section ".printk_index", align 4
@xc5000_is_firmware_loaded._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 831, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: %s() returns error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@xc5000_is_firmware_loaded._entry_ptr.91 = internal global ptr @xc5000_is_firmware_loaded._entry.89, section ".printk_index", align 4
@xc5000_fwupload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: waiting for firmware upload (%s)...\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xc5000_fwupload\00", [16 x i8] zeroinitializer }, align 32
@xc5000_fwupload._entry_ptr = internal global ptr @xc5000_fwupload._entry, section ".printk_index", align 4
@xc5000_fwupload._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.93, ptr @.str.2, i32 612, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: firmware uploading...\0A\00", [35 x i8] zeroinitializer }, align 32
@xc5000_fwupload._entry_ptr.96 = internal global ptr @xc5000_fwupload._entry.94, section ".printk_index", align 4
@xc5000_fwupload._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.93, ptr @.str.2, i32 616, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: Firmware upload complete...\0A\00", [61 x i8] zeroinitializer }, align 32
@xc5000_fwupload._entry_ptr.99 = internal global ptr @xc5000_fwupload._entry.97, section ".printk_index", align 4
@xc5000_fwupload._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.93, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013xc5000: firmware upload failed...\0A\00", [59 x i8] zeroinitializer }, align 32
@xc5000_fwupload._entry_ptr.102 = internal global ptr @xc5000_fwupload._entry.100, section ".printk_index", align 4
@xc_send_i2c_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.103, ptr @.str.104, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013xc5000: I2C write failed (len=%i)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xc_send_i2c_data\00", [47 x i8] zeroinitializer }, align 32
@xc_send_i2c_data._entry_ptr = internal global ptr @xc_send_i2c_data._entry, section ".printk_index", align 4
@xc_initialize._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.105, ptr @.str.2, i32 405, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc_initialize\00", [18 x i8] zeroinitializer }, align 32
@xc_initialize._entry_ptr = internal global ptr @xc_initialize._entry, section ".printk_index", align 4
@xc_debug_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.2, i32 645, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: *** ADC envelope (0-1023) = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc_debug_dump\00", [18 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr = internal global ptr @xc_debug_dump._entry, section ".printk_index", align 4
@xc_debug_dump._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.107, ptr @.str.2, i32 648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: *** Frequency error = %d Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.110 = internal global ptr @xc_debug_dump._entry.108, section ".printk_index", align 4
@xc_debug_dump._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.107, ptr @.str.2, i32 652, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: *** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.113 = internal global ptr @xc_debug_dump._entry.111, section ".printk_index", align 4
@xc_debug_dump._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.107, ptr @.str.2, i32 659, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: *** HW: V%d.%d, FW: V %d.%d.%d\0A\00", [58 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.116 = internal global ptr @xc_debug_dump._entry.114, section ".printk_index", align 4
@xc_debug_dump._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.107, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: *** Horizontal sync frequency = %d Hz\0A\00", [51 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.119 = internal global ptr @xc_debug_dump._entry.117, section ".printk_index", align 4
@xc_debug_dump._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.107, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: *** Frame lines = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.122 = internal global ptr @xc_debug_dump._entry.120, section ".printk_index", align 4
@xc_debug_dump._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.107, ptr @.str.2, i32 668, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: *** Quality (0:<8dB, 7:>56dB) = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.125 = internal global ptr @xc_debug_dump._entry.123, section ".printk_index", align 4
@xc_debug_dump._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.107, ptr @.str.2, i32 671, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s: *** Unweighted analog SNR = %d dB\0A\00", [55 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.128 = internal global ptr @xc_debug_dump._entry.126, section ".printk_index", align 4
@xc_debug_dump._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.107, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: *** Total gain = %d.%d dB\0A\00", [63 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.131 = internal global ptr @xc_debug_dump._entry.129, section ".printk_index", align 4
@xc_debug_dump._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.107, ptr @.str.2, i32 679, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016%s: *** PLL lock status = 0x%04x\0A\00", [60 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.134 = internal global ptr @xc_debug_dump._entry.132, section ".printk_index", align 4
@xc5000_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.135, ptr @.str.2, i32 1239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xc5000_sleep\00", [19 x i8] zeroinitializer }, align 32
@xc5000_sleep._entry_ptr = internal global ptr @xc5000_sleep._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@xc5000_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.136, ptr @.str.2, i32 1256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc5000_suspend\00", [17 x i8] zeroinitializer }, align 32
@xc5000_suspend._entry_ptr = internal global ptr @xc5000_suspend._entry, section ".printk_index", align 4
@xc5000_suspend._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.136, ptr @.str.2, i32 1264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc5000_suspend._entry_ptr.138 = internal global ptr @xc5000_suspend._entry.137, section ".printk_index", align 4
@xc5000_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.139, ptr @.str.2, i32 1273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc5000_resume\00", [18 x i8] zeroinitializer }, align 32
@xc5000_resume._entry_ptr = internal global ptr @xc5000_resume._entry, section ".printk_index", align 4
@xc5000_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.141, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: Unable to load firmware and init tuner\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc5000_set_params\00", [46 x i8] zeroinitializer }, align 32
@xc5000_set_params._entry_ptr = internal global ptr @xc5000_set_params._entry, section ".printk_index", align 4
@xc5000_set_radio_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.143, ptr @.str.2, i32 982, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: %s() unknown radio input %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"xc5000_set_radio_freq\00", [42 x i8] zeroinitializer }, align 32
@xc5000_set_radio_freq._entry_ptr = internal global ptr @xc5000_set_radio_freq._entry, section ".printk_index", align 4
@xc5000_standard = internal constant { [24 x %struct.XC_TV_STANDARD], [32 x i8] } { [24 x %struct.XC_TV_STANDARD] [%struct.XC_TV_STANDARD { ptr @.str.157, i16 1024, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.158, i16 1536, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.159, i16 1088, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.160, i16 1144, i16 -32736 }, %struct.XC_TV_STANDARD { ptr @.str.161, i16 2560, i16 -32695 }, %struct.XC_TV_STANDARD { ptr @.str.162, i16 3076, i16 -32695 }, %struct.XC_TV_STANDARD { ptr @.str.163, i16 2168, i16 -32679 }, %struct.XC_TV_STANDARD { ptr @.str.164, i16 4224, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.165, i16 3704, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.166, i16 5632, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.167, i16 3712, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.168, i16 5240, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.169, i16 4608, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.170, i16 3584, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.171, i16 5240, i16 -32759 }, %struct.XC_TV_STANDARD { ptr @.str.172, i16 -29054, i16 9 }, %struct.XC_TV_STANDARD { ptr @.str.173, i16 -29054, i16 16393 }, %struct.XC_TV_STANDARD { ptr @.str.174, i16 192, i16 -32766 }, %struct.XC_TV_STANDARD { ptr @.str.175, i16 192, i16 -32757 }, %struct.XC_TV_STANDARD { ptr @.str.176, i16 192, i16 -32741 }, %struct.XC_TV_STANDARD { ptr @.str.177, i16 192, i16 -32761 }, %struct.XC_TV_STANDARD { ptr @.str.178, i16 -26622, i16 -28670 }, %struct.XC_TV_STANDARD { ptr @.str.179, i16 520, i16 -28670 }, %struct.XC_TV_STANDARD { ptr @.str.180, i16 632, i16 -28670 }], [32 x i8] zeroinitializer }, align 32
@xc5000_set_radio_freq._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.143, ptr @.str.2, i32 990, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013xc5000: xc_set_tv_standard failed\0A\00", [59 x i8] zeroinitializer }, align 32
@xc5000_set_radio_freq._entry_ptr.146 = internal global ptr @xc5000_set_radio_freq._entry.144, section ".printk_index", align 4
@xc5000_set_radio_freq._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.143, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013xc5000: xc_set_signal_source(%d) failed\0A\00", [53 x i8] zeroinitializer }, align 32
@xc5000_set_radio_freq._entry_ptr.149 = internal global ptr @xc5000_set_radio_freq._entry.147, section ".printk_index", align 4
@xc_set_tv_standard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: %s(0x%04x,0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xc_set_tv_standard\00", [45 x i8] zeroinitializer }, align 32
@xc_set_tv_standard._entry_ptr = internal global ptr @xc_set_tv_standard._entry, section ".printk_index", align 4
@xc_set_tv_standard._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 417, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: %s() Standard = %s\0A\00", [38 x i8] zeroinitializer }, align 32
@xc_set_tv_standard._entry_ptr.154 = internal global ptr @xc_set_tv_standard._entry.152, section ".printk_index", align 4
@xc_set_tv_standard._entry.155 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.151, ptr @.str.2, i32 421, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc_set_tv_standard._entry_ptr.156 = internal global ptr @xc_set_tv_standard._entry.155, section ".printk_index", align 4
@.str.157 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M/N-NTSC/PAL-BTSC\00", [46 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"M/N-NTSC/PAL-A2\00", [16 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M/N-NTSC/PAL-EIAJ\00", [46 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M/N-NTSC/PAL-Mono\00", [46 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"B/G-PAL-A2\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"B/G-PAL-NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"B/G-PAL-MONO\00", [19 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I-PAL-NICAM\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I-PAL-NICAM-MONO\00", [47 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K-PAL-A2\00", [21 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"D/K-PAL-NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"D/K-PAL-MONO\00", [19 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"D/K-SECAM-A2 DK1\00", [47 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"D/K-SECAM-A2 L/DK3\00", [45 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"D/K-SECAM-A2 MONO\00", [46 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"L-SECAM-NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"L'-SECAM-NICAM\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTV6\00", [27 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTV8\00", [27 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DTV7/8\00", [25 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTV7\00", [27 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FM Radio-INPUT2\00", [16 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FM Radio-INPUT1\00", [16 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"FM Radio-INPUT1_MONO\00", [43 x i8] zeroinitializer }, align 32
@xc_set_signal_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.182, ptr @.str.2, i32 434, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: %s(%d) Source = %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xc_set_signal_source\00", [43 x i8] zeroinitializer }, align 32
@xc_set_signal_source._entry_ptr = internal global ptr @xc_set_signal_source._entry, section ".printk_index", align 4
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ANTENNA\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CABLE\00", [26 x i8] zeroinitializer }, align 32
@xc_set_signal_source._entry.185 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.186, ptr @.str.182, ptr @.str.2, i32 440, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s(), Invalid mode, defaulting to CABLE\00", [54 x i8] zeroinitializer }, align 32
@xc_set_signal_source._entry_ptr.187 = internal global ptr @xc_set_signal_source._entry.185, section ".printk_index", align 4
@xc_tune_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.189, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016%s: %s(%u)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xc_tune_channel\00", [16 x i8] zeroinitializer }, align 32
@xc_tune_channel._entry_ptr = internal global ptr @xc_tune_channel._entry, section ".printk_index", align 4
@xc_set_rf_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.188, ptr @.str.190, ptr @.str.2, i32 451, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xc_set_rf_frequency\00", [44 x i8] zeroinitializer }, align 32
@xc_set_rf_frequency._entry_ptr = internal global ptr @xc_set_rf_frequency._entry, section ".printk_index", align 4
@xc5000_set_tv_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.191, ptr @.str.2, i32 908, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xc5000_set_tv_freq\00", [45 x i8] zeroinitializer }, align 32
@xc5000_set_tv_freq._entry_ptr = internal global ptr @xc5000_set_tv_freq._entry, section ".printk_index", align 4
@xc5000_set_tv_freq._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.191, ptr @.str.2, i32 916, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc5000_set_tv_freq._entry_ptr.193 = internal global ptr @xc5000_set_tv_freq._entry.192, section ".printk_index", align 4
@xc5000_set_tv_freq._entry.194 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.195, ptr @.str.191, ptr @.str.2, i32 936, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\016%s: xc5000: PLL not locked (0x%x).  Reloading...\0A\00", [44 x i8] zeroinitializer }, align 32
@xc5000_set_tv_freq._entry_ptr.196 = internal global ptr @xc5000_set_tv_freq._entry.194, section ".printk_index", align 4
@xc5000_set_tv_freq._entry.197 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.198, ptr @.str.191, ptr @.str.2, i32 938, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013xc5000: Unable to reload fw\0A\00", [33 x i8] zeroinitializer }, align 32
@xc5000_set_tv_freq._entry_ptr.199 = internal global ptr @xc5000_set_tv_freq._entry.197, section ".printk_index", align 4
@xc5000_tune_digital._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.200, ptr @.str.2, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xc5000_tune_digital\00", [44 x i8] zeroinitializer }, align 32
@xc5000_tune_digital._entry_ptr = internal global ptr @xc5000_tune_digital._entry, section ".printk_index", align 4
@xc5000_tune_digital._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.200, ptr @.str.2, i32 701, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc5000_tune_digital._entry_ptr.202 = internal global ptr @xc5000_tune_digital._entry.201, section ".printk_index", align 4
@xc5000_tune_digital._entry.203 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.204, ptr @.str.200, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013xc5000: xc_Set_IF_frequency(%d) failed\0A\00", [54 x i8] zeroinitializer }, align 32
@xc5000_tune_digital._entry_ptr.205 = internal global ptr @xc5000_tune_digital._entry.203, section ".printk_index", align 4
@xc5000_tune_digital._entry.206 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.207, ptr @.str.200, ptr @.str.2, i32 713, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s() setting OUTPUT_AMP to 0x%x\0A\00", [57 x i8] zeroinitializer }, align 32
@xc5000_tune_digital._entry_ptr.208 = internal global ptr @xc5000_tune_digital._entry.206, section ".printk_index", align 4
@xc_set_IF_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.210, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: %s(freq_khz = %d) freq_code = 0x%x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xc_set_IF_frequency\00", [44 x i8] zeroinitializer }, align 32
@xc_set_IF_frequency._entry_ptr = internal global ptr @xc_set_IF_frequency._entry, section ".printk_index", align 4
@xc5000_set_digital_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.140, ptr @.str.211, ptr @.str.2, i32 735, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"xc5000_set_digital_params\00", [38 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr = internal global ptr @xc5000_set_digital_params._entry, section ".printk_index", align 4
@xc5000_set_digital_params._entry.212 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.213, ptr @.str.211, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s() frequency=%d (Hz)\0A\00", [34 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.214 = internal global ptr @xc5000_set_digital_params._entry.212, section ".printk_index", align 4
@xc5000_set_digital_params._entry.215 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.216, ptr @.str.211, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s() VSB modulation\0A\00", [37 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.217 = internal global ptr @xc5000_set_digital_params._entry.215, section ".printk_index", align 4
@xc5000_set_digital_params._entry.218 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.211, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s() QAM modulation\0A\00", [37 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.220 = internal global ptr @xc5000_set_digital_params._entry.218, section ".printk_index", align 4
@xc5000_set_digital_params._entry.221 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.222, ptr @.str.211, ptr @.str.2, i32 763, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: %s() OFDM\0A\00", [47 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.223 = internal global ptr @xc5000_set_digital_params._entry.221, section ".printk_index", align 4
@xc5000_set_digital_params._entry.224 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.225, ptr @.str.211, ptr @.str.2, i32 778, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013xc5000 bandwidth not set!\0A\00", [35 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.226 = internal global ptr @xc5000_set_digital_params._entry.224, section ".printk_index", align 4
@xc5000_set_digital_params._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.219, ptr @.str.211, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.228 = internal global ptr @xc5000_set_digital_params._entry.227, section ".printk_index", align 4
@xc5000_set_digital_params._entry.229 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.230, ptr @.str.211, ptr @.str.2, i32 801, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s() Bandwidth %dMHz (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.231 = internal global ptr @xc5000_set_digital_params._entry.229, section ".printk_index", align 4
@xc5000_set_digital_params._entry.232 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.211, ptr @.str.2, i32 804, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013xc5000: delivery system is not supported!\0A\00", [51 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.234 = internal global ptr @xc5000_set_digital_params._entry.232, section ".printk_index", align 4
@xc5000_set_digital_params._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.211, ptr @.str.2, i32 812, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: %s() frequency=%d (compensated to %d)\0A\00", [51 x i8] zeroinitializer }, align 32
@xc5000_set_digital_params._entry_ptr.237 = internal global ptr @xc5000_set_digital_params._entry.235, section ".printk_index", align 4
@xc5000_config_radio._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.239, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s: %s() frequency=%d (in units of khz)\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xc5000_config_radio\00", [44 x i8] zeroinitializer }, align 32
@xc5000_config_radio._entry_ptr = internal global ptr @xc5000_config_radio._entry, section ".printk_index", align 4
@xc5000_config_radio._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.239, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s() radio input not configured\0A\00", [57 x i8] zeroinitializer }, align 32
@xc5000_config_radio._entry_ptr.242 = internal global ptr @xc5000_config_radio._entry.240, section ".printk_index", align 4
@xc5000_config_tv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.243, ptr @.str.244, ptr @.str.2, i32 843, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: %s() frequency=%d (in units of 62.5khz)\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xc5000_config_tv\00", [47 x i8] zeroinitializer }, align 32
@xc5000_config_tv._entry_ptr = internal global ptr @xc5000_config_tv._entry, section ".printk_index", align 4
@xc5000_set_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.245, ptr @.str.2, i32 1326, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc5000_set_config\00", [46 x i8] zeroinitializer }, align 32
@xc5000_set_config._entry_ptr = internal global ptr @xc5000_set_config._entry, section ".printk_index", align 4
@xc5000_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.246, ptr @.str.2, i32 1063, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xc5000_get_frequency\00", [43 x i8] zeroinitializer }, align 32
@xc5000_get_frequency._entry_ptr = internal global ptr @xc5000_get_frequency._entry, section ".printk_index", align 4
@xc5000_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.247, ptr @.str.2, i32 1079, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xc5000_get_bandwidth\00", [43 x i8] zeroinitializer }, align 32
@xc5000_get_bandwidth._entry_ptr = internal global ptr @xc5000_get_bandwidth._entry, section ".printk_index", align 4
@xc5000_get_if_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.248, ptr @.str.2, i32 1071, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"xc5000_get_if_frequency\00", [40 x i8] zeroinitializer }, align 32
@xc5000_get_if_frequency._entry_ptr = internal global ptr @xc5000_get_if_frequency._entry, section ".printk_index", align 4
@xc5000_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.249, ptr @.str.250, ptr @.str.2, i32 1092, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016%s: %s() lock_status = 0x%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc5000_get_status\00", [46 x i8] zeroinitializer }, align 32
@xc5000_get_status._entry_ptr = internal global ptr @xc5000_get_status._entry, section ".printk_index", align 4
@xc5000_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.251, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc5000_release\00", [17 x i8] zeroinitializer }, align 32
@xc5000_release._entry_ptr = internal global ptr @xc5000_release._entry, section ".printk_index", align 4
@xc5000_release._entry.252 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.253, ptr @.str.251, ptr @.str.2, i32 1313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@xc5000_release._entry_ptr.254 = internal global ptr @xc5000_release._entry.252, section ".printk_index", align 4
@switch.table.xc5000_set_params = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 22, i32 21, i32 23], [20 x i8] zeroinitializer }, align 32
@switch.table.xc5000_set_params.255 = internal constant { [3 x i16], [26 x i8] } { [3 x i16] [i16 9, i16 9, i16 6], [26 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.256 = internal global [4 x i64] [i64 2, i64 16, i64 5000, i64 8192]
@__sancov_gen_cov_switch_values.257 = internal global [10 x i64] [i64 8, i64 32, i64 1, i64 2, i64 3, i64 8, i64 11, i64 13, i64 16, i64 18]
@__sancov_gen_cov_switch_values.258 = internal global [5 x i64] [i64 3, i64 32, i64 6000000, i64 7000000, i64 8000000]
@__sancov_gen_cov_switch_values.259 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.260 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.261 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 23, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant [12 x i8] c"no_poweroff\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 27, i32 12 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1372, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant [18 x i8] c"xc5000_list_mutex\00", align 1
@___asan_gen_.285 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 34, i32 8 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1378, i32 13 }
@___asan_gen_.306 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1389, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1431, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1434, i32 3 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1438, i32 3 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1441, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1445, i32 3 }
@___asan_gen_.339 = private unnamed_addr constant [17 x i8] c"xc5000_tuner_ops\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1341, i32 35 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 33, i32 8 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1223, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1230, i32 3 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 298, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 307, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 311, i32 3 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 285, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1286, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1289, i32 3 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1117, i32 4 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1120, i32 3 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1123, i32 4 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1134, i32 4 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1144, i32 5 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1150, i32 5 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1160, i32 4 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1173, i32 5 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1179, i32 5 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1193, i32 5 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1203, i32 3 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1208, i32 3 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1211, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant [16 x i8] c"xc5000a_1_6_114\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 213, i32 35 }
@___asan_gen_.486 = private unnamed_addr constant [17 x i8] c"xc5000c_41_024_5\00", align 1
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 220, i32 35 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 214, i32 10 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 221, i32 10 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 829, i32 3 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 831, i32 3 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 604, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 612, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 616, i32 3 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 618, i32 3 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 250, i32 3 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 405, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 645, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 648, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 651, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 657, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 662, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 665, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 668, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 671, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 674, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 679, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1239, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1256, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1262, i32 3 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1273, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1018, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 981, i32 3 }
@___asan_gen_.654 = private unnamed_addr constant [16 x i8] c"xc5000_standard\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 176, i32 30 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 990, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 996, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 413, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 415, i32 3 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 419, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 177, i32 3 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 178, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 179, i32 3 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 180, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 181, i32 3 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 182, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 183, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 184, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 185, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 186, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 187, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 188, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 189, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 190, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 191, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 192, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 193, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 194, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 195, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 196, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 197, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 198, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 199, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 200, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 433, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 438, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 562, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 451, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 906, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 916, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 935, i32 4 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 938, i32 5 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 691, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 701, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 707, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 712, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 469, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 735, i32 3 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 739, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 743, i32 3 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 749, i32 3 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 763, i32 3 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 778, i32 4 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 785, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 800, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 804, i32 3 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 811, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 954, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 958, i32 3 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 842, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1326, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1063, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1079, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1071, i32 2 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1092, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1303, i32 2 }
@___asan_gen_.966 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.969 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.970 = private constant [33 x i8] c"../drivers/media/tuners/xc5000.c\00", align 1
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.970, i32 1313, i32 3 }
@___asan_gen_.972 = private unnamed_addr constant [31 x i8] c"switch.table.xc5000_set_params\00", align 1
@___asan_gen_.973 = private unnamed_addr constant [35 x i8] c"switch.table.xc5000_set_params.255\00", align 1
@llvm.compiler.used = appending global [343 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description295, ptr @__UNIQUE_ID_file296, ptr @__UNIQUE_ID_firmware298, ptr @__UNIQUE_ID_firmware299, ptr @__UNIQUE_ID_license297, ptr @__UNIQUE_ID_no_poweroff293, ptr @__UNIQUE_ID_no_powerofftype292, ptr @__ksymtab_xc5000_attach, ptr @__param_debug, ptr @__param_no_poweroff, ptr @xc5000_attach._entry, ptr @xc5000_attach._entry.13, ptr @xc5000_attach._entry.16, ptr @xc5000_attach._entry.19, ptr @xc5000_attach._entry.21, ptr @xc5000_attach._entry.24, ptr @xc5000_attach._entry.4, ptr @xc5000_attach._entry.7, ptr @xc5000_attach._entry_ptr, ptr @xc5000_attach._entry_ptr.15, ptr @xc5000_attach._entry_ptr.18, ptr @xc5000_attach._entry_ptr.20, ptr @xc5000_attach._entry_ptr.23, ptr @xc5000_attach._entry_ptr.26, ptr @xc5000_attach._entry_ptr.6, ptr @xc5000_attach._entry_ptr.9, ptr @xc5000_config_radio._entry, ptr @xc5000_config_radio._entry.240, ptr @xc5000_config_radio._entry_ptr, ptr @xc5000_config_radio._entry_ptr.242, ptr @xc5000_config_tv._entry, ptr @xc5000_config_tv._entry_ptr, ptr @xc5000_do_timer_sleep._entry, ptr @xc5000_do_timer_sleep._entry.31, ptr @xc5000_do_timer_sleep._entry_ptr, ptr @xc5000_do_timer_sleep._entry_ptr.33, ptr @xc5000_fwupload._entry, ptr @xc5000_fwupload._entry.100, ptr @xc5000_fwupload._entry.94, ptr @xc5000_fwupload._entry.97, ptr @xc5000_fwupload._entry_ptr, ptr @xc5000_fwupload._entry_ptr.102, ptr @xc5000_fwupload._entry_ptr.96, ptr @xc5000_fwupload._entry_ptr.99, ptr @xc5000_get_bandwidth._entry, ptr @xc5000_get_bandwidth._entry_ptr, ptr @xc5000_get_frequency._entry, ptr @xc5000_get_frequency._entry_ptr, ptr @xc5000_get_if_frequency._entry, ptr @xc5000_get_if_frequency._entry_ptr, ptr @xc5000_get_status._entry, ptr @xc5000_get_status._entry_ptr, ptr @xc5000_init._entry, ptr @xc5000_init._entry.44, ptr @xc5000_init._entry_ptr, ptr @xc5000_init._entry_ptr.46, ptr @xc5000_is_firmware_loaded._entry, ptr @xc5000_is_firmware_loaded._entry.89, ptr @xc5000_is_firmware_loaded._entry_ptr, ptr @xc5000_is_firmware_loaded._entry_ptr.91, ptr @xc5000_readreg._entry, ptr @xc5000_readreg._entry_ptr, ptr @xc5000_release._entry, ptr @xc5000_release._entry.252, ptr @xc5000_release._entry_ptr, ptr @xc5000_release._entry_ptr.254, ptr @xc5000_resume._entry, ptr @xc5000_resume._entry_ptr, ptr @xc5000_set_config._entry, ptr @xc5000_set_config._entry_ptr, ptr @xc5000_set_digital_params._entry, ptr @xc5000_set_digital_params._entry.212, ptr @xc5000_set_digital_params._entry.215, ptr @xc5000_set_digital_params._entry.218, ptr @xc5000_set_digital_params._entry.221, ptr @xc5000_set_digital_params._entry.224, ptr @xc5000_set_digital_params._entry.227, ptr @xc5000_set_digital_params._entry.229, ptr @xc5000_set_digital_params._entry.232, ptr @xc5000_set_digital_params._entry.235, ptr @xc5000_set_digital_params._entry_ptr, ptr @xc5000_set_digital_params._entry_ptr.214, ptr @xc5000_set_digital_params._entry_ptr.217, ptr @xc5000_set_digital_params._entry_ptr.220, ptr @xc5000_set_digital_params._entry_ptr.223, ptr @xc5000_set_digital_params._entry_ptr.226, ptr @xc5000_set_digital_params._entry_ptr.228, ptr @xc5000_set_digital_params._entry_ptr.231, ptr @xc5000_set_digital_params._entry_ptr.234, ptr @xc5000_set_digital_params._entry_ptr.237, ptr @xc5000_set_params._entry, ptr @xc5000_set_params._entry_ptr, ptr @xc5000_set_radio_freq._entry, ptr @xc5000_set_radio_freq._entry.144, ptr @xc5000_set_radio_freq._entry.147, ptr @xc5000_set_radio_freq._entry_ptr, ptr @xc5000_set_radio_freq._entry_ptr.146, ptr @xc5000_set_radio_freq._entry_ptr.149, ptr @xc5000_set_tv_freq._entry, ptr @xc5000_set_tv_freq._entry.192, ptr @xc5000_set_tv_freq._entry.194, ptr @xc5000_set_tv_freq._entry.197, ptr @xc5000_set_tv_freq._entry_ptr, ptr @xc5000_set_tv_freq._entry_ptr.193, ptr @xc5000_set_tv_freq._entry_ptr.196, ptr @xc5000_set_tv_freq._entry_ptr.199, ptr @xc5000_sleep._entry, ptr @xc5000_sleep._entry_ptr, ptr @xc5000_suspend._entry, ptr @xc5000_suspend._entry.137, ptr @xc5000_suspend._entry_ptr, ptr @xc5000_suspend._entry_ptr.138, ptr @xc5000_tune_digital._entry, ptr @xc5000_tune_digital._entry.201, ptr @xc5000_tune_digital._entry.203, ptr @xc5000_tune_digital._entry.206, ptr @xc5000_tune_digital._entry_ptr, ptr @xc5000_tune_digital._entry_ptr.202, ptr @xc5000_tune_digital._entry_ptr.205, ptr @xc5000_tune_digital._entry_ptr.208, ptr @xc5000_tuner_reset._entry, ptr @xc5000_tuner_reset._entry.35, ptr @xc5000_tuner_reset._entry.38, ptr @xc5000_tuner_reset._entry_ptr, ptr @xc5000_tuner_reset._entry_ptr.37, ptr @xc5000_tuner_reset._entry_ptr.40, ptr @xc_debug_dump._entry, ptr @xc_debug_dump._entry.108, ptr @xc_debug_dump._entry.111, ptr @xc_debug_dump._entry.114, ptr @xc_debug_dump._entry.117, ptr @xc_debug_dump._entry.120, ptr @xc_debug_dump._entry.123, ptr @xc_debug_dump._entry.126, ptr @xc_debug_dump._entry.129, ptr @xc_debug_dump._entry.132, ptr @xc_debug_dump._entry_ptr, ptr @xc_debug_dump._entry_ptr.110, ptr @xc_debug_dump._entry_ptr.113, ptr @xc_debug_dump._entry_ptr.116, ptr @xc_debug_dump._entry_ptr.119, ptr @xc_debug_dump._entry_ptr.122, ptr @xc_debug_dump._entry_ptr.125, ptr @xc_debug_dump._entry_ptr.128, ptr @xc_debug_dump._entry_ptr.131, ptr @xc_debug_dump._entry_ptr.134, ptr @xc_initialize._entry, ptr @xc_initialize._entry_ptr, ptr @xc_load_fw_and_init_tuner._entry, ptr @xc_load_fw_and_init_tuner._entry.49, ptr @xc_load_fw_and_init_tuner._entry.52, ptr @xc_load_fw_and_init_tuner._entry.55, ptr @xc_load_fw_and_init_tuner._entry.58, ptr @xc_load_fw_and_init_tuner._entry.61, ptr @xc_load_fw_and_init_tuner._entry.64, ptr @xc_load_fw_and_init_tuner._entry.67, ptr @xc_load_fw_and_init_tuner._entry.70, ptr @xc_load_fw_and_init_tuner._entry.73, ptr @xc_load_fw_and_init_tuner._entry.76, ptr @xc_load_fw_and_init_tuner._entry.79, ptr @xc_load_fw_and_init_tuner._entry.82, ptr @xc_load_fw_and_init_tuner._entry_ptr, ptr @xc_load_fw_and_init_tuner._entry_ptr.51, ptr @xc_load_fw_and_init_tuner._entry_ptr.54, ptr @xc_load_fw_and_init_tuner._entry_ptr.57, ptr @xc_load_fw_and_init_tuner._entry_ptr.60, ptr @xc_load_fw_and_init_tuner._entry_ptr.63, ptr @xc_load_fw_and_init_tuner._entry_ptr.66, ptr @xc_load_fw_and_init_tuner._entry_ptr.69, ptr @xc_load_fw_and_init_tuner._entry_ptr.72, ptr @xc_load_fw_and_init_tuner._entry_ptr.75, ptr @xc_load_fw_and_init_tuner._entry_ptr.78, ptr @xc_load_fw_and_init_tuner._entry_ptr.81, ptr @xc_load_fw_and_init_tuner._entry_ptr.84, ptr @xc_send_i2c_data._entry, ptr @xc_send_i2c_data._entry_ptr, ptr @xc_set_IF_frequency._entry, ptr @xc_set_IF_frequency._entry_ptr, ptr @xc_set_rf_frequency._entry, ptr @xc_set_rf_frequency._entry_ptr, ptr @xc_set_signal_source._entry, ptr @xc_set_signal_source._entry.185, ptr @xc_set_signal_source._entry_ptr, ptr @xc_set_signal_source._entry_ptr.187, ptr @xc_set_tv_standard._entry, ptr @xc_set_tv_standard._entry.152, ptr @xc_set_tv_standard._entry.155, ptr @xc_set_tv_standard._entry_ptr, ptr @xc_set_tv_standard._entry_ptr.154, ptr @xc_set_tv_standard._entry_ptr.156, ptr @xc_tune_channel._entry, ptr @xc_tune_channel._entry_ptr, ptr @debug, ptr @no_poweroff, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xc5000_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str.5, ptr @.str.8, ptr @xc5000_attach.__key, ptr @.str.10, ptr @xc5000_attach.__key.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.22, ptr @.str.25, ptr @xc5000_tuner_ops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.36, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @xc5000a_1_6_114, ptr @xc5000c_41_024_5, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.109, ptr @.str.112, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.135, ptr @.str.136, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @xc5000_standard, ptr @.str.145, ptr @.str.148, ptr @.str.150, ptr @.str.151, ptr @.str.153, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.186, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.195, ptr @.str.198, ptr @.str.200, ptr @.str.204, ptr @.str.207, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.213, ptr @.str.216, ptr @.str.219, ptr @.str.222, ptr @.str.225, ptr @.str.230, ptr @.str.233, ptr @.str.236, ptr @.str.238, ptr @.str.239, ptr @.str.241, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.253, ptr @switch.table.xc5000_set_params, ptr @switch.table.xc5000_set_params.255], section "llvm.metadata"
@0 = internal global [239 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_poweroff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_attach._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_do_timer_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_do_timer_sleep._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tuner_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tuner_reset._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tuner_reset._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_init._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_load_fw_and_init_tuner._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000a_1_6_114 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000c_41_024_5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_is_firmware_loaded._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_is_firmware_loaded._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_fwupload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_fwupload._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_fwupload._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_fwupload._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_send_i2c_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_initialize._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_suspend._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_radio_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_standard to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_radio_freq._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_radio_freq._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_tv_standard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_tv_standard._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_tv_standard._entry.155 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_signal_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_signal_source._entry.185 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_tune_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_rf_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_tv_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_tv_freq._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_tv_freq._entry.194 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_tv_freq._entry.197 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tune_digital._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tune_digital._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tune_digital._entry.203 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_tune_digital._entry.206 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_IF_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.212 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.218 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.221 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.224 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.229 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.232 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_digital_params._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_config_radio._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_config_radio._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_config_tv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_set_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_get_if_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc5000_release._entry.252 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xc5000_set_params to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xc5000_set_params.255 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xc5000_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef readonly %cfg) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %i2c, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %1 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %2, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %tobool1.not = icmp eq ptr %cfg, null
  br i1 %tobool1.not, label %cond.end.cond.end4_crit_edge, label %cond.true2

cond.end.cond.end4_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end4

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfg, align 4
  %conv = zext i8 %4 to i32
  br label %cond.end4

cond.end4:                                        ; preds = %cond.true2, %cond.end.cond.end4_crit_edge
  %cond5 = phi i32 [ %conv, %cond.true2 ], [ -1, %cond.end.cond.end4_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef %cond5) #9
  br label %if.end

if.end:                                           ; preds = %cond.end4, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @xc5000_list_mutex, i32 noundef 0) #6
  %.pn316 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp8.not318 = icmp eq ptr %.pn316, @hybrid_tuner_instance_list
  br i1 %cmp8.not318, label %if.end.if.then62_crit_edge, label %for.body.lr.ph

if.end.if.then62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

for.body.lr.ph:                                   ; preds = %if.end
  %tobool10.not = icmp eq ptr %i2c, null
  %nr.i300 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn319 = phi ptr [ %.pn316, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %priv.0320 = getelementptr i8, ptr %.pn319, i32 -16
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %adap = getelementptr i8, ptr %.pn319, i32 -12
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true
  %nr.i299 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i299 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i299, align 4
  %9 = ptrtoint ptr %nr.i300 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i300, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp17 = icmp eq i32 %8, %10
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true12
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cfg, align 4
  %13 = ptrtoint ptr %priv.0320 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %priv.0320, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp24 = icmp eq i8 %12, %14
  br i1 %cmp24, label %for.end, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true19.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn319 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn319, align 4
  %cmp8.not = icmp eq ptr %.pn, @hybrid_tuner_instance_list
  br i1 %cmp8.not, label %for.inc.if.then62_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.if.then62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

for.end:                                          ; preds = %land.lhs.true19
  %name = getelementptr i8, ptr %.pn319, i32 -4
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %conv46 = zext i8 %12 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %17, i32 noundef %8, i32 noundef %conv46) #9
  %count = getelementptr i8, ptr %.pn319, i32 -8
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp60 = icmp eq i32 %inc, 0
  br i1 %cmp60, label %for.end.if.then62_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %__fail

for.end.if.then62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then62

if.then62:                                        ; preds = %for.end.if.then62_crit_edge, %for.inc.if.then62_crit_edge, %if.end.if.then62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 172) #10
  %tobool64.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool64.not, label %if.then62.sw.default_crit_edge, label %if.end66

if.then62.sw.default_crit_edge:                   ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

if.end66:                                         ; preds = %if.then62
  %21 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %cfg, align 4
  %23 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %call7.i.i, align 8
  %adap71 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %adap71 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %i2c, ptr %adap71, align 4
  %name73 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %name73 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.3, ptr %name73, align 4
  %tobool84.not = icmp eq ptr %i2c, null
  br i1 %tobool84.not, label %if.end66.cond.end90_crit_edge, label %cond.true85

if.end66.cond.end90_crit_edge:                    ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end90

cond.true85:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i302 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %26 = ptrtoint ptr %nr.i302 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr.i302, align 4
  br label %cond.end90

cond.end90:                                       ; preds = %cond.true85, %if.end66.cond.end90_crit_edge
  %cond91 = phi i32 [ %27, %cond.true85 ], [ -1, %if.end66.cond.end90_crit_edge ]
  %conv94 = zext i8 %22 to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %cond91, i32 noundef %conv94) #9
  %hybrid_tuner_instance_list100 = getelementptr inbounds %struct.xc5000_priv, ptr %call7.i.i, i32 0, i32 1
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hybrid_tuner_instance_list100, ptr noundef %28, ptr noundef nonnull @hybrid_tuner_instance_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %cond.end90.list_add_tail.exit_crit_edge

cond.end90.list_add_tail.exit_crit_edge:          ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #8
  store ptr %hybrid_tuner_instance_list100, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %hybrid_tuner_instance_list100 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hybrid_tuner_instance_list, ptr %hybrid_tuner_instance_list100, align 8
  %prev3.i.i = getelementptr inbounds %struct.xc5000_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %hybrid_tuner_instance_list100, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end90.list_add_tail.exit_crit_edge
  %count102 = getelementptr inbounds %struct.tuner_i2c_props, ptr %call7.i.i, i32 0, i32 2
  %32 = ptrtoint ptr %count102 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count102, align 8
  %inc103 = add i32 %33, 1
  store i32 %inc103, ptr %count102, align 8
  br label %__fail

__fail:                                           ; preds = %list_add_tail.exit, %for.end.__fail_crit_edge
  %__ret.1 = phi i32 [ %inc103, %list_add_tail.exit ], [ %inc, %for.end.__fail_crit_edge ]
  %priv.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %priv.0320, %for.end.__fail_crit_edge ]
  %34 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.default_crit_edge [
    i32 0, label %__fail.fail_crit_edge
    i32 1, label %sw.bb108
  ]

__fail.fail_crit_edge:                            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail

__fail.sw.default_crit_edge:                      ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.default

sw.bb108:                                         ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #8
  %bandwidth = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 6
  %35 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6000000, ptr %bandwidth, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %36 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %priv.1, ptr %tuner_priv, align 4
  %fe109 = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 16
  %37 = ptrtoint ptr %fe109 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %fe, ptr %fe109, align 4
  %timer_sleep = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 17
  tail call void @__init_work(ptr noundef %timer_sleep, i32 noundef 0) #6
  %38 = ptrtoint ptr %timer_sleep to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -64, ptr %timer_sleep, align 4
  %lockdep_map = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 17, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.10, ptr noundef nonnull @xc5000_attach.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #6
  %entry118 = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 17, i32 0, i32 1
  %39 = ptrtoint ptr %entry118 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %entry118, ptr %entry118, align 4
  %prev.i = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 17, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %entry118, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 17, i32 0, i32 2
  %41 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @xc5000_do_timer_sleep, ptr %func, align 4
  %timer = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1, i32 0, i32 17, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.12, ptr noundef nonnull @xc5000_attach.__key.11) #6
  br label %sw.epilog

sw.default:                                       ; preds = %__fail.sw.default_crit_edge, %if.then62.sw.default_crit_edge
  %priv.1307 = phi ptr [ %priv.1, %__fail.sw.default_crit_edge ], [ null, %if.then62.sw.default_crit_edge ]
  %tuner_priv129 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %42 = ptrtoint ptr %tuner_priv129 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %priv.1307, ptr %tuner_priv129, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb108
  %priv.1308 = phi ptr [ %priv.1307, %sw.default ], [ %priv.1, %sw.bb108 ]
  %if_khz = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1308, i32 0, i32 2
  %43 = ptrtoint ptr %if_khz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %if_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp130 = icmp eq i32 %44, 0
  br i1 %cmp130, label %if.then132, label %sw.epilog.if.end135_crit_edge

sw.epilog.if.end135_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end135

if.then132:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %if_khz133 = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 1
  %45 = ptrtoint ptr %if_khz133 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %if_khz133, align 4
  %47 = ptrtoint ptr %if_khz to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %if_khz, align 4
  br label %if.end135

if.end135:                                        ; preds = %if.then132, %sw.epilog.if.end135_crit_edge
  %xtal_khz = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1308, i32 0, i32 3
  %48 = ptrtoint ptr %xtal_khz to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %xtal_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %cmp137 = icmp eq i16 %49, 0
  br i1 %cmp137, label %if.then139, label %if.end135.if.end142_crit_edge

if.end135.if.end142_crit_edge:                    ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end142

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #8
  %xtal_khz140 = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 3
  %50 = ptrtoint ptr %xtal_khz140 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %xtal_khz140, align 2
  %52 = ptrtoint ptr %xtal_khz to i32
  call void @__asan_store2_noabort(i32 %52)
  store i16 %51, ptr %xtal_khz, align 4
  br label %if.end142

if.end142:                                        ; preds = %if.then139, %if.end135.if.end142_crit_edge
  %radio_input = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1308, i32 0, i32 10
  %53 = ptrtoint ptr %radio_input to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %radio_input, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %cmp144 = icmp eq i8 %54, 0
  br i1 %cmp144, label %if.then146, label %if.end142.if.end149_crit_edge

if.end142.if.end149_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end149

if.then146:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #8
  %radio_input147 = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 2
  %55 = ptrtoint ptr %radio_input147 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %radio_input147, align 4
  %57 = ptrtoint ptr %radio_input to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 %56, ptr %radio_input, align 1
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.end142.if.end149_crit_edge
  %chip_id = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1308, i32 0, i32 12
  %58 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp150 = icmp eq i32 %59, 0
  br i1 %cmp150, label %if.end149.if.then154_crit_edge, label %lor.lhs.false

if.end149.if.then154_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then154

lor.lhs.false:                                    ; preds = %if.end149
  %chip_id152 = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 5
  %60 = ptrtoint ptr %chip_id152 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %chip_id152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool153.not = icmp eq i32 %61, 0
  br i1 %tobool153.not, label %lor.lhs.false.if.end163_crit_edge, label %lor.lhs.false.if.then154_crit_edge

lor.lhs.false.if.then154_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then154

lor.lhs.false.if.end163_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

if.then154:                                       ; preds = %lor.lhs.false.if.then154_crit_edge, %if.end149.if.then154_crit_edge
  %chip_id155 = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 5
  %62 = ptrtoint ptr %chip_id155 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %chip_id155, align 4
  %64 = ptrtoint ptr %chip_id to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %chip_id, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then154, %lor.lhs.false.if.end163_crit_edge
  %output_amp = getelementptr inbounds %struct.xc5000_priv, ptr %priv.1308, i32 0, i32 11
  %65 = ptrtoint ptr %output_amp to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %output_amp, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %cmp165 = icmp eq i16 %66, 0
  br i1 %cmp165, label %if.end163.if.then171_crit_edge, label %lor.lhs.false167

if.end163.if.then171_crit_edge:                   ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

lor.lhs.false167:                                 ; preds = %if.end163
  %output_amp168 = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 4
  %67 = ptrtoint ptr %output_amp168 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %output_amp168, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %68)
  %tobool170.not = icmp eq i16 %68, 0
  br i1 %tobool170.not, label %lor.lhs.false167.if.end183_crit_edge, label %lor.lhs.false167.if.then171_crit_edge

lor.lhs.false167.if.then171_crit_edge:            ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then171

lor.lhs.false167.if.end183_crit_edge:             ; preds = %lor.lhs.false167
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end183

if.then171:                                       ; preds = %lor.lhs.false167.if.then171_crit_edge, %if.end163.if.then171_crit_edge
  %output_amp172 = getelementptr inbounds %struct.xc5000_config, ptr %cfg, i32 0, i32 4
  %69 = ptrtoint ptr %output_amp172 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %output_amp172, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %70)
  %tobool174.not = icmp eq i16 %70, 0
  %spec.select298 = select i1 %tobool174.not, i16 138, i16 %70
  %71 = ptrtoint ptr %output_amp to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %spec.select298, ptr %output_amp, align 2
  br label %if.end183

if.end183:                                        ; preds = %if.then171, %lor.lhs.false167.if.end183_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %72 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %73 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 0, ptr %buf.i, align 1
  %74 = ptrtoint ptr %72 to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 8, ptr %72, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %75 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %76 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %77 = call ptr @memset(ptr %76, i32 255, i32 16)
  %78 = ptrtoint ptr %priv.1308 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %priv.1308, align 4
  %conv6.i = zext i8 %79 to i16
  %80 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %81 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 0, ptr %flags.i, align 2
  %82 = ptrtoint ptr %76 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 2, ptr %76, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %83 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %buf.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %84 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %85 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 1, ptr %flags13.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %86 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 2, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %87 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %bval.i, ptr %buf15.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv.1308, i32 0, i32 1
  %88 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %89, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.end188, label %xc5000_readreg.exit

xc5000_readreg.exit:                              ; preds = %if.end183
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %fail

if.end188:                                        ; preds = %if.end183
  %90 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %bval.i, align 2
  %conv21.i = zext i8 %91 to i16
  %shl.i = shl nuw i16 %conv21.i, 8
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  %92 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %93 to i16
  %or.i = or i16 %shl.i, %conv23.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %94 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.256)
  switch i16 %or.i, label %do.end219 [
    i16 5000, label %if.end188.sw.epilog225_crit_edge
    i16 8192, label %do.end206
  ]

if.end188.sw.epilog225_crit_edge:                 ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog225

do.end206:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog225

do.end219:                                        ; preds = %if.end188
  call void @__sanitizer_cov_trace_pc() #8
  %conv189 = zext i16 %or.i to i32
  %95 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %cfg, align 4
  %conv222 = zext i8 %96 to i32
  %call224 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef %conv222, i32 noundef %conv189) #9
  br label %fail

sw.epilog225:                                     ; preds = %do.end206, %if.end188.sw.epilog225_crit_edge
  %.str.22.sink = phi ptr [ @.str.22, %do.end206 ], [ @.str.17, %if.end188.sw.epilog225_crit_edge ]
  %97 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %cfg, align 4
  %conv209 = zext i8 %98 to i32
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv209) #9
  %call215 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink) #9
  call void @mutex_unlock(ptr noundef nonnull @xc5000_list_mutex) #6
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %99 = call ptr @memcpy(ptr %tuner_ops, ptr @xc5000_tuner_ops, i32 220)
  br label %cleanup

fail:                                             ; preds = %do.end219, %xc5000_readreg.exit, %__fail.fail_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @xc5000_list_mutex) #6
  call void @xc5000_release(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %fail, %sw.epilog225
  %retval.0 = phi ptr [ null, %fail ], [ %fe, %sw.epilog225 ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xc5000_do_timer_sleep(ptr nocapture noundef readonly %timer_sleep) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fe1 = getelementptr i8, ptr %timer_sleep, i32 -4
  %0 = ptrtoint ptr %fe1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fe1, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %tuner_priv.i12 = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %tuner_priv.i12 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tuner_priv.i12, align 4
  br label %if.end.i

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30) #9
  %.pr = load i32, ptr @debug, align 4
  %tuner_priv.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %tuner_priv.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tuner_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge, %if.end.thread
  %7 = phi ptr [ %4, %if.end.thread ], [ %6, %do.end.i ], [ %6, %if.end.if.end.i_crit_edge ]
  %callback.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %callback.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %if.end.i.do.end8_crit_edge, label %if.then1.i

if.end.i.do.end8_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

if.then1.i:                                       ; preds = %if.end.i
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dvb.i, align 4
  %tobool3.not.i = icmp eq ptr %11, null
  br i1 %tobool3.not.i, label %if.then1.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.then1.i.cond.false.i_crit_edge:                ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then1.i
  %priv5.i = getelementptr inbounds %struct.dvb_adapter, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %priv5.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv5.i, align 4
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then1.i.cond.false.i_crit_edge
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %7, i32 0, i32 1
  %14 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %adap.i, align 4
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %algo_data.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %17, %cond.false.i ], [ %13, %land.lhs.true.i.cond.end.i_crit_edge ]
  %call9.i = tail call i32 %9(ptr noundef %cond.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %cond.end.i.if.end11_crit_edge, label %cond.end.i.do.end8_crit_edge

cond.end.i.do.end8_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end8

cond.end.i.if.end11_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end8:                                          ; preds = %cond.end.i.do.end8_crit_edge, %if.end.i.do.end8_crit_edge
  %.str.39.sink.i = phi ptr [ @.str.36, %cond.end.i.do.end8_crit_edge ], [ @.str.39, %if.end.i.do.end8_crit_edge ]
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink.i) #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.30) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %cond.end.i.if.end11_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xc5000_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.251) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @xc5000_list_mutex, i32 noundef 0) #6
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end34_crit_edge, label %if.then1

if.end.if.end34_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

if.then1:                                         ; preds = %if.end
  %timer_sleep = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 17
  %call2 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timer_sleep) #6
  %firmware = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %firmware, align 4
  %tobool3.not = icmp eq ptr %4, null
  br i1 %tobool3.not, label %if.then1.if.end7_crit_edge, label %if.then4

if.then1.if.end7_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then4:                                         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @release_firmware(ptr noundef nonnull %4) #6
  %5 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %firmware, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %if.then1.if.end7_crit_edge
  %count = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %count, align 4
  %dec = add i32 %7, -1
  store i32 %dec, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool12.not = icmp eq i32 %dec, 0
  br i1 %tobool12.not, label %do.end18, label %if.end7.if.end34_crit_edge

if.end7.if.end34_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

do.end18:                                         ; preds = %if.end7
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %adap, align 4
  %tobool22.not = icmp eq ptr %11, null
  br i1 %tobool22.not, label %do.end18.cond.end_crit_edge, label %cond.true

do.end18.cond.end_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #8
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end18.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.true ], [ -1, %do.end18.cond.end_crit_edge ]
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %1, align 4
  %conv = zext i8 %15 to i32
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.253, ptr noundef %9, i32 noundef %cond, i32 noundef %conv) #9
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hybrid_tuner_instance_list) #6
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hybrid_tuner_instance_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %22 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %hybrid_tuner_instance_list, align 4
  %prev.i = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 1, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #6
  br label %if.end34

if.end34:                                         ; preds = %list_del.exit, %if.end7.if.end34_crit_edge, %if.end.if.end34_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @xc5000_list_mutex) #6
  %24 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_init(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.43) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %call1 = tail call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %fe, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2.not = icmp eq i32 %call1, 0
  br i1 %cmp2.not, label %if.end9, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.45) #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %3 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end9.cleanup_crit_edge, label %if.then10

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then10:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xc_debug_dump(ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %if.end9.cleanup_crit_edge, %do.end6
  %retval.0 = phi i32 [ -121, %do.end6 ], [ 0, %if.then10 ], [ 0, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.135) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %3 = load i32, ptr @no_poweroff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %timer_sleep = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %4 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %timer_sleep, i32 noundef 500) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_suspend(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.136) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %timer_sleep = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 17
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timer_sleep) #6
  %3 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tuner_priv, align 4
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp sgt i32 %5, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %callback.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %6 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %callback.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i.do.end7_crit_edge, label %if.then1.i

if.end.i.do.end7_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

if.then1.i:                                       ; preds = %if.end.i
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %8 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dvb.i, align 4
  %tobool3.not.i = icmp eq ptr %9, null
  br i1 %tobool3.not.i, label %if.then1.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.then1.i.cond.false.i_crit_edge:                ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then1.i
  %priv5.i = getelementptr inbounds %struct.dvb_adapter, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %priv5.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv5.i, align 4
  %tobool6.not.i = icmp eq ptr %11, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then1.i.cond.false.i_crit_edge
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %4, i32 0, i32 1
  %12 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %adap.i, align 4
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %algo_data.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %15, %cond.false.i ], [ %11, %land.lhs.true.i.cond.end.i_crit_edge ]
  %call9.i = tail call i32 %7(ptr noundef %cond.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %cond.end.i.if.end10_crit_edge, label %cond.end.i.do.end7_crit_edge

cond.end.i.do.end7_crit_edge:                     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end7

cond.end.i.if.end10_crit_edge:                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10

do.end7:                                          ; preds = %cond.end.i.do.end7_crit_edge, %if.end.i.do.end7_crit_edge
  %.str.39.sink.i = phi ptr [ @.str.36, %cond.end.i.do.end7_crit_edge ], [ @.str.39, %if.end.i.do.end7_crit_edge ]
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink.i) #9
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.136) #9
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %cond.end.i.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_resume(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.139) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %firmware = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %firmware, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call fastcc i32 @xc5000_set_params(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end2 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_set_digital_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %4 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dtv_property_cache, align 4
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %6 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delivery_system, align 4
  %call = tail call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %fe, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp7 = icmp sgt i32 %8, 0
  br i1 %cmp.not, label %if.end6, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp7, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end6:                                          ; preds = %entry
  br i1 %cmp7, label %do.end11, label %if.end6.if.end14_crit_edge

if.end6.if.end14_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

do.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.213, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.211, i32 noundef %5) #9
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.end6.if.end14_crit_edge
  %9 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.257)
  switch i32 %7, label %do.end96 [
    i32 11, label %sw.bb
    i32 2, label %sw.bb23
    i32 8, label %sw.bb35
    i32 13, label %if.end14.sw.bb38_crit_edge
    i32 3, label %if.end14.sw.bb38_crit_edge151
    i32 16, label %if.end14.sw.bb38_crit_edge152
    i32 1, label %if.end14.sw.bb62_crit_edge
    i32 18, label %if.end14.sw.bb62_crit_edge153
  ]

if.end14.sw.bb62_crit_edge153:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62

if.end14.sw.bb62_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb62

if.end14.sw.bb38_crit_edge152:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38

if.end14.sw.bb38_crit_edge151:                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38

if.end14.sw.bb38_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb38

sw.bb:                                            ; preds = %if.end14
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15 = icmp sgt i32 %10, 0
  br i1 %cmp15, label %do.end19, label %sw.bb.if.end22_crit_edge

sw.bb.if.end22_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end19:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.216, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.211) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %sw.bb.if.end22_crit_edge
  %rf_mode = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rf_mode, align 4
  %freq_offset = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 5
  %12 = ptrtoint ptr %freq_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1750000, ptr %freq_offset, align 4
  %video_standard = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 7
  %13 = ptrtoint ptr %video_standard to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 17, ptr %video_standard, align 4
  br label %sw.epilog99

sw.bb23:                                          ; preds = %if.end14
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp24 = icmp sgt i32 %14, 0
  br i1 %cmp24, label %do.end28, label %sw.bb23.if.end31_crit_edge

sw.bb23.if.end31_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end28:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.211) #9
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %sw.bb23.if.end31_crit_edge
  %rf_mode32 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %rf_mode32 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rf_mode32, align 4
  %freq_offset33 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %freq_offset33 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1750000, ptr %freq_offset33, align 4
  %video_standard34 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 7
  %17 = ptrtoint ptr %video_standard34 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 17, ptr %video_standard34, align 4
  br label %sw.epilog99

sw.bb35:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %spec.store.select = select i1 %tobool.not, i32 6000000, i32 %3
  br label %sw.bb38

sw.bb38:                                          ; preds = %sw.bb35, %if.end14.sw.bb38_crit_edge, %if.end14.sw.bb38_crit_edge151, %if.end14.sw.bb38_crit_edge152
  %bw.0 = phi i32 [ %3, %if.end14.sw.bb38_crit_edge ], [ %3, %if.end14.sw.bb38_crit_edge151 ], [ %3, %if.end14.sw.bb38_crit_edge152 ], [ %spec.store.select, %sw.bb35 ]
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp39 = icmp sgt i32 %18, 0
  br i1 %cmp39, label %do.end43, label %sw.bb38.if.end46_crit_edge

sw.bb38.if.end46_crit_edge:                       ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

do.end43:                                         ; preds = %sw.bb38
  call void @__sanitizer_cov_trace_pc() #8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.222, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.211) #9
  br label %if.end46

if.end46:                                         ; preds = %do.end43, %sw.bb38.if.end46_crit_edge
  %19 = zext i32 %bw.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.258)
  switch i32 %bw.0, label %do.end58 [
    i32 6000000, label %if.end46.sw.epilog_crit_edge
    i32 7000000, label %sw.bb50
    i32 8000000, label %sw.bb53
  ]

if.end46.sw.epilog_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb50:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb53:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end58:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.225) #9
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb53, %sw.bb50, %if.end46.sw.epilog_crit_edge
  %.sink149 = phi i8 [ 18, %sw.bb53 ], [ 20, %sw.bb50 ], [ 17, %if.end46.sw.epilog_crit_edge ]
  %.sink = phi i32 [ 2750000, %sw.bb53 ], [ 2250000, %sw.bb50 ], [ 1750000, %if.end46.sw.epilog_crit_edge ]
  %video_standard54 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %video_standard54 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %.sink149, ptr %video_standard54, align 4
  %freq_offset55 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 5
  %21 = ptrtoint ptr %freq_offset55 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %.sink, ptr %freq_offset55, align 4
  %rf_mode61 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %rf_mode61 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %rf_mode61, align 4
  br label %sw.epilog99

sw.bb62:                                          ; preds = %if.end14.sw.bb62_crit_edge, %if.end14.sw.bb62_crit_edge153
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp63 = icmp sgt i32 %23, 0
  br i1 %cmp63, label %do.end67, label %sw.bb62.if.end70_crit_edge

sw.bb62.if.end70_crit_edge:                       ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.end67:                                         ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.219, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.211) #9
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %sw.bb62.if.end70_crit_edge
  %rf_mode71 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 9
  %24 = ptrtoint ptr %rf_mode71 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %rf_mode71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp72 = icmp ult i32 %3, 6000001
  br i1 %cmp72, label %if.then73, label %if.else

if.then73:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %video_standard74 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %video_standard74 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 17, ptr %video_standard74, align 4
  br label %if.end84

if.else:                                          ; preds = %if.end70
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %3)
  %cmp76 = icmp ult i32 %3, 7000001
  %video_standard78 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 7
  br i1 %cmp76, label %if.then77, label %if.else80

if.then77:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %video_standard78 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 20, ptr %video_standard78, align 4
  br label %if.end84

if.else80:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %video_standard78 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 19, ptr %video_standard78, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.else80, %if.then77, %if.then73
  %.sink150 = phi i32 [ 2250000, %if.then77 ], [ 2750000, %if.else80 ], [ 1750000, %if.then73 ]
  %b.0 = phi i32 [ 7, %if.then77 ], [ 8, %if.else80 ], [ 6, %if.then73 ]
  %freq_offset79 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 5
  %28 = ptrtoint ptr %freq_offset79 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink150, ptr %freq_offset79, align 4
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp85 = icmp sgt i32 %29, 0
  br i1 %cmp85, label %do.end89, label %if.end84.sw.epilog99_crit_edge

if.end84.sw.epilog99_crit_edge:                   ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog99

do.end89:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #8
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.230, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.211, i32 noundef %b.0, i32 noundef %3) #9
  br label %sw.epilog99

do.end96:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call98 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233) #9
  br label %cleanup

sw.epilog99:                                      ; preds = %do.end89, %if.end84.sw.epilog99_crit_edge, %sw.epilog, %if.end31, %if.end22
  %freq_offset100 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 5
  %30 = ptrtoint ptr %freq_offset100 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %freq_offset100, align 4
  %sub = sub i32 %5, %31
  %freq_hz = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 4
  %32 = ptrtoint ptr %freq_hz to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %sub, ptr %freq_hz, align 4
  %mode = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %mode, align 4
  %34 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp101 = icmp sgt i32 %34, 0
  br i1 %cmp101, label %do.end105, label %sw.epilog99.if.end109_crit_edge

sw.epilog99.if.end109_crit_edge:                  ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end109

do.end105:                                        ; preds = %sw.epilog99
  call void @__sanitizer_cov_trace_pc() #8
  %call108 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.211, i32 noundef %5, i32 noundef %sub) #9
  br label %if.end109

if.end109:                                        ; preds = %do.end105, %sw.epilog99.if.end109_crit_edge
  %call110 = tail call fastcc i32 @xc5000_tune_digital(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %if.end109, %do.end96, %do.end58, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end96 ], [ %call110, %if.end109 ], [ -22, %do.end58 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_set_analog_params(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %params) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %adap, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %4 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.259)
  switch i32 %5, label %if.end.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.i = icmp sgt i32 %7, 0
  br i1 %cmp.i, label %do.end.i, label %sw.bb.if.end.i_crit_edge

sw.bb.if.end.i_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.239, i32 noundef %9) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %sw.bb.if.end.i_crit_edge
  %radio_input.i = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 10
  %10 = ptrtoint ptr %radio_input.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %radio_input.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp1.i = icmp eq i8 %11, 0
  br i1 %cmp1.i, label %if.then3.i, label %xc5000_config_radio.exit

if.then3.i:                                       ; preds = %if.end.i
  %12 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp4.i = icmp sgt i32 %12, 0
  br i1 %cmp4.i, label %do.end9.i, label %if.then3.i.cleanup_crit_edge

if.then3.i.cleanup_crit_edge:                     ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end9.i:                                        ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.239) #9
  br label %cleanup

xc5000_config_radio.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %params, align 8
  %mul.i = mul i32 %14, 125
  %div18.i = lshr i32 %mul.i, 1
  %freq_hz.i = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %freq_hz.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %div18.i, ptr %freq_hz.i, align 4
  %rf_mode.i = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %rf_mode.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %rf_mode.i, align 4
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  %17 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp.i17 = icmp sgt i32 %17, 0
  br i1 %cmp.i17, label %do.end.i19, label %sw.bb3.if.end.i23_crit_edge

sw.bb3.if.end.i23_crit_edge:                      ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i23

do.end.i19:                                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %params, align 8
  %call.i18 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.243, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.244, i32 noundef %19) #9
  br label %if.end.i23

if.end.i23:                                       ; preds = %do.end.i19, %sw.bb3.if.end.i23_crit_edge
  %20 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode, align 4
  %conv.i = trunc i32 %21 to i8
  %rf_mode.i20 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 9
  %22 = ptrtoint ptr %rf_mode.i20 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i, ptr %rf_mode.i20, align 4
  %23 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp2.i = icmp ugt i32 %23, 1
  %spec.store.select.i = select i1 %cmp2.i, i8 1, i8 %conv.i
  %24 = ptrtoint ptr %rf_mode.i20 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %spec.store.select.i, ptr %rf_mode.i20, align 4
  %25 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %params, align 8
  %mul.i21 = mul i32 %26, 62500
  %freq_hz.i22 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 4
  %27 = ptrtoint ptr %freq_hz.i22 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %mul.i21, ptr %freq_hz.i22, align 4
  %std.i = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %28 = ptrtoint ptr %std.i to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %std.i, align 8
  %and.i = and i64 %29, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.not.i = icmp eq i64 %and.i, 0
  br i1 %tobool.not.i, label %if.end9.i, label %if.end.i23.cleanup.sink.split.i_crit_edge

if.end.i23.cleanup.sink.split.i_crit_edge:        ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end9.i:                                        ; preds = %if.end.i23
  %and11.i = and i64 %29, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and11.i)
  %tobool12.not.i = icmp eq i64 %and11.i, 0
  br i1 %tobool12.not.i, label %if.end15.i, label %if.end9.i.cleanup.sink.split.i_crit_edge

if.end9.i.cleanup.sink.split.i_crit_edge:         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end15.i:                                       ; preds = %if.end9.i
  %and17.i = and i64 %29, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and17.i)
  %tobool18.not.i = icmp eq i64 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end21.i, label %if.end15.i.cleanup.sink.split.i_crit_edge

if.end15.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end21.i:                                       ; preds = %if.end15.i
  %and23.i = and i64 %29, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and23.i)
  %tobool24.not.i = icmp eq i64 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end27.i, label %if.end21.i.cleanup.sink.split.i_crit_edge

if.end21.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end27.i:                                       ; preds = %if.end21.i
  %and29.i = and i64 %29, 3276800
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and29.i)
  %tobool30.not.i = icmp eq i64 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end33.i, label %if.end27.i.cleanup.sink.split.i_crit_edge

if.end27.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end33.i:                                       ; preds = %if.end27.i
  %and35.i = and i64 %29, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35.i)
  %tobool36.not.i = icmp eq i64 %and35.i, 0
  br i1 %tobool36.not.i, label %if.end39.i, label %if.end33.i.cleanup.sink.split.i_crit_edge

if.end33.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end39.i:                                       ; preds = %if.end33.i
  %and41.i = and i64 %29, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and41.i)
  %tobool42.not.i = icmp eq i64 %and41.i, 0
  br i1 %tobool42.not.i, label %if.end39.i.sw.epilog_crit_edge, label %if.end39.i.cleanup.sink.split.i_crit_edge

if.end39.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split.i

if.end39.i.sw.epilog_crit_edge:                   ; preds = %if.end39.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cleanup.sink.split.i:                             ; preds = %if.end39.i.cleanup.sink.split.i_crit_edge, %if.end33.i.cleanup.sink.split.i_crit_edge, %if.end27.i.cleanup.sink.split.i_crit_edge, %if.end21.i.cleanup.sink.split.i_crit_edge, %if.end15.i.cleanup.sink.split.i_crit_edge, %if.end9.i.cleanup.sink.split.i_crit_edge, %if.end.i23.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ 0, %if.end.i23.cleanup.sink.split.i_crit_edge ], [ 5, %if.end9.i.cleanup.sink.split.i_crit_edge ], [ 7, %if.end15.i.cleanup.sink.split.i_crit_edge ], [ 10, %if.end21.i.cleanup.sink.split.i_crit_edge ], [ 12, %if.end27.i.cleanup.sink.split.i_crit_edge ], [ 15, %if.end33.i.cleanup.sink.split.i_crit_edge ], [ 16, %if.end39.i.cleanup.sink.split.i_crit_edge ]
  %video_standard44.i = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %video_standard44.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %.sink.i, ptr %video_standard44.i, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cleanup.sink.split.i, %if.end39.i.sw.epilog_crit_edge, %xc5000_config_radio.exit, %if.end.sw.epilog_crit_edge
  %31 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mode, align 4
  %mode5 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mode5, align 4
  %call6 = tail call fastcc i32 @xc5000_set_params(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end9.i, %if.then3.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end9.i ], [ -22, %if.then3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_set_config(ptr nocapture noundef readonly %fe, ptr nocapture noundef readonly %priv_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.245) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %if_khz = getelementptr inbounds %struct.xc5000_config, ptr %priv_cfg, i32 0, i32 1
  %3 = ptrtoint ptr %if_khz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %if_khz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %if_khz3 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %if_khz3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %if_khz3, align 4
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %radio_input = getelementptr inbounds %struct.xc5000_config, ptr %priv_cfg, i32 0, i32 2
  %6 = ptrtoint ptr %radio_input to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %radio_input, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.end4.if.end9_crit_edge, label %if.then6

if.end4.if.end9_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end9

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %radio_input8 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %radio_input8 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %radio_input8, align 1
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.end4.if.end9_crit_edge
  %output_amp = getelementptr inbounds %struct.xc5000_config, ptr %priv_cfg, i32 0, i32 4
  %9 = ptrtoint ptr %output_amp to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %output_amp, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool10.not = icmp eq i16 %10, 0
  br i1 %tobool10.not, label %if.end9.if.end14_crit_edge, label %if.then11

if.end9.if.end14_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %output_amp13 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 11
  %11 = ptrtoint ptr %output_amp13 to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %output_amp13, align 2
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %if.end9.if.end14_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.246) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %freq_hz = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 4
  %3 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %freq_hz, align 4
  %freq_offset = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 5
  %5 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %freq_offset, align 4
  %add = add i32 %6, %4
  %7 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %freq, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.247) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bandwidth = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bandwidth, align 4
  %5 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bw, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_get_if_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp = icmp sgt i32 %2, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.248) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %if_khz = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %if_khz to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %if_khz, align 4
  %mul = mul i32 %4, 1000
  %5 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %freq, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc5000_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %bval.i.i = alloca [2 x i8], align 2
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 4, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i) #6
  %5 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %bval.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %6 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 4
  %conv6.i.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %6, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags13.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %16 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bval.i.i, ptr %buf15.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_lock_status.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bval.i.i, align 2
  %conv21.i.i = zext i8 %21 to i32
  %shl.i.i = shl nuw nsw i32 %conv21.i.i, 8
  %arrayidx22.i.i = getelementptr inbounds [2 x i8], ptr %bval.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %23 to i32
  %or.i.i = or i32 %shl.i.i, %conv23.i.i
  br label %xc_get_lock_status.exit

xc_get_lock_status.exit:                          ; preds = %if.end.i.i, %do.end.i.i
  %lock_status.0 = phi i32 [ %or.i.i, %if.end.i.i ], [ 0, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp = icmp sgt i32 %24, 0
  br i1 %cmp, label %do.end, label %xc_get_lock_status.exit.if.end_crit_edge

xc_get_lock_status.exit.if.end_crit_edge:         ; preds = %xc_get_lock_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %xc_get_lock_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.249, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.250, i32 noundef %lock_status.0) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %xc_get_lock_status.exit.if.end_crit_edge
  %25 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %lock_status.0, ptr %status, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc_load_fw_and_init_tuner(ptr nocapture noundef readonly %fe, i32 noundef %force) unnamed_addr #0 align 64 {
entry:
  %buf.i217 = alloca [2 x i8], align 1
  %bval.i218 = alloca [2 x i8], align 2
  %msg.i219 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i193 = alloca [2 x i8], align 1
  %bval.i194 = alloca [2 x i8], align 2
  %msg.i195 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i178 = alloca [64 x i8], align 1
  %buf.i.i = alloca [2 x i8], align 1
  %bval.i.i = alloca [2 x i8], align 2
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  %fw = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %chip_id = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %chip_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cond.i = icmp eq i32 %3, 2
  %xc5000c_41_024_5.xc5000a_1_6_114.i = select i1 %cond.i, ptr @xc5000c_41_024_5, ptr @xc5000a_1_6_114
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #6
  %4 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %fw, align 4, !annotation !487
  %timer_sleep = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 17
  %call1 = tail call zeroext i1 @cancel_delayed_work(ptr noundef %timer_sleep) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %force)
  %tobool.not = icmp eq i32 %force, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %5 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %7 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %buf.i.i, align 1
  %9 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 8, ptr %7, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i) #6
  %10 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %bval.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %11 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %12 = call ptr @memset(ptr %11, i32 255, i32 16)
  %13 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %6, align 4
  %conv6.i.i = zext i8 %14 to i16
  %15 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %flags.i.i, align 2
  %17 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 2, ptr %11, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %19 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %20 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %flags13.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %21 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %22 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %bval.i.i, ptr %buf15.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %6, i32 0, i32 1
  %23 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %24, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.then.i, label %if.else9.i

if.then.i:                                        ; preds = %land.lhs.true
  %25 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %bval.i.i, align 2
  %conv21.i.i = zext i8 %26 to i16
  %shl.i.i = shl nuw i16 %conv21.i.i, 8
  %arrayidx22.i.i = getelementptr inbounds [2 x i8], ptr %bval.i.i, i32 0, i32 1
  %27 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %28 to i16
  %or.i.i = or i16 %shl.i.i, %conv23.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %or.i.i)
  %cmp.i.not = icmp eq i16 %or.i.i, 8192
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp3.i = icmp sgt i32 %29, 0
  br i1 %cmp3.i, label %do.end.i, label %if.then.i.xc5000_is_firmware_loaded.exit_crit_edge

if.then.i.xc5000_is_firmware_loaded.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc5000_is_firmware_loaded.exit

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv6.i = zext i16 %or.i.i to i32
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.88, i32 noundef %conv6.i) #9
  br label %xc5000_is_firmware_loaded.exit

if.else9.i:                                       ; preds = %land.lhs.true
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp10.i = icmp sgt i32 %30, 0
  br i1 %cmp10.i, label %do.end15.i, label %if.else9.i.if.end_crit_edge

if.else9.i.if.end_crit_edge:                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end15.i:                                       ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #8
  %call17.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.88, i32 noundef -121) #9
  br label %if.end

xc5000_is_firmware_loaded.exit:                   ; preds = %do.end.i, %if.then.i.xc5000_is_firmware_loaded.exit_crit_edge
  br i1 %cmp.i.not, label %xc5000_is_firmware_loaded.exit.if.end_crit_edge, label %xc5000_is_firmware_loaded.exit.cleanup_crit_edge

xc5000_is_firmware_loaded.exit.cleanup_crit_edge: ; preds = %xc5000_is_firmware_loaded.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

xc5000_is_firmware_loaded.exit.if.end_crit_edge:  ; preds = %xc5000_is_firmware_loaded.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end:                                           ; preds = %xc5000_is_firmware_loaded.exit.if.end_crit_edge, %do.end15.i, %if.else9.i.if.end_crit_edge, %entry.if.end_crit_edge
  %firmware = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 18
  %31 = ptrtoint ptr %firmware to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %firmware, align 4
  %tobool3.not = icmp eq ptr %32, null
  br i1 %tobool3.not, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.end
  %33 = ptrtoint ptr %xc5000c_41_024_5.xc5000a_1_6_114.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %xc5000c_41_024_5.xc5000a_1_6_114.i, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %35 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %adap, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %36, i32 0, i32 9, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %parent, align 8
  %call5 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef %34, ptr noundef %38) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end9, label %do.end

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47, i32 noundef %call5) #9
  br label %cleanup

if.end9:                                          ; preds = %if.then4
  %39 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp10 = icmp sgt i32 %39, 0
  br i1 %cmp10, label %do.end14, label %if.end9.if.end17_crit_edge

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end17

do.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fw, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %41, align 4
  %call16 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.3, i32 noundef %43) #9
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %if.end9.if.end17_crit_edge
  %44 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %fw, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  %conv = select i1 %cond.i, i32 16497, i32 12401
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %conv)
  %cmp20.not = icmp eq i32 %47, %conv
  br i1 %cmp20.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #9
  %48 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %49) #6
  br label %cleanup

if.end28:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %firmware to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %45, ptr %firmware, align 4
  br label %if.end31

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %32, ptr %fw, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.end28
  %52 = select i1 %cond.i, i16 19, i16 -32660
  %53 = zext i1 %cond.i to i8
  %arrayidx27.i.i = getelementptr inbounds [64 x i8], ptr %buf.i.i178, i32 0, i32 1
  %54 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %callback.i.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %dvb.i.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %uglygep.i.i = getelementptr inbounds i8, ptr %buf.i.i178, i32 2
  %fw_checksum_supported = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 15
  %55 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %56 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  %init_status_supported = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 14
  %57 = getelementptr inbounds [2 x i8], ptr %buf.i193, i32 0, i32 1
  %58 = getelementptr inbounds i8, ptr %msg.i195, i32 4
  %flags.i197 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 0, i32 1
  %buf7.i199 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 0, i32 3
  %arrayinit.element8.i200 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1
  %flags13.i201 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1, i32 1
  %len14.i202 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1, i32 2
  %buf15.i203 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i195, i32 1, i32 3
  %arrayidx22.i211 = getelementptr inbounds [2 x i8], ptr %bval.i194, i32 0, i32 1
  %pll_register_no = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 13
  %59 = getelementptr inbounds [2 x i8], ptr %buf.i217, i32 0, i32 1
  %60 = getelementptr inbounds i8, ptr %msg.i219, i32 4
  %flags.i221 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 0, i32 1
  %buf7.i223 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 0, i32 3
  %arrayinit.element8.i224 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 1
  %flags13.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 1, i32 1
  %len14.i226 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 1, i32 2
  %buf15.i227 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i219, i32 1, i32 3
  %arrayidx22.i235 = getelementptr inbounds [2 x i8], ptr %bval.i218, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.backedge, %if.end31
  %i.0275 = phi i32 [ 0, %if.end31 ], [ %i.0275.be, %for.body.backedge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0275)
  %tobool34.not = icmp eq i32 %i.0275, 0
  br i1 %tobool34.not, label %for.body.if.end41_crit_edge, label %do.end38

for.body.if.end41_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end41

do.end38:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #9
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %for.body.if.end41_crit_edge
  %61 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %fw, align 4
  %63 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tuner_priv, align 4
  %65 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp.i180 = icmp sgt i32 %65, 0
  br i1 %cmp.i180, label %if.end.i, label %if.end.i.thread

if.end.i.thread:                                  ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #8
  %pll_register_no.i279 = getelementptr inbounds %struct.xc5000_priv, ptr %64, i32 0, i32 13
  %66 = ptrtoint ptr %pll_register_no.i279 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %52, ptr %pll_register_no.i279, align 4
  %init_status_supported1.i280 = getelementptr inbounds %struct.xc5000_priv, ptr %64, i32 0, i32 14
  %67 = ptrtoint ptr %init_status_supported1.i280 to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %53, ptr %init_status_supported1.i280, align 2
  %fw_checksum_supported2.i281 = getelementptr inbounds %struct.xc5000_priv, ptr %64, i32 0, i32 15
  %68 = ptrtoint ptr %fw_checksum_supported2.i281 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %53, ptr %fw_checksum_supported2.i281, align 1
  br label %if.end10.i

if.end.i:                                         ; preds = %if.end41
  %69 = ptrtoint ptr %xc5000c_41_024_5.xc5000a_1_6_114.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %xc5000c_41_024_5.xc5000a_1_6_114.i, align 4
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.3, ptr noundef %70) #9
  %.pr = load i32, ptr @debug, align 4
  %pll_register_no.i = getelementptr inbounds %struct.xc5000_priv, ptr %64, i32 0, i32 13
  %71 = ptrtoint ptr %pll_register_no.i to i32
  call void @__asan_store2_noabort(i32 %71)
  store i16 %52, ptr %pll_register_no.i, align 4
  %init_status_supported1.i = getelementptr inbounds %struct.xc5000_priv, ptr %64, i32 0, i32 14
  %72 = ptrtoint ptr %init_status_supported1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %53, ptr %init_status_supported1.i, align 2
  %fw_checksum_supported2.i = getelementptr inbounds %struct.xc5000_priv, ptr %64, i32 0, i32 15
  %73 = ptrtoint ptr %fw_checksum_supported2.i to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %53, ptr %fw_checksum_supported2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp3.i182 = icmp sgt i32 %.pr, 0
  br i1 %cmp3.i182, label %do.end7.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.3) #9
  br label %if.end10.i

if.end10.i:                                       ; preds = %do.end7.i, %if.end.i.if.end10.i_crit_edge, %if.end.i.thread
  %data.i = getelementptr inbounds %struct.firmware, ptr %62, i32 0, i32 1
  %74 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %data.i, align 4
  %76 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i.i178) #6
  %78 = call ptr @memset(ptr %buf.i.i178, i32 255, i32 64)
  %adap.i99.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %77, i32 0, i32 1
  %uglygep114.i.i = getelementptr i8, ptr %75, i32 2
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %while.cond.i.i.backedge, %if.end10.i
  %index.0.i.i = phi i32 [ 0, %if.end10.i ], [ %index.0.i.i.be, %while.cond.i.i.backedge ]
  %arrayidx.i.i = getelementptr i8, ptr %75, i32 %index.0.i.i
  %79 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %80)
  %cmp.not.i.i183 = icmp eq i8 %80, -1
  %add.i.i = add i32 %index.0.i.i, 1
  br i1 %cmp.not.i.i183, label %lor.rhs.i.i, label %while.cond.i.i.while.body.i.i_crit_edge

while.cond.i.i.while.body.i.i_crit_edge:          ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

lor.rhs.i.i:                                      ; preds = %while.cond.i.i
  %arrayidx2.i.i = getelementptr i8, ptr %75, i32 %add.i.i
  %81 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %82)
  %cmp4.not.i.i = icmp eq i8 %82, -1
  br i1 %cmp4.not.i.i, label %if.then12.i, label %lor.rhs.i.i.while.body.i.i_crit_edge

lor.rhs.i.i.while.body.i.i_crit_edge:             ; preds = %lor.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %lor.rhs.i.i.while.body.i.i_crit_edge, %while.cond.i.i.while.body.i.i_crit_edge
  %conv7.i.i = zext i8 %80 to i32
  %mul.i.i = shl nuw nsw i32 %conv7.i.i, 8
  %arrayidx9.i.i = getelementptr i8, ptr %75, i32 %add.i.i
  %83 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx9.i.i, align 1
  %conv10.i.i = zext i8 %84 to i32
  %add11.i.i = or i32 %mul.i.i, %conv10.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i.i)
  %cmp12.i.i = icmp eq i32 %add11.i.i, 0
  br i1 %cmp12.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %while.body.i.i
  %85 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %tuner_priv, align 4
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp.i.i.i = icmp sgt i32 %87, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.then.i.i.if.end.i.i.i_crit_edge

if.then.i.i.if.end.i.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.34) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.then.i.i.if.end.i.i.i_crit_edge
  %88 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %callback.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %89, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge, label %if.then1.i.i.i

if.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge: ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc5000_tuner_reset.exit.i.i

if.then1.i.i.i:                                   ; preds = %if.end.i.i.i
  %90 = ptrtoint ptr %dvb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dvb.i.i.i, align 4
  %tobool3.not.i.i.i = icmp eq ptr %91, null
  br i1 %tobool3.not.i.i.i, label %if.then1.i.i.i.cond.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then1.i.i.i.cond.false.i.i.i_crit_edge:        ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then1.i.i.i
  %priv5.i.i.i = getelementptr inbounds %struct.dvb_adapter, ptr %91, i32 0, i32 5
  %92 = ptrtoint ptr %priv5.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %priv5.i.i.i, align 4
  %tobool6.not.i.i.i = icmp eq ptr %93, null
  br i1 %tobool6.not.i.i.i, label %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, label %land.lhs.true.i.i.i.cond.end.i.i.i_crit_edge

land.lhs.true.i.i.i.cond.end.i.i.i_crit_edge:     ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i.i.i

land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge:   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false.i.i.i

cond.false.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.cond.false.i.i.i_crit_edge, %if.then1.i.i.i.cond.false.i.i.i_crit_edge
  %adap.i.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %86, i32 0, i32 1
  %94 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adap.i.i.i, align 4
  %algo_data.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %95, i32 0, i32 3
  %96 = ptrtoint ptr %algo_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %algo_data.i.i.i, align 4
  br label %cond.end.i.i.i

cond.end.i.i.i:                                   ; preds = %cond.false.i.i.i, %land.lhs.true.i.i.i.cond.end.i.i.i_crit_edge
  %cond.i.i.i = phi ptr [ %97, %cond.false.i.i.i ], [ %93, %land.lhs.true.i.i.i.cond.end.i.i.i_crit_edge ]
  %call9.i.i.i = call i32 %89(ptr noundef %cond.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i.i.i)
  %tobool10.not.i.i.i = icmp eq i32 %call9.i.i.i, 0
  br i1 %tobool10.not.i.i.i, label %xc5000_tuner_reset.exit.thread.i.i, label %cond.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge

cond.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge: ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc5000_tuner_reset.exit.i.i

xc5000_tuner_reset.exit.thread.i.i:               ; preds = %cond.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %add14104.i.i = add i32 %index.0.i.i, 2
  br label %while.cond.i.i.backedge

xc5000_tuner_reset.exit.i.i:                      ; preds = %cond.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge, %if.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge
  %.str.39.sink.i.i.i = phi ptr [ @.str.36, %cond.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge ], [ @.str.39, %if.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge ]
  %retval.0.ph.i.i.i = phi i32 [ %call9.i.i.i, %cond.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge ], [ -22, %if.end.i.i.i.xc5000_tuner_reset.exit.i.i_crit_edge ]
  %call22.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.39.sink.i.i.i) #9
  br label %xc5000_fwupload.exit.thread

if.else.i.i:                                      ; preds = %while.body.i.i
  %98 = and i32 %conv7.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool.not.i.i = icmp eq i32 %98, 0
  br i1 %tobool.not.i.i, label %if.else21.i.i, label %if.then18.i.i

if.then18.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %and19.i.i = and i32 %add11.i.i, 32767
  call void @msleep(i32 noundef %and19.i.i) #6
  %add20.i.i = add i32 %index.0.i.i, 2
  br label %while.cond.i.i.backedge

if.else21.i.i:                                    ; preds = %if.else.i.i
  %add22.i.i = add i32 %index.0.i.i, 2
  %arrayidx23.i.i = getelementptr i8, ptr %75, i32 %add22.i.i
  %99 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %arrayidx23.i.i, align 1
  %101 = ptrtoint ptr %buf.i.i178 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 %100, ptr %buf.i.i178, align 1
  %add25.i.i = add i32 %index.0.i.i, 3
  %arrayidx26.i.i = getelementptr i8, ptr %75, i32 %add25.i.i
  %102 = ptrtoint ptr %arrayidx26.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx26.i.i, align 1
  %104 = ptrtoint ptr %arrayidx27.i.i to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 %103, ptr %arrayidx27.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add11.i.i)
  %cmp29110.i.i = icmp ugt i32 %add11.i.i, 2
  br i1 %cmp29110.i.i, label %while.body31.preheader.i.i, label %if.else21.i.i.while.end.i.i_crit_edge

if.else21.i.i.while.end.i.i_crit_edge:            ; preds = %if.else21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

while.body31.preheader.i.i:                       ; preds = %if.else21.i.i
  %uglygep115.i.i = getelementptr i8, ptr %uglygep114.i.i, i32 %index.0.i.i
  br label %while.body31.i.i

while.body31.i.i:                                 ; preds = %if.end50.i.i.while.body31.i.i_crit_edge, %while.body31.preheader.i.i
  %pos.0111.i.i = phi i32 [ %add52.i.i, %if.end50.i.i.while.body31.i.i_crit_edge ], [ 2, %while.body31.preheader.i.i ]
  %sub.i.i = sub i32 %add11.i.i, %pos.0111.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %sub.i.i)
  %cmp32.i.i = icmp ugt i32 %sub.i.i, 62
  %add37.i.i = add i32 %sub.i.i, 2
  %nbytes_to_send.0.i.i = select i1 %cmp32.i.i, i32 64, i32 %add37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nbytes_to_send.0.i.i)
  %cmp39108.i.i = icmp ugt i32 %nbytes_to_send.0.i.i, 2
  br i1 %cmp39108.i.i, label %for.body.lr.ph.i.i, label %while.body31.i.i.for.end.i.i_crit_edge

while.body31.i.i.for.end.i.i_crit_edge:           ; preds = %while.body31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %while.body31.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %uglygep116.i.i = getelementptr i8, ptr %uglygep115.i.i, i32 %pos.0111.i.i
  %umin.i.i = call i32 @llvm.umin.i32(i32 %sub.i.i, i32 62) #6
  %105 = call ptr @memcpy(ptr %uglygep.i.i, ptr %uglygep116.i.i, i32 %umin.i.i)
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body.lr.ph.i.i, %while.body31.i.i.for.end.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %106 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 -1, ptr %54, align 4
  %107 = ptrtoint ptr %77 to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %77, align 4
  %conv.i.i.i = zext i8 %108 to i16
  %109 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %110 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 0, ptr %flags.i.i.i, align 2
  %conv3.i.i.i = trunc i32 %nbytes_to_send.0.i.i to i16
  store i16 %conv3.i.i.i, ptr %54, align 4
  %111 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %buf.i.i178, ptr %buf4.i.i.i, align 4
  %112 = ptrtoint ptr %adap.i99.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %adap.i99.i.i, align 4
  %call.i100.i.i = call i32 @i2c_transfer(ptr noundef %113, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i100.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i100.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end50.i.i, label %xc_send_i2c_data.exit.i.i

xc_send_i2c_data.exit.i.i:                        ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef %nbytes_to_send.0.i.i) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  br label %xc5000_fwupload.exit.thread

if.end50.i.i:                                     ; preds = %for.end.i.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #6
  %sub51.i.i = add i32 %pos.0111.i.i, -2
  %add52.i.i = add i32 %sub51.i.i, %nbytes_to_send.0.i.i
  %cmp29.i.i = icmp ugt i32 %add11.i.i, %add52.i.i
  br i1 %cmp29.i.i, label %if.end50.i.i.while.body31.i.i_crit_edge, label %if.end50.i.i.while.end.i.i_crit_edge

if.end50.i.i.while.end.i.i_crit_edge:             ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end.i.i

if.end50.i.i.while.body31.i.i_crit_edge:          ; preds = %if.end50.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body31.i.i

while.end.i.i:                                    ; preds = %if.end50.i.i.while.end.i.i_crit_edge, %if.else21.i.i.while.end.i.i_crit_edge
  %add53.i.i = add i32 %add11.i.i, %add22.i.i
  br label %while.cond.i.i.backedge

while.cond.i.i.backedge:                          ; preds = %while.end.i.i, %if.then18.i.i, %xc5000_tuner_reset.exit.thread.i.i
  %index.0.i.i.be = phi i32 [ %add20.i.i, %if.then18.i.i ], [ %add53.i.i, %while.end.i.i ], [ %add14104.i.i, %xc5000_tuner_reset.exit.thread.i.i ]
  br label %while.cond.i.i

if.then12.i:                                      ; preds = %lor.rhs.i.i
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i178) #6
  %114 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %tuner_priv, align 4
  %chip_id.i.i = getelementptr inbounds %struct.xc5000_priv, ptr %115, i32 0, i32 12
  %116 = ptrtoint ptr %chip_id.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %chip_id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %117)
  %cond.i.i = icmp eq i32 %117, 2
  br i1 %cond.i.i, label %sw.bb.i.i, label %if.then12.i.xc_set_xtal.exit.i_crit_edge

if.then12.i.xc_set_xtal.exit.i_crit_edge:         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_set_xtal.exit.i

sw.bb.i.i:                                        ; preds = %if.then12.i
  %xtal_khz.i.i = getelementptr inbounds %struct.xc5000_priv, ptr %115, i32 0, i32 3
  %118 = ptrtoint ptr %xtal_khz.i.i to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %xtal_khz.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 31875, i16 %119)
  %cond4.i.i = icmp eq i16 %119, 31875
  br i1 %cond4.i.i, label %sw.bb2.i.i, label %sw.bb.i.i.xc_set_xtal.exit.i_crit_edge

sw.bb.i.i.xc_set_xtal.exit.i_crit_edge:           ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_set_xtal.exit.i

sw.bb2.i.i:                                       ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i184 = call fastcc i32 @xc_write_reg(ptr noundef %115, i16 noundef zeroext 15, i16 noundef zeroext -32639) #6
  br label %xc_set_xtal.exit.i

xc_set_xtal.exit.i:                               ; preds = %sw.bb2.i.i, %sw.bb.i.i.xc_set_xtal.exit.i_crit_edge, %if.then12.i.xc_set_xtal.exit.i_crit_edge
  %ret.0.i.i = phi i32 [ %call.i.i184, %sw.bb2.i.i ], [ 0, %sw.bb.i.i.xc_set_xtal.exit.i_crit_edge ], [ 0, %if.then12.i.xc_set_xtal.exit.i_crit_edge ]
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %cmp14.i = icmp sgt i32 %120, 0
  br i1 %cmp14.i, label %do.end18.i, label %xc_set_xtal.exit.i.xc5000_fwupload.exit_crit_edge

xc_set_xtal.exit.i.xc5000_fwupload.exit_crit_edge: ; preds = %xc_set_xtal.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc5000_fwupload.exit

do.end18.i:                                       ; preds = %xc_set_xtal.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call20.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef nonnull @.str.3) #9
  br label %xc5000_fwupload.exit

xc5000_fwupload.exit.thread:                      ; preds = %xc_send_i2c_data.exit.i.i, %xc5000_tuner_reset.exit.i.i
  %retval.0.i.ph.i = phi i32 [ -121, %xc_send_i2c_data.exit.i.i ], [ %retval.0.ph.i.i.i, %xc5000_tuner_reset.exit.i.i ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i.i178) #6
  %call26.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101) #9
  br label %do.end136

xc5000_fwupload.exit:                             ; preds = %do.end18.i, %xc_set_xtal.exit.i.xc5000_fwupload.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %cmp43.not = icmp eq i32 %ret.0.i.i, 0
  br i1 %cmp43.not, label %if.end46, label %xc5000_fwupload.exit.do.end136_crit_edge

xc5000_fwupload.exit.do.end136_crit_edge:         ; preds = %xc5000_fwupload.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end136

if.end46:                                         ; preds = %xc5000_fwupload.exit
  call void @msleep(i32 noundef 20) #6
  %121 = ptrtoint ptr %fw_checksum_supported to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %fw_checksum_supported, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool47.not = icmp eq i8 %122, 0
  br i1 %tobool47.not, label %if.end46.if.end67_crit_edge, label %if.then48

if.end46.if.end67_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

if.then48:                                        ; preds = %if.end46
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %123 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %buf.i, align 1
  %124 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 18, ptr %55, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %125 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %126 = call ptr @memset(ptr %56, i32 255, i32 16)
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %1, align 4
  %conv6.i185 = zext i8 %128 to i16
  %129 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 %conv6.i185, ptr %msg.i, align 4
  %130 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 0, ptr %flags.i, align 2
  %131 = ptrtoint ptr %56 to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 2, ptr %56, align 4
  %132 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %buf.i, ptr %buf7.i, align 4
  %133 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv6.i185, ptr %arrayinit.element8.i, align 4
  %134 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 1, ptr %flags13.i, align 2
  %135 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 2, ptr %len14.i, align 4
  %136 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %bval.i, ptr %buf15.i, align 4
  %137 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %adap.i, align 4
  %call.i186 = call i32 @i2c_transfer(ptr noundef %138, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i186)
  %cmp.not.i = icmp eq i32 %call.i186, 2
  br i1 %cmp.not.i, label %if.end57, label %do.end54

do.end54:                                         ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #9
  br label %for.inc

if.end57:                                         ; preds = %if.then48
  %139 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %bval.i, align 2
  %conv21.i = zext i8 %140 to i16
  %shl.i = shl nuw i16 %conv21.i, 8
  %141 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %141)
  %142 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %142 to i16
  %or.i = or i16 %shl.i, %conv23.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i)
  %tobool58.not = icmp eq i16 %or.i, 0
  br i1 %tobool58.not, label %do.end62, label %if.end57.if.end67_crit_edge

if.end57.if.end67_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end67

do.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #8
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62, i32 noundef 0) #9
  br label %for.inc

if.end67:                                         ; preds = %if.end57.if.end67_crit_edge, %if.end46.if.end67_crit_edge
  %143 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp.i189 = icmp sgt i32 %143, 0
  br i1 %cmp.i189, label %do.end.i191, label %if.end67.xc_initialize.exit_crit_edge

if.end67.xc_initialize.exit_crit_edge:            ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_initialize.exit

do.end.i191:                                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #8
  %call.i190 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.105) #9
  br label %xc_initialize.exit

xc_initialize.exit:                               ; preds = %do.end.i191, %if.end67.xc_initialize.exit_crit_edge
  %call1.i = call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 0, i16 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool69.not = icmp eq i32 %call1.i, 0
  br i1 %tobool69.not, label %if.end76, label %do.end73

do.end73:                                         ; preds = %xc_initialize.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65) #9
  br label %for.inc

if.end76:                                         ; preds = %xc_initialize.exit
  call void @msleep(i32 noundef 100) #6
  %144 = ptrtoint ptr %init_status_supported to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %init_status_supported, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool77.not = icmp eq i8 %145, 0
  br i1 %tobool77.not, label %if.end76.if.end97_crit_edge, label %if.then78

if.end76.if.end97_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then78:                                        ; preds = %if.end76
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i193) #6
  %146 = ptrtoint ptr %buf.i193 to i32
  call void @__asan_store1_noabort(i32 %146)
  store i8 0, ptr %buf.i193, align 1
  %147 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %147)
  store i8 19, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i194) #6
  %148 = ptrtoint ptr %bval.i194 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 0, ptr %bval.i194, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i195) #6
  %149 = call ptr @memset(ptr %58, i32 255, i32 16)
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %1, align 4
  %conv6.i196 = zext i8 %151 to i16
  %152 = ptrtoint ptr %msg.i195 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv6.i196, ptr %msg.i195, align 4
  %153 = ptrtoint ptr %flags.i197 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 0, ptr %flags.i197, align 2
  %154 = ptrtoint ptr %58 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 2, ptr %58, align 4
  %155 = ptrtoint ptr %buf7.i199 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %buf.i193, ptr %buf7.i199, align 4
  %156 = ptrtoint ptr %arrayinit.element8.i200 to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv6.i196, ptr %arrayinit.element8.i200, align 4
  %157 = ptrtoint ptr %flags13.i201 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 1, ptr %flags13.i201, align 2
  %158 = ptrtoint ptr %len14.i202 to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 2, ptr %len14.i202, align 4
  %159 = ptrtoint ptr %buf15.i203 to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %bval.i194, ptr %buf15.i203, align 4
  %160 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %adap.i, align 4
  %call.i205 = call i32 @i2c_transfer(ptr noundef %161, ptr noundef nonnull %msg.i195, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i205)
  %cmp.not.i206 = icmp eq i32 %call.i205, 2
  br i1 %cmp.not.i206, label %if.end87, label %do.end84

do.end84:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i207 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i195) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i194) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i193) #6
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68) #9
  br label %for.inc

if.end87:                                         ; preds = %if.then78
  %162 = ptrtoint ptr %bval.i194 to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %bval.i194, align 2
  %conv21.i209 = zext i8 %163 to i16
  %shl.i210 = shl nuw i16 %conv21.i209, 8
  %164 = ptrtoint ptr %arrayidx22.i211 to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %arrayidx22.i211, align 1
  %conv23.i212 = zext i8 %165 to i16
  %or.i213 = or i16 %shl.i210, %conv23.i212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i195) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i194) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i193) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i213)
  %tobool88.not = icmp eq i16 %or.i213, 0
  br i1 %tobool88.not, label %do.end92, label %if.end87.if.end97_crit_edge

if.end87.if.end97_crit_edge:                      ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end92:                                         ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #8
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef 0) #9
  br label %for.inc

if.end97:                                         ; preds = %if.end87.if.end97_crit_edge, %if.end76.if.end97_crit_edge
  %166 = ptrtoint ptr %pll_register_no to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %pll_register_no, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %167)
  %tobool98.not = icmp eq i16 %167, 0
  br i1 %tobool98.not, label %if.end97.if.end115_crit_edge, label %if.then99

if.end97.if.end115_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

if.then99:                                        ; preds = %if.end97
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i217) #6
  %168 = lshr i16 %167, 8
  %conv1.i = trunc i16 %168 to i8
  %169 = ptrtoint ptr %buf.i217 to i32
  call void @__asan_store1_noabort(i32 %169)
  store i8 %conv1.i, ptr %buf.i217, align 1
  %conv3.i = trunc i16 %167 to i8
  %170 = ptrtoint ptr %59 to i32
  call void @__asan_store1_noabort(i32 %170)
  store i8 %conv3.i, ptr %59, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i218) #6
  %171 = ptrtoint ptr %bval.i218 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 0, ptr %bval.i218, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i219) #6
  %172 = call ptr @memset(ptr %60, i32 255, i32 16)
  %173 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %1, align 4
  %conv6.i220 = zext i8 %174 to i16
  %175 = ptrtoint ptr %msg.i219 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv6.i220, ptr %msg.i219, align 4
  %176 = ptrtoint ptr %flags.i221 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %flags.i221, align 2
  %177 = ptrtoint ptr %60 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 2, ptr %60, align 4
  %178 = ptrtoint ptr %buf7.i223 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %buf.i217, ptr %buf7.i223, align 4
  %179 = ptrtoint ptr %arrayinit.element8.i224 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv6.i220, ptr %arrayinit.element8.i224, align 4
  %180 = ptrtoint ptr %flags13.i225 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 1, ptr %flags13.i225, align 2
  %181 = ptrtoint ptr %len14.i226 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 2, ptr %len14.i226, align 4
  %182 = ptrtoint ptr %buf15.i227 to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %bval.i218, ptr %buf15.i227, align 4
  %183 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %adap.i, align 4
  %call.i229 = call i32 @i2c_transfer(ptr noundef %184, ptr noundef nonnull %msg.i219, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i229)
  %cmp.not.i230 = icmp eq i32 %call.i229, 2
  br i1 %cmp.not.i230, label %if.end104, label %for.inc.thread

if.end104:                                        ; preds = %if.then99
  %185 = ptrtoint ptr %bval.i218 to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %bval.i218, align 2
  %conv21.i233 = zext i8 %186 to i16
  %shl.i234 = shl nuw i16 %conv21.i233, 8
  %187 = ptrtoint ptr %arrayidx22.i235 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %arrayidx22.i235, align 1
  %conv23.i236 = zext i8 %188 to i16
  %or.i237 = or i16 %shl.i234, %conv23.i236
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i219) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i218) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i217) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %or.i237)
  %cmp106 = icmp ugt i16 %or.i237, 63
  br i1 %cmp106, label %do.end111, label %if.end104.if.end115_crit_edge

if.end104.if.end115_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end115

do.end111:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #8
  %call113 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #9
  br label %for.inc

if.end115:                                        ; preds = %if.end104.if.end115_crit_edge, %if.end97.if.end115_crit_edge
  %call116 = call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 13, i16 noundef zeroext 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %tobool117.not = icmp eq i32 %call116, 0
  br i1 %tobool117.not, label %if.end115.do.end129_crit_edge, label %do.end122

if.end115.do.end129_crit_edge:                    ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129

do.end122:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  %call124 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77) #9
  br label %for.inc

for.inc:                                          ; preds = %do.end122, %do.end111, %do.end92, %do.end84, %do.end73, %do.end62, %do.end54
  %ret.2 = phi i32 [ 0, %do.end54 ], [ %call1.i, %do.end73 ], [ 0, %do.end84 ], [ 0, %do.end111 ], [ %call116, %do.end122 ], [ 0, %do.end92 ], [ 0, %do.end62 ]
  %inc = add nuw nsw i32 %i.0275, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc)
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %err, label %for.inc.for.body.backedge_crit_edge

for.inc.for.body.backedge_crit_edge:              ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge

for.body.backedge:                                ; preds = %for.inc.thread.for.body.backedge_crit_edge, %for.inc.for.body.backedge_crit_edge
  %i.0275.be = phi i32 [ %inc, %for.inc.for.body.backedge_crit_edge ], [ %inc284, %for.inc.thread.for.body.backedge_crit_edge ]
  br label %for.body

for.inc.thread:                                   ; preds = %if.then99
  %call19.i231 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i219) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i218) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i217) #6
  %inc284 = add nuw nsw i32 %i.0275, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %inc284)
  %exitcond.not285 = icmp eq i32 %inc284, 5
  br i1 %exitcond.not285, label %for.inc.thread.do.end136_crit_edge, label %for.inc.thread.for.body.backedge_crit_edge

for.inc.thread.for.body.backedge_crit_edge:       ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.backedge

for.inc.thread.do.end136_crit_edge:               ; preds = %for.inc.thread
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end136

err:                                              ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2)
  %tobool125.not = icmp eq i32 %ret.2, 0
  br i1 %tobool125.not, label %err.do.end129_crit_edge, label %err.do.end136_crit_edge

err.do.end136_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end136

err.do.end129_crit_edge:                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end129

do.end129:                                        ; preds = %err.do.end129_crit_edge, %if.end115.do.end129_crit_edge
  %189 = ptrtoint ptr %xc5000c_41_024_5.xc5000a_1_6_114.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %xc5000c_41_024_5.xc5000a_1_6_114.i, align 4
  %call132 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %190) #9
  br label %cleanup

do.end136:                                        ; preds = %err.do.end136_crit_edge, %for.inc.thread.do.end136_crit_edge, %xc5000_fwupload.exit.do.end136_crit_edge, %xc5000_fwupload.exit.thread
  %ret.3260 = phi i32 [ %ret.2, %err.do.end136_crit_edge ], [ %retval.0.i.ph.i, %xc5000_fwupload.exit.thread ], [ -121, %for.inc.thread.do.end136_crit_edge ], [ %ret.0.i.i, %xc5000_fwupload.exit.do.end136_crit_edge ]
  %call138 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end136, %do.end129, %do.end25, %do.end, %xc5000_is_firmware_loaded.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ -22, %do.end25 ], [ 0, %xc5000_is_firmware_loaded.exit.cleanup_crit_edge ], [ %ret.3260, %do.end136 ], [ 0, %do.end129 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xc_debug_dump(ptr noundef readonly %priv) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i295 = alloca [2 x i8], align 1
  %bval.i.i296 = alloca [2 x i8], align 2
  %msg.i.i297 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i273 = alloca [2 x i8], align 1
  %bval.i.i274 = alloca [2 x i8], align 2
  %msg.i.i275 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i251 = alloca [2 x i8], align 1
  %bval.i.i252 = alloca [2 x i8], align 2
  %msg.i.i253 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i229 = alloca [2 x i8], align 1
  %bval.i.i230 = alloca [2 x i8], align 2
  %msg.i.i231 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i207 = alloca [2 x i8], align 1
  %bval.i.i208 = alloca [2 x i8], align 2
  %msg.i.i209 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i185 = alloca [2 x i8], align 1
  %bval.i.i186 = alloca [2 x i8], align 2
  %msg.i.i187 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i168 = alloca [2 x i8], align 1
  %bval.i.i169 = alloca [2 x i8], align 2
  %msg.i.i170 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i146 = alloca [2 x i8], align 1
  %bval.i.i147 = alloca [2 x i8], align 2
  %msg.i.i148 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i127 = alloca [2 x i8], align 1
  %bval.i.i128 = alloca [2 x i8], align 2
  %msg.i.i129 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i = alloca [2 x i8], align 1
  %bval.i.i = alloca [2 x i8], align 2
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @msleep(i32 noundef 100) #6
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %0 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %buf.i.i, align 1
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %0, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i) #6
  %3 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %bval.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %4 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 255, i32 16)
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %priv, align 4
  %conv6.i.i = zext i8 %7 to i16
  %8 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 0, ptr %flags.i.i, align 2
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 2, ptr %4, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %11 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %12 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %13 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 1, ptr %flags13.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %14 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %15 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %bval.i.i, ptr %buf15.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %17, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_adc_envelope.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bval.i.i, align 2
  %conv21.i.i = zext i8 %19 to i32
  %shl.i.i = shl nuw nsw i32 %conv21.i.i, 8
  %arrayidx22.i.i = getelementptr inbounds [2 x i8], ptr %bval.i.i, i32 0, i32 1
  %20 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %21 to i32
  %or.i.i = or i32 %shl.i.i, %conv23.i.i
  br label %xc_get_adc_envelope.exit

xc_get_adc_envelope.exit:                         ; preds = %if.end.i.i, %do.end.i.i
  %adc_envelope.0 = phi i32 [ %or.i.i, %if.end.i.i ], [ 65535, %do.end.i.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp = icmp sgt i32 %22, 0
  br i1 %cmp, label %do.end, label %xc_get_adc_envelope.exit.if.end_crit_edge

xc_get_adc_envelope.exit.if.end_crit_edge:        ; preds = %xc_get_adc_envelope.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end:                                           ; preds = %xc_get_adc_envelope.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv = and i32 %adc_envelope.0, 65535
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.3, i32 noundef %conv) #9
  br label %if.end

if.end:                                           ; preds = %do.end, %xc_get_adc_envelope.exit.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i127) #6
  %23 = getelementptr inbounds [2 x i8], ptr %buf.i.i127, i32 0, i32 1
  %24 = ptrtoint ptr %buf.i.i127 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %buf.i.i127, align 1
  %25 = ptrtoint ptr %23 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 5, ptr %23, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i128) #6
  %26 = ptrtoint ptr %bval.i.i128 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %bval.i.i128, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i129) #6
  %27 = getelementptr inbounds i8, ptr %msg.i.i129, i32 4
  %28 = call ptr @memset(ptr %27, i32 255, i32 16)
  %29 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %priv, align 4
  %conv6.i.i130 = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i.i129 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv6.i.i130, ptr %msg.i.i129, align 4
  %flags.i.i131 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i.i131 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i.i131, align 2
  %33 = ptrtoint ptr %27 to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 2, ptr %27, align 4
  %buf7.i.i132 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 0, i32 3
  %34 = ptrtoint ptr %buf7.i.i132 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %buf.i.i127, ptr %buf7.i.i132, align 4
  %arrayinit.element8.i.i133 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 1
  %35 = ptrtoint ptr %arrayinit.element8.i.i133 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv6.i.i130, ptr %arrayinit.element8.i.i133, align 4
  %flags13.i.i134 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 1, i32 1
  %36 = ptrtoint ptr %flags13.i.i134 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 1, ptr %flags13.i.i134, align 2
  %len14.i.i135 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 1, i32 2
  %37 = ptrtoint ptr %len14.i.i135 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 2, ptr %len14.i.i135, align 4
  %buf15.i.i136 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129, i32 1, i32 3
  %38 = ptrtoint ptr %buf15.i.i136 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %bval.i.i128, ptr %buf15.i.i136, align 4
  %39 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %adap.i.i, align 4
  %call.i.i138 = call i32 @i2c_transfer(ptr noundef %40, ptr noundef nonnull %msg.i.i129, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i138)
  %cmp.not.i.i139 = icmp eq i32 %call.i.i138, 2
  br i1 %cmp.not.i.i139, label %if.end.i, label %xc5000_readreg.exit.i

xc5000_readreg.exit.i:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i140 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i129) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i128) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i127) #6
  br label %xc_get_frequency_error.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %41 = ptrtoint ptr %bval.i.i128 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %bval.i.i128, align 2
  %conv21.i.i141 = zext i8 %42 to i32
  %shl.i.i142 = shl nuw nsw i32 %conv21.i.i141, 8
  %arrayidx22.i.i143 = getelementptr inbounds [2 x i8], ptr %bval.i.i128, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx22.i.i143 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx22.i.i143, align 1
  %conv23.i.i144 = zext i8 %44 to i32
  %or.i.i145 = or i32 %shl.i.i142, %conv23.i.i144
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i129) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i128) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i127) #6
  %mul.i = mul nuw nsw i32 %or.i.i145, 15625
  %div.i = udiv i32 %mul.i, 1000
  br label %xc_get_frequency_error.exit

xc_get_frequency_error.exit:                      ; preds = %if.end.i, %xc5000_readreg.exit.i
  %freq_error_hz.0 = phi i32 [ %div.i, %if.end.i ], [ 0, %xc5000_readreg.exit.i ]
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp3 = icmp sgt i32 %45, 0
  br i1 %cmp3, label %do.end8, label %xc_get_frequency_error.exit.if.end11_crit_edge

xc_get_frequency_error.exit.if.end11_crit_edge:   ; preds = %xc_get_frequency_error.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end11

do.end8:                                          ; preds = %xc_get_frequency_error.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.3, i32 noundef %freq_error_hz.0) #9
  br label %if.end11

if.end11:                                         ; preds = %do.end8, %xc_get_frequency_error.exit.if.end11_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i146) #6
  %46 = getelementptr inbounds [2 x i8], ptr %buf.i.i146, i32 0, i32 1
  %47 = ptrtoint ptr %buf.i.i146 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 0, ptr %buf.i.i146, align 1
  %48 = ptrtoint ptr %46 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 4, ptr %46, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i147) #6
  %49 = ptrtoint ptr %bval.i.i147 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 0, ptr %bval.i.i147, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i148) #6
  %50 = getelementptr inbounds i8, ptr %msg.i.i148, i32 4
  %51 = call ptr @memset(ptr %50, i32 255, i32 16)
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %priv, align 4
  %conv6.i.i149 = zext i8 %53 to i16
  %54 = ptrtoint ptr %msg.i.i148 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv6.i.i149, ptr %msg.i.i148, align 4
  %flags.i.i150 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i148, i32 0, i32 1
  %55 = ptrtoint ptr %flags.i.i150 to i32
  call void @__asan_store2_noabort(i32 %55)
  store i16 0, ptr %flags.i.i150, align 2
  %56 = ptrtoint ptr %50 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 2, ptr %50, align 4
  %buf7.i.i151 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i148, i32 0, i32 3
  %57 = ptrtoint ptr %buf7.i.i151 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %buf.i.i146, ptr %buf7.i.i151, align 4
  %arrayinit.element8.i.i152 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i148, i32 1
  %58 = ptrtoint ptr %arrayinit.element8.i.i152 to i32
  call void @__asan_store2_noabort(i32 %58)
  store i16 %conv6.i.i149, ptr %arrayinit.element8.i.i152, align 4
  %flags13.i.i153 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i148, i32 1, i32 1
  %59 = ptrtoint ptr %flags13.i.i153 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 1, ptr %flags13.i.i153, align 2
  %len14.i.i154 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i148, i32 1, i32 2
  %60 = ptrtoint ptr %len14.i.i154 to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 2, ptr %len14.i.i154, align 4
  %buf15.i.i155 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i148, i32 1, i32 3
  %61 = ptrtoint ptr %buf15.i.i155 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %bval.i.i147, ptr %buf15.i.i155, align 4
  %62 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %adap.i.i, align 4
  %call.i.i157 = call i32 @i2c_transfer(ptr noundef %63, ptr noundef nonnull %msg.i.i148, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i157)
  %cmp.not.i.i158 = icmp eq i32 %call.i.i157, 2
  br i1 %cmp.not.i.i158, label %if.end.i.i166, label %do.end.i.i160

do.end.i.i160:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i159 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_lock_status.exit

if.end.i.i166:                                    ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %64 = ptrtoint ptr %bval.i.i147 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bval.i.i147, align 2
  %conv21.i.i161 = zext i8 %65 to i32
  %shl.i.i162 = shl nuw nsw i32 %conv21.i.i161, 8
  %arrayidx22.i.i163 = getelementptr inbounds [2 x i8], ptr %bval.i.i147, i32 0, i32 1
  %66 = ptrtoint ptr %arrayidx22.i.i163 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx22.i.i163, align 1
  %conv23.i.i164 = zext i8 %67 to i32
  %or.i.i165 = or i32 %shl.i.i162, %conv23.i.i164
  br label %xc_get_lock_status.exit

xc_get_lock_status.exit:                          ; preds = %if.end.i.i166, %do.end.i.i160
  %lock_status.0 = phi i32 [ %or.i.i165, %if.end.i.i166 ], [ 65535, %do.end.i.i160 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i148) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i147) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i146) #6
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp13 = icmp sgt i32 %68, 0
  br i1 %cmp13, label %do.end18, label %xc_get_lock_status.exit.if.end22_crit_edge

xc_get_lock_status.exit.if.end22_crit_edge:       ; preds = %xc_get_lock_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end22

do.end18:                                         ; preds = %xc_get_lock_status.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv20 = and i32 %lock_status.0, 65535
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.3, i32 noundef %conv20) #9
  br label %if.end22

if.end22:                                         ; preds = %do.end18, %xc_get_lock_status.exit.if.end22_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i168) #6
  %69 = getelementptr inbounds [2 x i8], ptr %buf.i.i168, i32 0, i32 1
  %70 = ptrtoint ptr %buf.i.i168 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 0, ptr %buf.i.i168, align 1
  %71 = ptrtoint ptr %69 to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 7, ptr %69, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i169) #6
  %72 = ptrtoint ptr %bval.i.i169 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 0, ptr %bval.i.i169, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i170) #6
  %73 = getelementptr inbounds i8, ptr %msg.i.i170, i32 4
  %74 = call ptr @memset(ptr %73, i32 255, i32 16)
  %75 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %priv, align 4
  %conv6.i.i171 = zext i8 %76 to i16
  %77 = ptrtoint ptr %msg.i.i170 to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv6.i.i171, ptr %msg.i.i170, align 4
  %flags.i.i172 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i170, i32 0, i32 1
  %78 = ptrtoint ptr %flags.i.i172 to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 0, ptr %flags.i.i172, align 2
  %79 = ptrtoint ptr %73 to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 2, ptr %73, align 4
  %buf7.i.i173 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i170, i32 0, i32 3
  %80 = ptrtoint ptr %buf7.i.i173 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %buf.i.i168, ptr %buf7.i.i173, align 4
  %arrayinit.element8.i.i174 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i170, i32 1
  %81 = ptrtoint ptr %arrayinit.element8.i.i174 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv6.i.i171, ptr %arrayinit.element8.i.i174, align 4
  %flags13.i.i175 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i170, i32 1, i32 1
  %82 = ptrtoint ptr %flags13.i.i175 to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 1, ptr %flags13.i.i175, align 2
  %len14.i.i176 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i170, i32 1, i32 2
  %83 = ptrtoint ptr %len14.i.i176 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 2, ptr %len14.i.i176, align 4
  %buf15.i.i177 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i170, i32 1, i32 3
  %84 = ptrtoint ptr %buf15.i.i177 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %bval.i.i169, ptr %buf15.i.i177, align 4
  %85 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %adap.i.i, align 4
  %call.i.i179 = call i32 @i2c_transfer(ptr noundef %86, ptr noundef nonnull %msg.i.i170, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i179)
  %cmp.not.i.i180 = icmp eq i32 %call.i.i179, 2
  br i1 %cmp.not.i.i180, label %if.end.i184, label %xc5000_readreg.exit.i182

xc5000_readreg.exit.i182:                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i181 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i170) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i169) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i168) #6
  br label %xc_get_version.exit

if.end.i184:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  %87 = ptrtoint ptr %bval.i.i169 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %bval.i.i169, align 2
  %arrayidx22.i.i183 = getelementptr inbounds [2 x i8], ptr %bval.i.i169, i32 0, i32 1
  %89 = ptrtoint ptr %arrayidx22.i.i183 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx22.i.i183, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i170) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i169) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i168) #6
  %91 = lshr i8 %88, 4
  %conv5.i = and i8 %88, 15
  %92 = lshr i8 %90, 4
  %conv12.i = and i8 %90, 15
  br label %xc_get_version.exit

xc_get_version.exit:                              ; preds = %if.end.i184, %xc5000_readreg.exit.i182
  %hw_majorversion.0 = phi i8 [ %91, %if.end.i184 ], [ 0, %xc5000_readreg.exit.i182 ]
  %hw_minorversion.0 = phi i8 [ %conv5.i, %if.end.i184 ], [ 0, %xc5000_readreg.exit.i182 ]
  %fw_majorversion.0 = phi i8 [ %92, %if.end.i184 ], [ 0, %xc5000_readreg.exit.i182 ]
  %fw_minorversion.0 = phi i8 [ %conv12.i, %if.end.i184 ], [ 0, %xc5000_readreg.exit.i182 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i185) #6
  %93 = getelementptr inbounds [2 x i8], ptr %buf.i.i185, i32 0, i32 1
  %94 = ptrtoint ptr %buf.i.i185 to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 0, ptr %buf.i.i185, align 1
  %95 = ptrtoint ptr %93 to i32
  call void @__asan_store1_noabort(i32 %95)
  store i8 13, ptr %93, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i186) #6
  %96 = ptrtoint ptr %bval.i.i186 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 0, ptr %bval.i.i186, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i187) #6
  %97 = getelementptr inbounds i8, ptr %msg.i.i187, i32 4
  %98 = call ptr @memset(ptr %97, i32 255, i32 16)
  %99 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %priv, align 4
  %conv6.i.i188 = zext i8 %100 to i16
  %101 = ptrtoint ptr %msg.i.i187 to i32
  call void @__asan_store2_noabort(i32 %101)
  store i16 %conv6.i.i188, ptr %msg.i.i187, align 4
  %flags.i.i189 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 0, i32 1
  %102 = ptrtoint ptr %flags.i.i189 to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %flags.i.i189, align 2
  %103 = ptrtoint ptr %97 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 2, ptr %97, align 4
  %buf7.i.i190 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 0, i32 3
  %104 = ptrtoint ptr %buf7.i.i190 to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %buf.i.i185, ptr %buf7.i.i190, align 4
  %arrayinit.element8.i.i191 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 1
  %105 = ptrtoint ptr %arrayinit.element8.i.i191 to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 %conv6.i.i188, ptr %arrayinit.element8.i.i191, align 4
  %flags13.i.i192 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 1, i32 1
  %106 = ptrtoint ptr %flags13.i.i192 to i32
  call void @__asan_store2_noabort(i32 %106)
  store i16 1, ptr %flags13.i.i192, align 2
  %len14.i.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 1, i32 2
  %107 = ptrtoint ptr %len14.i.i193 to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 2, ptr %len14.i.i193, align 4
  %buf15.i.i194 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i187, i32 1, i32 3
  %108 = ptrtoint ptr %buf15.i.i194 to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %bval.i.i186, ptr %buf15.i.i194, align 4
  %109 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %adap.i.i, align 4
  %call.i.i196 = call i32 @i2c_transfer(ptr noundef %110, ptr noundef nonnull %msg.i.i187, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i196)
  %cmp.not.i.i197 = icmp eq i32 %call.i.i196, 2
  br i1 %cmp.not.i.i197, label %if.end.i.i205, label %do.end.i.i199

do.end.i.i199:                                    ; preds = %xc_get_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i198 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_buildversion.exit

if.end.i.i205:                                    ; preds = %xc_get_version.exit
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %bval.i.i186 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %bval.i.i186, align 2
  %conv21.i.i200 = zext i8 %112 to i32
  %shl.i.i201 = shl nuw nsw i32 %conv21.i.i200, 8
  %arrayidx22.i.i202 = getelementptr inbounds [2 x i8], ptr %bval.i.i186, i32 0, i32 1
  %113 = ptrtoint ptr %arrayidx22.i.i202 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %arrayidx22.i.i202, align 1
  %conv23.i.i203 = zext i8 %114 to i32
  %or.i.i204 = or i32 %shl.i.i201, %conv23.i.i203
  br label %xc_get_buildversion.exit

xc_get_buildversion.exit:                         ; preds = %if.end.i.i205, %do.end.i.i199
  %fw_buildversion.0 = phi i32 [ %or.i.i204, %if.end.i.i205 ], [ 0, %do.end.i.i199 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i187) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i186) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i185) #6
  %115 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %cmp25 = icmp sgt i32 %115, 0
  br i1 %cmp25, label %do.end30, label %xc_get_buildversion.exit.if.end38_crit_edge

xc_get_buildversion.exit.if.end38_crit_edge:      ; preds = %xc_get_buildversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end30:                                         ; preds = %xc_get_buildversion.exit
  call void @__sanitizer_cov_trace_pc() #8
  %conv32 = zext i8 %hw_majorversion.0 to i32
  %conv33 = zext i8 %hw_minorversion.0 to i32
  %conv34 = zext i8 %fw_majorversion.0 to i32
  %conv35 = zext i8 %fw_minorversion.0 to i32
  %conv36 = and i32 %fw_buildversion.0, 65535
  %call37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115, ptr noundef nonnull @.str.3, i32 noundef %conv32, i32 noundef %conv33, i32 noundef %conv34, i32 noundef %conv35, i32 noundef %conv36) #9
  br label %if.end38

if.end38:                                         ; preds = %do.end30, %xc_get_buildversion.exit.if.end38_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i207) #6
  %116 = getelementptr inbounds [2 x i8], ptr %buf.i.i207, i32 0, i32 1
  %117 = ptrtoint ptr %buf.i.i207 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 0, ptr %buf.i.i207, align 1
  %118 = ptrtoint ptr %116 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 3, ptr %116, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i208) #6
  %119 = ptrtoint ptr %bval.i.i208 to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 0, ptr %bval.i.i208, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i209) #6
  %120 = getelementptr inbounds i8, ptr %msg.i.i209, i32 4
  %121 = call ptr @memset(ptr %120, i32 255, i32 16)
  %122 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %priv, align 4
  %conv6.i.i210 = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i.i209 to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv6.i.i210, ptr %msg.i.i209, align 4
  %flags.i.i211 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i209, i32 0, i32 1
  %125 = ptrtoint ptr %flags.i.i211 to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i.i211, align 2
  %126 = ptrtoint ptr %120 to i32
  call void @__asan_store2_noabort(i32 %126)
  store i16 2, ptr %120, align 4
  %buf7.i.i212 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i209, i32 0, i32 3
  %127 = ptrtoint ptr %buf7.i.i212 to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %buf.i.i207, ptr %buf7.i.i212, align 4
  %arrayinit.element8.i.i213 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i209, i32 1
  %128 = ptrtoint ptr %arrayinit.element8.i.i213 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %conv6.i.i210, ptr %arrayinit.element8.i.i213, align 4
  %flags13.i.i214 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i209, i32 1, i32 1
  %129 = ptrtoint ptr %flags13.i.i214 to i32
  call void @__asan_store2_noabort(i32 %129)
  store i16 1, ptr %flags13.i.i214, align 2
  %len14.i.i215 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i209, i32 1, i32 2
  %130 = ptrtoint ptr %len14.i.i215 to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 2, ptr %len14.i.i215, align 4
  %buf15.i.i216 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i209, i32 1, i32 3
  %131 = ptrtoint ptr %buf15.i.i216 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %bval.i.i208, ptr %buf15.i.i216, align 4
  %132 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %adap.i.i, align 4
  %call.i.i218 = call i32 @i2c_transfer(ptr noundef %133, ptr noundef nonnull %msg.i.i209, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i218)
  %cmp.not.i.i219 = icmp eq i32 %call.i.i218, 2
  br i1 %cmp.not.i.i219, label %if.end.i228, label %xc5000_readreg.exit.i221

xc5000_readreg.exit.i221:                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i209) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i208) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i207) #6
  br label %xc_get_hsync_freq.exit

if.end.i228:                                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %bval.i.i208 to i32
  call void @__asan_load1_noabort(i32 %134)
  %135 = load i8, ptr %bval.i.i208, align 2
  %conv21.i.i222 = zext i8 %135 to i32
  %shl.i.i223 = shl nuw nsw i32 %conv21.i.i222, 8
  %arrayidx22.i.i224 = getelementptr inbounds [2 x i8], ptr %bval.i.i208, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx22.i.i224 to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %arrayidx22.i.i224, align 1
  %conv23.i.i225 = zext i8 %137 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i209) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i208) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i207) #6
  %shl.i.masked.i = and i32 %shl.i.i223, 3840
  %138 = or i32 %shl.i.masked.i, %conv23.i.i225
  %mul.i226 = mul nuw nsw i32 %138, 763
  %div.i227 = udiv i32 %mul.i226, 100
  br label %xc_get_hsync_freq.exit

xc_get_hsync_freq.exit:                           ; preds = %if.end.i228, %xc5000_readreg.exit.i221
  %hsync_freq_hz.0 = phi i32 [ %div.i227, %if.end.i228 ], [ 0, %xc5000_readreg.exit.i221 ]
  %139 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %cmp40 = icmp sgt i32 %139, 0
  br i1 %cmp40, label %do.end45, label %xc_get_hsync_freq.exit.if.end48_crit_edge

xc_get_hsync_freq.exit.if.end48_crit_edge:        ; preds = %xc_get_hsync_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end45:                                         ; preds = %xc_get_hsync_freq.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call47 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118, ptr noundef nonnull @.str.3, i32 noundef %hsync_freq_hz.0) #9
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %xc_get_hsync_freq.exit.if.end48_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i229) #6
  %140 = getelementptr inbounds [2 x i8], ptr %buf.i.i229, i32 0, i32 1
  %141 = ptrtoint ptr %buf.i.i229 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 0, ptr %buf.i.i229, align 1
  %142 = ptrtoint ptr %140 to i32
  call void @__asan_store1_noabort(i32 %142)
  store i8 2, ptr %140, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i230) #6
  %143 = ptrtoint ptr %bval.i.i230 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 0, ptr %bval.i.i230, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i231) #6
  %144 = getelementptr inbounds i8, ptr %msg.i.i231, i32 4
  %145 = call ptr @memset(ptr %144, i32 255, i32 16)
  %146 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %priv, align 4
  %conv6.i.i232 = zext i8 %147 to i16
  %148 = ptrtoint ptr %msg.i.i231 to i32
  call void @__asan_store2_noabort(i32 %148)
  store i16 %conv6.i.i232, ptr %msg.i.i231, align 4
  %flags.i.i233 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 0, i32 1
  %149 = ptrtoint ptr %flags.i.i233 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 0, ptr %flags.i.i233, align 2
  %150 = ptrtoint ptr %144 to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 2, ptr %144, align 4
  %buf7.i.i234 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 0, i32 3
  %151 = ptrtoint ptr %buf7.i.i234 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %buf.i.i229, ptr %buf7.i.i234, align 4
  %arrayinit.element8.i.i235 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1
  %152 = ptrtoint ptr %arrayinit.element8.i.i235 to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 %conv6.i.i232, ptr %arrayinit.element8.i.i235, align 4
  %flags13.i.i236 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1, i32 1
  %153 = ptrtoint ptr %flags13.i.i236 to i32
  call void @__asan_store2_noabort(i32 %153)
  store i16 1, ptr %flags13.i.i236, align 2
  %len14.i.i237 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1, i32 2
  %154 = ptrtoint ptr %len14.i.i237 to i32
  call void @__asan_store2_noabort(i32 %154)
  store i16 2, ptr %len14.i.i237, align 4
  %buf15.i.i238 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i231, i32 1, i32 3
  %155 = ptrtoint ptr %buf15.i.i238 to i32
  call void @__asan_store4_noabort(i32 %155)
  store ptr %bval.i.i230, ptr %buf15.i.i238, align 4
  %156 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %adap.i.i, align 4
  %call.i.i240 = call i32 @i2c_transfer(ptr noundef %157, ptr noundef nonnull %msg.i.i231, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i240)
  %cmp.not.i.i241 = icmp eq i32 %call.i.i240, 2
  br i1 %cmp.not.i.i241, label %if.end.i.i249, label %do.end.i.i243

do.end.i.i243:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i242 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_frame_lines.exit

if.end.i.i249:                                    ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  %158 = ptrtoint ptr %bval.i.i230 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %bval.i.i230, align 2
  %conv21.i.i244 = zext i8 %159 to i32
  %shl.i.i245 = shl nuw nsw i32 %conv21.i.i244, 8
  %arrayidx22.i.i246 = getelementptr inbounds [2 x i8], ptr %bval.i.i230, i32 0, i32 1
  %160 = ptrtoint ptr %arrayidx22.i.i246 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %arrayidx22.i.i246, align 1
  %conv23.i.i247 = zext i8 %161 to i32
  %or.i.i248 = or i32 %shl.i.i245, %conv23.i.i247
  br label %xc_get_frame_lines.exit

xc_get_frame_lines.exit:                          ; preds = %if.end.i.i249, %do.end.i.i243
  %frame_lines.0 = phi i32 [ %or.i.i248, %if.end.i.i249 ], [ 65535, %do.end.i.i243 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i231) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i230) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i229) #6
  %162 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %162)
  %cmp50 = icmp sgt i32 %162, 0
  br i1 %cmp50, label %do.end55, label %xc_get_frame_lines.exit.if.end59_crit_edge

xc_get_frame_lines.exit.if.end59_crit_edge:       ; preds = %xc_get_frame_lines.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end59

do.end55:                                         ; preds = %xc_get_frame_lines.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121, ptr noundef nonnull @.str.3, i32 noundef %frame_lines.0) #9
  br label %if.end59

if.end59:                                         ; preds = %do.end55, %xc_get_frame_lines.exit.if.end59_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i251) #6
  %163 = getelementptr inbounds [2 x i8], ptr %buf.i.i251, i32 0, i32 1
  %164 = ptrtoint ptr %buf.i.i251 to i32
  call void @__asan_store1_noabort(i32 %164)
  store i8 0, ptr %buf.i.i251, align 1
  %165 = ptrtoint ptr %163 to i32
  call void @__asan_store1_noabort(i32 %165)
  store i8 1, ptr %163, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i252) #6
  %166 = ptrtoint ptr %bval.i.i252 to i32
  call void @__asan_store2_noabort(i32 %166)
  store i16 0, ptr %bval.i.i252, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i253) #6
  %167 = getelementptr inbounds i8, ptr %msg.i.i253, i32 4
  %168 = call ptr @memset(ptr %167, i32 255, i32 16)
  %169 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %priv, align 4
  %conv6.i.i254 = zext i8 %170 to i16
  %171 = ptrtoint ptr %msg.i.i253 to i32
  call void @__asan_store2_noabort(i32 %171)
  store i16 %conv6.i.i254, ptr %msg.i.i253, align 4
  %flags.i.i255 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i253, i32 0, i32 1
  %172 = ptrtoint ptr %flags.i.i255 to i32
  call void @__asan_store2_noabort(i32 %172)
  store i16 0, ptr %flags.i.i255, align 2
  %173 = ptrtoint ptr %167 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 2, ptr %167, align 4
  %buf7.i.i256 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i253, i32 0, i32 3
  %174 = ptrtoint ptr %buf7.i.i256 to i32
  call void @__asan_store4_noabort(i32 %174)
  store ptr %buf.i.i251, ptr %buf7.i.i256, align 4
  %arrayinit.element8.i.i257 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i253, i32 1
  %175 = ptrtoint ptr %arrayinit.element8.i.i257 to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv6.i.i254, ptr %arrayinit.element8.i.i257, align 4
  %flags13.i.i258 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i253, i32 1, i32 1
  %176 = ptrtoint ptr %flags13.i.i258 to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 1, ptr %flags13.i.i258, align 2
  %len14.i.i259 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i253, i32 1, i32 2
  %177 = ptrtoint ptr %len14.i.i259 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 2, ptr %len14.i.i259, align 4
  %buf15.i.i260 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i253, i32 1, i32 3
  %178 = ptrtoint ptr %buf15.i.i260 to i32
  call void @__asan_store4_noabort(i32 %178)
  store ptr %bval.i.i252, ptr %buf15.i.i260, align 4
  %179 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %adap.i.i, align 4
  %call.i.i262 = call i32 @i2c_transfer(ptr noundef %180, ptr noundef nonnull %msg.i.i253, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i262)
  %cmp.not.i.i263 = icmp eq i32 %call.i.i262, 2
  br i1 %cmp.not.i.i263, label %if.end.i.i271, label %do.end.i.i265

do.end.i.i265:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i264 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_quality.exit

if.end.i.i271:                                    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i.i268 = getelementptr inbounds [2 x i8], ptr %bval.i.i252, i32 0, i32 1
  %181 = ptrtoint ptr %arrayidx22.i.i268 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx22.i.i268, align 1
  %183 = and i8 %182, 7
  %phi.cast322 = zext i8 %183 to i32
  br label %xc_get_quality.exit

xc_get_quality.exit:                              ; preds = %if.end.i.i271, %do.end.i.i265
  %quality.0 = phi i32 [ %phi.cast322, %if.end.i.i271 ], [ 7, %do.end.i.i265 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i253) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i252) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i251) #6
  %184 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp61 = icmp sgt i32 %184, 0
  br i1 %cmp61, label %do.end66, label %xc_get_quality.exit.if.end70_crit_edge

xc_get_quality.exit.if.end70_crit_edge:           ; preds = %xc_get_quality.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70

do.end66:                                         ; preds = %xc_get_quality.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call69 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124, ptr noundef nonnull @.str.3, i32 noundef %quality.0) #9
  br label %if.end70

if.end70:                                         ; preds = %do.end66, %xc_get_quality.exit.if.end70_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i273) #6
  %185 = getelementptr inbounds [2 x i8], ptr %buf.i.i273, i32 0, i32 1
  %186 = ptrtoint ptr %buf.i.i273 to i32
  call void @__asan_store1_noabort(i32 %186)
  store i8 0, ptr %buf.i.i273, align 1
  %187 = ptrtoint ptr %185 to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 6, ptr %185, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i274) #6
  %188 = ptrtoint ptr %bval.i.i274 to i32
  call void @__asan_store2_noabort(i32 %188)
  store i16 0, ptr %bval.i.i274, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i275) #6
  %189 = getelementptr inbounds i8, ptr %msg.i.i275, i32 4
  %190 = call ptr @memset(ptr %189, i32 255, i32 16)
  %191 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %priv, align 4
  %conv6.i.i276 = zext i8 %192 to i16
  %193 = ptrtoint ptr %msg.i.i275 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 %conv6.i.i276, ptr %msg.i.i275, align 4
  %flags.i.i277 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i275, i32 0, i32 1
  %194 = ptrtoint ptr %flags.i.i277 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 0, ptr %flags.i.i277, align 2
  %195 = ptrtoint ptr %189 to i32
  call void @__asan_store2_noabort(i32 %195)
  store i16 2, ptr %189, align 4
  %buf7.i.i278 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i275, i32 0, i32 3
  %196 = ptrtoint ptr %buf7.i.i278 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %buf.i.i273, ptr %buf7.i.i278, align 4
  %arrayinit.element8.i.i279 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i275, i32 1
  %197 = ptrtoint ptr %arrayinit.element8.i.i279 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %conv6.i.i276, ptr %arrayinit.element8.i.i279, align 4
  %flags13.i.i280 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i275, i32 1, i32 1
  %198 = ptrtoint ptr %flags13.i.i280 to i32
  call void @__asan_store2_noabort(i32 %198)
  store i16 1, ptr %flags13.i.i280, align 2
  %len14.i.i281 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i275, i32 1, i32 2
  %199 = ptrtoint ptr %len14.i.i281 to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 2, ptr %len14.i.i281, align 4
  %buf15.i.i282 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i275, i32 1, i32 3
  %200 = ptrtoint ptr %buf15.i.i282 to i32
  call void @__asan_store4_noabort(i32 %200)
  store ptr %bval.i.i274, ptr %buf15.i.i282, align 4
  %201 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %adap.i.i, align 4
  %call.i.i284 = call i32 @i2c_transfer(ptr noundef %202, ptr noundef nonnull %msg.i.i275, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i284)
  %cmp.not.i.i285 = icmp eq i32 %call.i.i284, 2
  br i1 %cmp.not.i.i285, label %if.end.i.i293, label %do.end.i.i287

do.end.i.i287:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i286 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_analogsnr.exit

if.end.i.i293:                                    ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx22.i.i290 = getelementptr inbounds [2 x i8], ptr %bval.i.i274, i32 0, i32 1
  %203 = ptrtoint ptr %arrayidx22.i.i290 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %arrayidx22.i.i290, align 1
  %205 = and i8 %204, 63
  %phi.cast = zext i8 %205 to i32
  br label %xc_get_analogsnr.exit

xc_get_analogsnr.exit:                            ; preds = %if.end.i.i293, %do.end.i.i287
  %snr.0 = phi i32 [ %phi.cast, %if.end.i.i293 ], [ 63, %do.end.i.i287 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i275) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i274) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i273) #6
  %206 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %cmp72 = icmp sgt i32 %206, 0
  br i1 %cmp72, label %do.end77, label %xc_get_analogsnr.exit.if.end82_crit_edge

xc_get_analogsnr.exit.if.end82_crit_edge:         ; preds = %xc_get_analogsnr.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

do.end77:                                         ; preds = %xc_get_analogsnr.exit
  call void @__sanitizer_cov_trace_pc() #8
  %call81 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.3, i32 noundef %snr.0) #9
  br label %if.end82

if.end82:                                         ; preds = %do.end77, %xc_get_analogsnr.exit.if.end82_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i295) #6
  %207 = getelementptr inbounds [2 x i8], ptr %buf.i.i295, i32 0, i32 1
  %208 = ptrtoint ptr %buf.i.i295 to i32
  call void @__asan_store1_noabort(i32 %208)
  store i8 0, ptr %buf.i.i295, align 1
  %209 = ptrtoint ptr %207 to i32
  call void @__asan_store1_noabort(i32 %209)
  store i8 15, ptr %207, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i296) #6
  %210 = ptrtoint ptr %bval.i.i296 to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 0, ptr %bval.i.i296, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i297) #6
  %211 = getelementptr inbounds i8, ptr %msg.i.i297, i32 4
  %212 = call ptr @memset(ptr %211, i32 255, i32 16)
  %213 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %213)
  %214 = load i8, ptr %priv, align 4
  %conv6.i.i298 = zext i8 %214 to i16
  %215 = ptrtoint ptr %msg.i.i297 to i32
  call void @__asan_store2_noabort(i32 %215)
  store i16 %conv6.i.i298, ptr %msg.i.i297, align 4
  %flags.i.i299 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i297, i32 0, i32 1
  %216 = ptrtoint ptr %flags.i.i299 to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %flags.i.i299, align 2
  %217 = ptrtoint ptr %211 to i32
  call void @__asan_store2_noabort(i32 %217)
  store i16 2, ptr %211, align 4
  %buf7.i.i300 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i297, i32 0, i32 3
  %218 = ptrtoint ptr %buf7.i.i300 to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %buf.i.i295, ptr %buf7.i.i300, align 4
  %arrayinit.element8.i.i301 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i297, i32 1
  %219 = ptrtoint ptr %arrayinit.element8.i.i301 to i32
  call void @__asan_store2_noabort(i32 %219)
  store i16 %conv6.i.i298, ptr %arrayinit.element8.i.i301, align 4
  %flags13.i.i302 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i297, i32 1, i32 1
  %220 = ptrtoint ptr %flags13.i.i302 to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 1, ptr %flags13.i.i302, align 2
  %len14.i.i303 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i297, i32 1, i32 2
  %221 = ptrtoint ptr %len14.i.i303 to i32
  call void @__asan_store2_noabort(i32 %221)
  store i16 2, ptr %len14.i.i303, align 4
  %buf15.i.i304 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i297, i32 1, i32 3
  %222 = ptrtoint ptr %buf15.i.i304 to i32
  call void @__asan_store4_noabort(i32 %222)
  store ptr %bval.i.i296, ptr %buf15.i.i304, align 4
  %223 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %adap.i.i, align 4
  %call.i.i306 = call i32 @i2c_transfer(ptr noundef %224, ptr noundef nonnull %msg.i.i297, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i306)
  %cmp.not.i.i307 = icmp eq i32 %call.i.i306, 2
  br i1 %cmp.not.i.i307, label %if.end.i.i315, label %do.end.i.i309

do.end.i.i309:                                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i308 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %xc_get_totalgain.exit

if.end.i.i315:                                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  %225 = ptrtoint ptr %bval.i.i296 to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %bval.i.i296, align 2
  %conv21.i.i310 = zext i8 %226 to i32
  %shl.i.i311 = shl nuw nsw i32 %conv21.i.i310, 8
  %arrayidx22.i.i312 = getelementptr inbounds [2 x i8], ptr %bval.i.i296, i32 0, i32 1
  %227 = ptrtoint ptr %arrayidx22.i.i312 to i32
  call void @__asan_load1_noabort(i32 %227)
  %228 = load i8, ptr %arrayidx22.i.i312, align 1
  %conv23.i.i313 = zext i8 %228 to i32
  %or.i.i314 = or i32 %shl.i.i311, %conv23.i.i313
  br label %xc_get_totalgain.exit

xc_get_totalgain.exit:                            ; preds = %if.end.i.i315, %do.end.i.i309
  %totalgain.0 = phi i32 [ %or.i.i314, %if.end.i.i315 ], [ 65535, %do.end.i.i309 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i297) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i296) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i295) #6
  %229 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %229)
  %cmp84 = icmp sgt i32 %229, 0
  br i1 %cmp84, label %do.end89, label %xc_get_totalgain.exit.if.end95_crit_edge

xc_get_totalgain.exit.if.end95_crit_edge:         ; preds = %xc_get_totalgain.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end95

do.end89:                                         ; preds = %xc_get_totalgain.exit
  call void @__sanitizer_cov_trace_pc() #8
  %div125 = lshr i32 %totalgain.0, 8
  %rem = and i32 %totalgain.0, 255
  %mul = mul nuw nsw i32 %rem, 100
  %div93126 = lshr i32 %mul, 8
  %call94 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.3, i32 noundef %div125, i32 noundef %div93126) #9
  br label %if.end95

if.end95:                                         ; preds = %do.end89, %xc_get_totalgain.exit.if.end95_crit_edge
  %pll_register_no = getelementptr inbounds %struct.xc5000_priv, ptr %priv, i32 0, i32 13
  %230 = ptrtoint ptr %pll_register_no to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %pll_register_no, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %231)
  %tobool.not = icmp eq i16 %231, 0
  br i1 %tobool.not, label %if.end95.if.end112_crit_edge, label %if.then96

if.end95.if.end112_crit_edge:                     ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

if.then96:                                        ; preds = %if.end95
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %232 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %233 = lshr i16 %231, 8
  %conv1.i = trunc i16 %233 to i8
  %234 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %234)
  store i8 %conv1.i, ptr %buf.i, align 1
  %conv3.i = trunc i16 %231 to i8
  %235 = ptrtoint ptr %232 to i32
  call void @__asan_store1_noabort(i32 %235)
  store i8 %conv3.i, ptr %232, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %236 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %236)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #6
  %237 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %238 = call ptr @memset(ptr %237, i32 255, i32 16)
  %239 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %priv, align 4
  %conv6.i = zext i8 %240 to i16
  %241 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %241)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %242 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %242)
  store i16 0, ptr %flags.i, align 2
  %243 = ptrtoint ptr %237 to i32
  call void @__asan_store2_noabort(i32 %243)
  store i16 2, ptr %237, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %244 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %244)
  store ptr %buf.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %245 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %245)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %246 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 1, ptr %flags13.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %247 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %247)
  store i16 2, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %248 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store ptr %bval.i, ptr %buf15.i, align 4
  %249 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %adap.i.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %250, ptr noundef nonnull %msg.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.then100, label %xc5000_readreg.exit

xc5000_readreg.exit:                              ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end112

if.then100:                                       ; preds = %if.then96
  %251 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %251)
  %252 = load i8, ptr %bval.i, align 2
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  %253 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %arrayidx22.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  %255 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp101 = icmp sgt i32 %255, 0
  br i1 %cmp101, label %do.end106, label %if.then100.if.end112_crit_edge

if.then100.if.end112_crit_edge:                   ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end112

do.end106:                                        ; preds = %if.then100
  call void @__sanitizer_cov_trace_pc() #8
  %conv21.i = zext i8 %252 to i32
  %shl.i = shl nuw nsw i32 %conv21.i, 8
  %conv23.i = zext i8 %254 to i32
  %or.i = or i32 %shl.i, %conv23.i
  %call109 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133, ptr noundef nonnull @.str.3, i32 noundef %or.i) #9
  br label %if.end112

if.end112:                                        ; preds = %do.end106, %if.then100.if.end112_crit_edge, %xc5000_readreg.exit, %if.end95.if.end112_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc_write_reg(ptr nocapture noundef readonly %priv, i16 noundef zeroext %reg_addr, i16 noundef zeroext %i2c_data) unnamed_addr #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i48 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [4 x i8], align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf, align 2
  %conv4 = trunc i16 %reg_addr to i8
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv4, ptr %0, align 1
  %5 = lshr i16 %i2c_data, 8
  %conv9 = trunc i16 %5 to i8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv9, ptr %1, align 2
  %conv13 = trunc i16 %i2c_data to i8
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv13, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #6
  %8 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 327679, ptr %8, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priv, align 4
  %conv.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 1
  br i1 %cmp.not.i, label %xc_send_i2c_data.exit, label %xc_send_i2c_data.exit.thread

xc_send_i2c_data.exit.thread:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call7.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.103, i32 noundef 4) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  br label %if.end35.thread

xc_send_i2c_data.exit:                            ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #6
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %msg.i48, i32 4
  %flags.i49 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 1
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 0, i32 3
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 1
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 2
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i48, i32 1, i32 3
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %if.end34.while.body_crit_edge, %xc_send_i2c_data.exit
  %watch_dog_timer.066 = phi i32 [ 100, %xc_send_i2c_data.exit ], [ %dec, %if.end34.while.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #6
  %19 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %buf.i, align 1
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 9, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #6
  %21 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i48) #6
  %22 = call ptr @memset(ptr %18, i32 255, i32 16)
  %23 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %priv, align 4
  %conv6.i = zext i8 %24 to i16
  %25 = ptrtoint ptr %msg.i48 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv6.i, ptr %msg.i48, align 4
  %26 = ptrtoint ptr %flags.i49 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 0, ptr %flags.i49, align 2
  %27 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 2, ptr %18, align 4
  %28 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %buf.i, ptr %buf7.i, align 4
  %29 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %30 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 1, ptr %flags13.i, align 2
  %31 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 2, ptr %len14.i, align 4
  %32 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %bval.i, ptr %buf15.i, align 4
  %33 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adap.i, align 4
  %call.i51 = call i32 @i2c_transfer(ptr noundef %34, ptr noundef nonnull %msg.i48, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i51)
  %cmp.not.i52 = icmp eq i32 %call.i51, 2
  br i1 %cmp.not.i52, label %if.then24, label %if.end34.thread

if.end34.thread:                                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  br label %if.end35

if.then24:                                        ; preds = %while.body
  %35 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %bval.i, align 2
  %conv21.i = zext i8 %36 to i16
  %shl.i = shl nuw i16 %conv21.i, 8
  %37 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %38 to i16
  %or.i = or i16 %shl.i, %conv23.i
  %39 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %or.i, ptr %buf, align 2
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i48) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %cmp27 = icmp eq i8 %36, 0
  br i1 %cmp27, label %land.lhs.true, label %if.then24.if.end34_crit_edge

if.then24.if.end34_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true:                                    ; preds = %if.then24
  %40 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp31 = icmp eq i8 %41, 0
  br i1 %cmp31, label %land.lhs.true.if.end35.thread_crit_edge, label %land.lhs.true.if.end34_crit_edge

land.lhs.true.if.end34_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34

land.lhs.true.if.end35.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35.thread

if.end34:                                         ; preds = %land.lhs.true.if.end34_crit_edge, %if.then24.if.end34_crit_edge
  call void @msleep(i32 noundef 5) #6
  %dec = add nsw i32 %watch_dog_timer.066, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp16 = icmp ne i32 %dec, 0
  %or.cond = and i1 %cmp16, %cmp.not.i52
  br i1 %or.cond, label %if.end34.while.body_crit_edge, label %if.end34.if.end35_crit_edge

if.end34.if.end35_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end35

if.end34.while.body_crit_edge:                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end35:                                         ; preds = %if.end34.if.end35_crit_edge, %if.end34.thread
  %watch_dog_timer.172 = phi i32 [ %watch_dog_timer.066, %if.end34.thread ], [ %dec, %if.end34.if.end35_crit_edge ]
  %retval.0.i545971 = phi i32 [ -121, %if.end34.thread ], [ 0, %if.end34.if.end35_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %watch_dog_timer.172)
  %cmp36 = icmp eq i32 %watch_dog_timer.172, 0
  %spec.select = select i1 %cmp36, i32 -121, i32 %retval.0.i545971
  br label %if.end35.thread

if.end35.thread:                                  ; preds = %if.end35, %land.lhs.true.if.end35.thread_crit_edge, %xc_send_i2c_data.exit.thread
  %42 = phi i32 [ -121, %xc_send_i2c_data.exit.thread ], [ %spec.select, %if.end35 ], [ 0, %land.lhs.true.if.end35.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #6
  ret i32 %42
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc5000_set_params(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %bval.i.i = alloca [2 x i8], align 2
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %call = tail call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %fe, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp.not = icmp eq i32 %call, 0
  br i1 %cmp.not, label %if.end4, label %if.then

if.then:                                          ; preds = %entry
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1 = icmp sgt i32 %2, 0
  br i1 %cmp1, label %do.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.140, ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end4:                                          ; preds = %entry
  %mode = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mode, align 4
  %5 = zext i32 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.260)
  switch i32 %4, label %if.end4.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb8
  ]

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end4
  %6 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tuner_priv, align 4
  %radio_input1.i = getelementptr inbounds %struct.xc5000_priv, ptr %7, i32 0, i32 10
  %8 = ptrtoint ptr %radio_input1.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %radio_input1.i, align 1
  %conv.i = zext i8 %9 to i32
  %switch.tableidx = add i8 %9, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx)
  %10 = icmp ult i8 %switch.tableidx, 3
  br i1 %10, label %switch.lookup, label %if.else14.i

if.else14.i:                                      ; preds = %sw.bb
  %11 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp15.i = icmp sgt i32 %11, 0
  br i1 %cmp15.i, label %do.end.i, label %if.else14.i.cleanup_crit_edge

if.else14.i.cleanup_crit_edge:                    ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end.i:                                         ; preds = %if.else14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.143, i32 noundef %conv.i) #9
  br label %cleanup

switch.lookup:                                    ; preds = %sw.bb
  %12 = sext i8 %switch.tableidx to i32
  %switch.gep = getelementptr inbounds [3 x i32], ptr @switch.table.xc5000_set_params, i32 0, i32 %12
  %13 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %13)
  %switch.load = load i32, ptr %switch.gep, align 4
  %video_mode.i = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %switch.load, i32 2
  %14 = ptrtoint ptr %video_mode.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %video_mode.i, align 2
  %audio_mode.i = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %switch.load, i32 1
  %16 = ptrtoint ptr %audio_mode.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %audio_mode.i, align 4
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp.i = icmp sgt i32 %18, 0
  br i1 %cmp.i, label %if.end.i48, label %switch.lookup.if.end24.i_crit_edge

switch.lookup.if.end24.i_crit_edge:               ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end.i48:                                       ; preds = %switch.lookup
  %conv.i45 = zext i16 %15 to i32
  %conv1.i = zext i16 %17 to i32
  %call.i46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.151, i32 noundef %conv.i45, i32 noundef %conv1.i) #9
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp12.i = icmp sgt i32 %.pr, 0
  br i1 %cmp12.i, label %if.end24.sink.split.i, label %if.end.i48.if.end24.i_crit_edge

if.end.i48.if.end24.i_crit_edge:                  ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end24.sink.split.i:                            ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20.i = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %switch.load
  %19 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx20.i, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.151, ptr noundef %20) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.end24.sink.split.i, %if.end.i48.if.end24.i_crit_edge, %switch.lookup.if.end24.i_crit_edge
  %call25.i50 = tail call fastcc i32 @xc_write_reg(ptr noundef %7, i16 noundef zeroext 1, i16 noundef zeroext %15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i50)
  %cmp26.i = icmp eq i32 %call25.i50, 0
  br i1 %cmp26.i, label %xc_set_tv_standard.exit, label %if.end24.i.do.end31.i_crit_edge

if.end24.i.do.end31.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.i

xc_set_tv_standard.exit:                          ; preds = %if.end24.i
  %call29.i = tail call fastcc i32 @xc_write_reg(ptr noundef %7, i16 noundef zeroext 2, i16 noundef zeroext %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp26.not.i = icmp eq i32 %call29.i, 0
  br i1 %cmp26.not.i, label %if.end34.i, label %xc_set_tv_standard.exit.do.end31.i_crit_edge

xc_set_tv_standard.exit.do.end31.i_crit_edge:     ; preds = %xc_set_tv_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end31.i

do.end31.i:                                       ; preds = %xc_set_tv_standard.exit.do.end31.i_crit_edge, %if.end24.i.do.end31.i_crit_edge
  %call33.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #9
  br label %cleanup

if.end34.i:                                       ; preds = %xc_set_tv_standard.exit
  %rf_mode.i = getelementptr inbounds %struct.xc5000_priv, ptr %7, i32 0, i32 9
  %21 = ptrtoint ptr %rf_mode.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %rf_mode.i, align 4
  %conv35.i = zext i8 %22 to i16
  %23 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp.i.i = icmp sgt i32 %23, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end34.i.if.end.i.i_crit_edge

if.end34.i.if.end.i.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i = zext i8 %22 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp2.i.i = icmp eq i8 %22, 0
  %cond.i.i = select i1 %cmp2.i.i, ptr @.str.183, ptr @.str.184
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.182, i32 noundef %conv.i.i, ptr noundef nonnull %cond.i.i) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end34.i.if.end.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %switch.i.i = icmp ult i8 %22, 2
  br i1 %switch.i.i, label %if.end.i.i.xc_set_signal_source.exit.i_crit_edge, label %if.then10.i.i

if.end.i.i.xc_set_signal_source.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_set_signal_source.exit.i

if.then10.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.182) #9
  br label %xc_set_signal_source.exit.i

xc_set_signal_source.exit.i:                      ; preds = %if.then10.i.i, %if.end.i.i.xc_set_signal_source.exit.i_crit_edge
  %rf_mode.addr.0.i.i = phi i16 [ 1, %if.then10.i.i ], [ %conv35.i, %if.end.i.i.xc_set_signal_source.exit.i_crit_edge ]
  %call16.i.i = tail call fastcc i32 @xc_write_reg(ptr noundef %7, i16 noundef zeroext 13, i16 noundef zeroext %rf_mode.addr.0.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %cmp37.not.i = icmp eq i32 %call16.i.i, 0
  br i1 %cmp37.not.i, label %if.end47.i, label %do.end42.i

do.end42.i:                                       ; preds = %xc_set_signal_source.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %rf_mode.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %rf_mode.i, align 4
  %conv45.i = zext i8 %25 to i32
  %call46.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv45.i) #9
  br label %cleanup

if.end47.i:                                       ; preds = %xc_set_signal_source.exit.i
  %26 = ptrtoint ptr %radio_input1.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %radio_input1.i, align 1
  %switch.tableidx56 = add i8 %27, -1
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %switch.tableidx56)
  %28 = icmp ult i8 %switch.tableidx56, 3
  br i1 %28, label %switch.lookup55, label %if.end47.i.if.end66.i_crit_edge

if.end47.i.if.end66.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66.i

switch.lookup55:                                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = sext i8 %switch.tableidx56 to i32
  %switch.gep57 = getelementptr inbounds [3 x i16], ptr @switch.table.xc5000_set_params.255, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep57 to i32
  call void @__asan_load2_noabort(i32 %30)
  %switch.load58 = load i16, ptr %switch.gep57, align 2
  %call64.i = tail call fastcc i32 @xc_write_reg(ptr noundef %7, i16 noundef zeroext 11, i16 noundef zeroext %switch.load58) #6
  br label %if.end66.i

if.end66.i:                                       ; preds = %switch.lookup55, %if.end47.i.if.end66.i_crit_edge
  %freq_hz.i = getelementptr inbounds %struct.xc5000_priv, ptr %7, i32 0, i32 4
  %31 = ptrtoint ptr %freq_hz.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %freq_hz.i, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i87.i = icmp sgt i32 %33, 0
  br i1 %cmp.i87.i, label %if.end.i89.i, label %if.end66.i.if.end.i.i.i_crit_edge

if.end66.i.if.end.i.i.i_crit_edge:                ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

if.end.i89.i:                                     ; preds = %if.end66.i
  %call.i88.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.189, i32 noundef %32) #9
  %.pr.i.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i)
  %cmp.i.i.i = icmp sgt i32 %.pr.i.i, 0
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end.i89.i.if.end.i.i.i_crit_edge

if.end.i89.i.if.end.i.i.i_crit_edge:              ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i89.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.190, i32 noundef %32) #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %do.end.i.i.i, %if.end.i89.i.if.end.i.i.i_crit_edge, %if.end66.i.if.end.i.i.i_crit_edge
  %34 = add i32 %32, -1023000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1022000001, i32 %34)
  %35 = icmp ult i32 %34, -1022000001
  br i1 %35, label %if.end.i.i.i.cleanup_crit_edge, label %if.end4.i.i.i

if.end.i.i.i.cleanup_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i.i = udiv i32 %32, 15625
  %conv.i.i.i = trunc i32 %div.i.i.i to i16
  %call5.i.i.i = tail call fastcc i32 @xc_write_reg(ptr noundef %7, i16 noundef zeroext 16, i16 noundef zeroext %conv.i.i.i) #6
  br label %cleanup

sw.bb6:                                           ; preds = %if.end4
  %36 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %tuner_priv, align 4
  %rf_mode.i15 = getelementptr inbounds %struct.xc5000_priv, ptr %37, i32 0, i32 9
  %video_standard.i = getelementptr inbounds %struct.xc5000_priv, ptr %37, i32 0, i32 7
  %freq_hz.i16 = getelementptr inbounds %struct.xc5000_priv, ptr %37, i32 0, i32 4
  %pll_register_no.i = getelementptr inbounds %struct.xc5000_priv, ptr %37, i32 0, i32 13
  %38 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %39 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %37, i32 0, i32 1
  %arrayidx22.i.i = getelementptr inbounds [2 x i8], ptr %bval.i.i, i32 0, i32 1
  br label %tune_channel.i

tune_channel.i:                                   ; preds = %if.end44.i.tune_channel.i_crit_edge, %sw.bb6
  %40 = ptrtoint ptr %rf_mode.i15 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %rf_mode.i15, align 4
  %conv.i17 = zext i8 %41 to i16
  %42 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp.i.i18 = icmp sgt i32 %42, 0
  br i1 %cmp.i.i18, label %do.end.i.i23, label %tune_channel.i.if.end.i.i25_crit_edge

tune_channel.i.if.end.i.i25_crit_edge:            ; preds = %tune_channel.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i25

do.end.i.i23:                                     ; preds = %tune_channel.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i.i19 = zext i8 %41 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %cmp2.i.i20 = icmp eq i8 %41, 0
  %cond.i.i21 = select i1 %cmp2.i.i20, ptr @.str.183, ptr @.str.184
  %call.i.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.182, i32 noundef %conv.i.i19, ptr noundef nonnull %cond.i.i21) #9
  br label %if.end.i.i25

if.end.i.i25:                                     ; preds = %do.end.i.i23, %tune_channel.i.if.end.i.i25_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %41)
  %switch.i.i24 = icmp ult i8 %41, 2
  br i1 %switch.i.i24, label %if.end.i.i25.xc_set_signal_source.exit.i30_crit_edge, label %if.then10.i.i27

if.end.i.i25.xc_set_signal_source.exit.i30_crit_edge: ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_set_signal_source.exit.i30

if.then10.i.i27:                                  ; preds = %if.end.i.i25
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i.i26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.182) #9
  br label %xc_set_signal_source.exit.i30

xc_set_signal_source.exit.i30:                    ; preds = %if.then10.i.i27, %if.end.i.i25.xc_set_signal_source.exit.i30_crit_edge
  %rf_mode.addr.0.i.i28 = phi i16 [ 1, %if.then10.i.i27 ], [ %conv.i17, %if.end.i.i25.xc_set_signal_source.exit.i30_crit_edge ]
  %call16.i.i29 = call fastcc i32 @xc_write_reg(ptr noundef %37, i16 noundef zeroext 13, i16 noundef zeroext %rf_mode.addr.0.i.i28) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i29)
  %cmp.not.i = icmp eq i32 %call16.i.i29, 0
  br i1 %cmp.not.i, label %if.end.i, label %do.end.i31

do.end.i31:                                       ; preds = %xc_set_signal_source.exit.i30
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %rf_mode.i15 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %rf_mode.i15, align 4
  %conv3.i = zext i8 %44 to i32
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv3.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %xc_set_signal_source.exit.i30
  %45 = ptrtoint ptr %video_standard.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %video_standard.i, align 4
  %idxprom.i32 = zext i8 %46 to i32
  %video_mode.i33 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %idxprom.i32, i32 2
  %47 = ptrtoint ptr %video_mode.i33 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %video_mode.i33, align 2
  %audio_mode.i34 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %idxprom.i32, i32 1
  %49 = ptrtoint ptr %audio_mode.i34 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %audio_mode.i34, align 4
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %cmp.i75.i = icmp sgt i32 %51, 0
  br i1 %cmp.i75.i, label %if.end.i79.i, label %if.end.i.if.end24.i.i_crit_edge

if.end.i.if.end24.i.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

if.end.i79.i:                                     ; preds = %if.end.i
  %conv.i76.i = zext i16 %48 to i32
  %conv1.i.i = zext i16 %50 to i32
  %call.i77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.151, i32 noundef %conv.i76.i, i32 noundef %conv1.i.i) #9
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp12.i.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp12.i.i, label %do.end17.i.i, label %if.end.i79.i.if.end24.i.i_crit_edge

if.end.i79.i.if.end24.i.i_crit_edge:              ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i.i

do.end17.i.i:                                     ; preds = %if.end.i79.i
  call void @__sanitizer_cov_trace_pc() #8
  %52 = ptrtoint ptr %video_standard.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %video_standard.i, align 4
  %idxprom19.i.i = zext i8 %53 to i32
  %arrayidx20.i.i = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %idxprom19.i.i
  %54 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx20.i.i, align 4
  %call22.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.151, ptr noundef %55) #9
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %do.end17.i.i, %if.end.i79.i.if.end24.i.i_crit_edge, %if.end.i.if.end24.i.i_crit_edge
  %call25.i.i = call fastcc i32 @xc_write_reg(ptr noundef %37, i16 noundef zeroext 1, i16 noundef zeroext %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %cmp26.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %cmp26.i.i, label %xc_set_tv_standard.exit.i, label %if.end24.i.i.do.end14.i_crit_edge

if.end24.i.i.do.end14.i_crit_edge:                ; preds = %if.end24.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

xc_set_tv_standard.exit.i:                        ; preds = %if.end24.i.i
  %call29.i.i = call fastcc i32 @xc_write_reg(ptr noundef %37, i16 noundef zeroext 2, i16 noundef zeroext %50) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i.i)
  %cmp9.not.i = icmp eq i32 %call29.i.i, 0
  br i1 %cmp9.not.i, label %if.end17.i, label %xc_set_tv_standard.exit.i.do.end14.i_crit_edge

xc_set_tv_standard.exit.i.do.end14.i_crit_edge:   ; preds = %xc_set_tv_standard.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14.i

do.end14.i:                                       ; preds = %xc_set_tv_standard.exit.i.do.end14.i_crit_edge, %if.end24.i.i.do.end14.i_crit_edge
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #9
  br label %cleanup

if.end17.i:                                       ; preds = %xc_set_tv_standard.exit.i
  %call18.i = call fastcc i32 @xc_write_reg(ptr noundef %37, i16 noundef zeroext 11, i16 noundef zeroext 9) #6
  %56 = ptrtoint ptr %freq_hz.i16 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %freq_hz.i16, align 4
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp.i80.i = icmp sgt i32 %58, 0
  br i1 %cmp.i80.i, label %if.end.i82.i, label %if.end17.i.if.end.i.i.i39_crit_edge

if.end17.i.if.end.i.i.i39_crit_edge:              ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i39

if.end.i82.i:                                     ; preds = %if.end17.i
  %call.i81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.189, i32 noundef %57) #9
  %.pr.i.i35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i.i35)
  %cmp.i.i.i36 = icmp sgt i32 %.pr.i.i35, 0
  br i1 %cmp.i.i.i36, label %do.end.i.i.i38, label %if.end.i82.i.if.end.i.i.i39_crit_edge

if.end.i82.i.if.end.i.i.i39_crit_edge:            ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i.i39

do.end.i.i.i38:                                   ; preds = %if.end.i82.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i37 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.190, i32 noundef %57) #9
  br label %if.end.i.i.i39

if.end.i.i.i39:                                   ; preds = %do.end.i.i.i38, %if.end.i82.i.if.end.i.i.i39_crit_edge, %if.end17.i.if.end.i.i.i39_crit_edge
  %59 = add i32 %57, -1023000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1022000001, i32 %59)
  %60 = icmp ult i32 %59, -1022000001
  br i1 %60, label %if.end.i.i.i39.xc_tune_channel.exit.i_crit_edge, label %if.end4.i.i.i43

if.end.i.i.i39.xc_tune_channel.exit.i_crit_edge:  ; preds = %if.end.i.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_tune_channel.exit.i

if.end4.i.i.i43:                                  ; preds = %if.end.i.i.i39
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i.i40 = udiv i32 %57, 15625
  %conv.i.i.i41 = trunc i32 %div.i.i.i40 to i16
  %call5.i.i.i42 = call fastcc i32 @xc_write_reg(ptr noundef %37, i16 noundef zeroext 16, i16 noundef zeroext %conv.i.i.i41) #6
  br label %xc_tune_channel.exit.i

xc_tune_channel.exit.i:                           ; preds = %if.end4.i.i.i43, %if.end.i.i.i39.xc_tune_channel.exit.i_crit_edge
  %61 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i = icmp eq i32 %61, 0
  br i1 %tobool.not.i, label %xc_tune_channel.exit.i.if.end21.i_crit_edge, label %if.then20.i

xc_tune_channel.exit.i.if.end21.i_crit_edge:      ; preds = %xc_tune_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21.i

if.then20.i:                                      ; preds = %xc_tune_channel.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @xc_debug_dump(ptr noundef %37) #6
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then20.i, %xc_tune_channel.exit.i.if.end21.i_crit_edge
  %62 = ptrtoint ptr %pll_register_no.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %pll_register_no.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %63)
  %cmp23.not.i = icmp eq i16 %63, 0
  br i1 %cmp23.not.i, label %if.end21.i.cleanup_crit_edge, label %if.then25.i

if.end21.i.cleanup_crit_edge:                     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then25.i:                                      ; preds = %if.end21.i
  call void @msleep(i32 noundef 20) #6
  %64 = ptrtoint ptr %pll_register_no.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %pll_register_no.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #6
  %66 = lshr i16 %65, 8
  %conv1.i83.i = trunc i16 %66 to i8
  %67 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %conv1.i83.i, ptr %buf.i.i, align 1
  %conv3.i.i = trunc i16 %65 to i8
  %68 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %conv3.i.i, ptr %38, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i) #6
  %69 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 0, ptr %bval.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #6
  %70 = call ptr @memset(ptr %39, i32 255, i32 16)
  %71 = ptrtoint ptr %37 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %37, align 4
  %conv6.i.i = zext i8 %72 to i16
  %73 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %74 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 0, ptr %flags.i.i, align 2
  %75 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 2, ptr %39, align 4
  %76 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %77 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %78 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 1, ptr %flags13.i.i, align 2
  %79 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 2, ptr %len14.i.i, align 4
  %80 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %bval.i.i, ptr %buf15.i.i, align 4
  %81 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adap.i.i, align 4
  %call.i84.i = call i32 @i2c_transfer(ptr noundef %82, ptr noundef nonnull %msg.i.i, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i84.i)
  %cmp.not.i.i = icmp eq i32 %call.i84.i, 2
  br i1 %cmp.not.i.i, label %if.end30.i, label %xc5000_readreg.exit.i

xc5000_readreg.exit.i:                            ; preds = %if.then25.i
  call void @__sanitizer_cov_trace_pc() #8
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  br label %cleanup

if.end30.i:                                       ; preds = %if.then25.i
  %83 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %bval.i.i, align 2
  %conv21.i.i = zext i8 %84 to i16
  %shl.i.i = shl nuw i16 %conv21.i.i, 8
  %85 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %86 to i16
  %or.i.i = or i16 %shl.i.i, %conv23.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #6
  %conv31.i = zext i16 %or.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 63, i16 %or.i.i)
  %cmp32.i = icmp ugt i16 %or.i.i, 63
  br i1 %cmp32.i, label %if.then34.i, label %if.end30.i.cleanup_crit_edge

if.end30.i.cleanup_crit_edge:                     ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then34.i:                                      ; preds = %if.end30.i
  %87 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %cmp35.i = icmp sgt i32 %87, 0
  br i1 %cmp35.i, label %do.end40.i, label %if.then34.i.if.end44.i_crit_edge

if.then34.i.if.end44.i_crit_edge:                 ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end44.i

do.end40.i:                                       ; preds = %if.then34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call43.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.195, ptr noundef nonnull @.str.3, i32 noundef %conv31.i) #9
  br label %if.end44.i

if.end44.i:                                       ; preds = %do.end40.i, %if.then34.i.if.end44.i_crit_edge
  %call45.i = call fastcc i32 @xc_load_fw_and_init_tuner(ptr noundef %fe, i32 noundef 1) #6
  %cmp46.not.i = icmp eq i32 %call45.i, 0
  br i1 %cmp46.not.i, label %if.end44.i.tune_channel.i_crit_edge, label %do.end51.i

if.end44.i.tune_channel.i_crit_edge:              ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %tune_channel.i

do.end51.i:                                       ; preds = %if.end44.i
  call void @__sanitizer_cov_trace_pc() #8
  %call53.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.198) #9
  br label %cleanup

sw.bb8:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call fastcc i32 @xc5000_tune_digital(ptr noundef %fe)
  br label %cleanup

cleanup:                                          ; preds = %sw.bb8, %do.end51.i, %if.end30.i.cleanup_crit_edge, %xc5000_readreg.exit.i, %if.end21.i.cleanup_crit_edge, %do.end14.i, %do.end.i31, %if.end4.i.i.i, %if.end.i.i.i.cleanup_crit_edge, %do.end42.i, %do.end31.i, %do.end.i, %if.else14.i.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %sw.bb8 ], [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ 0, %if.end4.cleanup_crit_edge ], [ -121, %do.end31.i ], [ -121, %do.end42.i ], [ -22, %do.end.i ], [ -22, %if.else14.i.cleanup_crit_edge ], [ 0, %if.end.i.i.i.cleanup_crit_edge ], [ 0, %if.end4.i.i.i ], [ -121, %do.end.i31 ], [ -121, %do.end14.i ], [ -121, %do.end51.i ], [ -121, %xc5000_readreg.exit.i ], [ 0, %if.end21.i.cleanup_crit_edge ], [ 0, %if.end30.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc5000_tune_digital(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %rf_mode = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %rf_mode, align 4
  %conv = zext i8 %5 to i16
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.i = icmp sgt i32 %6, 0
  br i1 %cmp.i, label %do.end.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv.i = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp2.i = icmp eq i8 %5, 0
  %cond.i = select i1 %cmp2.i, ptr @.str.183, ptr @.str.184
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.182, i32 noundef %conv.i, ptr noundef nonnull %cond.i) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %switch.i = icmp ult i8 %5, 2
  br i1 %switch.i, label %if.end.i.xc_set_signal_source.exit_crit_edge, label %if.then10.i

if.end.i.xc_set_signal_source.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_set_signal_source.exit

if.then10.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.182) #9
  br label %xc_set_signal_source.exit

xc_set_signal_source.exit:                        ; preds = %if.then10.i, %if.end.i.xc_set_signal_source.exit_crit_edge
  %rf_mode.addr.0.i = phi i16 [ 1, %if.then10.i ], [ %conv, %if.end.i.xc_set_signal_source.exit_crit_edge ]
  %call16.i = tail call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 13, i16 noundef zeroext %rf_mode.addr.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i)
  %cmp.not = icmp eq i32 %call16.i, 0
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %xc_set_signal_source.exit
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %rf_mode, align 4
  %conv3 = zext i8 %8 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148, i32 noundef %conv3) #9
  br label %cleanup

if.end:                                           ; preds = %xc_set_signal_source.exit
  %video_standard = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 7
  %9 = ptrtoint ptr %video_standard to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %video_standard, align 4
  %idxprom = zext i8 %10 to i32
  %video_mode = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %idxprom, i32 2
  %11 = ptrtoint ptr %video_mode to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %video_mode, align 2
  %audio_mode = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %idxprom, i32 1
  %13 = ptrtoint ptr %audio_mode to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %audio_mode, align 4
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp.i64 = icmp sgt i32 %15, 0
  br i1 %cmp.i64, label %if.end.i68, label %if.end.if.end24.i_crit_edge

if.end.if.end24.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

if.end.i68:                                       ; preds = %if.end
  %conv.i65 = zext i16 %12 to i32
  %conv1.i = zext i16 %14 to i32
  %call.i66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.151, i32 noundef %conv.i65, i32 noundef %conv1.i) #9
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp12.i = icmp sgt i32 %.pr, 0
  br i1 %cmp12.i, label %do.end17.i, label %if.end.i68.if.end24.i_crit_edge

if.end.i68.if.end24.i_crit_edge:                  ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24.i

do.end17.i:                                       ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %video_standard to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %video_standard, align 4
  %idxprom19.i = zext i8 %17 to i32
  %arrayidx20.i = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc5000_standard, i32 0, i32 %idxprom19.i
  %18 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx20.i, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.151, ptr noundef %19) #9
  br label %if.end24.i

if.end24.i:                                       ; preds = %do.end17.i, %if.end.i68.if.end24.i_crit_edge, %if.end.if.end24.i_crit_edge
  %call25.i = tail call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 1, i16 noundef zeroext %12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i)
  %cmp26.i = icmp eq i32 %call25.i, 0
  br i1 %cmp26.i, label %xc_set_tv_standard.exit, label %if.end24.i.do.end14_crit_edge

if.end24.i.do.end14_crit_edge:                    ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

xc_set_tv_standard.exit:                          ; preds = %if.end24.i
  %call29.i = tail call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 2, i16 noundef zeroext %14) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp9.not = icmp eq i32 %call29.i, 0
  br i1 %cmp9.not, label %if.end17, label %xc_set_tv_standard.exit.do.end14_crit_edge

xc_set_tv_standard.exit.do.end14_crit_edge:       ; preds = %xc_set_tv_standard.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end14

do.end14:                                         ; preds = %xc_set_tv_standard.exit.do.end14_crit_edge, %if.end24.i.do.end14_crit_edge
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #9
  br label %cleanup

if.end17:                                         ; preds = %xc_set_tv_standard.exit
  %if_khz = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %if_khz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %if_khz, align 4
  %mul.i = shl i32 %21, 10
  %div.i = udiv i32 %mul.i, 1000
  %22 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i69 = icmp sgt i32 %22, 0
  br i1 %cmp.i69, label %do.end.i71, label %if.end17.xc_set_IF_frequency.exit_crit_edge

if.end17.xc_set_IF_frequency.exit_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_set_IF_frequency.exit

do.end.i71:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #8
  %call.i70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.210, i32 noundef %21, i32 noundef %div.i) #9
  br label %xc_set_IF_frequency.exit

xc_set_IF_frequency.exit:                         ; preds = %do.end.i71, %if.end17.xc_set_IF_frequency.exit_crit_edge
  %conv.i72 = trunc i32 %div.i to i16
  %call1.i = tail call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 5, i16 noundef zeroext %conv.i72) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp19.not = icmp eq i32 %call1.i, 0
  br i1 %cmp19.not, label %if.end28, label %do.end24

do.end24:                                         ; preds = %xc_set_IF_frequency.exit
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %if_khz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %if_khz, align 4
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.204, i32 noundef %24) #9
  br label %cleanup

if.end28:                                         ; preds = %xc_set_IF_frequency.exit
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp29 = icmp sgt i32 %25, 0
  br i1 %cmp29, label %do.end34, label %if.end28.if.end38_crit_edge

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %output_amp = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 11
  %26 = ptrtoint ptr %output_amp to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %output_amp, align 2
  %conv36 = zext i16 %27 to i32
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.200, i32 noundef %conv36) #9
  br label %if.end38

if.end38:                                         ; preds = %do.end34, %if.end28.if.end38_crit_edge
  %output_amp39 = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 11
  %28 = ptrtoint ptr %output_amp39 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %output_amp39, align 2
  %call40 = tail call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 11, i16 noundef zeroext %29)
  %freq_hz = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 4
  %30 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %freq_hz, align 4
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp.i74 = icmp sgt i32 %32, 0
  br i1 %cmp.i74, label %if.end.i76, label %if.end38.if.end.i.i_crit_edge

if.end38.if.end.i.i_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

if.end.i76:                                       ; preds = %if.end38
  %call.i75 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.189, i32 noundef %31) #9
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %cmp.i.i = icmp sgt i32 %.pr.i, 0
  br i1 %cmp.i.i, label %do.end.i.i, label %if.end.i76.if.end.i.i_crit_edge

if.end.i76.if.end.i.i_crit_edge:                  ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.188, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.190, i32 noundef %31) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end.i76.if.end.i.i_crit_edge, %if.end38.if.end.i.i_crit_edge
  %33 = add i32 %31, -1023000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1022000001, i32 %33)
  %34 = icmp ult i32 %33, -1022000001
  br i1 %34, label %if.end.i.i.xc_tune_channel.exit_crit_edge, label %if.end4.i.i

if.end.i.i.xc_tune_channel.exit_crit_edge:        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %xc_tune_channel.exit

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i.i = udiv i32 %31, 15625
  %conv.i.i = trunc i32 %div.i.i to i16
  %call5.i.i = tail call fastcc i32 @xc_write_reg(ptr noundef %1, i16 noundef zeroext 16, i16 noundef zeroext %conv.i.i) #6
  br label %xc_tune_channel.exit

xc_tune_channel.exit:                             ; preds = %if.end4.i.i, %if.end.i.i.xc_tune_channel.exit_crit_edge
  %35 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not = icmp eq i32 %35, 0
  br i1 %tobool.not, label %xc_tune_channel.exit.if.end43_crit_edge, label %if.then42

xc_tune_channel.exit.if.end43_crit_edge:          ; preds = %xc_tune_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43

if.then42:                                        ; preds = %xc_tune_channel.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call fastcc void @xc_debug_dump(ptr noundef %1)
  br label %if.end43

if.end43:                                         ; preds = %if.then42, %xc_tune_channel.exit.if.end43_crit_edge
  %bandwidth = getelementptr inbounds %struct.xc5000_priv, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %3, ptr %bandwidth, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end43, %do.end24, %do.end14, %do.end
  %retval.0 = phi i32 [ -121, %do.end ], [ -121, %do.end14 ], [ -5, %do.end24 ], [ 0, %if.end43 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 239)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 239)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !14, !15, !16, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !66, !67, !69, !70, !71, !73, !75, !76, !77, !78, !80, !81, !82, !84, !85, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !166, !168, !170, !172, !173, !174, !175, !177, !178, !179, !181, !182, !183, !184, !186, !187, !188, !190, !191, !192, !194, !195, !196, !198, !199, !200, !201, !203, !204, !205, !207, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !236, !237, !238, !240, !241, !242, !244, !245, !246, !248, !249, !250, !252, !253, !254, !256, !257, !259, !260, !261, !263, !264, !265, !266, !268, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !284, !286, !287, !288, !290, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !344, !345, !346, !347, !348, !350, !351, !352, !354, !355, !356, !357, !359, !360, !361, !363, !364, !365, !367, !368, !370, !371, !372, !374, !375, !376, !378, !379, !380, !382, !383, !385, !386, !387, !389, !390, !391, !393, !394, !395, !396, !398, !399, !400, !402, !403, !404, !406, !407, !408, !410, !411, !412, !414, !415, !416, !418, !419, !420, !422, !423, !425, !426, !427, !429, !430, !431, !433, !434, !435, !437, !438, !439, !440, !442, !443, !444, !446, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !460, !461, !463, !464, !465, !467, !468, !469, !470, !472, !473, !474, !476, !477}
!llvm.module.flags = !{!478, !479, !480, !481, !482, !483, !484, !485}
!llvm.ident = !{!486}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/xc5000.c", i32 24, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/xc5000.c", i32 25, i32 1}
!5 = !{ptr @__param_no_poweroff, !6, !"__param_no_poweroff", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/xc5000.c", i32 28, i32 1}
!7 = !{ptr @__UNIQUE_ID_no_powerofftype292, !6, !"__UNIQUE_ID_no_powerofftype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_no_poweroff293, !9, !"__UNIQUE_ID_no_poweroff293", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/xc5000.c", i32 29, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/xc5000.c", i32 1372, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @xc5000_attach._entry, !11, !"_entry", i1 false, i1 false}
!15 = !{ptr @xc5000_attach._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/media/tuners/xc5000.c", i32 1378, i32 13}
!19 = !{ptr @xc5000_attach._entry.4, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @xc5000_attach._entry_ptr.6, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @xc5000_attach._entry.7, !18, !"_entry", i1 false, i1 false}
!23 = !{ptr @xc5000_attach._entry_ptr.9, !18, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @xc5000_attach.__key, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/media/tuners/xc5000.c", i32 1389, i32 3}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xc5000_attach.__key.11, !25, !"__key", i1 false, i1 false}
!28 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/media/tuners/xc5000.c", i32 1431, i32 3}
!31 = !{ptr @xc5000_attach._entry.13, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @xc5000_attach._entry_ptr.15, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.17, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/media/tuners/xc5000.c", i32 1434, i32 3}
!35 = !{ptr @xc5000_attach._entry.16, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @xc5000_attach._entry_ptr.18, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @xc5000_attach._entry.19, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/xc5000.c", i32 1438, i32 3}
!39 = !{ptr @xc5000_attach._entry_ptr.20, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/tuners/xc5000.c", i32 1441, i32 3}
!42 = !{ptr @xc5000_attach._entry.21, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @xc5000_attach._entry_ptr.23, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/media/tuners/xc5000.c", i32 1445, i32 3}
!46 = !{ptr @xc5000_attach._entry.24, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @xc5000_attach._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @__ksymtab_xc5000_attach, !49, !"__ksymtab_xc5000_attach", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/xc5000.c", i32 1463, i32 1}
!50 = !{ptr @__UNIQUE_ID_author294, !51, !"__UNIQUE_ID_author294", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/xc5000.c", i32 1465, i32 1}
!52 = !{ptr @__UNIQUE_ID_description295, !53, !"__UNIQUE_ID_description295", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/xc5000.c", i32 1466, i32 1}
!54 = !{ptr @__UNIQUE_ID_file296, !55, !"__UNIQUE_ID_file296", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/xc5000.c", i32 1467, i32 1}
!56 = !{ptr @__UNIQUE_ID_license297, !55, !"__UNIQUE_ID_license297", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_firmware298, !58, !"__UNIQUE_ID_firmware298", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/xc5000.c", i32 1468, i32 1}
!59 = !{ptr @__UNIQUE_ID_firmware299, !60, !"__UNIQUE_ID_firmware299", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/xc5000.c", i32 1469, i32 1}
!61 = !{ptr @debug, !62, !"debug", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/xc5000.c", i32 23, i32 12}
!63 = !{ptr @no_poweroff, !64, !"no_poweroff", i1 false, i1 false}
!64 = !{!"../drivers/media/tuners/xc5000.c", i32 27, i32 12}
!65 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!66 = !{ptr @__param_str_no_poweroff, !6, !"__param_str_no_poweroff", i1 false, i1 false}
!67 = !{ptr @.str.27, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/tuners/xc5000.c", i32 33, i32 8}
!69 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @xc5000_list_mutex, !68, !"xc5000_list_mutex", i1 false, i1 false}
!71 = !{ptr @hybrid_tuner_instance_list, !72, !"hybrid_tuner_instance_list", i1 false, i1 false}
!72 = !{!"../drivers/media/tuners/xc5000.c", i32 34, i32 8}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/xc5000.c", i32 1223, i32 2}
!75 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @xc5000_do_timer_sleep._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @xc5000_do_timer_sleep._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/media/tuners/xc5000.c", i32 1230, i32 3}
!80 = !{ptr @xc5000_do_timer_sleep._entry.31, !79, !"_entry", i1 false, i1 false}
!81 = !{ptr @xc5000_do_timer_sleep._entry_ptr.33, !79, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/xc5000.c", i32 298, i32 2}
!84 = !{ptr @xc5000_tuner_reset._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @xc5000_tuner_reset._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/xc5000.c", i32 307, i32 4}
!88 = !{ptr @xc5000_tuner_reset._entry.35, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @xc5000_tuner_reset._entry_ptr.37, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/tuners/xc5000.c", i32 311, i32 3}
!92 = !{ptr @xc5000_tuner_reset._entry.38, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @xc5000_tuner_reset._entry_ptr.40, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/tuners/xc5000.c", i32 285, i32 3}
!96 = !{ptr @.str.42, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @xc5000_readreg._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @xc5000_readreg._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @xc5000_tuner_ops, !100, !"xc5000_tuner_ops", i1 false, i1 false}
!100 = !{!"../drivers/media/tuners/xc5000.c", i32 1341, i32 35}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/tuners/xc5000.c", i32 1286, i32 2}
!103 = !{ptr @xc5000_init._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @xc5000_init._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/media/tuners/xc5000.c", i32 1289, i32 3}
!107 = !{ptr @xc5000_init._entry.44, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @xc5000_init._entry_ptr.46, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/media/tuners/xc5000.c", i32 1117, i32 4}
!111 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @xc_load_fw_and_init_tuner._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.50, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/xc5000.c", i32 1120, i32 3}
!116 = !{ptr @xc_load_fw_and_init_tuner._entry.49, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.51, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/tuners/xc5000.c", i32 1123, i32 4}
!120 = !{ptr @xc_load_fw_and_init_tuner._entry.52, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.54, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.56, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/tuners/xc5000.c", i32 1134, i32 4}
!124 = !{ptr @xc_load_fw_and_init_tuner._entry.55, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.57, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/tuners/xc5000.c", i32 1144, i32 5}
!128 = !{ptr @xc_load_fw_and_init_tuner._entry.58, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.60, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.62, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/tuners/xc5000.c", i32 1150, i32 5}
!132 = !{ptr @xc_load_fw_and_init_tuner._entry.61, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.63, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/tuners/xc5000.c", i32 1160, i32 4}
!136 = !{ptr @xc_load_fw_and_init_tuner._entry.64, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.66, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/tuners/xc5000.c", i32 1173, i32 5}
!140 = !{ptr @xc_load_fw_and_init_tuner._entry.67, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.69, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.71, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/tuners/xc5000.c", i32 1179, i32 5}
!144 = !{ptr @xc_load_fw_and_init_tuner._entry.70, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.72, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/xc5000.c", i32 1193, i32 5}
!148 = !{ptr @xc_load_fw_and_init_tuner._entry.73, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.75, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.77, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/xc5000.c", i32 1203, i32 3}
!152 = !{ptr @xc_load_fw_and_init_tuner._entry.76, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.78, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.80, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/tuners/xc5000.c", i32 1208, i32 3}
!156 = !{ptr @xc_load_fw_and_init_tuner._entry.79, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.81, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.83, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/tuners/xc5000.c", i32 1211, i32 3}
!160 = !{ptr @xc_load_fw_and_init_tuner._entry.82, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @xc_load_fw_and_init_tuner._entry_ptr.84, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.85, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/tuners/xc5000.c", i32 214, i32 10}
!164 = !{ptr @xc5000a_1_6_114, !165, !"xc5000a_1_6_114", i1 false, i1 false}
!165 = !{!"../drivers/media/tuners/xc5000.c", i32 213, i32 35}
!166 = !{ptr @.str.86, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/tuners/xc5000.c", i32 221, i32 10}
!168 = !{ptr @xc5000c_41_024_5, !169, !"xc5000c_41_024_5", i1 false, i1 false}
!169 = !{!"../drivers/media/tuners/xc5000.c", i32 220, i32 35}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/tuners/xc5000.c", i32 829, i32 3}
!172 = !{ptr @.str.88, !171, !"<string literal>", i1 false, i1 false}
!173 = !{ptr @xc5000_is_firmware_loaded._entry, !171, !"_entry", i1 false, i1 false}
!174 = !{ptr @xc5000_is_firmware_loaded._entry_ptr, !171, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.90, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/tuners/xc5000.c", i32 831, i32 3}
!177 = !{ptr @xc5000_is_firmware_loaded._entry.89, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @xc5000_is_firmware_loaded._entry_ptr.91, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.92, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/tuners/xc5000.c", i32 604, i32 2}
!181 = !{ptr @.str.93, !180, !"<string literal>", i1 false, i1 false}
!182 = !{ptr @xc5000_fwupload._entry, !180, !"_entry", i1 false, i1 false}
!183 = !{ptr @xc5000_fwupload._entry_ptr, !180, !"_entry_ptr", i1 false, i1 false}
!184 = !{ptr @.str.95, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/media/tuners/xc5000.c", i32 612, i32 2}
!186 = !{ptr @xc5000_fwupload._entry.94, !185, !"_entry", i1 false, i1 false}
!187 = !{ptr @xc5000_fwupload._entry_ptr.96, !185, !"_entry_ptr", i1 false, i1 false}
!188 = !{ptr @.str.98, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/media/tuners/xc5000.c", i32 616, i32 3}
!190 = !{ptr @xc5000_fwupload._entry.97, !189, !"_entry", i1 false, i1 false}
!191 = !{ptr @xc5000_fwupload._entry_ptr.99, !189, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.101, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/tuners/xc5000.c", i32 618, i32 3}
!194 = !{ptr @xc5000_fwupload._entry.100, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @xc5000_fwupload._entry_ptr.102, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{ptr @.str.103, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/media/tuners/xc5000.c", i32 250, i32 3}
!198 = !{ptr @.str.104, !197, !"<string literal>", i1 false, i1 false}
!199 = !{ptr @xc_send_i2c_data._entry, !197, !"_entry", i1 false, i1 false}
!200 = !{ptr @xc_send_i2c_data._entry_ptr, !197, !"_entry_ptr", i1 false, i1 false}
!201 = !{ptr @.str.105, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/tuners/xc5000.c", i32 405, i32 2}
!203 = !{ptr @xc_initialize._entry, !202, !"_entry", i1 false, i1 false}
!204 = !{ptr @xc_initialize._entry_ptr, !202, !"_entry_ptr", i1 false, i1 false}
!205 = !{ptr @.str.106, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/media/tuners/xc5000.c", i32 645, i32 2}
!207 = !{ptr @.str.107, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @xc_debug_dump._entry, !206, !"_entry", i1 false, i1 false}
!209 = !{ptr @xc_debug_dump._entry_ptr, !206, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.109, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/tuners/xc5000.c", i32 648, i32 2}
!212 = !{ptr @xc_debug_dump._entry.108, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @xc_debug_dump._entry_ptr.110, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.112, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/tuners/xc5000.c", i32 651, i32 2}
!216 = !{ptr @xc_debug_dump._entry.111, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @xc_debug_dump._entry_ptr.113, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.115, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/tuners/xc5000.c", i32 657, i32 2}
!220 = !{ptr @xc_debug_dump._entry.114, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @xc_debug_dump._entry_ptr.116, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.118, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/tuners/xc5000.c", i32 662, i32 2}
!224 = !{ptr @xc_debug_dump._entry.117, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @xc_debug_dump._entry_ptr.119, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.121, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/tuners/xc5000.c", i32 665, i32 2}
!228 = !{ptr @xc_debug_dump._entry.120, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @xc_debug_dump._entry_ptr.122, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.124, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/tuners/xc5000.c", i32 668, i32 2}
!232 = !{ptr @xc_debug_dump._entry.123, !231, !"_entry", i1 false, i1 false}
!233 = !{ptr @xc_debug_dump._entry_ptr.125, !231, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.127, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/media/tuners/xc5000.c", i32 671, i32 2}
!236 = !{ptr @xc_debug_dump._entry.126, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @xc_debug_dump._entry_ptr.128, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @.str.130, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/media/tuners/xc5000.c", i32 674, i32 2}
!240 = !{ptr @xc_debug_dump._entry.129, !239, !"_entry", i1 false, i1 false}
!241 = !{ptr @xc_debug_dump._entry_ptr.131, !239, !"_entry_ptr", i1 false, i1 false}
!242 = !{ptr @.str.133, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/media/tuners/xc5000.c", i32 679, i32 4}
!244 = !{ptr @xc_debug_dump._entry.132, !243, !"_entry", i1 false, i1 false}
!245 = !{ptr @xc_debug_dump._entry_ptr.134, !243, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.135, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/media/tuners/xc5000.c", i32 1239, i32 2}
!248 = !{ptr @xc5000_sleep._entry, !247, !"_entry", i1 false, i1 false}
!249 = !{ptr @xc5000_sleep._entry_ptr, !247, !"_entry_ptr", i1 false, i1 false}
!250 = !{ptr @.str.136, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/media/tuners/xc5000.c", i32 1256, i32 2}
!252 = !{ptr @xc5000_suspend._entry, !251, !"_entry", i1 false, i1 false}
!253 = !{ptr @xc5000_suspend._entry_ptr, !251, !"_entry_ptr", i1 false, i1 false}
!254 = !{ptr @xc5000_suspend._entry.137, !255, !"_entry", i1 false, i1 false}
!255 = !{!"../drivers/media/tuners/xc5000.c", i32 1262, i32 3}
!256 = !{ptr @xc5000_suspend._entry_ptr.138, !255, !"_entry_ptr", i1 false, i1 false}
!257 = !{ptr @.str.139, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/media/tuners/xc5000.c", i32 1273, i32 2}
!259 = !{ptr @xc5000_resume._entry, !258, !"_entry", i1 false, i1 false}
!260 = !{ptr @xc5000_resume._entry_ptr, !258, !"_entry_ptr", i1 false, i1 false}
!261 = !{ptr @.str.140, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/media/tuners/xc5000.c", i32 1018, i32 3}
!263 = !{ptr @.str.141, !262, !"<string literal>", i1 false, i1 false}
!264 = !{ptr @xc5000_set_params._entry, !262, !"_entry", i1 false, i1 false}
!265 = !{ptr @xc5000_set_params._entry_ptr, !262, !"_entry_ptr", i1 false, i1 false}
!266 = !{ptr @.str.142, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/media/tuners/xc5000.c", i32 981, i32 3}
!268 = !{ptr @.str.143, !267, !"<string literal>", i1 false, i1 false}
!269 = !{ptr @xc5000_set_radio_freq._entry, !267, !"_entry", i1 false, i1 false}
!270 = !{ptr @xc5000_set_radio_freq._entry_ptr, !267, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.145, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/tuners/xc5000.c", i32 990, i32 3}
!273 = !{ptr @xc5000_set_radio_freq._entry.144, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @xc5000_set_radio_freq._entry_ptr.146, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.148, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/tuners/xc5000.c", i32 996, i32 3}
!277 = !{ptr @xc5000_set_radio_freq._entry.147, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @xc5000_set_radio_freq._entry_ptr.149, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.150, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/tuners/xc5000.c", i32 413, i32 2}
!281 = !{ptr @.str.151, !280, !"<string literal>", i1 false, i1 false}
!282 = !{ptr @xc_set_tv_standard._entry, !280, !"_entry", i1 false, i1 false}
!283 = !{ptr @xc_set_tv_standard._entry_ptr, !280, !"_entry_ptr", i1 false, i1 false}
!284 = !{ptr @.str.153, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/media/tuners/xc5000.c", i32 415, i32 3}
!286 = !{ptr @xc_set_tv_standard._entry.152, !285, !"_entry", i1 false, i1 false}
!287 = !{ptr @xc_set_tv_standard._entry_ptr.154, !285, !"_entry_ptr", i1 false, i1 false}
!288 = !{ptr @xc_set_tv_standard._entry.155, !289, !"_entry", i1 false, i1 false}
!289 = !{!"../drivers/media/tuners/xc5000.c", i32 419, i32 3}
!290 = !{ptr @xc_set_tv_standard._entry_ptr.156, !289, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.157, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/tuners/xc5000.c", i32 177, i32 3}
!293 = !{ptr @.str.158, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/media/tuners/xc5000.c", i32 178, i32 3}
!295 = !{ptr @.str.159, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/tuners/xc5000.c", i32 179, i32 3}
!297 = !{ptr @.str.160, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/media/tuners/xc5000.c", i32 180, i32 3}
!299 = !{ptr @.str.161, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/tuners/xc5000.c", i32 181, i32 3}
!301 = !{ptr @.str.162, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/media/tuners/xc5000.c", i32 182, i32 3}
!303 = !{ptr @.str.163, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/tuners/xc5000.c", i32 183, i32 3}
!305 = !{ptr @.str.164, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/media/tuners/xc5000.c", i32 184, i32 3}
!307 = !{ptr @.str.165, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/tuners/xc5000.c", i32 185, i32 3}
!309 = !{ptr @.str.166, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/media/tuners/xc5000.c", i32 186, i32 3}
!311 = !{ptr @.str.167, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/tuners/xc5000.c", i32 187, i32 3}
!313 = !{ptr @.str.168, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/media/tuners/xc5000.c", i32 188, i32 3}
!315 = !{ptr @.str.169, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/tuners/xc5000.c", i32 189, i32 3}
!317 = !{ptr @.str.170, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/media/tuners/xc5000.c", i32 190, i32 3}
!319 = !{ptr @.str.171, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/tuners/xc5000.c", i32 191, i32 3}
!321 = !{ptr @.str.172, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/media/tuners/xc5000.c", i32 192, i32 3}
!323 = !{ptr @.str.173, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/tuners/xc5000.c", i32 193, i32 3}
!325 = !{ptr @.str.174, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/media/tuners/xc5000.c", i32 194, i32 3}
!327 = !{ptr @.str.175, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/tuners/xc5000.c", i32 195, i32 3}
!329 = !{ptr @.str.176, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/media/tuners/xc5000.c", i32 196, i32 3}
!331 = !{ptr @.str.177, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/tuners/xc5000.c", i32 197, i32 3}
!333 = !{ptr @.str.178, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/media/tuners/xc5000.c", i32 198, i32 3}
!335 = !{ptr @.str.179, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/tuners/xc5000.c", i32 199, i32 3}
!337 = !{ptr @.str.180, !338, !"<string literal>", i1 false, i1 false}
!338 = !{!"../drivers/media/tuners/xc5000.c", i32 200, i32 3}
!339 = !{ptr @xc5000_standard, !340, !"xc5000_standard", i1 false, i1 false}
!340 = !{!"../drivers/media/tuners/xc5000.c", i32 176, i32 30}
!341 = !{ptr @.str.181, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/media/tuners/xc5000.c", i32 433, i32 2}
!343 = !{ptr @.str.182, !342, !"<string literal>", i1 false, i1 false}
!344 = !{ptr @xc_set_signal_source._entry, !342, !"_entry", i1 false, i1 false}
!345 = !{ptr @xc_set_signal_source._entry_ptr, !342, !"_entry_ptr", i1 false, i1 false}
!346 = !{ptr @.str.183, !342, !"<string literal>", i1 false, i1 false}
!347 = !{ptr @.str.184, !342, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @.str.186, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/media/tuners/xc5000.c", i32 438, i32 3}
!350 = !{ptr @xc_set_signal_source._entry.185, !349, !"_entry", i1 false, i1 false}
!351 = !{ptr @xc_set_signal_source._entry_ptr.187, !349, !"_entry_ptr", i1 false, i1 false}
!352 = !{ptr @.str.188, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/media/tuners/xc5000.c", i32 562, i32 2}
!354 = !{ptr @.str.189, !353, !"<string literal>", i1 false, i1 false}
!355 = !{ptr @xc_tune_channel._entry, !353, !"_entry", i1 false, i1 false}
!356 = !{ptr @xc_tune_channel._entry_ptr, !353, !"_entry_ptr", i1 false, i1 false}
!357 = !{ptr @.str.190, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/media/tuners/xc5000.c", i32 451, i32 2}
!359 = !{ptr @xc_set_rf_frequency._entry, !358, !"_entry", i1 false, i1 false}
!360 = !{ptr @xc_set_rf_frequency._entry_ptr, !358, !"_entry_ptr", i1 false, i1 false}
!361 = !{ptr @.str.191, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/media/tuners/xc5000.c", i32 906, i32 3}
!363 = !{ptr @xc5000_set_tv_freq._entry, !362, !"_entry", i1 false, i1 false}
!364 = !{ptr @xc5000_set_tv_freq._entry_ptr, !362, !"_entry_ptr", i1 false, i1 false}
!365 = !{ptr @xc5000_set_tv_freq._entry.192, !366, !"_entry", i1 false, i1 false}
!366 = !{!"../drivers/media/tuners/xc5000.c", i32 916, i32 3}
!367 = !{ptr @xc5000_set_tv_freq._entry_ptr.193, !366, !"_entry_ptr", i1 false, i1 false}
!368 = !{ptr @.str.195, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/media/tuners/xc5000.c", i32 935, i32 4}
!370 = !{ptr @xc5000_set_tv_freq._entry.194, !369, !"_entry", i1 false, i1 false}
!371 = !{ptr @xc5000_set_tv_freq._entry_ptr.196, !369, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.198, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/tuners/xc5000.c", i32 938, i32 5}
!374 = !{ptr @xc5000_set_tv_freq._entry.197, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @xc5000_set_tv_freq._entry_ptr.199, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.200, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/tuners/xc5000.c", i32 691, i32 3}
!378 = !{ptr @xc5000_tune_digital._entry, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @xc5000_tune_digital._entry_ptr, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @xc5000_tune_digital._entry.201, !381, !"_entry", i1 false, i1 false}
!381 = !{!"../drivers/media/tuners/xc5000.c", i32 701, i32 3}
!382 = !{ptr @xc5000_tune_digital._entry_ptr.202, !381, !"_entry_ptr", i1 false, i1 false}
!383 = !{ptr @.str.204, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/media/tuners/xc5000.c", i32 707, i32 3}
!385 = !{ptr @xc5000_tune_digital._entry.203, !384, !"_entry", i1 false, i1 false}
!386 = !{ptr @xc5000_tune_digital._entry_ptr.205, !384, !"_entry_ptr", i1 false, i1 false}
!387 = !{ptr @.str.207, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/media/tuners/xc5000.c", i32 712, i32 2}
!389 = !{ptr @xc5000_tune_digital._entry.206, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @xc5000_tune_digital._entry_ptr.208, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.209, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/tuners/xc5000.c", i32 469, i32 2}
!393 = !{ptr @.str.210, !392, !"<string literal>", i1 false, i1 false}
!394 = !{ptr @xc_set_IF_frequency._entry, !392, !"_entry", i1 false, i1 false}
!395 = !{ptr @xc_set_IF_frequency._entry_ptr, !392, !"_entry_ptr", i1 false, i1 false}
!396 = !{ptr @.str.211, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/media/tuners/xc5000.c", i32 735, i32 3}
!398 = !{ptr @xc5000_set_digital_params._entry, !397, !"_entry", i1 false, i1 false}
!399 = !{ptr @xc5000_set_digital_params._entry_ptr, !397, !"_entry_ptr", i1 false, i1 false}
!400 = !{ptr @.str.213, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/media/tuners/xc5000.c", i32 739, i32 2}
!402 = !{ptr @xc5000_set_digital_params._entry.212, !401, !"_entry", i1 false, i1 false}
!403 = !{ptr @xc5000_set_digital_params._entry_ptr.214, !401, !"_entry_ptr", i1 false, i1 false}
!404 = !{ptr @.str.216, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/media/tuners/xc5000.c", i32 743, i32 3}
!406 = !{ptr @xc5000_set_digital_params._entry.215, !405, !"_entry", i1 false, i1 false}
!407 = !{ptr @xc5000_set_digital_params._entry_ptr.217, !405, !"_entry_ptr", i1 false, i1 false}
!408 = !{ptr @.str.219, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/media/tuners/xc5000.c", i32 749, i32 3}
!410 = !{ptr @xc5000_set_digital_params._entry.218, !409, !"_entry", i1 false, i1 false}
!411 = !{ptr @xc5000_set_digital_params._entry_ptr.220, !409, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.222, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/media/tuners/xc5000.c", i32 763, i32 3}
!414 = !{ptr @xc5000_set_digital_params._entry.221, !413, !"_entry", i1 false, i1 false}
!415 = !{ptr @xc5000_set_digital_params._entry_ptr.223, !413, !"_entry_ptr", i1 false, i1 false}
!416 = !{ptr @.str.225, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/media/tuners/xc5000.c", i32 778, i32 4}
!418 = !{ptr @xc5000_set_digital_params._entry.224, !417, !"_entry", i1 false, i1 false}
!419 = !{ptr @xc5000_set_digital_params._entry_ptr.226, !417, !"_entry_ptr", i1 false, i1 false}
!420 = !{ptr @xc5000_set_digital_params._entry.227, !421, !"_entry", i1 false, i1 false}
!421 = !{!"../drivers/media/tuners/xc5000.c", i32 785, i32 3}
!422 = !{ptr @xc5000_set_digital_params._entry_ptr.228, !421, !"_entry_ptr", i1 false, i1 false}
!423 = !{ptr @.str.230, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/media/tuners/xc5000.c", i32 800, i32 3}
!425 = !{ptr @xc5000_set_digital_params._entry.229, !424, !"_entry", i1 false, i1 false}
!426 = !{ptr @xc5000_set_digital_params._entry_ptr.231, !424, !"_entry_ptr", i1 false, i1 false}
!427 = !{ptr @.str.233, !428, !"<string literal>", i1 false, i1 false}
!428 = !{!"../drivers/media/tuners/xc5000.c", i32 804, i32 3}
!429 = !{ptr @xc5000_set_digital_params._entry.232, !428, !"_entry", i1 false, i1 false}
!430 = !{ptr @xc5000_set_digital_params._entry_ptr.234, !428, !"_entry_ptr", i1 false, i1 false}
!431 = !{ptr @.str.236, !432, !"<string literal>", i1 false, i1 false}
!432 = !{!"../drivers/media/tuners/xc5000.c", i32 811, i32 2}
!433 = !{ptr @xc5000_set_digital_params._entry.235, !432, !"_entry", i1 false, i1 false}
!434 = !{ptr @xc5000_set_digital_params._entry_ptr.237, !432, !"_entry_ptr", i1 false, i1 false}
!435 = !{ptr @.str.238, !436, !"<string literal>", i1 false, i1 false}
!436 = !{!"../drivers/media/tuners/xc5000.c", i32 954, i32 2}
!437 = !{ptr @.str.239, !436, !"<string literal>", i1 false, i1 false}
!438 = !{ptr @xc5000_config_radio._entry, !436, !"_entry", i1 false, i1 false}
!439 = !{ptr @xc5000_config_radio._entry_ptr, !436, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.241, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/tuners/xc5000.c", i32 958, i32 3}
!442 = !{ptr @xc5000_config_radio._entry.240, !441, !"_entry", i1 false, i1 false}
!443 = !{ptr @xc5000_config_radio._entry_ptr.242, !441, !"_entry_ptr", i1 false, i1 false}
!444 = !{ptr @.str.243, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/tuners/xc5000.c", i32 842, i32 2}
!446 = !{ptr @.str.244, !445, !"<string literal>", i1 false, i1 false}
!447 = !{ptr @xc5000_config_tv._entry, !445, !"_entry", i1 false, i1 false}
!448 = !{ptr @xc5000_config_tv._entry_ptr, !445, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.245, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/tuners/xc5000.c", i32 1326, i32 2}
!451 = !{ptr @xc5000_set_config._entry, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @xc5000_set_config._entry_ptr, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.246, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/tuners/xc5000.c", i32 1063, i32 2}
!455 = !{ptr @xc5000_get_frequency._entry, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @xc5000_get_frequency._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.247, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/tuners/xc5000.c", i32 1079, i32 2}
!459 = !{ptr @xc5000_get_bandwidth._entry, !458, !"_entry", i1 false, i1 false}
!460 = !{ptr @xc5000_get_bandwidth._entry_ptr, !458, !"_entry_ptr", i1 false, i1 false}
!461 = !{ptr @.str.248, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/tuners/xc5000.c", i32 1071, i32 2}
!463 = !{ptr @xc5000_get_if_frequency._entry, !462, !"_entry", i1 false, i1 false}
!464 = !{ptr @xc5000_get_if_frequency._entry_ptr, !462, !"_entry_ptr", i1 false, i1 false}
!465 = !{ptr @.str.249, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/tuners/xc5000.c", i32 1092, i32 2}
!467 = !{ptr @.str.250, !466, !"<string literal>", i1 false, i1 false}
!468 = !{ptr @xc5000_get_status._entry, !466, !"_entry", i1 false, i1 false}
!469 = !{ptr @xc5000_get_status._entry_ptr, !466, !"_entry_ptr", i1 false, i1 false}
!470 = !{ptr @.str.251, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/media/tuners/xc5000.c", i32 1303, i32 2}
!472 = !{ptr @xc5000_release._entry, !471, !"_entry", i1 false, i1 false}
!473 = !{ptr @xc5000_release._entry_ptr, !471, !"_entry_ptr", i1 false, i1 false}
!474 = !{ptr @.str.253, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/media/tuners/xc5000.c", i32 1313, i32 3}
!476 = !{ptr @xc5000_release._entry.252, !475, !"_entry", i1 false, i1 false}
!477 = !{ptr @xc5000_release._entry_ptr.254, !475, !"_entry_ptr", i1 false, i1 false}
!478 = !{i32 1, !"wchar_size", i32 2}
!479 = !{i32 1, !"min_enum_size", i32 4}
!480 = !{i32 8, !"branch-target-enforcement", i32 0}
!481 = !{i32 8, !"sign-return-address", i32 0}
!482 = !{i32 8, !"sign-return-address-all", i32 0}
!483 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!484 = !{i32 7, !"uwtable", i32 1}
!485 = !{i32 7, !"frame-pointer", i32 2}
!486 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!487 = !{!"auto-init"}
