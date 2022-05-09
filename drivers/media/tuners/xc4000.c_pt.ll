; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/xc4000.c_pt.bc'
source_filename = "../drivers/media/tuners/xc4000.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xc4000_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_xc4000_attach\09\09\09\09"
module asm "\09.long\09__crc_xc4000_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xc4000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22xc4000_attach\22\09\09\09\09\09"
module asm "__kstrtabns_xc4000_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.kparam_string = type { i32, ptr }
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
%struct.XC_TV_STANDARD = type { ptr, i16, i16, i16 }
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
%struct.xc4000_priv = type { %struct.tuner_i2c_props, %struct.list_head, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i16, %struct.firmware_properties, i16, i16, %struct.mutex }
%struct.firmware_properties = type { i32, i64, i64, i16, i32, i32 }
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
%struct.xc4000_config = type { i8, i8, i8, i8, i32 }
%struct.firmware = type { i32, ptr, ptr }
%struct.firmware_description = type { i32, i64, i16, ptr, i32 }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }

@__param_str_debug = internal constant [13 x i8] c"xc4000.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype290 = internal constant [26 x i8] c"xc4000.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug291 = internal constant [62 x i8] c"xc4000.parm=debug:Debugging level (0 to 2, default: 0 (off)).\00", section ".modinfo", align 1
@__param_str_no_poweroff = internal constant [19 x i8] c"xc4000.no_poweroff\00", align 1
@no_poweroff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_poweroff = internal constant %struct.kernel_param { ptr @__param_str_no_poweroff, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @no_poweroff } }, section "__param", align 4
@__UNIQUE_ID_no_powerofftype292 = internal constant [32 x i8] c"xc4000.parmtype=no_poweroff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_poweroff293 = internal constant [115 x i8] c"xc4000.parm=no_poweroff:Power management (1: disabled, 2: enabled, 0 (default): use device-specific default mode).\00", section ".modinfo", align 1
@__param_str_audio_std = internal constant [17 x i8] c"xc4000.audio_std\00", align 1
@audio_std = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_audio_std = internal constant %struct.kernel_param { ptr @__param_str_audio_std, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @audio_std } }, section "__param", align 4
@__UNIQUE_ID_audio_stdtype294 = internal constant [30 x i8] c"xc4000.parmtype=audio_std:int\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_std295 = internal constant [448 x i8] c"xc4000.parm=audio_std:Audio standard. XC4000 audio decoder explicitly needs to know what audio standard is needed for some video standards with audio A2 or NICAM. The valid settings are a sum of:\0A 1: use NICAM/B or A2/B instead of NICAM/A or A2/A\0A 2: use A2 instead of NICAM or BTSC\0A 4: use SECAM/K3 instead of K1\0A 8: use PAL-D/K audio for SECAM-D/K\0A16: use FM radio input 1 instead of input 2\0A32: use mono audio (the lower three bits are ignored)\00", section ".modinfo", align 1
@__param_str_firmware_name = internal constant [21 x i8] c"xc4000.firmware_name\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_firmware_name = internal constant %struct.kparam_string { i32 30, ptr @firmware_name }, align 4
@__param_firmware_name = internal constant %struct.kernel_param { ptr @__param_str_firmware_name, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_firmware_name } }, section "__param", align 4
@__UNIQUE_ID_firmware_nametype296 = internal constant [37 x i8] c"xc4000.parmtype=firmware_name:string\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware_name297 = internal constant [91 x i8] c"xc4000.parm=firmware_name:Firmware file name. Allows overriding the default firmware name.\00", section ".modinfo", align 1
@xc4000_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1656, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\016%s: %s(%d-%04x)\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc4000_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/media/tuners/xc4000.c\00", [34 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr = internal global ptr @xc4000_attach._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xc4000\00", [25 x i8] zeroinitializer }, align 32
@xc4000_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.25, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xc4000_list_mutex, i64 52), ptr getelementptr (i8, ptr @xc4000_list_mutex, i64 52) }, ptr @xc4000_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.26, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@xc4000_attach._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr.6 = internal global ptr @xc4000_attach._entry.4, section ".printk_index", align 4
@xc4000_attach._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 1662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr.9 = internal global ptr @xc4000_attach._entry.7, section ".printk_index", align 4
@xc4000_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@xc4000_attach._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016xc4000: Successfully identified at address 0x%02x\0A\00", [43 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr.13 = internal global ptr @xc4000_attach._entry.11, section ".printk_index", align 4
@xc4000_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1710, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016xc4000: Firmware has been loaded previously\0A\00", [49 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr.16 = internal global ptr @xc4000_attach._entry.14, section ".printk_index", align 4
@xc4000_attach._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 1715, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr.18 = internal global ptr @xc4000_attach._entry.17, section ".printk_index", align 4
@xc4000_attach._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 1717, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\016xc4000: Firmware has not been loaded previously\0A\00", [45 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr.21 = internal global ptr @xc4000_attach._entry.19, section ".printk_index", align 4
@xc4000_attach._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.1, ptr @.str.2, i32 1722, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013xc4000: Device not found at addr 0x%02x (0x%x)\0A\00", [46 x i8] zeroinitializer }, align 32
@xc4000_attach._entry_ptr.24 = internal global ptr @xc4000_attach._entry.22, section ".printk_index", align 4
@xc4000_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Xceive XC4000\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1000000, i32 1023000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @xc4000_release, ptr @xc4000_init, ptr @xc4000_sleep, ptr null, ptr null, ptr @xc4000_set_params, ptr @xc4000_set_analog_params, ptr null, ptr @xc4000_get_frequency, ptr @xc4000_get_bandwidth, ptr null, ptr @xc4000_get_status, ptr @xc4000_get_signal, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@__kstrtab_xc4000_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_xc4000_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_xc4000_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xc4000_attach to i32), ptr @__kstrtab_xc4000_attach, ptr @__kstrtabns_xc4000_attach }, section "___ksymtab+xc4000_attach", align 4
@__UNIQUE_ID_author298 = internal constant [40 x i8] c"xc4000.author=Steven Toth, Davide Ferri\00", section ".modinfo", align 1
@__UNIQUE_ID_description299 = internal constant [54 x i8] c"xc4000.description=Xceive xc4000 silicon tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file300 = internal constant [40 x i8] c"xc4000.file=drivers/media/tuners/xc4000\00", section ".modinfo", align 1
@__UNIQUE_ID_license301 = internal constant [19 x i8] c"xc4000.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware302 = internal constant [39 x i8] c"xc4000.firmware=dvb-fe-xc4000-1.4.1.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware303 = internal constant [37 x i8] c"xc4000.firmware=dvb-fe-xc4000-1.4.fw\00", section ".modinfo", align 1
@firmware_name = internal global { [30 x i8], [34 x i8] } zeroinitializer, align 32
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xc4000_list_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc4000_list_mutex\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xc4000_readreg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 543, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013xc4000: I2C read failed\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc4000_readreg\00", [17 x i8] zeroinitializer }, align 32
@xc4000_readreg._entry_ptr = internal global ptr @xc4000_readreg._entry, section ".printk_index", align 4
@xc4000_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.2, i32 1605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\016%s: %s()\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xc4000_init\00", [20 x i8] zeroinitializer }, align 32
@xc4000_init._entry_ptr = internal global ptr @xc4000_init._entry, section ".printk_index", align 4
@xc4000_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.31, ptr @.str.2, i32 1578, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xc4000_sleep\00", [19 x i8] zeroinitializer }, align 32
@xc4000_sleep._entry_ptr = internal global ptr @xc4000_sleep._entry, section ".printk_index", align 4
@xc4000_sleep._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.2, i32 1592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013xc4000: %s() unable to shutdown tuner\0A\00", [55 x i8] zeroinitializer }, align 32
@xc4000_sleep._entry_ptr.34 = internal global ptr @xc4000_sleep._entry.32, section ".printk_index", align 4
@xc_send_i2c_data._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.2, i32 248, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013xc4000: I2C write failed (len=%i)\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xc_send_i2c_data\00", [47 x i8] zeroinitializer }, align 32
@xc_send_i2c_data._entry_ptr = internal global ptr @xc_send_i2c_data._entry, section ".printk_index", align 4
@xc_send_i2c_data._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\013bytes %*ph\0A\00", [18 x i8] zeroinitializer }, align 32
@xc_send_i2c_data._entry_ptr.39 = internal global ptr @xc_send_i2c_data._entry.37, section ".printk_index", align 4
@xc4000_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: %s() frequency=%d (Hz)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc4000_set_params\00", [46 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr = internal global ptr @xc4000_set_params._entry, section ".printk_index", align 4
@xc4000_set_params._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 1153, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s() VSB modulation\0A\00", [37 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.44 = internal global ptr @xc4000_set_params._entry.42, section ".printk_index", align 4
@xc4000_set_params._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 1160, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\016%s: %s() QAM modulation\0A\00", [37 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.47 = internal global ptr @xc4000_set_params._entry.45, section ".printk_index", align 4
@xc4000_set_params._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 1168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: %s() OFDM\0A\00", [47 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.50 = internal global ptr @xc4000_set_params._entry.48, section ".printk_index", align 4
@xc4000_set_params._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.41, ptr @.str.2, i32 1193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013xc4000 delivery system not supported!\0A\00", [55 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.53 = internal global ptr @xc4000_set_params._entry.51, section ".printk_index", align 4
@xc4000_set_params._entry.54 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.55, ptr @.str.41, ptr @.str.2, i32 1201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\016%s: %s() frequency=%d (compensated)\0A\00", [57 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.56 = internal global ptr @xc4000_set_params._entry.54, section ".printk_index", align 4
@xc4000_set_params._entry.57 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.41, ptr @.str.2, i32 1212, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013xc4000: xc_set_signal_source(%d) failed\0A\00", [53 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.59 = internal global ptr @xc4000_set_params._entry.57, section ".printk_index", align 4
@xc4000_standard = internal constant { [24 x %struct.XC_TV_STANDARD], [64 x i8] } { [24 x %struct.XC_TV_STANDARD] [%struct.XC_TV_STANDARD { ptr @.str.254, i16 0, i16 -32608, i16 4500 }, %struct.XC_TV_STANDARD { ptr @.str.255, i16 0, i16 -32608, i16 4600 }, %struct.XC_TV_STANDARD { ptr @.str.256, i16 64, i16 -32608, i16 4500 }, %struct.XC_TV_STANDARD { ptr @.str.257, i16 120, i16 -32608, i16 4500 }, %struct.XC_TV_STANDARD { ptr @.str.258, i16 0, i16 -32423, i16 5640 }, %struct.XC_TV_STANDARD { ptr @.str.259, i16 4, i16 -32423, i16 5740 }, %struct.XC_TV_STANDARD { ptr @.str.260, i16 120, i16 -32423, i16 5500 }, %struct.XC_TV_STANDARD { ptr @.str.261, i16 128, i16 -32695, i16 6240 }, %struct.XC_TV_STANDARD { ptr @.str.262, i16 120, i16 -32695, i16 6000 }, %struct.XC_TV_STANDARD { ptr @.str.263, i16 0, i16 -32695, i16 6380 }, %struct.XC_TV_STANDARD { ptr @.str.264, i16 128, i16 -32695, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.265, i16 120, i16 -32695, i16 6500 }, %struct.XC_TV_STANDARD { ptr @.str.266, i16 0, i16 -32695, i16 6340 }, %struct.XC_TV_STANDARD { ptr @.str.267, i16 0, i16 -32695, i16 6000 }, %struct.XC_TV_STANDARD { ptr @.str.268, i16 120, i16 -32695, i16 6500 }, %struct.XC_TV_STANDARD { ptr @.str.269, i16 128, i16 -32695, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.270, i16 -32640, i16 9, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.271, i16 -32640, i16 16393, i16 6200 }, %struct.XC_TV_STANDARD { ptr @.str.272, i16 192, i16 -32766, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.273, i16 192, i16 -32757, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.274, i16 192, i16 -32741, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.275, i16 192, i16 -32761, i16 0 }, %struct.XC_TV_STANDARD { ptr @.str.276, i16 8, i16 -26624, i16 10700 }, %struct.XC_TV_STANDARD { ptr @.str.277, i16 8, i16 -28672, i16 10700 }], [64 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.41, ptr @.str.2, i32 1222, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013xc4000: xc_set_tv_standard failed\0A\00", [59 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.62 = internal global ptr @xc4000_set_params._entry.60, section ".printk_index", align 4
@xc4000_set_params._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.41, ptr @.str.2, i32 1242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013xc4000: setting registers failed\0A\00", [60 x i8] zeroinitializer }, align 32
@xc4000_set_params._entry_ptr.65 = internal global ptr @xc4000_set_params._entry.63, section ".printk_index", align 4
@check_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.67, ptr @.str.2, i32 933, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\016%s: %s called\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_firmware\00", [17 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr = internal global ptr @check_firmware._entry, section ".printk_index", align 4
@check_firmware._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 949, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: checking firmware, user requested type=\00", [50 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.70 = internal global ptr @check_firmware._entry.68, section ".printk_index", align 4
@check_firmware._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 953, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c(%x), id %016llx, \00", [43 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.73 = internal global ptr @check_firmware._entry.71, section ".printk_index", align 4
@check_firmware._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 955, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cscode_tbl \00", [19 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.76 = internal global ptr @check_firmware._entry.74, section ".printk_index", align 4
@check_firmware._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.67, ptr @.str.2, i32 957, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01cint_freq %d, \00", [16 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.79 = internal global ptr @check_firmware._entry.77, section ".printk_index", align 4
@check_firmware._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.67, ptr @.str.2, i32 958, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01cscode_nr %d\0A\00", [17 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.82 = internal global ptr @check_firmware._entry.80, section ".printk_index", align 4
@check_firmware._entry.83 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.84, ptr @.str.67, ptr @.str.2, i32 963, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: BASE firmware not changed.\0A\00", [62 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.85 = internal global ptr @check_firmware._entry.83, section ".printk_index", align 4
@check_firmware._entry.86 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.67, ptr @.str.2, i32 979, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Error %d while loading base firmware\0A\00", [56 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.88 = internal global ptr @check_firmware._entry.86, section ".printk_index", align 4
@check_firmware._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.67, ptr @.str.2, i32 984, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: Load init1 firmware, if exists\0A\00", [58 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.91 = internal global ptr @check_firmware._entry.89, section ".printk_index", align 4
@check_firmware._entry.92 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.93, ptr @.str.67, ptr @.str.2, i32 991, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s %d-%04x: Error %d while loading init1 firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.94 = internal global ptr @check_firmware._entry.92, section ".printk_index", align 4
@check_firmware._entry.95 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.96, ptr @.str.67, ptr @.str.2, i32 1002, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: Std-specific firmware already loaded.\0A\00", [51 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.97 = internal global ptr @check_firmware._entry.95, section ".printk_index", align 4
@check_firmware._entry.98 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.99, ptr @.str.67, ptr @.str.2, i32 1018, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: SCODE firmware already loaded.\0A\00", [58 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.100 = internal global ptr @check_firmware._entry.98, section ".printk_index", align 4
@check_firmware._entry.101 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.67, ptr @.str.2, i32 1026, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: load scode failed %d\0A\00", [36 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.103 = internal global ptr @check_firmware._entry.101, section ".printk_index", align 4
@check_firmware._entry.104 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.67, ptr @.str.2, i32 1030, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013Unable to read tuner registers.\0A\00", [61 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.106 = internal global ptr @check_firmware._entry.104, section ".printk_index", align 4
@check_firmware._entry.107 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.105, ptr @.str.67, ptr @.str.2, i32 1036, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.108 = internal global ptr @check_firmware._entry.107, section ".printk_index", align 4
@check_firmware._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.67, ptr @.str.2, i32 1041, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\016%s: Device is Xceive %d version %d.%d, firmware version %d.%d\0A\00", [63 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.111 = internal global ptr @check_firmware._entry.109, section ".printk_index", align 4
@check_firmware._entry.112 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.113, ptr @.str.67, ptr @.str.2, i32 1047, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014Incorrect readback of firmware version %d.%d.\0A\00", [47 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.114 = internal global ptr @check_firmware._entry.112, section ".printk_index", align 4
@check_firmware._entry.115 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.116, ptr @.str.67, ptr @.str.2, i32 1060, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\014Read invalid device hardware information - tuner hung?\0A\00", [38 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.117 = internal global ptr @check_firmware._entry.115, section ".printk_index", align 4
@check_firmware._entry.118 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.119, ptr @.str.67, ptr @.str.2, i32 1081, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Retrying firmware load\0A\00", [34 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.120 = internal global ptr @check_firmware._entry.118, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.122, ptr @.str.2, i32 555, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cBASE \00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dump_firm_type_and_int_freq\00", [36 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr = internal global ptr @dump_firm_type_and_int_freq._entry, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.122, ptr @.str.2, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cINIT1 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.125 = internal global ptr @dump_firm_type_and_int_freq._entry.123, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.122, ptr @.str.2, i32 559, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cF8MHZ \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.128 = internal global ptr @dump_firm_type_and_int_freq._entry.126, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.122, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cMTS \00", [25 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.131 = internal global ptr @dump_firm_type_and_int_freq._entry.129, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.122, ptr @.str.2, i32 563, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cD2620 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.134 = internal global ptr @dump_firm_type_and_int_freq._entry.132, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.122, ptr @.str.2, i32 565, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cD2633 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.137 = internal global ptr @dump_firm_type_and_int_freq._entry.135, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.122, ptr @.str.2, i32 567, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cDTV6 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.140 = internal global ptr @dump_firm_type_and_int_freq._entry.138, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.122, ptr @.str.2, i32 569, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cQAM \00", [25 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.143 = internal global ptr @dump_firm_type_and_int_freq._entry.141, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.122, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cDTV7 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.146 = internal global ptr @dump_firm_type_and_int_freq._entry.144, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.122, ptr @.str.2, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cDTV78 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.149 = internal global ptr @dump_firm_type_and_int_freq._entry.147, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.122, ptr @.str.2, i32 575, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cDTV8 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.152 = internal global ptr @dump_firm_type_and_int_freq._entry.150, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.122, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01cFM \00", [26 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.155 = internal global ptr @dump_firm_type_and_int_freq._entry.153, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.122, ptr @.str.2, i32 579, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cINPUT1 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.158 = internal global ptr @dump_firm_type_and_int_freq._entry.156, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.122, ptr @.str.2, i32 581, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cLCD \00", [25 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.161 = internal global ptr @dump_firm_type_and_int_freq._entry.159, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.122, ptr @.str.2, i32 583, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cNOGD \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.164 = internal global ptr @dump_firm_type_and_int_freq._entry.162, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.122, ptr @.str.2, i32 585, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cMONO \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.167 = internal global ptr @dump_firm_type_and_int_freq._entry.165, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.122, ptr @.str.2, i32 587, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cATSC \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.170 = internal global ptr @dump_firm_type_and_int_freq._entry.168, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.122, ptr @.str.2, i32 589, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01cIF \00", [26 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.173 = internal global ptr @dump_firm_type_and_int_freq._entry.171, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.122, ptr @.str.2, i32 591, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cLG60 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.176 = internal global ptr @dump_firm_type_and_int_freq._entry.174, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.122, ptr @.str.2, i32 593, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cATI638 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.179 = internal global ptr @dump_firm_type_and_int_freq._entry.177, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.122, ptr @.str.2, i32 595, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01cOREN538 \00", [21 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.182 = internal global ptr @dump_firm_type_and_int_freq._entry.180, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.122, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cOREN36 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.185 = internal global ptr @dump_firm_type_and_int_freq._entry.183, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.122, ptr @.str.2, i32 599, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cTOYOTA388 \00", [19 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.188 = internal global ptr @dump_firm_type_and_int_freq._entry.186, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.122, ptr @.str.2, i32 601, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cTOYOTA794 \00", [19 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.191 = internal global ptr @dump_firm_type_and_int_freq._entry.189, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.122, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01cDIBCOM52 \00", [20 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.194 = internal global ptr @dump_firm_type_and_int_freq._entry.192, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.122, ptr @.str.2, i32 605, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01cZARLINK456 \00", [18 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.197 = internal global ptr @dump_firm_type_and_int_freq._entry.195, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.122, ptr @.str.2, i32 607, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cCHINA \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.200 = internal global ptr @dump_firm_type_and_int_freq._entry.198, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.122, ptr @.str.2, i32 609, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cF6MHZ \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.203 = internal global ptr @dump_firm_type_and_int_freq._entry.201, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.204 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.205, ptr @.str.122, ptr @.str.2, i32 611, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cINPUT2 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.206 = internal global ptr @dump_firm_type_and_int_freq._entry.204, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.207 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.208, ptr @.str.122, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cSCODE \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.209 = internal global ptr @dump_firm_type_and_int_freq._entry.207, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.210 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.211, ptr @.str.122, ptr @.str.2, i32 615, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cHAS_IF_%d \00", [19 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.212 = internal global ptr @dump_firm_type_and_int_freq._entry.210, section ".printk_index", align 4
@xc4000_tuner_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.213, ptr @.str.2, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xc4000_tuner_reset\00", [45 x i8] zeroinitializer }, align 32
@xc4000_tuner_reset._entry_ptr = internal global ptr @xc4000_tuner_reset._entry, section ".printk_index", align 4
@xc4000_tuner_reset._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.213, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013xc4000: reset failed\0A\00", [40 x i8] zeroinitializer }, align 32
@xc4000_tuner_reset._entry_ptr.216 = internal global ptr @xc4000_tuner_reset._entry.214, section ".printk_index", align 4
@xc4000_tuner_reset._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.218, ptr @.str.213, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013xc4000: no tuner reset callback function, fatal\0A\00", [45 x i8] zeroinitializer }, align 32
@xc4000_tuner_reset._entry_ptr.219 = internal global ptr @xc4000_tuner_reset._entry.217, section ".printk_index", align 4
@seek_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.221, ptr @.str.2, i32 626, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013Error! firmware not loaded\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"seek_firmware\00", [18 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr = internal global ptr @seek_firmware._entry, section ".printk_index", align 4
@seek_firmware._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.221, ptr @.str.2, i32 665, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\014Selecting best matching firmware (%u bits differ) for type=(%x), id %016llx:\0A\00", [48 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.224 = internal global ptr @seek_firmware._entry.222, section ".printk_index", align 4
@seek_firmware._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.226, ptr @.str.221, ptr @.str.2, i32 675, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\017%s firmware for type=\00", [40 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.227 = internal global ptr @seek_firmware._entry.225, section ".printk_index", align 4
@.str.228 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Can't find\00", [21 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Found\00", [26 x i8] zeroinitializer }, align 32
@seek_firmware._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.221, ptr @.str.2, i32 677, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\017(%x), id %016llx.\0A\00", [43 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.232 = internal global ptr @seek_firmware._entry.230, section ".printk_index", align 4
@load_scode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: %s called int_freq=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"load_scode\00", [21 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr = internal global ptr @load_scode._entry, section ".printk_index", align 4
@load_scode._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.236, ptr @.str.234, ptr @.str.2, i32 890, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: Loading SCODE for type=\00", [58 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.237 = internal global ptr @load_scode._entry.235, section ".printk_index", align 4
@load_scode._entry.238 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.239, ptr @.str.234, ptr @.str.2, i32 894, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c(%x), id %016llx.\0A\00", [43 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.240 = internal global ptr @load_scode._entry.238, section ".printk_index", align 4
@load_scode._entry.241 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.242, ptr @.str.234, ptr @.str.2, i32 903, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013failed to put device into direct mode!\0A\00", [54 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.243 = internal global ptr @load_scode._entry.241, section ".printk_index", align 4
@load_scode._entry.244 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.245, ptr @.str.234, ptr @.str.2, i32 911, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Failed to set scode %d\0A\00", [38 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.246 = internal global ptr @load_scode._entry.244, section ".printk_index", align 4
@xc_set_signal_source._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.248, ptr @.str.2, i32 373, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: %s(%d) Source = %s\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xc_set_signal_source\00", [43 x i8] zeroinitializer }, align 32
@xc_set_signal_source._entry_ptr = internal global ptr @xc_set_signal_source._entry, section ".printk_index", align 4
@.str.249 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ANTENNA\00", [24 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"CABLE\00", [26 x i8] zeroinitializer }, align 32
@xc_set_signal_source._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.252, ptr @.str.248, ptr @.str.2, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s(), Invalid mode, defaulting to CABLE\00", [54 x i8] zeroinitializer }, align 32
@xc_set_signal_source._entry_ptr.253 = internal global ptr @xc_set_signal_source._entry.251, section ".printk_index", align 4
@.str.254 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M/N-NTSC/PAL-BTSC\00", [46 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"M/N-NTSC/PAL-A2\00", [16 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M/N-NTSC/PAL-EIAJ\00", [46 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"M/N-NTSC/PAL-Mono\00", [46 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"B/G-PAL-A2\00", [21 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"B/G-PAL-NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"B/G-PAL-MONO\00", [19 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"I-PAL-NICAM\00", [20 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"I-PAL-NICAM-MONO\00", [47 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"D/K-PAL-A2\00", [21 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"D/K-PAL-NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"D/K-PAL-MONO\00", [19 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"D/K-SECAM-A2 DK1\00", [47 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"D/K-SECAM-A2 L/DK3\00", [45 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"D/K-SECAM-A2 MONO\00", [46 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"D/K-SECAM-NICAM\00", [16 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"L-SECAM-NICAM\00", [18 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"L'-SECAM-NICAM\00", [17 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTV6\00", [27 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTV8\00", [27 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DTV7/8\00", [25 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"DTV7\00", [27 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FM Radio-INPUT2\00", [16 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"FM Radio-INPUT1\00", [16 x i8] zeroinitializer }, align 32
@xc_set_tv_standard._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.278, ptr @.str.279, ptr @.str.2, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\016%s: %s(0x%04x,0x%04x)\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xc_set_tv_standard\00", [45 x i8] zeroinitializer }, align 32
@xc_set_tv_standard._entry_ptr = internal global ptr @xc_set_tv_standard._entry, section ".printk_index", align 4
@xc_set_tv_standard._entry.280 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.281, ptr @.str.279, ptr @.str.2, i32 356, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016%s: %s() Standard = %s\0A\00", [38 x i8] zeroinitializer }, align 32
@xc_set_tv_standard._entry_ptr.282 = internal global ptr @xc_set_tv_standard._entry.280, section ".printk_index", align 4
@xc_tune_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.284, ptr @.str.2, i32 503, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\016%s: %s(%u)\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xc_tune_channel\00", [16 x i8] zeroinitializer }, align 32
@xc_tune_channel._entry_ptr = internal global ptr @xc_tune_channel._entry, section ".printk_index", align 4
@xc_set_rf_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.283, ptr @.str.285, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xc_set_rf_frequency\00", [44 x i8] zeroinitializer }, align 32
@xc_set_rf_frequency._entry_ptr = internal global ptr @xc_set_rf_frequency._entry, section ".printk_index", align 4
@xc_debug_dump._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.286, ptr @.str.287, ptr @.str.2, i32 1104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s: *** ADC envelope (0-1023) = %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc_debug_dump\00", [18 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr = internal global ptr @xc_debug_dump._entry, section ".printk_index", align 4
@xc_debug_dump._entry.288 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.289, ptr @.str.287, ptr @.str.2, i32 1107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: *** Frequency error = %d Hz\0A\00", [61 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.290 = internal global ptr @xc_debug_dump._entry.288, section ".printk_index", align 4
@xc_debug_dump._entry.291 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.292, ptr @.str.287, ptr @.str.2, i32 1111, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016%s: *** Lock status (0-Wait, 1-Locked, 2-No-signal) = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.293 = internal global ptr @xc_debug_dump._entry.291, section ".printk_index", align 4
@xc_debug_dump._entry.294 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.295, ptr @.str.287, ptr @.str.2, i32 1117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: *** HW: V%02x.%02x, FW: V%02x.%02x\0A\00", [54 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.296 = internal global ptr @xc_debug_dump._entry.294, section ".printk_index", align 4
@xc_debug_dump._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.287, ptr @.str.2, i32 1122, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016%s: *** Horizontal sync frequency = %d Hz\0A\00", [51 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.299 = internal global ptr @xc_debug_dump._entry.297, section ".printk_index", align 4
@xc_debug_dump._entry.300 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.301, ptr @.str.287, ptr @.str.2, i32 1125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.301 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: *** Frame lines = %d\0A\00", [36 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.302 = internal global ptr @xc_debug_dump._entry.300, section ".printk_index", align 4
@xc_debug_dump._entry.303 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.304, ptr @.str.287, ptr @.str.2, i32 1129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.304 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016%s: *** Quality (0:<8dB, 7:>56dB) = %d\0A\00", [54 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.305 = internal global ptr @xc_debug_dump._entry.303, section ".printk_index", align 4
@xc_debug_dump._entry.306 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.307, ptr @.str.287, ptr @.str.2, i32 1132, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.307 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s: *** Signal level = -%ddB (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.308 = internal global ptr @xc_debug_dump._entry.306, section ".printk_index", align 4
@xc_debug_dump._entry.309 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.310, ptr @.str.287, ptr @.str.2, i32 1135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.310 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s: *** Noise level = %ddB (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@xc_debug_dump._entry_ptr.311 = internal global ptr @xc_debug_dump._entry.309, section ".printk_index", align 4
@xc4000_set_analog_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.312, ptr @.str.313, ptr @.str.2, i32 1265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.312 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016%s: %s() frequency=%d (in units of 62.5Hz)\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.313 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"xc4000_set_analog_params\00", [39 x i8] zeroinitializer }, align 32
@xc4000_set_analog_params._entry_ptr = internal global ptr @xc4000_set_analog_params._entry, section ".printk_index", align 4
@xc4000_set_analog_params._entry.314 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.315, ptr @.str.313, ptr @.str.2, i32 1284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.315 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016%s: %s() frequency=%d (in units of 62.5khz)\0A\00", [49 x i8] zeroinitializer }, align 32
@xc4000_set_analog_params._entry_ptr.316 = internal global ptr @xc4000_set_analog_params._entry.314, section ".printk_index", align 4
@xc4000_set_analog_params._entry.317 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.313, ptr @.str.2, i32 1406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc4000_set_analog_params._entry_ptr.318 = internal global ptr @xc4000_set_analog_params._entry.317, section ".printk_index", align 4
@xc4000_set_analog_params._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.313, ptr @.str.2, i32 1423, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc4000_set_analog_params._entry_ptr.320 = internal global ptr @xc4000_set_analog_params._entry.319, section ".printk_index", align 4
@xc4000_set_analog_params._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.313, ptr @.str.2, i32 1437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc4000_set_analog_params._entry_ptr.322 = internal global ptr @xc4000_set_analog_params._entry.321, section ".printk_index", align 4
@xc4000_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.323, ptr @.str.324, ptr @.str.2, i32 1530, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.323 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016%s: %s() freq = %u, SNR = %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.324 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xc4000_get_frequency\00", [43 x i8] zeroinitializer }, align 32
@xc4000_get_frequency._entry_ptr = internal global ptr @xc4000_get_frequency._entry, section ".printk_index", align 4
@xc4000_get_frequency._entry.325 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.324, ptr @.str.2, i32 1537, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc4000_get_frequency._entry_ptr.326 = internal global ptr @xc4000_get_frequency._entry.325, section ".printk_index", align 4
@xc4000_get_bandwidth._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.327, ptr @.str.2, i32 1545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.327 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xc4000_get_bandwidth\00", [43 x i8] zeroinitializer }, align 32
@xc4000_get_bandwidth._entry_ptr = internal global ptr @xc4000_get_bandwidth._entry, section ".printk_index", align 4
@xc4000_get_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.329, ptr @.str.2, i32 1568, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016%s: %s() lock_status = %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.329 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc4000_get_status\00", [46 x i8] zeroinitializer }, align 32
@xc4000_get_status._entry_ptr = internal global ptr @xc4000_get_status._entry, section ".printk_index", align 4
@xc4000_get_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.330, ptr @.str.331, ptr @.str.2, i32 1467, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.330 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s %d-%04x: Signal strength: -%ddB (%05d)\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc4000_get_signal\00", [46 x i8] zeroinitializer }, align 32
@xc4000_get_signal._entry_ptr = internal global ptr @xc4000_get_signal._entry, section ".printk_index", align 4
@xc4000_get_signal._entry.332 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.333, ptr @.str.331, ptr @.str.2, i32 1485, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.333 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\017%s %d-%04x: Noise level: %ddB (%05d)\0A\00", [56 x i8] zeroinitializer }, align 32
@xc4000_get_signal._entry_ptr.334 = internal global ptr @xc4000_get_signal._entry.332, section ".printk_index", align 4
@xc4000_fwupload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.335, ptr @.str.336, ptr @.str.2, i32 718, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.335 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Reading custom firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.336 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xc4000_fwupload\00", [16 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr = internal global ptr @xc4000_fwupload._entry, section ".printk_index", align 4
@.str.337 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dvb-fe-xc4000-1.4.1.fw\00", [41 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry.338 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.336, ptr @.str.2, i32 723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.339 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\016%s: Trying to read firmware %s\0A\00", [62 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.340 = internal global ptr @xc4000_fwupload._entry.338, section ".printk_index", align 4
@.str.341 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb-fe-xc4000-1.4.fw\00", [43 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry.342 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.339, ptr @.str.336, ptr @.str.2, i32 728, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.343 = internal global ptr @xc4000_fwupload._entry.342, section ".printk_index", align 4
@xc4000_fwupload._entry.344 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.345, ptr @.str.336, ptr @.str.2, i32 736, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.345 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Error: firmware %s not found.\0A\00", [63 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.346 = internal global ptr @xc4000_fwupload._entry.344, section ".printk_index", align 4
@xc4000_fwupload._entry.347 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.348, ptr @.str.336, ptr @.str.2, i32 739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.348 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013Error %d while requesting firmware %s\0A\00", [55 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.349 = internal global ptr @xc4000_fwupload._entry.347, section ".printk_index", align 4
@xc4000_fwupload._entry.350 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.351, ptr @.str.336, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.351 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016%s: Loading Firmware: %s\0A\00", [36 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.352 = internal global ptr @xc4000_fwupload._entry.350, section ".printk_index", align 4
@xc4000_fwupload._entry.353 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.354, ptr @.str.336, ptr @.str.2, i32 750, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.354 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Error: firmware file %s has invalid size!\0A\00", [51 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.355 = internal global ptr @xc4000_fwupload._entry.353, section ".printk_index", align 4
@xc4000_fwupload._entry.356 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.357, ptr @.str.336, ptr @.str.2, i32 766, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.357 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016%s: Loading %d firmware images from %s, type: %s, ver %d.%d\0A\00", [33 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.358 = internal global ptr @xc4000_fwupload._entry.356, section ".printk_index", align 4
@xc4000_fwupload._entry.359 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.336, ptr @.str.2, i32 770, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.360 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Not enough memory to load firmware file.\0A\00", [52 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.361 = internal global ptr @xc4000_fwupload._entry.359, section ".printk_index", align 4
@xc4000_fwupload._entry.362 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.363, ptr @.str.336, ptr @.str.2, i32 784, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.363 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013More firmware images in file than were expected!\0A\00", [44 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.364 = internal global ptr @xc4000_fwupload._entry.362, section ".printk_index", align 4
@xc4000_fwupload._entry.365 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.366, ptr @.str.336, ptr @.str.2, i32 811, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.366 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013Firmware type (%x), id %llx is corrupted (size=%zd, expected %d)\0A\00", [60 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.367 = internal global ptr @xc4000_fwupload._entry.365, section ".printk_index", align 4
@xc4000_fwupload._entry.368 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.360, ptr @.str.336, ptr @.str.2, i32 817, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.369 = internal global ptr @xc4000_fwupload._entry.368, section ".printk_index", align 4
@xc4000_fwupload._entry.370 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.371, ptr @.str.336, ptr @.str.2, i32 823, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.371 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017Reading firmware type \00", [39 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.372 = internal global ptr @xc4000_fwupload._entry.370, section ".printk_index", align 4
@xc4000_fwupload._entry.373 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.374, ptr @.str.336, ptr @.str.2, i32 826, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.374 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\017(%x), id %llx, size=%d.\0A\00", [37 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.375 = internal global ptr @xc4000_fwupload._entry.373, section ".printk_index", align 4
@xc4000_fwupload._entry.376 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.377, ptr @.str.336, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.377 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Firmware file is incomplete!\0A\00", [32 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.378 = internal global ptr @xc4000_fwupload._entry.376, section ".printk_index", align 4
@xc4000_fwupload._entry.379 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.380, ptr @.str.336, ptr @.str.2, i32 845, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.380 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Firmware header is incomplete!\0A\00", [62 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.381 = internal global ptr @xc4000_fwupload._entry.379, section ".printk_index", align 4
@xc4000_fwupload._entry.382 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.383, ptr @.str.336, ptr @.str.2, i32 848, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.383 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013Error: firmware file is corrupted!\0A\00", [58 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.384 = internal global ptr @xc4000_fwupload._entry.382, section ".printk_index", align 4
@xc4000_fwupload._entry.385 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.386, ptr @.str.336, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.386 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s: Firmware files loaded.\0A\00", [34 x i8] zeroinitializer }, align 32
@xc4000_fwupload._entry_ptr.387 = internal global ptr @xc4000_fwupload._entry.385, section ".printk_index", align 4
@xc4000_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.388, ptr @.str.2, i32 1614, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.388 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc4000_release\00", [17 x i8] zeroinitializer }, align 32
@xc4000_release._entry_ptr = internal global ptr @xc4000_release._entry, section ".printk_index", align 4
@xc4000_release._entry.389 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.390, ptr @.str.388, ptr @.str.2, i32 1619, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.390 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@xc4000_release._entry_ptr.391 = internal global ptr @xc4000_release._entry.389, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.392 = internal global [5 x i64] [i64 3, i64 16, i64 4000, i64 4100, i64 8192]
@__sancov_gen_cov_switch_values.393 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.394 = internal global [6 x i64] [i64 4, i64 32, i64 2, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.395 = internal global [4 x i64] [i64 2, i64 16, i64 4000, i64 4100]
@___asan_gen_.396 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 27, i32 12 }
@___asan_gen_.399 = private unnamed_addr constant [12 x i8] c"no_poweroff\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 31, i32 12 }
@___asan_gen_.402 = private unnamed_addr constant [10 x i8] c"audio_std\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 35, i32 12 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1654, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [18 x i8] c"xc4000_list_mutex\00", align 1
@___asan_gen_.423 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 50, i32 8 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1660, i32 13 }
@___asan_gen_.438 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1674, i32 3 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1706, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1709, i32 3 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1713, i32 3 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1716, i32 3 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1720, i32 3 }
@___asan_gen_.471 = private unnamed_addr constant [17 x i8] c"xc4000_tuner_ops\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1626, i32 35 }
@___asan_gen_.474 = private unnamed_addr constant [14 x i8] c"firmware_name\00", align 1
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 45, i32 13 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 49, i32 8 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 543, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1605, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1578, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1590, i32 4 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 247, i32 4 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 250, i32 5 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1147, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1153, i32 3 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1160, i32 3 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1168, i32 3 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1193, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1200, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1211, i32 3 }
@___asan_gen_.573 = private unnamed_addr constant [16 x i8] c"xc4000_standard\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 210, i32 30 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1222, i32 4 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1242, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 933, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 949, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 952, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 955, i32 4 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 957, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 958, i32 3 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 963, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 979, i32 3 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 984, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 990, i32 3 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1002, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1018, i32 3 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1026, i32 3 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1030, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1036, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1040, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1045, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1059, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1081, i32 3 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 555, i32 3 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 557, i32 3 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 559, i32 3 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 561, i32 3 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 563, i32 3 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 565, i32 3 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 567, i32 3 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 569, i32 3 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 571, i32 3 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 573, i32 3 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 575, i32 3 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 577, i32 3 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 579, i32 3 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 581, i32 3 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 583, i32 3 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 585, i32 3 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 587, i32 3 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 589, i32 3 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 591, i32 3 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 593, i32 3 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 595, i32 3 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 597, i32 3 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 599, i32 3 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 601, i32 3 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 603, i32 3 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 605, i32 3 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 607, i32 3 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 609, i32 3 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 611, i32 3 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 613, i32 3 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 615, i32 3 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 263, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 272, i32 4 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 276, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 626, i32 3 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 663, i32 3 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 674, i32 3 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 677, i32 3 }
@___asan_gen_.950 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 867, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 890, i32 3 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 893, i32 3 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 903, i32 3 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 911, i32 3 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 372, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 377, i32 3 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 211, i32 3 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 212, i32 3 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 213, i32 3 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 214, i32 3 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 215, i32 3 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 216, i32 3 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 217, i32 3 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 218, i32 3 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 219, i32 3 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 220, i32 3 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 221, i32 3 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 222, i32 3 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 223, i32 3 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 224, i32 3 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 225, i32 3 }
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 226, i32 3 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 227, i32 3 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 228, i32 3 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 229, i32 3 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 230, i32 3 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 231, i32 3 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 232, i32 3 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 233, i32 3 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 234, i32 3 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 353, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 354, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 503, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 390, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1104, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1107, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1110, i32 2 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1115, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1121, i32 3 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1125, i32 3 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1129, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1132, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1135, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1264, i32 3 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1283, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1404, i32 3 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1423, i32 4 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1437, i32 3 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1529, i32 5 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1537, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1545, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1568, i32 2 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1467, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1485, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 718, i32 3 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 722, i32 11 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 723, i32 3 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 727, i32 12 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 728, i32 4 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 736, i32 4 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 738, i32 4 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 743, i32 2 }
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 749, i32 3 }
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 764, i32 2 }
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 770, i32 3 }
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 784, i32 4 }
@___asan_gen_.1292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 809, i32 4 }
@___asan_gen_.1295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 817, i32 4 }
@___asan_gen_.1301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 823, i32 4 }
@___asan_gen_.1307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 825, i32 4 }
@___asan_gen_.1313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 838, i32 3 }
@___asan_gen_.1319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 845, i32 2 }
@___asan_gen_.1325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 848, i32 2 }
@___asan_gen_.1331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 853, i32 3 }
@___asan_gen_.1337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1614, i32 2 }
@___asan_gen_.1338 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1341 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1342 = private constant [33 x i8] c"../drivers/media/tuners/xc4000.c\00", align 1
@___asan_gen_.1343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1342, i32 1619, i32 3 }
@llvm.compiler.used = appending global [466 x ptr] [ptr @__UNIQUE_ID_audio_std295, ptr @__UNIQUE_ID_audio_stdtype294, ptr @__UNIQUE_ID_author298, ptr @__UNIQUE_ID_debug291, ptr @__UNIQUE_ID_debugtype290, ptr @__UNIQUE_ID_description299, ptr @__UNIQUE_ID_file300, ptr @__UNIQUE_ID_firmware302, ptr @__UNIQUE_ID_firmware303, ptr @__UNIQUE_ID_firmware_name297, ptr @__UNIQUE_ID_firmware_nametype296, ptr @__UNIQUE_ID_license301, ptr @__UNIQUE_ID_no_poweroff293, ptr @__UNIQUE_ID_no_powerofftype292, ptr @__ksymtab_xc4000_attach, ptr @__param_audio_std, ptr @__param_debug, ptr @__param_firmware_name, ptr @__param_no_poweroff, ptr @check_firmware._entry, ptr @check_firmware._entry.101, ptr @check_firmware._entry.104, ptr @check_firmware._entry.107, ptr @check_firmware._entry.109, ptr @check_firmware._entry.112, ptr @check_firmware._entry.115, ptr @check_firmware._entry.118, ptr @check_firmware._entry.68, ptr @check_firmware._entry.71, ptr @check_firmware._entry.74, ptr @check_firmware._entry.77, ptr @check_firmware._entry.80, ptr @check_firmware._entry.83, ptr @check_firmware._entry.86, ptr @check_firmware._entry.89, ptr @check_firmware._entry.92, ptr @check_firmware._entry.95, ptr @check_firmware._entry.98, ptr @check_firmware._entry_ptr, ptr @check_firmware._entry_ptr.100, ptr @check_firmware._entry_ptr.103, ptr @check_firmware._entry_ptr.106, ptr @check_firmware._entry_ptr.108, ptr @check_firmware._entry_ptr.111, ptr @check_firmware._entry_ptr.114, ptr @check_firmware._entry_ptr.117, ptr @check_firmware._entry_ptr.120, ptr @check_firmware._entry_ptr.70, ptr @check_firmware._entry_ptr.73, ptr @check_firmware._entry_ptr.76, ptr @check_firmware._entry_ptr.79, ptr @check_firmware._entry_ptr.82, ptr @check_firmware._entry_ptr.85, ptr @check_firmware._entry_ptr.88, ptr @check_firmware._entry_ptr.91, ptr @check_firmware._entry_ptr.94, ptr @check_firmware._entry_ptr.97, ptr @dump_firm_type_and_int_freq._entry, ptr @dump_firm_type_and_int_freq._entry.123, ptr @dump_firm_type_and_int_freq._entry.126, ptr @dump_firm_type_and_int_freq._entry.129, ptr @dump_firm_type_and_int_freq._entry.132, ptr @dump_firm_type_and_int_freq._entry.135, ptr @dump_firm_type_and_int_freq._entry.138, ptr @dump_firm_type_and_int_freq._entry.141, ptr @dump_firm_type_and_int_freq._entry.144, ptr @dump_firm_type_and_int_freq._entry.147, ptr @dump_firm_type_and_int_freq._entry.150, ptr @dump_firm_type_and_int_freq._entry.153, ptr @dump_firm_type_and_int_freq._entry.156, ptr @dump_firm_type_and_int_freq._entry.159, ptr @dump_firm_type_and_int_freq._entry.162, ptr @dump_firm_type_and_int_freq._entry.165, ptr @dump_firm_type_and_int_freq._entry.168, ptr @dump_firm_type_and_int_freq._entry.171, ptr @dump_firm_type_and_int_freq._entry.174, ptr @dump_firm_type_and_int_freq._entry.177, ptr @dump_firm_type_and_int_freq._entry.180, ptr @dump_firm_type_and_int_freq._entry.183, ptr @dump_firm_type_and_int_freq._entry.186, ptr @dump_firm_type_and_int_freq._entry.189, ptr @dump_firm_type_and_int_freq._entry.192, ptr @dump_firm_type_and_int_freq._entry.195, ptr @dump_firm_type_and_int_freq._entry.198, ptr @dump_firm_type_and_int_freq._entry.201, ptr @dump_firm_type_and_int_freq._entry.204, ptr @dump_firm_type_and_int_freq._entry.207, ptr @dump_firm_type_and_int_freq._entry.210, ptr @dump_firm_type_and_int_freq._entry_ptr, ptr @dump_firm_type_and_int_freq._entry_ptr.125, ptr @dump_firm_type_and_int_freq._entry_ptr.128, ptr @dump_firm_type_and_int_freq._entry_ptr.131, ptr @dump_firm_type_and_int_freq._entry_ptr.134, ptr @dump_firm_type_and_int_freq._entry_ptr.137, ptr @dump_firm_type_and_int_freq._entry_ptr.140, ptr @dump_firm_type_and_int_freq._entry_ptr.143, ptr @dump_firm_type_and_int_freq._entry_ptr.146, ptr @dump_firm_type_and_int_freq._entry_ptr.149, ptr @dump_firm_type_and_int_freq._entry_ptr.152, ptr @dump_firm_type_and_int_freq._entry_ptr.155, ptr @dump_firm_type_and_int_freq._entry_ptr.158, ptr @dump_firm_type_and_int_freq._entry_ptr.161, ptr @dump_firm_type_and_int_freq._entry_ptr.164, ptr @dump_firm_type_and_int_freq._entry_ptr.167, ptr @dump_firm_type_and_int_freq._entry_ptr.170, ptr @dump_firm_type_and_int_freq._entry_ptr.173, ptr @dump_firm_type_and_int_freq._entry_ptr.176, ptr @dump_firm_type_and_int_freq._entry_ptr.179, ptr @dump_firm_type_and_int_freq._entry_ptr.182, ptr @dump_firm_type_and_int_freq._entry_ptr.185, ptr @dump_firm_type_and_int_freq._entry_ptr.188, ptr @dump_firm_type_and_int_freq._entry_ptr.191, ptr @dump_firm_type_and_int_freq._entry_ptr.194, ptr @dump_firm_type_and_int_freq._entry_ptr.197, ptr @dump_firm_type_and_int_freq._entry_ptr.200, ptr @dump_firm_type_and_int_freq._entry_ptr.203, ptr @dump_firm_type_and_int_freq._entry_ptr.206, ptr @dump_firm_type_and_int_freq._entry_ptr.209, ptr @dump_firm_type_and_int_freq._entry_ptr.212, ptr @load_scode._entry, ptr @load_scode._entry.235, ptr @load_scode._entry.238, ptr @load_scode._entry.241, ptr @load_scode._entry.244, ptr @load_scode._entry_ptr, ptr @load_scode._entry_ptr.237, ptr @load_scode._entry_ptr.240, ptr @load_scode._entry_ptr.243, ptr @load_scode._entry_ptr.246, ptr @seek_firmware._entry, ptr @seek_firmware._entry.222, ptr @seek_firmware._entry.225, ptr @seek_firmware._entry.230, ptr @seek_firmware._entry_ptr, ptr @seek_firmware._entry_ptr.224, ptr @seek_firmware._entry_ptr.227, ptr @seek_firmware._entry_ptr.232, ptr @xc4000_attach._entry, ptr @xc4000_attach._entry.11, ptr @xc4000_attach._entry.14, ptr @xc4000_attach._entry.17, ptr @xc4000_attach._entry.19, ptr @xc4000_attach._entry.22, ptr @xc4000_attach._entry.4, ptr @xc4000_attach._entry.7, ptr @xc4000_attach._entry_ptr, ptr @xc4000_attach._entry_ptr.13, ptr @xc4000_attach._entry_ptr.16, ptr @xc4000_attach._entry_ptr.18, ptr @xc4000_attach._entry_ptr.21, ptr @xc4000_attach._entry_ptr.24, ptr @xc4000_attach._entry_ptr.6, ptr @xc4000_attach._entry_ptr.9, ptr @xc4000_fwupload._entry, ptr @xc4000_fwupload._entry.338, ptr @xc4000_fwupload._entry.342, ptr @xc4000_fwupload._entry.344, ptr @xc4000_fwupload._entry.347, ptr @xc4000_fwupload._entry.350, ptr @xc4000_fwupload._entry.353, ptr @xc4000_fwupload._entry.356, ptr @xc4000_fwupload._entry.359, ptr @xc4000_fwupload._entry.362, ptr @xc4000_fwupload._entry.365, ptr @xc4000_fwupload._entry.368, ptr @xc4000_fwupload._entry.370, ptr @xc4000_fwupload._entry.373, ptr @xc4000_fwupload._entry.376, ptr @xc4000_fwupload._entry.379, ptr @xc4000_fwupload._entry.382, ptr @xc4000_fwupload._entry.385, ptr @xc4000_fwupload._entry_ptr, ptr @xc4000_fwupload._entry_ptr.340, ptr @xc4000_fwupload._entry_ptr.343, ptr @xc4000_fwupload._entry_ptr.346, ptr @xc4000_fwupload._entry_ptr.349, ptr @xc4000_fwupload._entry_ptr.352, ptr @xc4000_fwupload._entry_ptr.355, ptr @xc4000_fwupload._entry_ptr.358, ptr @xc4000_fwupload._entry_ptr.361, ptr @xc4000_fwupload._entry_ptr.364, ptr @xc4000_fwupload._entry_ptr.367, ptr @xc4000_fwupload._entry_ptr.369, ptr @xc4000_fwupload._entry_ptr.372, ptr @xc4000_fwupload._entry_ptr.375, ptr @xc4000_fwupload._entry_ptr.378, ptr @xc4000_fwupload._entry_ptr.381, ptr @xc4000_fwupload._entry_ptr.384, ptr @xc4000_fwupload._entry_ptr.387, ptr @xc4000_get_bandwidth._entry, ptr @xc4000_get_bandwidth._entry_ptr, ptr @xc4000_get_frequency._entry, ptr @xc4000_get_frequency._entry.325, ptr @xc4000_get_frequency._entry_ptr, ptr @xc4000_get_frequency._entry_ptr.326, ptr @xc4000_get_signal._entry, ptr @xc4000_get_signal._entry.332, ptr @xc4000_get_signal._entry_ptr, ptr @xc4000_get_signal._entry_ptr.334, ptr @xc4000_get_status._entry, ptr @xc4000_get_status._entry_ptr, ptr @xc4000_init._entry, ptr @xc4000_init._entry_ptr, ptr @xc4000_readreg._entry, ptr @xc4000_readreg._entry_ptr, ptr @xc4000_release._entry, ptr @xc4000_release._entry.389, ptr @xc4000_release._entry_ptr, ptr @xc4000_release._entry_ptr.391, ptr @xc4000_set_analog_params._entry, ptr @xc4000_set_analog_params._entry.314, ptr @xc4000_set_analog_params._entry.317, ptr @xc4000_set_analog_params._entry.319, ptr @xc4000_set_analog_params._entry.321, ptr @xc4000_set_analog_params._entry_ptr, ptr @xc4000_set_analog_params._entry_ptr.316, ptr @xc4000_set_analog_params._entry_ptr.318, ptr @xc4000_set_analog_params._entry_ptr.320, ptr @xc4000_set_analog_params._entry_ptr.322, ptr @xc4000_set_params._entry, ptr @xc4000_set_params._entry.42, ptr @xc4000_set_params._entry.45, ptr @xc4000_set_params._entry.48, ptr @xc4000_set_params._entry.51, ptr @xc4000_set_params._entry.54, ptr @xc4000_set_params._entry.57, ptr @xc4000_set_params._entry.60, ptr @xc4000_set_params._entry.63, ptr @xc4000_set_params._entry_ptr, ptr @xc4000_set_params._entry_ptr.44, ptr @xc4000_set_params._entry_ptr.47, ptr @xc4000_set_params._entry_ptr.50, ptr @xc4000_set_params._entry_ptr.53, ptr @xc4000_set_params._entry_ptr.56, ptr @xc4000_set_params._entry_ptr.59, ptr @xc4000_set_params._entry_ptr.62, ptr @xc4000_set_params._entry_ptr.65, ptr @xc4000_sleep._entry, ptr @xc4000_sleep._entry.32, ptr @xc4000_sleep._entry_ptr, ptr @xc4000_sleep._entry_ptr.34, ptr @xc4000_tuner_reset._entry, ptr @xc4000_tuner_reset._entry.214, ptr @xc4000_tuner_reset._entry.217, ptr @xc4000_tuner_reset._entry_ptr, ptr @xc4000_tuner_reset._entry_ptr.216, ptr @xc4000_tuner_reset._entry_ptr.219, ptr @xc_debug_dump._entry, ptr @xc_debug_dump._entry.288, ptr @xc_debug_dump._entry.291, ptr @xc_debug_dump._entry.294, ptr @xc_debug_dump._entry.297, ptr @xc_debug_dump._entry.300, ptr @xc_debug_dump._entry.303, ptr @xc_debug_dump._entry.306, ptr @xc_debug_dump._entry.309, ptr @xc_debug_dump._entry_ptr, ptr @xc_debug_dump._entry_ptr.290, ptr @xc_debug_dump._entry_ptr.293, ptr @xc_debug_dump._entry_ptr.296, ptr @xc_debug_dump._entry_ptr.299, ptr @xc_debug_dump._entry_ptr.302, ptr @xc_debug_dump._entry_ptr.305, ptr @xc_debug_dump._entry_ptr.308, ptr @xc_debug_dump._entry_ptr.311, ptr @xc_send_i2c_data._entry, ptr @xc_send_i2c_data._entry.37, ptr @xc_send_i2c_data._entry_ptr, ptr @xc_send_i2c_data._entry_ptr.39, ptr @xc_set_rf_frequency._entry, ptr @xc_set_rf_frequency._entry_ptr, ptr @xc_set_signal_source._entry, ptr @xc_set_signal_source._entry.251, ptr @xc_set_signal_source._entry_ptr, ptr @xc_set_signal_source._entry_ptr.253, ptr @xc_set_tv_standard._entry, ptr @xc_set_tv_standard._entry.280, ptr @xc_set_tv_standard._entry_ptr, ptr @xc_set_tv_standard._entry_ptr.282, ptr @xc_tune_channel._entry, ptr @xc_tune_channel._entry_ptr, ptr @debug, ptr @no_poweroff, ptr @audio_std, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xc4000_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str.5, ptr @.str.8, ptr @xc4000_attach.__key, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.20, ptr @.str.23, ptr @xc4000_tuner_ops, ptr @firmware_name, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.52, ptr @.str.55, ptr @.str.58, ptr @xc4000_standard, ptr @.str.61, ptr @.str.64, ptr @.str.66, ptr @.str.67, ptr @.str.69, ptr @.str.72, ptr @.str.75, ptr @.str.78, ptr @.str.81, ptr @.str.84, ptr @.str.87, ptr @.str.90, ptr @.str.93, ptr @.str.96, ptr @.str.99, ptr @.str.102, ptr @.str.105, ptr @.str.110, ptr @.str.113, ptr @.str.116, ptr @.str.119, ptr @.str.121, ptr @.str.122, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.205, ptr @.str.208, ptr @.str.211, ptr @.str.213, ptr @.str.215, ptr @.str.218, ptr @.str.220, ptr @.str.221, ptr @.str.223, ptr @.str.226, ptr @.str.228, ptr @.str.229, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.236, ptr @.str.239, ptr @.str.242, ptr @.str.245, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.252, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.281, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.289, ptr @.str.292, ptr @.str.295, ptr @.str.298, ptr @.str.301, ptr @.str.304, ptr @.str.307, ptr @.str.310, ptr @.str.312, ptr @.str.313, ptr @.str.315, ptr @.str.323, ptr @.str.324, ptr @.str.327, ptr @.str.328, ptr @.str.329, ptr @.str.330, ptr @.str.331, ptr @.str.333, ptr @.str.335, ptr @.str.336, ptr @.str.337, ptr @.str.339, ptr @.str.341, ptr @.str.345, ptr @.str.348, ptr @.str.351, ptr @.str.354, ptr @.str.357, ptr @.str.360, ptr @.str.363, ptr @.str.366, ptr @.str.371, ptr @.str.374, ptr @.str.377, ptr @.str.380, ptr @.str.383, ptr @.str.386, ptr @.str.388, ptr @.str.390], section "llvm.metadata"
@0 = internal global [316 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_poweroff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_std to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_attach._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_name to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_readreg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_sleep._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_send_i2c_data._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_send_i2c_data._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.54 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_standard to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_params._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.83 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.86 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.95 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.98 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.101 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.104 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.112 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.115 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.118 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.204 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.207 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.210 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_tuner_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_tuner_reset._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_tuner_reset._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.238 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.241 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.244 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_signal_source._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_signal_source._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_tv_standard._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_tv_standard._entry.280 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_tune_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_set_rf_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.288 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.291 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.300 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.301 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.303 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.304 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.306 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.307 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc_debug_dump._entry.309 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.310 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_analog_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.312 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.313 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_analog_params._entry.314 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.315 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_analog_params._entry.317 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_analog_params._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_set_analog_params._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.323 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.324 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_get_frequency._entry.325 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_get_bandwidth._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.327 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_get_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.329 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_get_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.330 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_get_signal._entry.332 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.333 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.335 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.336 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.338 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.339 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.341 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.342 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.344 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.345 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.347 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.348 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.350 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.351 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.353 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.354 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.356 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.357 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.359 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.360 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.362 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.363 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.365 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.366 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.368 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.370 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.371 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.373 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.374 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.376 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.377 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.379 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.380 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.382 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.383 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_fwupload._entry.385 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.386 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.388 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc4000_release._entry.389 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.390 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1343 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xc4000_attach(ptr noundef %fe, ptr noundef %i2c, ptr noundef readonly %cfg) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  %tobool.not = icmp eq ptr %i2c, null
  br i1 %tobool.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end4

cond.true2:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %cfg, align 4
  %conv = zext i8 %4 to i32
  br label %cond.end4

cond.end4:                                        ; preds = %cond.true2, %cond.end.cond.end4_crit_edge
  %cond5 = phi i32 [ %conv, %cond.true2 ], [ -1, %cond.end.cond.end4_crit_edge ]
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.1, i32 noundef %cond, i32 noundef %cond5) #10
  br label %if.end

if.end:                                           ; preds = %cond.end4, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @xc4000_list_mutex, i32 noundef 0) #7
  %.pn279 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp8.not281 = icmp eq ptr %.pn279, @hybrid_tuner_instance_list
  br i1 %cmp8.not281, label %if.end.if.then62_crit_edge, label %for.body.lr.ph

if.end.if.then62_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

for.body.lr.ph:                                   ; preds = %if.end
  %tobool10.not = icmp eq ptr %i2c, null
  %nr.i260 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn282 = phi ptr [ %.pn279, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %priv.0283 = getelementptr i8, ptr %.pn282, i32 -16
  br i1 %tobool10.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %adap = getelementptr i8, ptr %.pn282, i32 -12
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true12

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true12:                                  ; preds = %land.lhs.true
  %nr.i259 = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i259 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i259, align 4
  %9 = ptrtoint ptr %nr.i260 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i260, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp17 = icmp eq i32 %8, %10
  br i1 %cmp17, label %land.lhs.true19, label %land.lhs.true12.for.inc_crit_edge

land.lhs.true12.for.inc_crit_edge:                ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

land.lhs.true19:                                  ; preds = %land.lhs.true12
  %11 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %cfg, align 4
  %13 = ptrtoint ptr %priv.0283 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %priv.0283, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp24 = icmp eq i8 %12, %14
  br i1 %cmp24, label %for.end, label %land.lhs.true19.for.inc_crit_edge

land.lhs.true19.for.inc_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true19.for.inc_crit_edge, %land.lhs.true12.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %15 = ptrtoint ptr %.pn282 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %.pn282, align 4
  %cmp8.not = icmp eq ptr %.pn, @hybrid_tuner_instance_list
  br i1 %cmp8.not, label %for.inc.if.then62_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.if.then62_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

for.end:                                          ; preds = %land.lhs.true19
  %name = getelementptr i8, ptr %.pn282, i32 -4
  %16 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name, align 4
  %conv46 = zext i8 %12 to i32
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %17, i32 noundef %8, i32 noundef %conv46) #10
  %count = getelementptr i8, ptr %.pn282, i32 -8
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 8
  %inc = add i32 %19, 1
  store i32 %inc, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp60 = icmp eq i32 %inc, 0
  br i1 %cmp60, label %for.end.if.then62_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %__fail

for.end.if.then62_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then62

if.then62:                                        ; preds = %for.end.if.then62_crit_edge, %for.inc.if.then62_crit_edge, %if.end.if.then62_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %20 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %20, i32 noundef 3520, i32 noundef 192) #11
  %tobool64.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool64.not, label %if.then62.sw.epilog_crit_edge, label %if.end66

if.then62.sw.epilog_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end90

cond.true85:                                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i262 = getelementptr inbounds %struct.i2c_adapter, ptr %i2c, i32 0, i32 11
  %26 = ptrtoint ptr %nr.i262 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr.i262, align 4
  br label %cond.end90

cond.end90:                                       ; preds = %cond.true85, %if.end66.cond.end90_crit_edge
  %cond91 = phi i32 [ %27, %cond.true85 ], [ -1, %if.end66.cond.end90_crit_edge ]
  %conv94 = zext i8 %22 to i32
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.3, i32 noundef %cond91, i32 noundef %conv94) #10
  %hybrid_tuner_instance_list100 = getelementptr inbounds %struct.xc4000_priv, ptr %call7.i.i, i32 0, i32 1
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %hybrid_tuner_instance_list100, ptr noundef %28, ptr noundef nonnull @hybrid_tuner_instance_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %cond.end90.list_add_tail.exit_crit_edge

cond.end90.list_add_tail.exit_crit_edge:          ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end90
  call void @__sanitizer_cov_trace_pc() #9
  store ptr %hybrid_tuner_instance_list100, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %hybrid_tuner_instance_list100 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hybrid_tuner_instance_list, ptr %hybrid_tuner_instance_list100, align 8
  %prev3.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %call7.i.i, i32 0, i32 1, i32 1
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
  %priv.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %priv.0283, %for.end.__fail_crit_edge ]
  %34 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.epilog_crit_edge [
    i32 0, label %__fail.fail_crit_edge
    i32 1, label %sw.bb108
  ]

__fail.fail_crit_edge:                            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

__fail.sw.epilog_crit_edge:                       ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb108:                                         ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #9
  %bandwidth = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1, i32 0, i32 7
  %35 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 6000000, ptr %bandwidth, align 4
  %if_khz = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1, i32 0, i32 4
  %36 = ptrtoint ptr %if_khz to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 4560, ptr %if_khz, align 8
  %default_pm = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1, i32 0, i32 10
  %37 = ptrtoint ptr %default_pm to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %default_pm, align 2
  %dvb_amplitude = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1, i32 0, i32 11
  %38 = ptrtoint ptr %dvb_amplitude to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 -122, ptr %dvb_amplitude, align 1
  %set_smoothedcvbs = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1, i32 0, i32 12
  %39 = ptrtoint ptr %set_smoothedcvbs to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 1, ptr %set_smoothedcvbs, align 4
  %lock = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1, i32 0, i32 18
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @xc4000_attach.__key) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb108, %__fail.sw.epilog_crit_edge, %if.then62.sw.epilog_crit_edge
  %priv.1269.sink = phi ptr [ %priv.1, %sw.bb108 ], [ %priv.1, %__fail.sw.epilog_crit_edge ], [ null, %if.then62.sw.epilog_crit_edge ]
  %__ret.1267 = phi i32 [ 1, %sw.bb108 ], [ %__ret.1, %__fail.sw.epilog_crit_edge ], [ -12, %if.then62.sw.epilog_crit_edge ]
  %tuner_priv112 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %40 = ptrtoint ptr %tuner_priv112 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %priv.1269.sink, ptr %tuner_priv112, align 4
  %if_khz113 = getelementptr inbounds %struct.xc4000_config, ptr %cfg, i32 0, i32 4
  %41 = ptrtoint ptr %if_khz113 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %if_khz113, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp114.not = icmp eq i32 %42, 0
  br i1 %cmp114.not, label %sw.epilog.if.end125_crit_edge, label %if.then116

sw.epilog.if.end125_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end125

if.then116:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %if_khz118 = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1269.sink, i32 0, i32 4
  %43 = ptrtoint ptr %if_khz118 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %if_khz118, align 8
  %default_pm119 = getelementptr inbounds %struct.xc4000_config, ptr %cfg, i32 0, i32 1
  %44 = ptrtoint ptr %default_pm119 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %default_pm119, align 1
  %default_pm120 = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1269.sink, i32 0, i32 10
  %46 = ptrtoint ptr %default_pm120 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %default_pm120, align 2
  %dvb_amplitude121 = getelementptr inbounds %struct.xc4000_config, ptr %cfg, i32 0, i32 2
  %47 = ptrtoint ptr %dvb_amplitude121 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dvb_amplitude121, align 2
  %dvb_amplitude122 = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1269.sink, i32 0, i32 11
  %49 = ptrtoint ptr %dvb_amplitude122 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %48, ptr %dvb_amplitude122, align 1
  %set_smoothedcvbs123 = getelementptr inbounds %struct.xc4000_config, ptr %cfg, i32 0, i32 3
  %50 = ptrtoint ptr %set_smoothedcvbs123 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %set_smoothedcvbs123, align 1
  %set_smoothedcvbs124 = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1269.sink, i32 0, i32 12
  %52 = ptrtoint ptr %set_smoothedcvbs124 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %set_smoothedcvbs124, align 4
  br label %if.end125

if.end125:                                        ; preds = %if.then116, %sw.epilog.if.end125_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %__ret.1267)
  %cmp126 = icmp eq i32 %__ret.1267, 1
  br i1 %cmp126, label %if.then128, label %if.else

if.then128:                                       ; preds = %if.end125
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %53 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %54 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %buf.i, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 8, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #7
  %56 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %57 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %58 = call ptr @memset(ptr %57, i32 255, i32 16)
  %59 = ptrtoint ptr %priv.1269.sink to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %priv.1269.sink, align 8
  %conv6.i = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i, align 2
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %57, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %64 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %65 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %66 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags13.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %67 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 2, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %68 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %bval.i, ptr %buf15.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv.1269.sink, i32 0, i32 1
  %69 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %xc4000_readreg.exit.thread, label %xc4000_readreg.exit

xc4000_readreg.exit.thread:                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bval.i, align 2
  %conv21.i = zext i8 %72 to i16
  %shl.i = shl nuw i16 %conv21.i, 8
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %74 to i16
  %or.i = or i16 %shl.i, %conv23.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %if.end142

xc4000_readreg.exit:                              ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %fail

if.else:                                          ; preds = %if.end125
  %cur_fw = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1269.sink, i32 0, i32 15
  %75 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %cur_fw, align 8
  %and = and i32 %76, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp134.not = icmp eq i32 %and, 0
  br i1 %cmp134.not, label %if.else.do.end160_crit_edge, label %cond.true136

if.else.do.end160_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end160

cond.true136:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %hwmodel = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1269.sink, i32 0, i32 16
  %77 = ptrtoint ptr %hwmodel to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %hwmodel, align 8
  br label %if.end142

if.end142:                                        ; preds = %cond.true136, %xc4000_readreg.exit.thread
  %id.1 = phi i16 [ %or.i, %xc4000_readreg.exit.thread ], [ %78, %cond.true136 ]
  %79 = zext i16 %id.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.392)
  switch i16 %id.1, label %do.end173 [
    i16 4000, label %if.end142.sw.epilog179_crit_edge
    i16 4100, label %if.end142.sw.epilog179_crit_edge299
    i16 8192, label %if.end142.do.end160_crit_edge
  ]

if.end142.do.end160_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end160

if.end142.sw.epilog179_crit_edge299:              ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog179

if.end142.sw.epilog179_crit_edge:                 ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog179

do.end160:                                        ; preds = %if.end142.do.end160_crit_edge, %if.else.do.end160_crit_edge
  br label %sw.epilog179

do.end173:                                        ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #9
  %conv143 = zext i16 %id.1 to i32
  %80 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %cfg, align 4
  %conv176 = zext i8 %81 to i32
  %call178 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, i32 noundef %conv176, i32 noundef %conv143) #10
  br label %fail

sw.epilog179:                                     ; preds = %do.end160, %if.end142.sw.epilog179_crit_edge, %if.end142.sw.epilog179_crit_edge299
  %.str.20.sink = phi ptr [ @.str.20, %do.end160 ], [ @.str.15, %if.end142.sw.epilog179_crit_edge ], [ @.str.15, %if.end142.sw.epilog179_crit_edge299 ]
  %82 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %cfg, align 4
  %conv163 = zext i8 %83 to i32
  %call164 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %conv163) #10
  %call169 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.20.sink) #10
  call void @mutex_unlock(ptr noundef nonnull @xc4000_list_mutex) #7
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %84 = call ptr @memcpy(ptr %tuner_ops, ptr @xc4000_tuner_ops, i32 220)
  br i1 %cmp126, label %if.then182, label %sw.epilog179.cleanup191_crit_edge

sw.epilog179.cleanup191_crit_edge:                ; preds = %sw.epilog179
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup191

if.then182:                                       ; preds = %sw.epilog179
  %lock183 = getelementptr inbounds %struct.xc4000_priv, ptr %priv.1269.sink, i32 0, i32 18
  call void @mutex_lock_nested(ptr noundef %lock183, i32 noundef 0) #7
  %call184 = call fastcc i32 @xc4000_fwupload(ptr noundef %fe)
  call void @mutex_unlock(ptr noundef %lock183) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call184)
  %cmp186.not.not = icmp eq i32 %call184, 0
  br i1 %cmp186.not.not, label %if.then182.cleanup191_crit_edge, label %if.then182.fail2_crit_edge

if.then182.fail2_crit_edge:                       ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail2

if.then182.cleanup191_crit_edge:                  ; preds = %if.then182
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup191

fail:                                             ; preds = %do.end173, %xc4000_readreg.exit, %__fail.fail_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @xc4000_list_mutex) #7
  br label %fail2

fail2:                                            ; preds = %fail, %if.then182.fail2_crit_edge
  call void @xc4000_release(ptr noundef %fe)
  br label %cleanup191

cleanup191:                                       ; preds = %fail2, %if.then182.cleanup191_crit_edge, %sw.epilog179.cleanup191_crit_edge
  %retval.0 = phi ptr [ null, %fail2 ], [ %fe, %if.then182.cleanup191_crit_edge ], [ %fe, %sw.epilog179.cleanup191_crit_edge ]
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
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc4000_fwupload(ptr nocapture noundef readonly %fe) unnamed_addr #0 align 64 {
entry:
  %fw = alloca ptr, align 4
  %name = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fw) #7
  %2 = ptrtoint ptr %fw to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %fw, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %name) #7
  %3 = call ptr @memset(ptr %name, i32 255, i32 33)
  %4 = load i8, ptr @firmware_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %cmp.not = icmp eq i8 %4, 0
  %5 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp6 = icmp sgt i32 %5, 0
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  br i1 %cmp6, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.335, ptr noundef nonnull @.str.3, ptr noundef nonnull @firmware_name) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  br label %if.end38.sink.split

if.else:                                          ; preds = %entry
  br i1 %cmp6, label %do.end11, label %if.else.if.end14_crit_edge

if.else.if.end14_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.end11:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.337) #10
  br label %if.end14

if.end14:                                         ; preds = %do.end11, %if.else.if.end14_crit_edge
  %adap16 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %adap16 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %adap16, align 4
  %parent18 = getelementptr inbounds %struct.i2c_adapter, ptr %7, i32 0, i32 9, i32 1
  %8 = ptrtoint ptr %parent18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent18, align 8
  %call19 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull @.str.337, ptr noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call19)
  %cmp20 = icmp eq i32 %call19, -2
  br i1 %cmp20, label %if.then22, label %if.end14.if.end38_crit_edge

if.end14.if.end38_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then22:                                        ; preds = %if.end14
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp23 = icmp sgt i32 %10, 0
  br i1 %cmp23, label %do.end28, label %if.then22.if.end38.sink.split_crit_edge

if.then22.if.end38.sink.split_crit_edge:          ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38.sink.split

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.339, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.341) #10
  br label %if.end38.sink.split

if.end38.sink.split:                              ; preds = %do.end28, %if.then22.if.end38.sink.split_crit_edge, %if.end
  %adap16.sink = phi ptr [ %adap, %if.end ], [ %adap16, %do.end28 ], [ %adap16, %if.then22.if.end38.sink.split_crit_edge ]
  %.str.341.sink = phi ptr [ @firmware_name, %if.end ], [ @.str.341, %do.end28 ], [ @.str.341, %if.then22.if.end38.sink.split_crit_edge ]
  %11 = ptrtoint ptr %adap16.sink to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap16.sink, align 4
  %parent35 = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %parent35 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent35, align 8
  %call36 = call i32 @request_firmware(ptr noundef nonnull %fw, ptr noundef nonnull %.str.341.sink, ptr noundef %14) #7
  br label %if.end38

if.end38:                                         ; preds = %if.end38.sink.split, %if.end14.if.end38_crit_edge
  %fname.0 = phi ptr [ @.str.337, %if.end14.if.end38_crit_edge ], [ %.str.341.sink, %if.end38.sink.split ]
  %rc.0 = phi i32 [ %call19, %if.end14.if.end38_crit_edge ], [ %call36, %if.end38.sink.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp39 = icmp slt i32 %rc.0, 0
  br i1 %cmp39, label %if.then41, label %if.end57

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %rc.0)
  %cmp42 = icmp eq i32 %rc.0, -2
  br i1 %cmp42, label %do.end47, label %do.end53

do.end47:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %call49 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.345, ptr noundef nonnull %fname.0) #10
  br label %cleanup235

do.end53:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.348, i32 noundef %rc.0, ptr noundef nonnull %fname.0) #10
  br label %cleanup235

if.end57:                                         ; preds = %if.end38
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp58 = icmp sgt i32 %15, 0
  br i1 %cmp58, label %do.end63, label %if.end57.if.end66_crit_edge

if.end57.if.end66_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end66

do.end63:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %call65 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.351, ptr noundef nonnull @.str.3, ptr noundef nonnull %fname.0) #10
  br label %if.end66

if.end66:                                         ; preds = %do.end63, %if.end57.if.end66_crit_edge
  %16 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fw, align 4
  %data = getelementptr inbounds %struct.firmware, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  %add.ptr = getelementptr i8, ptr %19, i32 %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %21)
  %cmp68 = icmp ult i32 %21, 36
  br i1 %cmp68, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.354, ptr noundef nonnull %fname.0) #10
  br label %done.thread

if.end76:                                         ; preds = %if.end66
  %22 = call ptr @memcpy(ptr %name, ptr %19, i32 32)
  %arrayidx = getelementptr inbounds [33 x i8], ptr %name, i32 0, i32 32
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx, align 1
  %add.ptr77 = getelementptr i8, ptr %19, i32 32
  %24 = ptrtoint ptr %add.ptr77 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 2)
  %25 = load i16, ptr %add.ptr77, align 1
  %26 = call i16 @llvm.bswap.i16(i16 %25) #7
  %firm_version = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %firm_version to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %26, ptr %firm_version, align 2
  %add.ptr79 = getelementptr i8, ptr %19, i32 34
  %28 = ptrtoint ptr %add.ptr79 to i32
  call void @__asan_loadN_noabort(i32 %28, i32 2)
  %29 = load i16, ptr %add.ptr79, align 1
  %30 = call i16 @llvm.bswap.i16(i16 %29) #7
  %conv81 = zext i16 %30 to i32
  %add.ptr82 = getelementptr i8, ptr %19, i32 36
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp83 = icmp sgt i32 %31, 0
  br i1 %cmp83, label %do.end88, label %if.end76.if.end7.i.i_crit_edge

if.end76.if.end7.i.i_crit_edge:                   ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

do.end88:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %conv92 = zext i16 %26 to i32
  %32 = lshr i32 %conv92, 8
  %and = and i32 %conv92, 255
  %call95 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.357, ptr noundef nonnull @.str.3, i32 noundef %conv81, ptr noundef nonnull %fname.0, ptr noundef nonnull %name, i32 noundef %32, i32 noundef %and) #10
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %do.end88, %if.end76.if.end7.i.i_crit_edge
  %33 = shl nuw nsw i32 %conv81, 5
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %33, i32 noundef 3520) #12
  %firm = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %firm to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call8.i.i, ptr %firm, align 8
  %cmp99 = icmp eq ptr %call8.i.i, null
  br i1 %cmp99, label %if.end7.i.i.done.thread_crit_edge, label %if.end107

if.end7.i.i.done.thread_crit_edge:                ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.thread

if.end107:                                        ; preds = %if.end7.i.i
  %firm_size = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 3
  %35 = ptrtoint ptr %firm_size to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv81, ptr %firm_size, align 4
  %cmp108356 = icmp ult ptr %add.ptr82, %add.ptr
  br i1 %cmp108356, label %while.body.lr.ph, label %if.end107.while.end_crit_edge

if.end107.while.end_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end107
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %p.0358 = phi ptr [ %add.ptr82, %while.body.lr.ph ], [ %add.ptr198, %cleanup.while.body_crit_edge ]
  %n.0357 = phi i32 [ 0, %while.body.lr.ph ], [ %phi.bo, %cleanup.while.body_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0357, i32 %conv81)
  %exitcond.not = icmp eq i32 %n.0357, %conv81
  br i1 %exitcond.not, label %do.end116, label %if.end119

do.end116:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %call118 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.363) #10
  br label %done.thread

if.end119:                                        ; preds = %while.body
  %sub.ptr.rhs.cast = ptrtoint ptr %p.0358 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub)
  %cmp120 = icmp ult i32 %sub.ptr.sub, 16
  br i1 %cmp120, label %if.end119.do.end214_crit_edge, label %if.end123

if.end119.do.end214_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end214

if.end123:                                        ; preds = %if.end119
  %36 = ptrtoint ptr %p.0358 to i32
  call void @__asan_loadN_noabort(i32 %36, i32 4)
  %37 = load i32, ptr %p.0358, align 1
  %38 = call i32 @llvm.bswap.i32(i32 %37) #7
  %add.ptr125 = getelementptr i8, ptr %p.0358, i32 4
  %39 = ptrtoint ptr %add.ptr125 to i32
  call void @__asan_loadN_noabort(i32 %39, i32 8)
  %40 = load i64, ptr %add.ptr125, align 1
  %41 = call i64 @llvm.bswap.i64(i64 %40) #7
  %add.ptr127 = getelementptr i8, ptr %p.0358, i32 12
  %and128 = and i32 %38, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and128)
  %tobool.not = icmp eq i32 %and128, 0
  br i1 %tobool.not, label %if.end123.if.end139_crit_edge, label %if.then129

if.end123.if.end139_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then129:                                       ; preds = %if.end123
  %42 = ptrtoint ptr %add.ptr127 to i32
  call void @__asan_loadN_noabort(i32 %42, i32 2)
  %43 = load i16, ptr %add.ptr127, align 1
  %44 = call i16 @llvm.bswap.i16(i16 %43) #7
  %add.ptr131 = getelementptr i8, ptr %p.0358, i32 14
  %sub.ptr.rhs.cast133 = ptrtoint ptr %add.ptr131 to i32
  %sub.ptr.sub134 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast133
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub134)
  %cmp135 = icmp ult i32 %sub.ptr.sub134, 4
  br i1 %cmp135, label %if.then129.do.end214_crit_edge, label %if.then129.if.end139_crit_edge

if.then129.if.end139_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then129.do.end214_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end214

if.end139:                                        ; preds = %if.then129.if.end139_crit_edge, %if.end123.if.end139_crit_edge
  %int_freq.0 = phi i16 [ %44, %if.then129.if.end139_crit_edge ], [ 0, %if.end123.if.end139_crit_edge ]
  %p.1 = phi ptr [ %add.ptr131, %if.then129.if.end139_crit_edge ], [ %add.ptr127, %if.end123.if.end139_crit_edge ]
  %45 = ptrtoint ptr %p.1 to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %p.1, align 1
  %47 = call i32 @llvm.bswap.i32(i32 %46) #7
  %add.ptr141 = getelementptr i8, ptr %p.1, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool142.not = icmp eq i32 %46, 0
  %sub.ptr.rhs.cast144 = ptrtoint ptr %add.ptr141 to i32
  %sub.ptr.sub145 = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast144
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %sub.ptr.sub145)
  %cmp146 = icmp ugt i32 %47, %sub.ptr.sub145
  %or.cond = select i1 %tobool142.not, i1 true, i1 %cmp146
  br i1 %or.cond, label %do.end151, label %if.end157

do.end151:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #9
  %call156 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.366, i32 noundef %38, i64 noundef %41, i32 noundef %sub.ptr.sub145, i32 noundef %47) #10
  br label %done.thread

if.end157:                                        ; preds = %if.end139
  %call158 = call ptr @kmemdup(ptr noundef %add.ptr141, i32 noundef %47, i32 noundef 3264) #7
  %48 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %firm, align 8
  %ptr = getelementptr %struct.firmware_description, ptr %49, i32 %n.0357, i32 3
  %50 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call158, ptr %ptr, align 4
  %51 = load ptr, ptr %firm, align 8
  %ptr163 = getelementptr %struct.firmware_description, ptr %51, i32 %n.0357, i32 3
  %52 = ptrtoint ptr %ptr163 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %ptr163, align 4
  %cmp164 = icmp eq ptr %53, null
  br i1 %cmp164, label %if.end157.done.thread_crit_edge, label %if.end172

if.end157.done.thread_crit_edge:                  ; preds = %if.end157
  call void @__sanitizer_cov_trace_pc() #9
  br label %done.thread

if.end172:                                        ; preds = %if.end157
  %54 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool173.not = icmp eq i32 %54, 0
  br i1 %tobool173.not, label %if.end172.cleanup_crit_edge, label %do.end177

if.end172.cleanup_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end177:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %call179 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.371) #10
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %38, i16 noundef zeroext %int_freq.0)
  %call184 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.374, i32 noundef %38, i64 noundef %41, i32 noundef %47) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end177, %if.end172.cleanup_crit_edge
  %55 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %firm, align 8
  %arrayidx187 = getelementptr %struct.firmware_description, ptr %56, i32 %n.0357
  %57 = ptrtoint ptr %arrayidx187 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %38, ptr %arrayidx187, align 8
  %58 = load ptr, ptr %firm, align 8
  %id191 = getelementptr %struct.firmware_description, ptr %58, i32 %n.0357, i32 1
  %59 = ptrtoint ptr %id191 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %41, ptr %id191, align 8
  %60 = load ptr, ptr %firm, align 8
  %size194 = getelementptr %struct.firmware_description, ptr %60, i32 %n.0357, i32 4
  %61 = ptrtoint ptr %size194 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %47, ptr %size194, align 8
  %62 = load ptr, ptr %firm, align 8
  %int_freq197 = getelementptr %struct.firmware_description, ptr %62, i32 %n.0357, i32 2
  %63 = ptrtoint ptr %int_freq197 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %int_freq.0, ptr %int_freq197, align 8
  %add.ptr198 = getelementptr i8, ptr %add.ptr141, i32 %47
  %phi.bo = add nuw nsw i32 %n.0357, 1
  %cmp108 = icmp ult ptr %add.ptr198, %add.ptr
  br i1 %cmp108, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end107.while.end_crit_edge
  %n.0.lcssa = phi i32 [ 0, %if.end107.while.end_crit_edge ], [ %phi.bo, %cleanup.while.end_crit_edge ]
  %64 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %firm_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.lcssa, i32 %65)
  %cmp203.not = icmp eq i32 %n.0.lcssa, %65
  br i1 %cmp203.not, label %done, label %do.end208

do.end208:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.377) #10
  br label %done.thread

do.end214:                                        ; preds = %if.then129.do.end214_crit_edge, %if.end119.do.end214_crit_edge
  %call216 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.380) #10
  br label %done.thread

done.thread:                                      ; preds = %do.end214, %do.end208, %if.end157.done.thread_crit_edge, %do.end151, %do.end116, %if.end7.i.i.done.thread_crit_edge, %do.end73
  %.str.383.sink = phi ptr [ @.str.360, %if.end7.i.i.done.thread_crit_edge ], [ @.str.383, %do.end151 ], [ @.str.383, %do.end116 ], [ @.str.383, %do.end214 ], [ @.str.383, %do.end208 ], [ @.str.383, %do.end73 ], [ @.str.360, %if.end157.done.thread_crit_edge ]
  %rc.3.ph = phi i32 [ -12, %if.end7.i.i.done.thread_crit_edge ], [ -22, %do.end151 ], [ -22, %do.end116 ], [ -22, %do.end214 ], [ -22, %do.end208 ], [ -22, %do.end73 ], [ -12, %if.end157.done.thread_crit_edge ]
  %call221 = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.383.sink) #10
  %66 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %67) #7
  br label %cleanup235

done:                                             ; preds = %while.end
  %68 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fw, align 4
  call void @release_firmware(ptr noundef %69) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp222 = icmp eq i32 %rc.0, 0
  br i1 %cmp222, label %if.then224, label %done.cleanup235_crit_edge

done.cleanup235_crit_edge:                        ; preds = %done
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup235

if.then224:                                       ; preds = %done
  %70 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp225 = icmp sgt i32 %70, 0
  br i1 %cmp225, label %do.end230, label %if.then224.cleanup235_crit_edge

if.then224.cleanup235_crit_edge:                  ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup235

do.end230:                                        ; preds = %if.then224
  call void @__sanitizer_cov_trace_pc() #9
  %call232 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.386, ptr noundef nonnull @.str.3) #10
  br label %cleanup235

cleanup235:                                       ; preds = %do.end230, %if.then224.cleanup235_crit_edge, %done.cleanup235_crit_edge, %done.thread, %do.end53, %do.end47
  %retval.0 = phi i32 [ %rc.0, %do.end53 ], [ -2, %do.end47 ], [ 0, %if.then224.cleanup235_crit_edge ], [ 0, %do.end230 ], [ %rc.0, %done.cleanup235_crit_edge ], [ %rc.3.ph, %done.thread ]
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fw) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xc4000_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.388) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @xc4000_list_mutex, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end28_crit_edge, label %if.then1

if.end.if.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then1:                                         ; preds = %if.end
  %count = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 8
  %dec = add i32 %4, -1
  store i32 %dec, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool6.not = icmp eq i32 %dec, 0
  br i1 %tobool6.not, label %do.end12, label %if.then1.if.end28_crit_edge

if.then1.if.end28_crit_edge:                      ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

do.end12:                                         ; preds = %if.then1
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 4
  %tobool16.not = icmp eq ptr %8, null
  br i1 %tobool16.not, label %do.end12.cond.end_crit_edge, label %cond.true

do.end12.cond.end_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end12.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ -1, %do.end12.cond.end_crit_edge ]
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %1, align 8
  %conv = zext i8 %12 to i32
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.390, ptr noundef %6, i32 noundef %cond, i32 noundef %conv) #10
  %hybrid_tuner_instance_list = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %hybrid_tuner_instance_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %cond.end.list_del.exit_crit_edge

cond.end.list_del.exit_crit_edge:                 ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hybrid_tuner_instance_list, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end.list_del.exit_crit_edge
  %19 = ptrtoint ptr %hybrid_tuner_instance_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %hybrid_tuner_instance_list, align 4
  %prev.i = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #7
  br label %if.end28

if.end28:                                         ; preds = %list_del.exit, %if.then1.if.end28_crit_edge, %if.end.if.end28_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @xc4000_list_mutex) #7
  %21 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_init(ptr nocapture noundef readnone %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.30) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.31) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %3 = load i32, ptr @no_poweroff, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.393)
  switch i32 %3, label %if.end.if.end21_crit_edge [
    i32 2, label %if.end.land.lhs.true5_crit_edge
    i32 0, label %land.lhs.true
  ]

if.end.land.lhs.true5_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true5

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end
  %default_pm = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 10
  %5 = ptrtoint ptr %default_pm to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %default_pm, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp3.not = icmp eq i8 %6, 0
  br i1 %cmp3.not, label %land.lhs.true.if.end21_crit_edge, label %land.lhs.true.land.lhs.true5_crit_edge

land.lhs.true.land.lhs.true5_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true5

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

land.lhs.true5:                                   ; preds = %land.lhs.true.land.lhs.true5_crit_edge, %if.end.land.lhs.true5_crit_edge
  %cur_fw = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 15
  %7 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cur_fw, align 8
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6.not = icmp eq i32 %and, 0
  br i1 %cmp6.not, label %land.lhs.true5.if.end21_crit_edge, label %if.then8

land.lhs.true5.if.end21_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then8:                                         ; preds = %land.lhs.true5
  %9 = ptrtoint ptr %cur_fw to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -2147483648, ptr %cur_fw, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %12 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf.i, align 1
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %10, align 1
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %11, align 1
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %12, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %17 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 327679, ptr %17, align 4
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %1, align 8
  %conv.i.i = zext i8 %20 to i16
  %21 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %24 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %25, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.then8.xc_write_reg.exit.thread_crit_edge, label %if.then.i.i

if.then8.xc_write_reg.exit.thread_crit_edge:      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_write_reg.exit.thread

if.then.i.i:                                      ; preds = %if.then8
  %ignore_i2c_write_errors.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 13
  %26 = ptrtoint ptr %ignore_i2c_write_errors.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ignore_i2c_write_errors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %cmp8.i.i = icmp eq i8 %27, 0
  br i1 %cmp8.i.i, label %do.end17, label %if.then.i.i.xc_write_reg.exit.thread_crit_edge

if.then.i.i.xc_write_reg.exit.thread_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_write_reg.exit.thread

xc_write_reg.exit.thread:                         ; preds = %if.then.i.i.xc_write_reg.exit.thread_crit_edge, %if.then8.xc_write_reg.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %if.end20

do.end17:                                         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.31) #10
  br label %if.end20

if.end20:                                         ; preds = %do.end17, %xc_write_reg.exit.thread
  %ret.0 = phi i32 [ -121, %do.end17 ], [ 0, %xc_write_reg.exit.thread ]
  call void @msleep(i32 noundef 20) #7
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %land.lhs.true5.if.end21_crit_edge, %land.lhs.true.if.end21_crit_edge, %if.end.if.end21_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end20 ], [ 0, %land.lhs.true5.if.end21_crit_edge ], [ 0, %land.lhs.true.if.end21_crit_edge ], [ 0, %if.end.if.end21_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i.i238 = alloca %struct.i2c_msg, align 4
  %buf.i239 = alloca [4 x i8], align 1
  %msg.i.i222 = alloca %struct.i2c_msg, align 4
  %buf.i223 = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dtv_property_cache = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8
  %delivery_system = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 15
  %0 = ptrtoint ptr %delivery_system to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delivery_system, align 4
  %bandwidth_hz = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 8, i32 7
  %2 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth_hz, align 4
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %4 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tuner_priv, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp = icmp sgt i32 %6, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dtv_property_cache, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef %8) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lock = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %9 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.394)
  switch i32 %1, label %do.end58 [
    i32 11, label %sw.bb
    i32 2, label %sw.bb9
    i32 3, label %if.end.sw.bb21_crit_edge
    i32 16, label %if.end.sw.bb21_crit_edge264
  ]

if.end.sw.bb21_crit_edge264:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

if.end.sw.bb21_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb21

sw.bb:                                            ; preds = %if.end
  %10 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp1 = icmp sgt i32 %10, 0
  br i1 %cmp1, label %do.end5, label %sw.bb.if.end8_crit_edge

sw.bb.if.end8_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end5:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %sw.bb.if.end8_crit_edge
  %rf_mode = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 9
  %11 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %rf_mode, align 1
  %freq_offset = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %freq_offset to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1750000, ptr %freq_offset, align 8
  %video_standard = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 8
  %13 = ptrtoint ptr %video_standard to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 18, ptr %video_standard, align 8
  br label %sw.epilog

sw.bb9:                                           ; preds = %if.end
  %14 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp10 = icmp sgt i32 %14, 0
  br i1 %cmp10, label %do.end14, label %sw.bb9.if.end17_crit_edge

sw.bb9.if.end17_crit_edge:                        ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

do.end14:                                         ; preds = %sw.bb9
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41) #10
  br label %if.end17

if.end17:                                         ; preds = %do.end14, %sw.bb9.if.end17_crit_edge
  %rf_mode18 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 9
  %15 = ptrtoint ptr %rf_mode18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %rf_mode18, align 1
  %freq_offset19 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %freq_offset19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1750000, ptr %freq_offset19, align 8
  %video_standard20 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 8
  %17 = ptrtoint ptr %video_standard20 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 18, ptr %video_standard20, align 8
  br label %sw.epilog

sw.bb21:                                          ; preds = %if.end.sw.bb21_crit_edge, %if.end.sw.bb21_crit_edge264
  %18 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp22 = icmp sgt i32 %18, 0
  br i1 %cmp22, label %do.end26, label %sw.bb21.if.end29_crit_edge

sw.bb21.if.end29_crit_edge:                       ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

do.end26:                                         ; preds = %sw.bb21
  call void @__sanitizer_cov_trace_pc() #9
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41) #10
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %sw.bb21.if.end29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp30 = icmp eq i32 %3, 0
  br i1 %cmp30, label %if.then31, label %if.else39

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 400000000, i32 %20)
  %cmp33 = icmp ult i32 %20, 400000000
  %spec.select263 = select i1 %cmp33, i32 2250000, i32 2750000
  %21 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 6
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %spec.select263, ptr %21, align 8
  %video_standard38 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 8
  %23 = ptrtoint ptr %video_standard38 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 20, ptr %video_standard38, align 8
  br label %if.end54

if.else39:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp40 = icmp ult i32 %3, 6000001
  br i1 %cmp40, label %if.then41, label %if.else44

if.then41:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard42 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 8
  %24 = ptrtoint ptr %video_standard42 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 18, ptr %video_standard42, align 8
  %freq_offset43 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 6
  %25 = ptrtoint ptr %freq_offset43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1750000, ptr %freq_offset43, align 8
  br label %if.end54

if.else44:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %3)
  %cmp45 = icmp ult i32 %3, 7000001
  %video_standard47 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 8
  br i1 %cmp45, label %if.then46, label %if.else49

if.then46:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %video_standard47 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 21, ptr %video_standard47, align 8
  %freq_offset48 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 6
  %27 = ptrtoint ptr %freq_offset48 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2250000, ptr %freq_offset48, align 8
  br label %if.end54

if.else49:                                        ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %video_standard47 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 19, ptr %video_standard47, align 8
  %freq_offset51 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 6
  %29 = ptrtoint ptr %freq_offset51 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 2750000, ptr %freq_offset51, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.else49, %if.then46, %if.then41, %if.then31
  %type.0 = phi i32 [ 256, %if.then31 ], [ 32, %if.then41 ], [ 128, %if.then46 ], [ 512, %if.else49 ]
  %rf_mode55 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 9
  %30 = ptrtoint ptr %rf_mode55 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 0, ptr %rf_mode55, align 1
  br label %sw.epilog

do.end58:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call60 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52) #10
  br label %fail

sw.epilog:                                        ; preds = %if.end54, %if.end17, %if.end8
  %type.1 = phi i32 [ %type.0, %if.end54 ], [ 32, %if.end17 ], [ 32, %if.end8 ]
  %31 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dtv_property_cache, align 4
  %freq_offset62 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %freq_offset62 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %freq_offset62, align 8
  %sub = sub i32 %32, %34
  %freq_hz = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 5
  %35 = ptrtoint ptr %freq_hz to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %freq_hz, align 4
  %36 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp63 = icmp sgt i32 %36, 0
  br i1 %cmp63, label %do.end67, label %sw.epilog.if.end71_crit_edge

sw.epilog.if.end71_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end71

do.end67:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.41, i32 noundef %sub) #10
  br label %if.end71

if.end71:                                         ; preds = %do.end67, %sw.epilog.if.end71_crit_edge
  %if_khz = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 4
  %37 = ptrtoint ptr %if_khz to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %if_khz, align 8
  %conv = trunc i32 %38 to i16
  %call72 = tail call fastcc i32 @check_firmware(ptr noundef %fe, i32 noundef %type.1, i64 noundef 0, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73.not = icmp eq i32 %call72, 0
  br i1 %cmp73.not, label %if.end76, label %if.end71.fail_crit_edge

if.end71.fail_crit_edge:                          ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

if.end76:                                         ; preds = %if.end71
  %39 = ptrtoint ptr %bandwidth_hz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bandwidth_hz, align 4
  %bandwidth = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 7
  %41 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %bandwidth, align 4
  %rf_mode78 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 9
  %42 = ptrtoint ptr %rf_mode78 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %rf_mode78, align 1
  %conv79 = zext i8 %43 to i16
  %call80 = tail call fastcc i32 @xc_set_signal_source(ptr noundef %5, i16 noundef zeroext %conv79)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %cmp81.not = icmp eq i32 %call80, 0
  br i1 %cmp81.not, label %if.else91, label %do.end86

do.end86:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %rf_mode78 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %rf_mode78, align 1
  %conv89 = zext i8 %45 to i32
  %call90 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv89) #10
  br label %fail

if.else91:                                        ; preds = %if.end76
  %video_standard92 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 8
  %46 = ptrtoint ptr %video_standard92 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %video_standard92, align 8
  %idxprom = zext i8 %47 to i32
  %video_mode93 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %idxprom, i32 2
  %48 = ptrtoint ptr %video_mode93 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %video_mode93, align 2
  %audio_mode97 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %idxprom, i32 1
  %50 = ptrtoint ptr %audio_mode97 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %audio_mode97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %type.1)
  %cmp98 = icmp eq i32 %type.1, 32
  br i1 %cmp98, label %land.lhs.true, label %if.else91.if.end106_crit_edge

if.else91.if.end106_crit_edge:                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

land.lhs.true:                                    ; preds = %if.else91
  call void @__sanitizer_cov_trace_pc() #9
  %firm_version = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 14
  %52 = ptrtoint ptr %firm_version to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %firm_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %53)
  %cmp101.not = icmp ne i16 %53, 258
  %54 = zext i1 %cmp101.not to i16
  %spec.select = or i16 %49, %54
  br label %if.end106

if.end106:                                        ; preds = %land.lhs.true, %if.else91.if.end106_crit_edge
  %video_mode.0 = phi i16 [ %49, %if.else91.if.end106_crit_edge ], [ %spec.select, %land.lhs.true ]
  %call107 = tail call fastcc i32 @xc_set_tv_standard(ptr noundef %5, i16 noundef zeroext %video_mode.0, i16 noundef zeroext %51)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108.not = icmp eq i32 %call107, 0
  br i1 %cmp108.not, label %if.end106.if.end116_crit_edge, label %do.end113

if.end106.if.end116_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

do.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %call115 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #10
  br label %if.end116

if.end116:                                        ; preds = %do.end113, %if.end106.if.end116_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %55 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %56 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %57 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %58 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %buf.i, align 1
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 4, ptr %55, align 1
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %56, align 1
  %61 = ptrtoint ptr %57 to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %57, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %62 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 327679, ptr %62, align 4
  %64 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %5, align 8
  %conv.i.i = zext i8 %65 to i16
  %66 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %68 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %5, i32 0, i32 1
  %69 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end116._crit_edge, label %if.then.i.i

if.end116._crit_edge:                             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %73

if.then.i.i:                                      ; preds = %if.end116
  %ignore_i2c_write_errors.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 13
  %71 = ptrtoint ptr %ignore_i2c_write_errors.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %ignore_i2c_write_errors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %cmp8.i.i = icmp eq i8 %72, 0
  br i1 %cmp8.i.i, label %xc_write_reg.exit, label %if.then.i.i._crit_edge

if.then.i.i._crit_edge:                           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %73

xc_write_reg.exit:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %74

73:                                               ; preds = %if.then.i.i._crit_edge, %if.end116._crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %74

74:                                               ; preds = %73, %xc_write_reg.exit
  %75 = phi i32 [ 0, %73 ], [ %call107, %xc_write_reg.exit ]
  %dvb_amplitude = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 11
  %76 = ptrtoint ptr %dvb_amplitude to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %dvb_amplitude, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %cmp124.not = icmp eq i8 %77, 0
  br i1 %cmp124.not, label %.if.end143_crit_edge, label %if.then126

.if.end143_crit_edge:                             ; preds = %74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then126:                                       ; preds = %74
  %firm_version127 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 14
  %78 = ptrtoint ptr %firm_version127 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %firm_version127, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %79)
  %cmp129.not = icmp eq i16 %79, 258
  call void @__sanitizer_cov_trace_const_cmp1(i8 -122, i8 %77)
  %cmp133.not = icmp eq i8 %77, -122
  %or.cond = select i1 %cmp129.not, i1 %cmp133.not, i1 false
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i223) #7
  %80 = getelementptr inbounds [4 x i8], ptr %buf.i223, i32 0, i32 1
  %81 = getelementptr inbounds [4 x i8], ptr %buf.i223, i32 0, i32 2
  %82 = getelementptr inbounds [4 x i8], ptr %buf.i223, i32 0, i32 3
  %83 = ptrtoint ptr %buf.i223 to i32
  call void @__asan_store1_noabort(i32 %83)
  store i8 0, ptr %buf.i223, align 1
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 16, ptr %80, align 1
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 0, ptr %81, align 1
  %conv13.i = select i1 %or.cond, i8 -124, i8 %77
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store1_noabort(i32 %86)
  store i8 %conv13.i, ptr %82, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i222) #7
  %87 = getelementptr inbounds i8, ptr %msg.i.i222, i32 4
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 327679, ptr %87, align 4
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %5, align 8
  %conv.i.i224 = zext i8 %90 to i16
  %91 = ptrtoint ptr %msg.i.i222 to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 %conv.i.i224, ptr %msg.i.i222, align 4
  %flags.i.i225 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i222, i32 0, i32 1
  %92 = ptrtoint ptr %flags.i.i225 to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 0, ptr %flags.i.i225, align 2
  %buf4.i.i226 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i222, i32 0, i32 3
  %93 = ptrtoint ptr %buf4.i.i226 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %buf.i223, ptr %buf4.i.i226, align 4
  %94 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %adap.i.i, align 4
  %call.i.i228 = call i32 @i2c_transfer(ptr noundef %95, ptr noundef nonnull %msg.i.i222, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i228)
  %cmp.not.i.i229 = icmp eq i32 %call.i.i228, 1
  br i1 %cmp.not.i.i229, label %if.then126._crit_edge, label %if.then.i.i232

if.then126._crit_edge:                            ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %98

if.then.i.i232:                                   ; preds = %if.then126
  %ignore_i2c_write_errors.i.i230 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 13
  %96 = ptrtoint ptr %ignore_i2c_write_errors.i.i230 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %ignore_i2c_write_errors.i.i230, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %cmp8.i.i231 = icmp eq i8 %97, 0
  br i1 %cmp8.i.i231, label %xc_write_reg.exit237, label %if.then.i.i232._crit_edge

if.then.i.i232._crit_edge:                        ; preds = %if.then.i.i232
  call void @__sanitizer_cov_trace_pc() #9
  br label %98

xc_write_reg.exit237:                             ; preds = %if.then.i.i232
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i233 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i234 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i223) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i222) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i223) #7
  br label %if.end143

98:                                               ; preds = %if.then.i.i232._crit_edge, %if.then126._crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i222) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i223) #7
  br label %if.end143

if.end143:                                        ; preds = %98, %xc_write_reg.exit237, %.if.end143_crit_edge
  %ret.1 = phi i32 [ %75, %.if.end143_crit_edge ], [ %75, %98 ], [ -121, %xc_write_reg.exit237 ]
  %set_smoothedcvbs = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 12
  %99 = ptrtoint ptr %set_smoothedcvbs to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %set_smoothedcvbs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %cmp145.not = icmp eq i8 %100, 0
  br i1 %cmp145.not, label %if.end143.if.end153_crit_edge, label %if.then147

if.end143.if.end153_crit_edge:                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end153

if.then147:                                       ; preds = %if.end143
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i239) #7
  %101 = getelementptr inbounds [4 x i8], ptr %buf.i239, i32 0, i32 1
  %102 = getelementptr inbounds [4 x i8], ptr %buf.i239, i32 0, i32 2
  %103 = getelementptr inbounds [4 x i8], ptr %buf.i239, i32 0, i32 3
  %104 = ptrtoint ptr %buf.i239 to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %buf.i239, align 1
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 14, ptr %101, align 1
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store1_noabort(i32 %106)
  store i8 0, ptr %102, align 1
  %107 = ptrtoint ptr %103 to i32
  call void @__asan_store1_noabort(i32 %107)
  store i8 1, ptr %103, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i238) #7
  %108 = getelementptr inbounds i8, ptr %msg.i.i238, i32 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 327679, ptr %108, align 4
  %110 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %5, align 8
  %conv.i.i240 = zext i8 %111 to i16
  %112 = ptrtoint ptr %msg.i.i238 to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 %conv.i.i240, ptr %msg.i.i238, align 4
  %flags.i.i241 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i238, i32 0, i32 1
  %113 = ptrtoint ptr %flags.i.i241 to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 0, ptr %flags.i.i241, align 2
  %buf4.i.i242 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i238, i32 0, i32 3
  %114 = ptrtoint ptr %buf4.i.i242 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %buf.i239, ptr %buf4.i.i242, align 4
  %115 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %adap.i.i, align 4
  %call.i.i244 = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i.i238, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i244)
  %cmp.not.i.i245 = icmp eq i32 %call.i.i244, 1
  br i1 %cmp.not.i.i245, label %if.then147._crit_edge, label %if.then.i.i248

if.then147._crit_edge:                            ; preds = %if.then147
  call void @__sanitizer_cov_trace_pc() #9
  br label %119

if.then.i.i248:                                   ; preds = %if.then147
  %ignore_i2c_write_errors.i.i246 = getelementptr inbounds %struct.xc4000_priv, ptr %5, i32 0, i32 13
  %117 = ptrtoint ptr %ignore_i2c_write_errors.i.i246 to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %ignore_i2c_write_errors.i.i246, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %118)
  %cmp8.i.i247 = icmp eq i8 %118, 0
  br i1 %cmp8.i.i247, label %if.end153.thread, label %if.then.i.i248._crit_edge

if.then.i.i248._crit_edge:                        ; preds = %if.then.i.i248
  call void @__sanitizer_cov_trace_pc() #9
  br label %119

if.end153.thread:                                 ; preds = %if.then.i.i248
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i249 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i250 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i239) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i238) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i239) #7
  br label %do.end159

119:                                              ; preds = %if.then.i.i248._crit_edge, %if.then147._crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i238) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i239) #7
  br label %if.end153

if.end153:                                        ; preds = %119, %if.end143.if.end153_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp154.not = icmp eq i32 %ret.1, 0
  br i1 %cmp154.not, label %if.end153.if.end162_crit_edge, label %if.end153.do.end159_crit_edge

if.end153.do.end159_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end159

if.end153.if.end162_crit_edge:                    ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end162

do.end159:                                        ; preds = %if.end153.do.end159_crit_edge, %if.end153.thread
  %call161 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #10
  br label %if.end162

if.end162:                                        ; preds = %do.end159, %if.end153.if.end162_crit_edge
  %120 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %freq_hz, align 4
  call fastcc void @xc_tune_channel(ptr noundef %5, i32 noundef %121)
  br label %fail

fail:                                             ; preds = %if.end162, %do.end86, %if.end71.fail_crit_edge, %do.end58
  %ret.3 = phi i32 [ -22, %do.end58 ], [ -121, %if.end71.fail_crit_edge ], [ %call80, %do.end86 ], [ 0, %if.end162 ]
  call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_set_analog_params(ptr nocapture noundef readonly %fe, ptr nocapture noundef %params) #0 align 64 {
entry:
  %msg.i.i382 = alloca %struct.i2c_msg, align 4
  %buf.i383 = alloca [4 x i8], align 1
  %msg.i.i366 = alloca %struct.i2c_msg, align 4
  %buf.i367 = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 1
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp eq i32 %3, 1
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1 = icmp sgt i32 %4, 0
  br i1 %cmp, label %if.then, label %if.end7

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %do.end, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %params, align 8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.312, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.313, i32 noundef %6) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then.if.end_crit_edge
  %lock = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %std = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %7 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %std, align 8
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %params, align 8
  %mul = mul i32 %9, 125
  %div361 = lshr i32 %mul, 1
  %freq_hz = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %freq_hz to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %div361, ptr %freq_hz, align 4
  %11 = load i32, ptr @audio_std, align 4
  %and = and i32 %11, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %video_standard5 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  br i1 %tobool.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %video_standard5 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 23, ptr %video_standard5, align 8
  br label %tune_channel

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %video_standard5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 22, ptr %video_standard5, align 8
  br label %tune_channel

if.end7:                                          ; preds = %entry
  br i1 %cmp1, label %do.end12, label %if.end7.if.end16_crit_edge

if.end7.if.end16_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %params, align 8
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.315, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.313, i32 noundef %15) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end12, %if.end7.if.end16_crit_edge
  %lock17 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock17, i32 noundef 0) #7
  %16 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %params, align 8
  %mul19 = mul i32 %17, 62500
  %freq_hz20 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 5
  %18 = ptrtoint ptr %freq_hz20 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul19, ptr %freq_hz20, align 4
  %std21 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %19 = ptrtoint ptr %std21 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %std21, align 8
  %and22 = and i64 %20, 16777215
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and22)
  %tobool24.not = icmp eq i64 %and22, 0
  %spec.select = select i1 %tobool24.not, i64 7, i64 %and22
  %21 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %spec.select, ptr %std21, align 8
  %22 = load i32, ptr @audio_std, align 4
  %and28 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  %23 = shl nuw nsw i32 %and28, 10
  %and33 = and i64 %spec.select, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and33)
  %tobool34.not = icmp eq i64 %and33, 0
  br i1 %tobool34.not, label %if.end53, label %if.then35

if.then35:                                        ; preds = %if.end16
  %24 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 46848, ptr %std21, align 8
  br i1 %tobool29.not, label %if.else41, label %if.then39

if.then39:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard40 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %25 = ptrtoint ptr %video_standard40 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 3, ptr %video_standard40, align 8
  br label %tune_channel

if.else41:                                        ; preds = %if.then35
  %and42 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.else47, label %if.then44

if.then44:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 12884948736, ptr %std21, align 8
  %video_standard46 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %27 = ptrtoint ptr %video_standard46 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 1, ptr %video_standard46, align 8
  br label %tune_channel

if.else47:                                        ; preds = %if.else41
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 137439000320, ptr %std21, align 8
  %video_standard50 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %29 = ptrtoint ptr %video_standard50 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %video_standard50, align 8
  br label %tune_channel

if.end53:                                         ; preds = %if.end16
  %and55 = and i64 %spec.select, 7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and55)
  %tobool56.not = icmp eq i64 %and55, 0
  br i1 %tobool56.not, label %if.end92, label %if.then57

if.then57:                                        ; preds = %if.end53
  %30 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %30)
  store i64 7, ptr %std21, align 8
  br i1 %tobool29.not, label %if.else63, label %if.then61

if.then61:                                        ; preds = %if.then57
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard62 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %31 = ptrtoint ptr %video_standard62 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 6, ptr %video_standard62, align 8
  br label %tune_channel

if.else63:                                        ; preds = %if.then57
  %and64 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64)
  %tobool65.not = icmp eq i32 %and64, 0
  %and67 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  br i1 %tobool65.not, label %if.then66, label %if.else78

if.then66:                                        ; preds = %if.else63
  br i1 %tobool68.not, label %if.then69, label %if.else73

if.then69:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 17179869191, ptr %std21, align 8
  %video_standard72 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %33 = ptrtoint ptr %video_standard72 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 5, ptr %video_standard72, align 8
  br label %tune_channel

if.else73:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 34359738375, ptr %std21, align 8
  %video_standard76 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %35 = ptrtoint ptr %video_standard76 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 5, ptr %video_standard76, align 8
  br label %tune_channel

if.else78:                                        ; preds = %if.else63
  br i1 %tobool68.not, label %if.then81, label %if.else85

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 4294967303, ptr %std21, align 8
  %video_standard84 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %37 = ptrtoint ptr %video_standard84 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 4, ptr %video_standard84, align 8
  br label %tune_channel

if.else85:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 8589934599, ptr %std21, align 8
  %video_standard88 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %39 = ptrtoint ptr %video_standard88 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 4, ptr %video_standard88, align 8
  br label %tune_channel

if.end92:                                         ; preds = %if.end53
  %and94 = and i64 %spec.select, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and94)
  %tobool95.not = icmp eq i64 %and94, 0
  br i1 %tobool95.not, label %if.end105, label %if.then96

if.then96:                                        ; preds = %if.end92
  %40 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 51539607568, ptr %std21, align 8
  %video_standard103 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  br i1 %tobool29.not, label %if.else102, label %if.then100

if.then100:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %video_standard103 to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 8, ptr %video_standard103, align 8
  br label %tune_channel

if.else102:                                       ; preds = %if.then96
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %video_standard103 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 7, ptr %video_standard103, align 8
  br label %tune_channel

if.end105:                                        ; preds = %if.end92
  %and107 = and i64 %spec.select, 224
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and107)
  %tobool108.not = icmp eq i64 %and107, 0
  br i1 %tobool108.not, label %if.end128, label %if.then109

if.then109:                                       ; preds = %if.end105
  %43 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 224, ptr %std21, align 8
  br i1 %tobool29.not, label %if.else115, label %if.then113

if.then113:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard114 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %44 = ptrtoint ptr %video_standard114 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 11, ptr %video_standard114, align 8
  br label %tune_channel

if.else115:                                       ; preds = %if.then109
  %and116 = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and116)
  %tobool117.not = icmp eq i32 %and116, 0
  br i1 %tobool117.not, label %if.else122, label %if.then118

if.then118:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 12884902112, ptr %std21, align 8
  %video_standard121 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %46 = ptrtoint ptr %video_standard121 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 9, ptr %video_standard121, align 8
  br label %tune_channel

if.else122:                                       ; preds = %if.else115
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 51539607776, ptr %std21, align 8
  %video_standard125 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %48 = ptrtoint ptr %video_standard125 to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 10, ptr %video_standard125, align 8
  br label %tune_channel

if.end128:                                        ; preds = %if.end105
  %and130 = and i64 %spec.select, 3276800
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and130)
  %tobool131.not = icmp eq i64 %and130, 0
  br i1 %tobool131.not, label %if.end155, label %if.then132

if.then132:                                       ; preds = %if.end128
  %49 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 12888178688, ptr %std21, align 8
  %and134 = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and134)
  %tobool135.not = icmp eq i32 %and134, 0
  br i1 %tobool135.not, label %if.else138, label %if.then136

if.then136:                                       ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard137 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %50 = ptrtoint ptr %video_standard137 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 15, ptr %video_standard137, align 8
  br label %tune_channel

if.else138:                                       ; preds = %if.then132
  br i1 %tobool29.not, label %if.else143, label %if.then141

if.then141:                                       ; preds = %if.else138
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard142 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %51 = ptrtoint ptr %video_standard142 to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 14, ptr %video_standard142, align 8
  br label %tune_channel

if.else143:                                       ; preds = %if.else138
  %and144 = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and144)
  %tobool145.not = icmp eq i32 %and144, 0
  br i1 %tobool145.not, label %if.else150, label %if.then146

if.then146:                                       ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 12955287552, ptr %std21, align 8
  %video_standard149 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %53 = ptrtoint ptr %video_standard149 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 13, ptr %video_standard149, align 8
  br label %tune_channel

if.else150:                                       ; preds = %if.else143
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard151 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %54 = ptrtoint ptr %video_standard151 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 12, ptr %video_standard151, align 8
  br label %tune_channel

if.end155:                                        ; preds = %if.end128
  %and157 = and i64 %spec.select, 4194304
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and157)
  %tobool158.not = icmp eq i64 %and157, 0
  br i1 %tobool158.not, label %if.end162, label %if.then159

if.then159:                                       ; preds = %if.end155
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 51543801856, ptr %std21, align 8
  %video_standard161 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %56 = ptrtoint ptr %video_standard161 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 16, ptr %video_standard161, align 8
  br label %tune_channel

if.end162:                                        ; preds = %if.end155
  %and164 = and i64 %spec.select, 8388608
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and164)
  %tobool165.not = icmp eq i64 %and164, 0
  br i1 %tobool165.not, label %if.end162.tune_channel_crit_edge, label %if.then166

if.end162.tune_channel_crit_edge:                 ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  br label %tune_channel

if.then166:                                       ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %std21 to i32
  call void @__asan_store8_noabort(i32 %57)
  store i64 51547996160, ptr %std21, align 8
  %video_standard168 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %58 = ptrtoint ptr %video_standard168 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 17, ptr %video_standard168, align 8
  br label %tune_channel

tune_channel:                                     ; preds = %if.then166, %if.end162.tune_channel_crit_edge, %if.then159, %if.else150, %if.then146, %if.then141, %if.then136, %if.else122, %if.then118, %if.then113, %if.else102, %if.then100, %if.else85, %if.then81, %if.else73, %if.then69, %if.then61, %if.else47, %if.then44, %if.then39, %if.else, %if.then4
  %type.1 = phi i32 [ 3072, %if.then4 ], [ 268436480, %if.else ], [ 32768, %if.then39 ], [ 0, %if.then44 ], [ 0, %if.else47 ], [ 32768, %if.then61 ], [ 0, %if.else85 ], [ 0, %if.then81 ], [ 0, %if.else73 ], [ 0, %if.then69 ], [ 32768, %if.then100 ], [ 0, %if.else102 ], [ 32768, %if.then113 ], [ 0, %if.then118 ], [ 0, %if.else122 ], [ 0, %if.then136 ], [ 32768, %if.then141 ], [ 0, %if.then146 ], [ 0, %if.else150 ], [ 0, %if.then159 ], [ 0, %if.then166 ], [ %23, %if.end162.tune_channel_crit_edge ]
  %rf_mode = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %rf_mode to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %rf_mode, align 1
  %std170 = getelementptr inbounds %struct.analog_parameters, ptr %params, i32 0, i32 3
  %60 = ptrtoint ptr %std170 to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %std170, align 8
  %video_standard171 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %62 = ptrtoint ptr %video_standard171 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %video_standard171, align 8
  %idxprom = zext i8 %63 to i32
  %int_freq = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %idxprom, i32 3
  %64 = ptrtoint ptr %int_freq to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %int_freq, align 4
  %call172 = tail call fastcc i32 @check_firmware(ptr noundef %fe, i32 noundef %type.1, i64 noundef %61, i16 noundef zeroext %65)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call172)
  %cmp173.not = icmp eq i32 %call172, 0
  br i1 %cmp173.not, label %if.end175, label %tune_channel.cleanup276_crit_edge

tune_channel.cleanup276_crit_edge:                ; preds = %tune_channel
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup276

if.end175:                                        ; preds = %tune_channel
  %66 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %rf_mode, align 1
  %conv = zext i8 %67 to i16
  %call177 = tail call fastcc i32 @xc_set_signal_source(ptr noundef %1, i16 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call177)
  %cmp178.not = icmp eq i32 %call177, 0
  br i1 %cmp178.not, label %if.else188, label %do.end183

do.end183:                                        ; preds = %if.end175
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %rf_mode to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %rf_mode, align 1
  %conv186 = zext i8 %69 to i32
  %call187 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %conv186) #10
  br label %cleanup276

if.else188:                                       ; preds = %if.end175
  %70 = ptrtoint ptr %video_standard171 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %video_standard171, align 8
  %idxprom190 = zext i8 %71 to i32
  %video_mode192 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %idxprom190, i32 2
  %72 = ptrtoint ptr %video_mode192 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %video_mode192, align 2
  %audio_mode196 = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %idxprom190, i32 1
  %74 = ptrtoint ptr %audio_mode196 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %audio_mode196, align 4
  %76 = add i8 %71, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %76)
  %77 = icmp ult i8 %76, 3
  br i1 %77, label %if.then214, label %if.else188.if.end231_crit_edge

if.else188.if.end231_crit_edge:                   ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end231

if.then214:                                       ; preds = %if.else188
  call void @__sanitizer_cov_trace_pc() #9
  %firm_version = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 14
  %78 = ptrtoint ptr %firm_version to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %firm_version, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 258, i16 %79)
  %cmp216 = icmp eq i16 %79, 258
  %80 = and i16 %73, -257
  %spec.select362 = select i1 %cmp216, i16 %80, i16 %73
  %81 = load i32, ptr @audio_std, align 4
  %82 = trunc i32 %81 to i16
  %83 = shl i16 %82, 7
  %84 = and i16 %83, 128
  %85 = or i16 %84, %spec.select362
  br label %if.end231

if.end231:                                        ; preds = %if.then214, %if.else188.if.end231_crit_edge
  %video_mode.1 = phi i16 [ %73, %if.else188.if.end231_crit_edge ], [ %85, %if.then214 ]
  %call232 = tail call fastcc i32 @xc_set_tv_standard(ptr noundef %1, i16 noundef zeroext %video_mode.1, i16 noundef zeroext %75)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call232)
  %cmp233.not = icmp eq i32 %call232, 0
  br i1 %cmp233.not, label %if.end243, label %cleanup

cleanup:                                          ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #9
  %call240 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61) #10
  br label %cleanup276

if.end243:                                        ; preds = %if.end231
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %86 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %87 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %88 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %89 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 0, ptr %buf.i, align 1
  %90 = ptrtoint ptr %86 to i32
  call void @__asan_store1_noabort(i32 %90)
  store i8 4, ptr %86, align 1
  %91 = ptrtoint ptr %87 to i32
  call void @__asan_store1_noabort(i32 %91)
  store i8 0, ptr %87, align 1
  %92 = ptrtoint ptr %88 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 0, ptr %88, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %93 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 327679, ptr %93, align 4
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %1, align 8
  %conv.i.i = zext i8 %96 to i16
  %97 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %97)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %98 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %99 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %100 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %101, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end243._crit_edge, label %if.then.i.i

if.end243._crit_edge:                             ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  br label %104

if.then.i.i:                                      ; preds = %if.end243
  %ignore_i2c_write_errors.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 13
  %102 = ptrtoint ptr %ignore_i2c_write_errors.i.i to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %ignore_i2c_write_errors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %103)
  %cmp8.i.i = icmp eq i8 %103, 0
  br i1 %cmp8.i.i, label %xc_write_reg.exit, label %if.then.i.i._crit_edge

if.then.i.i._crit_edge:                           ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %104

xc_write_reg.exit:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %105

104:                                              ; preds = %if.then.i.i._crit_edge, %if.end243._crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %105

105:                                              ; preds = %104, %xc_write_reg.exit
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i367) #7
  %106 = getelementptr inbounds [4 x i8], ptr %buf.i367, i32 0, i32 1
  %107 = getelementptr inbounds [4 x i8], ptr %buf.i367, i32 0, i32 2
  %108 = getelementptr inbounds [4 x i8], ptr %buf.i367, i32 0, i32 3
  %109 = ptrtoint ptr %buf.i367 to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %buf.i367, align 1
  %110 = ptrtoint ptr %106 to i32
  call void @__asan_store1_noabort(i32 %110)
  store i8 16, ptr %106, align 1
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 0, ptr %107, align 1
  %112 = ptrtoint ptr %108 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 1, ptr %108, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i366) #7
  %113 = getelementptr inbounds i8, ptr %msg.i.i366, i32 4
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 327679, ptr %113, align 4
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %1, align 8
  %conv.i.i368 = zext i8 %116 to i16
  %117 = ptrtoint ptr %msg.i.i366 to i32
  call void @__asan_store2_noabort(i32 %117)
  store i16 %conv.i.i368, ptr %msg.i.i366, align 4
  %flags.i.i369 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i366, i32 0, i32 1
  %118 = ptrtoint ptr %flags.i.i369 to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 0, ptr %flags.i.i369, align 2
  %buf4.i.i370 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i366, i32 0, i32 3
  %119 = ptrtoint ptr %buf4.i.i370 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %buf.i367, ptr %buf4.i.i370, align 4
  %120 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %adap.i.i, align 4
  %call.i.i372 = call i32 @i2c_transfer(ptr noundef %121, ptr noundef nonnull %msg.i.i366, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i372)
  %cmp.not.i.i373 = icmp eq i32 %call.i.i372, 1
  br i1 %cmp.not.i.i373, label %._crit_edge, label %if.then.i.i376

._crit_edge:                                      ; preds = %105
  call void @__sanitizer_cov_trace_pc() #9
  br label %124

if.then.i.i376:                                   ; preds = %105
  %ignore_i2c_write_errors.i.i374 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 13
  %122 = ptrtoint ptr %ignore_i2c_write_errors.i.i374 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %ignore_i2c_write_errors.i.i374, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %cmp8.i.i375 = icmp eq i8 %123, 0
  br i1 %cmp8.i.i375, label %xc_write_reg.exit381, label %if.then.i.i376._crit_edge

if.then.i.i376._crit_edge:                        ; preds = %if.then.i.i376
  call void @__sanitizer_cov_trace_pc() #9
  br label %124

xc_write_reg.exit381:                             ; preds = %if.then.i.i376
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i377 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i378 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i367) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i366) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i367) #7
  br label %125

124:                                              ; preds = %if.then.i.i376._crit_edge, %._crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i366) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i367) #7
  br label %125

125:                                              ; preds = %124, %xc_write_reg.exit381
  %cmp264.not = phi i1 [ false, %xc_write_reg.exit381 ], [ true, %124 ]
  %126 = phi i32 [ -121, %xc_write_reg.exit381 ], [ 0, %124 ]
  %set_smoothedcvbs = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 12
  %127 = ptrtoint ptr %set_smoothedcvbs to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %set_smoothedcvbs, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %128)
  %cmp255.not = icmp eq i8 %128, 0
  br i1 %cmp255.not, label %.if.end263_crit_edge, label %if.then257

.if.end263_crit_edge:                             ; preds = %125
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end263

if.then257:                                       ; preds = %125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i383) #7
  %129 = getelementptr inbounds [4 x i8], ptr %buf.i383, i32 0, i32 1
  %130 = getelementptr inbounds [4 x i8], ptr %buf.i383, i32 0, i32 2
  %131 = getelementptr inbounds [4 x i8], ptr %buf.i383, i32 0, i32 3
  %132 = ptrtoint ptr %buf.i383 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 0, ptr %buf.i383, align 1
  %133 = ptrtoint ptr %129 to i32
  call void @__asan_store1_noabort(i32 %133)
  store i8 14, ptr %129, align 1
  %134 = ptrtoint ptr %130 to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 0, ptr %130, align 1
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 1, ptr %131, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i382) #7
  %136 = getelementptr inbounds i8, ptr %msg.i.i382, i32 4
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 327679, ptr %136, align 4
  %138 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %1, align 8
  %conv.i.i384 = zext i8 %139 to i16
  %140 = ptrtoint ptr %msg.i.i382 to i32
  call void @__asan_store2_noabort(i32 %140)
  store i16 %conv.i.i384, ptr %msg.i.i382, align 4
  %flags.i.i385 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i382, i32 0, i32 1
  %141 = ptrtoint ptr %flags.i.i385 to i32
  call void @__asan_store2_noabort(i32 %141)
  store i16 0, ptr %flags.i.i385, align 2
  %buf4.i.i386 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i382, i32 0, i32 3
  %142 = ptrtoint ptr %buf4.i.i386 to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %buf.i383, ptr %buf4.i.i386, align 4
  %143 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adap.i.i, align 4
  %call.i.i388 = call i32 @i2c_transfer(ptr noundef %144, ptr noundef nonnull %msg.i.i382, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i388)
  %cmp.not.i.i389 = icmp eq i32 %call.i.i388, 1
  br i1 %cmp.not.i.i389, label %if.then257._crit_edge, label %if.then.i.i392

if.then257._crit_edge:                            ; preds = %if.then257
  call void @__sanitizer_cov_trace_pc() #9
  br label %147

if.then.i.i392:                                   ; preds = %if.then257
  %ignore_i2c_write_errors.i.i390 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 13
  %145 = ptrtoint ptr %ignore_i2c_write_errors.i.i390 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %ignore_i2c_write_errors.i.i390, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %cmp8.i.i391 = icmp eq i8 %146, 0
  br i1 %cmp8.i.i391, label %if.end263.thread, label %if.then.i.i392._crit_edge

if.then.i.i392._crit_edge:                        ; preds = %if.then.i.i392
  call void @__sanitizer_cov_trace_pc() #9
  br label %147

if.end263.thread:                                 ; preds = %if.then.i.i392
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i393 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i394 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i383) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i382) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i383) #7
  br label %do.end269

147:                                              ; preds = %if.then.i.i392._crit_edge, %if.then257._crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i382) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i383) #7
  br label %if.end263

if.end263:                                        ; preds = %147, %.if.end263_crit_edge
  br i1 %cmp264.not, label %if.end272, label %if.end263.do.end269_crit_edge

if.end263.do.end269_crit_edge:                    ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end269

do.end269:                                        ; preds = %if.end263.do.end269_crit_edge, %if.end263.thread
  %ret.2407 = phi i32 [ -121, %if.end263.thread ], [ %126, %if.end263.do.end269_crit_edge ]
  %call271 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64) #10
  br label %cleanup276

if.end272:                                        ; preds = %if.end263
  call void @__sanitizer_cov_trace_pc() #9
  %freq_hz273 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 5
  %148 = ptrtoint ptr %freq_hz273 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %freq_hz273, align 4
  call fastcc void @xc_tune_channel(ptr noundef %1, i32 noundef %149)
  br label %cleanup276

cleanup276:                                       ; preds = %if.end272, %do.end269, %cleanup, %do.end183, %tune_channel.cleanup276_crit_edge
  %ret.3 = phi i32 [ -121, %tune_channel.cleanup276_crit_edge ], [ %call177, %do.end183 ], [ %call232, %cleanup ], [ %ret.2407, %do.end269 ], [ 0, %if.end272 ]
  %lock275 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 18
  call void @mutex_unlock(ptr noundef %lock275) #7
  ret i32 %ret.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef %freq) #0 align 64 {
entry:
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %freq_hz = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %freq_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq_hz, align 4
  %freq_offset = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %freq_offset to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %freq_offset, align 8
  %add = add i32 %5, %3
  %6 = ptrtoint ptr %freq to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add, ptr %freq, align 4
  %7 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup21_crit_edge, label %if.then

entry.cleanup21_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.then:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %cur_fw = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cur_fw, align 8
  %and = and i32 %9, 1953
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp = icmp eq i32 %and, 1
  br i1 %cmp, label %if.then1, label %if.then.if.end11_crit_edge

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then1:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %10 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %11 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %buf.i, align 1
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 6, ptr %10, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #7
  %13 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %15 = call ptr @memset(ptr %14, i32 255, i32 16)
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %1, align 8
  %conv6.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i, align 2
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 2, ptr %14, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %21 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %buf.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %22 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %23 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 1, ptr %flags13.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %24 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 2, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %25 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bval.i, ptr %buf15.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %26 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %27, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %if.then3, label %if.end9.critedge

if.then3:                                         ; preds = %if.then1
  %28 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %bval.i, align 2
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx22.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  %32 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp5 = icmp sgt i32 %32, 0
  br i1 %cmp5, label %do.end, label %if.then3.cleanup21_crit_edge

if.then3.cleanup21_crit_edge:                     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %conv21.i = zext i8 %29 to i32
  %shl.i = shl nuw nsw i32 %conv21.i, 8
  %conv23.i = zext i8 %31 to i32
  %or.i = or i32 %shl.i, %conv23.i
  %33 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %freq, align 4
  %call7 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.323, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.324, i32 noundef %34, i32 noundef %or.i) #10
  br label %cleanup21

if.end9.critedge:                                 ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  br label %if.end11

if.end11:                                         ; preds = %if.end9.critedge, %if.then.if.end11_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp12 = icmp sgt i32 %.pr, 0
  br i1 %cmp12, label %do.end17, label %if.end11.cleanup21_crit_edge

if.end11.cleanup21_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

do.end17:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.324) #10
  br label %cleanup21

cleanup21:                                        ; preds = %do.end17, %if.end11.cleanup21_crit_edge, %do.end, %if.then3.cleanup21_crit_edge, %entry.cleanup21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_get_bandwidth(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %bw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.327) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %bandwidth = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 7
  %3 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bandwidth, align 4
  %5 = ptrtoint ptr %bw to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bw, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_get_status(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %status) #0 align 64 {
entry:
  %buf.i.i = alloca [2 x i8], align 1
  %bval.i.i = alloca [2 x i8], align 2
  %msg.i.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %lock = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %cur_fw = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cur_fw, align 8
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end.thread_crit_edge, label %if.then

entry.if.end.thread_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.thread

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i) #7
  %4 = getelementptr inbounds [2 x i8], ptr %buf.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %buf.i.i, align 1
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 4, ptr %4, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i) #7
  %7 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 0, ptr %bval.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 255, i32 16)
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %1, align 8
  %conv6.i.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv6.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %14 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 2, ptr %8, align 4
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %buf.i.i, ptr %buf7.i.i, align 4
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1
  %16 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 1
  %17 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 1, ptr %flags13.i.i, align 2
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 2
  %18 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 2, ptr %len14.i.i, align 4
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 1, i32 3
  %19 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %bval.i.i, ptr %buf15.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %21, ptr noundef nonnull %msg.i.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 2
  br i1 %cmp.not.i.i, label %if.end, label %if.end.thread25

if.end.thread25:                                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  br label %if.end.thread

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bval.i.i, align 2
  %conv21.i.i = zext i8 %23 to i16
  %shl.i.i = shl nuw i16 %conv21.i.i, 8
  %arrayidx22.i.i = getelementptr inbounds [2 x i8], ptr %bval.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx22.i.i, align 1
  %conv23.i.i = zext i8 %25 to i16
  %or.i.i = or i16 %shl.i.i, %conv23.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %or.i.i)
  %cmp = icmp eq i16 %or.i.i, 1
  %spec.select28 = select i1 %cmp, i32 3, i32 0
  %phi.cast = zext i16 %or.i.i to i32
  br label %if.end.thread

if.end.thread:                                    ; preds = %if.end, %if.end.thread25, %entry.if.end.thread_crit_edge
  %lock_status.124 = phi i32 [ 0, %if.end.thread25 ], [ 0, %entry.if.end.thread_crit_edge ], [ %phi.cast, %if.end ]
  %26 = phi i32 [ 0, %if.end.thread25 ], [ 0, %entry.if.end.thread_crit_edge ], [ %spec.select28, %if.end ]
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %status, align 4
  %28 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %cur_fw, align 8
  %and4 = and i32 %29, 928
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.thread.if.end8_crit_edge, label %if.then6

if.end.thread.if.end8_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #9
  %and7 = and i32 %26, 1
  %30 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %and7, ptr %status, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end.thread.if.end8_crit_edge
  call void @mutex_unlock(ptr noundef %lock) #7
  %31 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %31)
  %cmp10 = icmp sgt i32 %31, 1
  br i1 %cmp10, label %do.end, label %if.end8.if.end15_crit_edge

if.end8.if.end15_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.end:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.329, i32 noundef %lock_status.124) #10
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end8.if.end15_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc4000_get_signal(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %buf.i115 = alloca [2 x i8], align 1
  %bval.i116 = alloca [2 x i8], align 2
  %msg.i117 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %lock = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 18
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %2 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %3 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 0, ptr %buf.i, align 1
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 10, ptr %2, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #7
  %5 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %6 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %7 = call ptr @memset(ptr %6, i32 255, i32 16)
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %1, align 8
  %conv6.i = zext i8 %9 to i16
  %10 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv6.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 0, ptr %flags.i, align 2
  %12 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 2, ptr %6, align 4
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %13 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %buf.i, ptr %buf7.i, align 4
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %14 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %15 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 1, ptr %flags13.i, align 2
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %16 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 2, ptr %len14.i, align 4
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %17 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %bval.i, ptr %buf15.i, align 4
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %19, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not.i = icmp eq i32 %call.i, 2
  br i1 %cmp.not.i, label %do.body, label %xc4000_readreg.exit.thread

xc4000_readreg.exit.thread:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  br label %ret

do.body:                                          ; preds = %entry
  %20 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %bval.i, align 2
  %conv21.i = zext i8 %21 to i16
  %shl.i = shl nuw i16 %conv21.i, 8
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  %22 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %23 to i16
  %or.i = or i16 %shl.i, %conv23.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  %24 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool.not = icmp eq i32 %24, 0
  br i1 %tobool.not, label %do.body.do.end18_crit_edge, label %do.end

do.body.do.end18_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end:                                           ; preds = %do.body
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %name, align 4
  %27 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap.i, align 4
  %tobool6.not = icmp eq ptr %28, null
  br i1 %tobool6.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %28, i32 0, i32 11
  %29 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %30, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %1, align 8
  %conv = zext i8 %32 to i32
  %conv11 = zext i16 %or.i to i32
  %33 = lshr i32 %conv11, 8
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.330, ptr noundef %26, i32 noundef %cond, i32 noundef %conv, i32 noundef %33, i32 noundef %conv11) #10
  br label %do.end18

do.end18:                                         ; preds = %cond.end, %do.body.do.end18_crit_edge
  %video_standard = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 8
  %34 = ptrtoint ptr %video_standard to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %video_standard, align 8
  %.off = add i8 %35, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %.off)
  %switch = icmp ult i8 %.off, 4
  br i1 %switch, label %digital, label %if.end37

if.end37:                                         ; preds = %do.end18
  call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i115) #7
  %36 = getelementptr inbounds [2 x i8], ptr %buf.i115, i32 0, i32 1
  %37 = ptrtoint ptr %buf.i115 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 0, ptr %buf.i115, align 1
  %38 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 11, ptr %36, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i116) #7
  %39 = ptrtoint ptr %bval.i116 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 0, ptr %bval.i116, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i117) #7
  %40 = getelementptr inbounds i8, ptr %msg.i117, i32 4
  %41 = call ptr @memset(ptr %40, i32 255, i32 16)
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %1, align 8
  %conv6.i118 = zext i8 %43 to i16
  %44 = ptrtoint ptr %msg.i117 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %conv6.i118, ptr %msg.i117, align 4
  %flags.i119 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 0, i32 1
  %45 = ptrtoint ptr %flags.i119 to i32
  call void @__asan_store2_noabort(i32 %45)
  store i16 0, ptr %flags.i119, align 2
  %46 = ptrtoint ptr %40 to i32
  call void @__asan_store2_noabort(i32 %46)
  store i16 2, ptr %40, align 4
  %buf7.i121 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 0, i32 3
  %47 = ptrtoint ptr %buf7.i121 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %buf.i115, ptr %buf7.i121, align 4
  %arrayinit.element8.i122 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 1
  %48 = ptrtoint ptr %arrayinit.element8.i122 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv6.i118, ptr %arrayinit.element8.i122, align 4
  %flags13.i123 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 1, i32 1
  %49 = ptrtoint ptr %flags13.i123 to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 1, ptr %flags13.i123, align 2
  %len14.i124 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 1, i32 2
  %50 = ptrtoint ptr %len14.i124 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 2, ptr %len14.i124, align 4
  %buf15.i125 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i117, i32 1, i32 3
  %51 = ptrtoint ptr %buf15.i125 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %bval.i116, ptr %buf15.i125, align 4
  %52 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %adap.i, align 4
  %call.i127 = call i32 @i2c_transfer(ptr noundef %53, ptr noundef nonnull %msg.i117, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i127)
  %cmp.not.i128 = icmp eq i32 %call.i127, 2
  br i1 %cmp.not.i128, label %if.end.i136, label %do.end.i130

do.end.i130:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %xc4000_readreg.exit138

if.end.i136:                                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %bval.i116 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %bval.i116, align 2
  %conv21.i131 = zext i8 %55 to i16
  %shl.i132 = shl nuw i16 %conv21.i131, 8
  %arrayidx22.i133 = getelementptr inbounds [2 x i8], ptr %bval.i116, i32 0, i32 1
  %56 = ptrtoint ptr %arrayidx22.i133 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %arrayidx22.i133, align 1
  %conv23.i134 = zext i8 %57 to i16
  %or.i135 = or i16 %shl.i132, %conv23.i134
  br label %xc4000_readreg.exit138

xc4000_readreg.exit138:                           ; preds = %if.end.i136, %do.end.i130
  %value.1 = phi i16 [ %or.i135, %if.end.i136 ], [ %or.i, %do.end.i130 ]
  %retval.0.i137 = phi i32 [ 0, %if.end.i136 ], [ -121, %do.end.i130 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i117) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i116) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i115) #7
  call void @mutex_unlock(ptr noundef %lock) #7
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool42.not = icmp eq i32 %58, 0
  br i1 %tobool42.not, label %xc4000_readreg.exit138.do.end72_crit_edge, label %do.end47

xc4000_readreg.exit138.do.end72_crit_edge:        ; preds = %xc4000_readreg.exit138
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

do.end47:                                         ; preds = %xc4000_readreg.exit138
  %name50 = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %59 = ptrtoint ptr %name50 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %name50, align 4
  %61 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %adap.i, align 4
  %tobool53.not = icmp eq ptr %62, null
  br i1 %tobool53.not, label %do.end47.cond.end59_crit_edge, label %cond.true54

do.end47.cond.end59_crit_edge:                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end59

cond.true54:                                      ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i139 = getelementptr inbounds %struct.i2c_adapter, ptr %62, i32 0, i32 11
  %63 = ptrtoint ptr %nr.i139 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr.i139, align 4
  br label %cond.end59

cond.end59:                                       ; preds = %cond.true54, %do.end47.cond.end59_crit_edge
  %cond60 = phi i32 [ %64, %cond.true54 ], [ -1, %do.end47.cond.end59_crit_edge ]
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %1, align 8
  %conv63 = zext i8 %66 to i32
  %conv64 = zext i16 %value.1 to i32
  %67 = lshr i32 %conv64, 8
  %call67 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.333, ptr noundef %60, i32 noundef %cond60, i32 noundef %conv63, i32 noundef %67, i32 noundef %conv64) #10
  br label %do.end72

do.end72:                                         ; preds = %cond.end59, %xc4000_readreg.exit138.do.end72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 8191, i16 %value.1)
  %cmp74 = icmp ugt i16 %value.1, 8191
  br i1 %cmp74, label %do.end72.ret_crit_edge, label %if.else

do.end72.ret_crit_edge:                           ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.else:                                          ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #9
  %neg = xor i16 %value.1, -1
  %shl = shl i16 %neg, 3
  br label %ret

digital:                                          ; preds = %do.end18
  call void @__sanitizer_cov_trace_const_cmp2(i16 12801, i16 %or.i)
  %cmp81 = icmp ult i16 %or.i, 12801
  br i1 %cmp81, label %digital.ret_crit_edge, label %if.else84

digital.ret_crit_edge:                            ; preds = %digital
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.else84:                                        ; preds = %digital
  call void @__sanitizer_cov_trace_const_cmp2(i16 28985, i16 %or.i)
  %cmp86 = icmp ugt i16 %or.i, 28985
  br i1 %cmp86, label %if.else84.ret_crit_edge, label %if.else89

if.else84.ret_crit_edge:                          ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.else89:                                        ; preds = %if.else84
  call void @__sanitizer_cov_trace_pc() #9
  %.neg = mul i16 %or.i, -4
  %shl92 = add i16 %.neg, -14340
  br label %ret

ret:                                              ; preds = %if.else89, %if.else84.ret_crit_edge, %digital.ret_crit_edge, %if.else, %do.end72.ret_crit_edge, %xc4000_readreg.exit.thread
  %value.2 = phi i16 [ %shl92, %if.else89 ], [ %shl, %if.else ], [ 0, %xc4000_readreg.exit.thread ], [ 0, %do.end72.ret_crit_edge ], [ -1, %digital.ret_crit_edge ], [ 0, %if.else84.ret_crit_edge ]
  %rc.0 = phi i32 [ 0, %if.else89 ], [ %retval.0.i137, %if.else ], [ -121, %xc4000_readreg.exit.thread ], [ %retval.0.i137, %do.end72.ret_crit_edge ], [ 0, %digital.ret_crit_edge ], [ 0, %if.else84.ret_crit_edge ]
  %68 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %value.2, ptr %strength, align 2
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_firmware(ptr nocapture noundef readonly %fe, i32 noundef %type, i64 noundef %std, i16 noundef zeroext %int_freq) unnamed_addr #0 align 64 {
entry:
  %buf.i.i376 = alloca [2 x i8], align 1
  %bval.i.i = alloca [2 x i8], align 2
  %msg.i.i377 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i = alloca [2 x i8], align 1
  %bval.i = alloca [2 x i8], align 2
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %msg.i136.i = alloca %struct.i2c_msg, align 4
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [4 x i8], align 1
  %scode_buf.i = alloca [13 x i8], align 1
  %indirect_mode.i = alloca [5 x i8], align 4
  %new_fw = alloca %struct.firmware_properties, align 8
  %std0 = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %new_fw) #7
  %2 = call ptr @memset(ptr %new_fw, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %std0) #7
  %3 = ptrtoint ptr %std0 to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %std0, align 8, !annotation !659
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp = icmp sgt i32 %4, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.67) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %firm = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %firm, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.then1, label %if.end.if.end6_crit_edge

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then1:                                         ; preds = %if.end
  %call2 = tail call fastcc i32 @xc4000_fwupload(ptr noundef %fe)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then1.cleanup_crit_edge, label %if.then1.if.end6_crit_edge

if.then1.if.end6_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6

if.then1.cleanup_crit_edge:                       ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end6:                                          ; preds = %if.then1.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %rc.0 = phi i32 [ 0, %if.end.if.end6_crit_edge ], [ %call2, %if.then1.if.end6_crit_edge ]
  %id = getelementptr inbounds %struct.firmware_properties, ptr %new_fw, i32 0, i32 1
  %std_req = getelementptr inbounds %struct.firmware_properties, ptr %new_fw, i32 0, i32 2
  %scode_table = getelementptr inbounds %struct.firmware_properties, ptr %new_fw, i32 0, i32 4
  %scode_nr = getelementptr inbounds %struct.firmware_properties, ptr %new_fw, i32 0, i32 5
  %int_freq8 = getelementptr inbounds %struct.firmware_properties, ptr %new_fw, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %int_freq)
  %tobool27.not = icmp eq i16 %int_freq, 0
  %conv = zext i16 %int_freq to i32
  %cur_fw = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 15
  %callback.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %name = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 3
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %1, i32 0, i32 1
  %or = or i32 %type, 1
  %std_req123 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 15, i32 2
  %scode_table138 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 15, i32 4
  %scode_nr153 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 15, i32 5
  %7 = getelementptr inbounds [13 x i8], ptr %scode_buf.i, i32 0, i32 1
  %8 = getelementptr inbounds [5 x i8], ptr %indirect_mode.i, i32 0, i32 4
  %9 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %10 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %11 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %12 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %13 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = getelementptr inbounds i8, ptr %msg.i136.i, i32 4
  %flags.i138.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 0, i32 1
  %buf4.i140.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i136.i, i32 0, i32 3
  %15 = getelementptr inbounds [2 x i8], ptr %buf.i, i32 0, i32 1
  %16 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %arrayinit.element8.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %flags13.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %len14.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %buf15.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %arrayidx22.i = getelementptr inbounds [2 x i8], ptr %bval.i, i32 0, i32 1
  %17 = getelementptr inbounds [2 x i8], ptr %buf.i.i376, i32 0, i32 1
  %18 = getelementptr inbounds i8, ptr %msg.i.i377, i32 4
  %flags.i.i378 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i377, i32 0, i32 1
  %buf7.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i377, i32 0, i32 3
  %arrayinit.element8.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i377, i32 1
  %flags13.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i377, i32 1, i32 1
  %len14.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i377, i32 1, i32 2
  %buf15.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i377, i32 1, i32 3
  %arrayidx22.i.i = getelementptr inbounds [2 x i8], ptr %bval.i.i, i32 0, i32 1
  %firm_version = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 14
  %hwmodel237 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 16
  %hwvers267 = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 17
  br label %retry

retry:                                            ; preds = %retry.backedge, %if.end6
  %tobool288.not = phi i1 [ true, %if.end6 ], [ false, %retry.backedge ]
  %rc.1 = phi i32 [ %rc.0, %if.end6 ], [ %rc.6, %retry.backedge ]
  %19 = ptrtoint ptr %new_fw to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %type, ptr %new_fw, align 8
  %20 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %std, ptr %id, align 8
  %21 = ptrtoint ptr %std_req to i32
  call void @__asan_store8_noabort(i32 %21)
  store i64 %std, ptr %std_req, align 8
  %22 = ptrtoint ptr %scode_table to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 536870912, ptr %scode_table, align 4
  %23 = ptrtoint ptr %scode_nr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %scode_nr, align 8
  %24 = ptrtoint ptr %int_freq8 to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %int_freq, ptr %int_freq8, align 8
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp9 = icmp sgt i32 %25, 0
  br i1 %cmp9, label %do.end13, label %retry.if.end16_crit_edge

retry.if.end16_crit_edge:                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end13:                                         ; preds = %retry
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.3) #10
  %.pr = load i32, ptr @debug, align 4
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %retry.if.end16_crit_edge
  %26 = phi i32 [ %.pr, %do.end13 ], [ %25, %retry.if.end16_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool17.not = icmp eq i32 %26, 0
  br i1 %tobool17.not, label %if.end16.if.end47_crit_edge, label %if.then18

if.end16.if.end47_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.then18:                                        ; preds = %if.end16
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %type, i16 noundef zeroext 0)
  %call26 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.72, i32 noundef %type, i64 noundef %std) #10
  br i1 %tobool27.not, label %do.end31, label %do.end36

do.end31:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.75) #10
  br label %do.end43

do.end36:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.78, i32 noundef %conv) #10
  br label %do.end43

do.end43:                                         ; preds = %do.end36, %do.end31
  %call46 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.81, i32 noundef 0) #10
  br label %if.end47

if.end47:                                         ; preds = %do.end43, %if.end16.if.end47_crit_edge
  %27 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_fw, align 8
  %and = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool49.not = icmp eq i32 %and, 0
  br i1 %tobool49.not, label %if.end60, label %if.then50

if.then50:                                        ; preds = %if.end47
  %29 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp51 = icmp sgt i32 %29, 0
  br i1 %cmp51, label %do.end56, label %if.then50.skip_base_crit_edge

if.then50.skip_base_crit_edge:                    ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_base

do.end56:                                         ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #9
  %call58 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.84, ptr noundef nonnull @.str.3) #10
  br label %skip_base

if.end60:                                         ; preds = %if.end47
  %30 = call ptr @memset(ptr %cur_fw, i32 0, i32 40)
  %31 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tuner_priv, align 4
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp.i = icmp sgt i32 %33, 0
  br i1 %cmp.i, label %do.end.i, label %if.end60.if.end.i_crit_edge

if.end60.if.end.i_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.213) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end60.if.end.i_crit_edge
  %34 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback.i, align 4
  %tobool.not.i = icmp eq ptr %35, null
  br i1 %tobool.not.i, label %if.end.i.xc4000_tuner_reset.exit.thread_crit_edge, label %if.then1.i

if.end.i.xc4000_tuner_reset.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc4000_tuner_reset.exit.thread

if.then1.i:                                       ; preds = %if.end.i
  %36 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dvb.i, align 4
  %tobool3.not.i = icmp eq ptr %37, null
  br i1 %tobool3.not.i, label %if.then1.i.cond.false.i_crit_edge, label %land.lhs.true.i

if.then1.i.cond.false.i_crit_edge:                ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

land.lhs.true.i:                                  ; preds = %if.then1.i
  %priv5.i = getelementptr inbounds %struct.dvb_adapter, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %priv5.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %priv5.i, align 4
  %tobool6.not.i = icmp eq ptr %39, null
  br i1 %tobool6.not.i, label %land.lhs.true.i.cond.false.i_crit_edge, label %land.lhs.true.i.cond.end.i_crit_edge

land.lhs.true.i.cond.end.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i

land.lhs.true.i.cond.false.i_crit_edge:           ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true.i.cond.false.i_crit_edge, %if.then1.i.cond.false.i_crit_edge
  %adap.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %32, i32 0, i32 1
  %40 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap.i, align 4
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %algo_data.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %land.lhs.true.i.cond.end.i_crit_edge
  %cond.i = phi ptr [ %43, %cond.false.i ], [ %39, %land.lhs.true.i.cond.end.i_crit_edge ]
  %call9.i = call i32 %35(ptr noundef %cond.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end66, label %cond.end.i.xc4000_tuner_reset.exit.thread_crit_edge

cond.end.i.xc4000_tuner_reset.exit.thread_crit_edge: ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc4000_tuner_reset.exit.thread

xc4000_tuner_reset.exit.thread:                   ; preds = %cond.end.i.xc4000_tuner_reset.exit.thread_crit_edge, %if.end.i.xc4000_tuner_reset.exit.thread_crit_edge
  %.str.218.sink.i = phi ptr [ @.str.215, %cond.end.i.xc4000_tuner_reset.exit.thread_crit_edge ], [ @.str.218, %if.end.i.xc4000_tuner_reset.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ -121, %cond.end.i.xc4000_tuner_reset.exit.thread_crit_edge ], [ -22, %if.end.i.xc4000_tuner_reset.exit.thread_crit_edge ]
  %call22.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.218.sink.i) #10
  br label %fail

if.end66:                                         ; preds = %cond.end.i
  %44 = ptrtoint ptr %std0 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 0, ptr %std0, align 8
  %call67 = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef 1, ptr noundef nonnull %std0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %do.end73, label %if.end76

do.end73:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %call75 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, i32 noundef %call67) #10
  br label %fail

if.end76:                                         ; preds = %if.end66
  %45 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp77 = icmp sgt i32 %45, 0
  br i1 %cmp77, label %do.end82, label %if.end76.if.end85_crit_edge

if.end76.if.end85_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

do.end82:                                         ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %call84 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.3) #10
  br label %if.end85

if.end85:                                         ; preds = %do.end82, %if.end76.if.end85_crit_edge
  %call86 = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef 16385, ptr noundef nonnull %std0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call86)
  %cmp87 = icmp eq i32 %call86, -2
  br i1 %cmp87, label %if.then89, label %if.end85.if.end91_crit_edge

if.end85.if.end91_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end91

if.then89:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %call90 = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef 16385, ptr noundef nonnull %std0)
  br label %if.end91

if.end91:                                         ; preds = %if.then89, %if.end85.if.end91_crit_edge
  %rc.2 = phi i32 [ %call90, %if.then89 ], [ %call86, %if.end85.if.end91_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.2)
  %cmp92 = icmp slt i32 %rc.2, 0
  br i1 %cmp92, label %land.lhs.true, label %if.end91.skip_base_crit_edge

if.end91.skip_base_crit_edge:                     ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_base

land.lhs.true:                                    ; preds = %if.end91
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %rc.2)
  %cmp94.not = icmp eq i32 %rc.2, -2
  br i1 %cmp94.not, label %land.lhs.true.skip_base_crit_edge, label %do.end101

land.lhs.true.skip_base_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_base

do.end101:                                        ; preds = %land.lhs.true
  %46 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %name, align 4
  %48 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %adap, align 4
  %tobool104.not = icmp eq ptr %49, null
  br i1 %tobool104.not, label %do.end101.cond.end_crit_edge, label %cond.true

do.end101.cond.end_crit_edge:                     ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.true:                                        ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %49, i32 0, i32 11
  %50 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end101.cond.end_crit_edge
  %cond = phi i32 [ %51, %cond.true ], [ -1, %do.end101.cond.end_crit_edge ]
  %52 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %1, align 8
  %conv109 = zext i8 %53 to i32
  %call110 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.93, ptr noundef %47, i32 noundef %cond, i32 noundef %conv109, i32 noundef %rc.2) #10
  br label %fail

skip_base:                                        ; preds = %land.lhs.true.skip_base_crit_edge, %if.end91.skip_base_crit_edge, %do.end56, %if.then50.skip_base_crit_edge
  %rc.3 = phi i32 [ %rc.1, %do.end56 ], [ %rc.1, %if.then50.skip_base_crit_edge ], [ -2, %land.lhs.true.skip_base_crit_edge ], [ 0, %if.end91.skip_base_crit_edge ]
  %54 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cur_fw, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %55, i32 %or)
  %cmp119 = icmp eq i32 %55, %or
  br i1 %cmp119, label %land.lhs.true121, label %skip_base.if.end136_crit_edge

skip_base.if.end136_crit_edge:                    ; preds = %skip_base
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

land.lhs.true121:                                 ; preds = %skip_base
  %56 = ptrtoint ptr %std_req123 to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %std_req123, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %57, i64 %std)
  %cmp124 = icmp eq i64 %57, %std
  br i1 %cmp124, label %if.then126, label %land.lhs.true121.if.end136_crit_edge

land.lhs.true121.if.end136_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.then126:                                       ; preds = %land.lhs.true121
  %58 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp127 = icmp sgt i32 %58, 0
  br i1 %cmp127, label %do.end132, label %if.then126.skip_std_specific_crit_edge

if.then126.skip_std_specific_crit_edge:           ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_std_specific

do.end132:                                        ; preds = %if.then126
  call void @__sanitizer_cov_trace_pc() #9
  %call134 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.3) #10
  br label %skip_std_specific

if.end136:                                        ; preds = %land.lhs.true121.if.end136_crit_edge, %skip_base.if.end136_crit_edge
  %59 = ptrtoint ptr %scode_table138 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %scode_table138, align 4
  %call141 = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef %type, ptr noundef %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %cmp142 = icmp slt i32 %call141, 0
  br i1 %cmp142, label %if.end136.fail_crit_edge, label %if.end136.skip_std_specific_crit_edge

if.end136.skip_std_specific_crit_edge:            ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_std_specific

if.end136.fail_crit_edge:                         ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %fail

skip_std_specific:                                ; preds = %if.end136.skip_std_specific_crit_edge, %do.end132, %if.then126.skip_std_specific_crit_edge
  %rc.4 = phi i32 [ %rc.3, %do.end132 ], [ %rc.3, %if.then126.skip_std_specific_crit_edge ], [ %call141, %if.end136.skip_std_specific_crit_edge ]
  %60 = ptrtoint ptr %scode_table138 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %scode_table138, align 4
  %62 = ptrtoint ptr %scode_table to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scode_table, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %61, i32 %63)
  %cmp149 = icmp eq i32 %61, %63
  br i1 %cmp149, label %land.lhs.true151, label %skip_std_specific.if.end167_crit_edge

skip_std_specific.if.end167_crit_edge:            ; preds = %skip_std_specific
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

land.lhs.true151:                                 ; preds = %skip_std_specific
  %64 = ptrtoint ptr %scode_nr153 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %scode_nr153, align 8
  %66 = ptrtoint ptr %scode_nr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %scode_nr, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %67)
  %cmp155 = icmp eq i32 %65, %67
  br i1 %cmp155, label %if.then157, label %land.lhs.true151.if.end167_crit_edge

land.lhs.true151.if.end167_crit_edge:             ; preds = %land.lhs.true151
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end167

if.then157:                                       ; preds = %land.lhs.true151
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %cmp158 = icmp sgt i32 %68, 0
  br i1 %cmp158, label %do.end163, label %if.then157.check_device_crit_edge

if.then157.check_device_crit_edge:                ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_device

do.end163:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #9
  %call165 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.3) #10
  br label %check_device

if.end167:                                        ; preds = %land.lhs.true151.if.end167_crit_edge, %skip_std_specific.if.end167_crit_edge
  %69 = ptrtoint ptr %new_fw to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %new_fw, align 8
  %or170 = or i32 %70, %63
  %71 = ptrtoint ptr %int_freq8 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %int_freq8, align 8
  %73 = ptrtoint ptr %scode_nr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %scode_nr, align 8
  %75 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 13, ptr nonnull %scode_buf.i) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %indirect_mode.i) #7
  %77 = call ptr @memset(ptr %indirect_mode.i, i32 255, i32 5)
  %78 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i360 = icmp sgt i32 %78, 0
  br i1 %cmp.i360, label %do.end.i362, label %if.end167.if.end.i364_crit_edge

if.end167.if.end.i364_crit_edge:                  ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i364

do.end.i362:                                      ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = zext i16 %72 to i32
  %call.i361 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.234, i32 noundef %conv.i) #10
  br label %if.end.i364

if.end.i364:                                      ; preds = %do.end.i362, %if.end167.if.end.i364_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %72)
  %tobool.not.i363 = icmp eq i16 %72, 0
  br i1 %tobool.not.i363, label %if.then1.i365, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %if.end.i364
  %firm_size.i = getelementptr inbounds %struct.xc4000_priv, ptr %76, i32 0, i32 3
  %79 = ptrtoint ptr %firm_size.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %firm_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %cmp7155.i = icmp sgt i32 %80, 0
  br i1 %cmp7155.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %firm.i = getelementptr inbounds %struct.xc4000_priv, ptr %76, i32 0, i32 2
  %81 = ptrtoint ptr %firm.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %firm.i, align 8
  br label %for.body.i

if.then1.i365:                                    ; preds = %if.end.i364
  %call2.i = call fastcc i32 @seek_firmware(ptr noundef %fe, i32 noundef %or170, ptr noundef %id) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.then1.i365.if.then177_crit_edge, label %if.then1.i365.if.end25.i_crit_edge

if.then1.i365.if.end25.i_crit_edge:               ; preds = %if.then1.i365
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

if.then1.i365.if.then177_crit_edge:               ; preds = %if.then1.i365
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then177

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %pos.0156.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %int_freq9.i = getelementptr %struct.firmware_description, ptr %82, i32 %pos.0156.i, i32 2
  %83 = ptrtoint ptr %int_freq9.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %int_freq9.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %84, i16 %72)
  %cmp12.i = icmp eq i16 %84, %72
  br i1 %cmp12.i, label %land.lhs.true.i366, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

land.lhs.true.i366:                               ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.firmware_description, ptr %82, i32 %pos.0156.i
  %85 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx.i, align 8
  %and.i = and i32 %86, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool17.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool17.not.i, label %land.lhs.true.i366.for.inc.i_crit_edge, label %land.lhs.true.i366.for.end.i_crit_edge

land.lhs.true.i366.for.end.i_crit_edge:           ; preds = %land.lhs.true.i366
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

land.lhs.true.i366.for.inc.i_crit_edge:           ; preds = %land.lhs.true.i366
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i366.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %pos.0156.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %80
  br i1 %exitcond.not.i, label %for.inc.i.if.then177_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.if.then177_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then177

for.end.i:                                        ; preds = %land.lhs.true.i366.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %pos.0.lcssa.i = phi i32 [ 0, %for.cond.preheader.i.for.end.i_crit_edge ], [ %pos.0156.i, %land.lhs.true.i366.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0.lcssa.i, i32 %80)
  %cmp21.i = icmp eq i32 %pos.0.lcssa.i, %80
  br i1 %cmp21.i, label %for.end.i.if.then177_crit_edge, label %for.end.i.if.end25.i_crit_edge

for.end.i.if.end25.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25.i

for.end.i.if.then177_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then177

if.end25.i:                                       ; preds = %for.end.i.if.end25.i_crit_edge, %if.then1.i365.if.end25.i_crit_edge
  %pos.1.i = phi i32 [ %pos.0.lcssa.i, %for.end.i.if.end25.i_crit_edge ], [ %call2.i, %if.then1.i365.if.end25.i_crit_edge ]
  %firm26.i = getelementptr inbounds %struct.xc4000_priv, ptr %76, i32 0, i32 2
  %87 = ptrtoint ptr %firm26.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %firm26.i, align 8
  %size.i = getelementptr %struct.firmware_description, ptr %88, i32 %pos.1.i, i32 4
  %89 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %size.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %90)
  %cmp30.not.i = icmp ne i32 %90, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %74)
  %cmp32.i = icmp sgt i32 %74, 15
  %or.cond.i = or i1 %cmp32.i, %cmp30.not.i
  br i1 %or.cond.i, label %if.end25.i.if.then177_crit_edge, label %if.end35.i

if.end25.i.if.then177_crit_edge:                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then177

if.end35.i:                                       ; preds = %if.end25.i
  %ptr.i = getelementptr %struct.firmware_description, ptr %88, i32 %pos.1.i, i32 3
  %91 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ptr.i, align 4
  %mul.i = mul i32 %74, 12
  %add.ptr.i = getelementptr i8, ptr %92, i32 %mul.i
  %93 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool36.not.i = icmp eq i32 %93, 0
  br i1 %tobool36.not.i, label %if.end35.i.if.end70.i_crit_edge, label %do.end42.i

if.end35.i.if.end70.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70.i

do.end42.i:                                       ; preds = %if.end35.i
  %name.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %76, i32 0, i32 3
  %94 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %name.i, align 4
  %adap.i367 = getelementptr inbounds %struct.tuner_i2c_props, ptr %76, i32 0, i32 1
  %96 = ptrtoint ptr %adap.i367 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %adap.i367, align 4
  %tobool45.not.i = icmp eq ptr %97, null
  br i1 %tobool45.not.i, label %do.end42.i.cond.end.i369_crit_edge, label %cond.true.i

do.end42.i.cond.end.i369_crit_edge:               ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end.i369

cond.true.i:                                      ; preds = %do.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %97, i32 0, i32 11
  %98 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i369

cond.end.i369:                                    ; preds = %cond.true.i, %do.end42.i.cond.end.i369_crit_edge
  %cond.i368 = phi i32 [ %99, %cond.true.i ], [ -1, %do.end42.i.cond.end.i369_crit_edge ]
  %100 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %76, align 8
  %conv50.i = zext i8 %101 to i32
  %call51.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.236, ptr noundef %95, i32 noundef %cond.i368, i32 noundef %conv50.i) #10
  %102 = ptrtoint ptr %firm26.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %firm26.i, align 8
  %arrayidx57.i = getelementptr %struct.firmware_description, ptr %103, i32 %pos.1.i
  %104 = ptrtoint ptr %arrayidx57.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx57.i, align 8
  %int_freq61.i = getelementptr %struct.firmware_description, ptr %103, i32 %pos.1.i, i32 2
  %106 = ptrtoint ptr %int_freq61.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %int_freq61.i, align 8
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %105, i16 noundef zeroext %107) #7
  %108 = ptrtoint ptr %firm26.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %firm26.i, align 8
  %arrayidx67.i = getelementptr %struct.firmware_description, ptr %109, i32 %pos.1.i
  %110 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx67.i, align 8
  %112 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %112)
  %113 = load i64, ptr %id, align 8
  %call69.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.239, i32 noundef %111, i64 noundef %113) #10
  br label %if.end70.i

if.end70.i:                                       ; preds = %cond.end.i369, %if.end35.i.if.end70.i_crit_edge
  %114 = ptrtoint ptr %scode_buf.i to i32
  call void @__asan_store1_noabort(i32 %114)
  store i8 0, ptr %scode_buf.i, align 1
  %115 = call ptr @memcpy(ptr %7, ptr %add.ptr.i, i32 12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %116 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 0, ptr %buf.i.i, align 1
  %117 = ptrtoint ptr %9 to i32
  call void @__asan_store1_noabort(i32 %117)
  store i8 5, ptr %9, align 1
  %118 = ptrtoint ptr %10 to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 0, ptr %10, align 1
  %119 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 0, ptr %11, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %120 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 327679, ptr %12, align 4
  %121 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %76, align 8
  %conv.i.i.i = zext i8 %122 to i16
  %123 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %124 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 0, ptr %flags.i.i.i, align 2
  %125 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %buf.i.i, ptr %buf4.i.i.i, align 4
  %adap.i.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %76, i32 0, i32 1
  %126 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %127, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end70.i.if.end82.i_crit_edge, label %if.then.i.i.i

if.end70.i.if.end82.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i

if.then.i.i.i:                                    ; preds = %if.end70.i
  %ignore_i2c_write_errors.i.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %76, i32 0, i32 13
  %128 = ptrtoint ptr %ignore_i2c_write_errors.i.i.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ignore_i2c_write_errors.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %cmp8.i.i.i = icmp eq i8 %129, 0
  br i1 %cmp8.i.i.i, label %do.end79.i, label %if.then.i.i.i.if.end82.i_crit_edge

if.then.i.i.i.if.end82.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end82.i

do.end79.i:                                       ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  %call81.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.242) #10
  br label %if.then177

if.end82.i:                                       ; preds = %if.then.i.i.i.if.end82.i_crit_edge, %if.end70.i.if.end82.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %130 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 917503, ptr %13, align 4
  %131 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %76, align 8
  %conv.i.i = zext i8 %132 to i16
  %133 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %133)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %134 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 0, ptr %flags.i.i, align 2
  %135 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr %scode_buf.i, ptr %buf4.i.i, align 4
  %136 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %137, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end82.i.xc_send_i2c_data.exit.thread.i_crit_edge, label %if.then.i.i

if.end82.i.xc_send_i2c_data.exit.thread.i_crit_edge: ; preds = %if.end82.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_send_i2c_data.exit.thread.i

if.then.i.i:                                      ; preds = %if.end82.i
  %ignore_i2c_write_errors.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %76, i32 0, i32 13
  %138 = ptrtoint ptr %ignore_i2c_write_errors.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %ignore_i2c_write_errors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %139)
  %cmp8.i.i = icmp eq i8 %139, 0
  br i1 %cmp8.i.i, label %do.end89.i, label %if.then.i.i.xc_send_i2c_data.exit.thread.i_crit_edge

if.then.i.i.xc_send_i2c_data.exit.thread.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_send_i2c_data.exit.thread.i

xc_send_i2c_data.exit.thread.i:                   ; preds = %if.then.i.i.xc_send_i2c_data.exit.thread.i_crit_edge, %if.end82.i.xc_send_i2c_data.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %if.end92.i

do.end89.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 13) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %call91.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.245, i32 noundef -121) #10
  br label %if.end92.i

if.end92.i:                                       ; preds = %do.end89.i, %xc_send_i2c_data.exit.thread.i
  %140 = ptrtoint ptr %indirect_mode.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 0, ptr %indirect_mode.i, align 4
  %141 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 -120, ptr %8, align 4
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i136.i) #7
  %142 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 393215, ptr %14, align 4
  %143 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %143)
  %144 = load i8, ptr %76, align 8
  %conv.i137.i = zext i8 %144 to i16
  %145 = ptrtoint ptr %msg.i136.i to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %conv.i137.i, ptr %msg.i136.i, align 4
  %146 = ptrtoint ptr %flags.i138.i to i32
  call void @__asan_store2_noabort(i32 %146)
  store i16 0, ptr %flags.i138.i, align 2
  %147 = ptrtoint ptr %buf4.i140.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %indirect_mode.i, ptr %buf4.i140.i, align 4
  %148 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %adap.i.i.i, align 4
  %call.i142.i = call i32 @i2c_transfer(ptr noundef %149, ptr noundef nonnull %msg.i136.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i142.i)
  %cmp.not.i143.i = icmp eq i32 %call.i142.i, 1
  br i1 %cmp.not.i143.i, label %if.end92.i.load_scode.exit_crit_edge, label %if.then.i146.i

if.end92.i.load_scode.exit_crit_edge:             ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %load_scode.exit

if.then.i146.i:                                   ; preds = %if.end92.i
  %ignore_i2c_write_errors.i144.i = getelementptr inbounds %struct.xc4000_priv, ptr %76, i32 0, i32 13
  %150 = ptrtoint ptr %ignore_i2c_write_errors.i144.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %ignore_i2c_write_errors.i144.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %151)
  %cmp8.i145.i = icmp eq i8 %151, 0
  br i1 %cmp8.i145.i, label %do.end.i148.i, label %if.then.i146.i.load_scode.exit_crit_edge

if.then.i146.i.load_scode.exit_crit_edge:         ; preds = %if.then.i146.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %load_scode.exit

do.end.i148.i:                                    ; preds = %if.then.i146.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i147.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 5) #10
  br label %load_scode.exit

load_scode.exit:                                  ; preds = %do.end.i148.i, %if.then.i146.i.load_scode.exit_crit_edge, %if.end92.i.load_scode.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i136.i) #7
  call void @msleep(i32 noundef 10) #7
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %indirect_mode.i) #7
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %scode_buf.i) #7
  br label %check_device

if.then177:                                       ; preds = %do.end79.i, %if.end25.i.if.then177_crit_edge, %for.end.i.if.then177_crit_edge, %for.inc.i.if.then177_crit_edge, %if.then1.i365.if.then177_crit_edge
  %retval.0.i370.ph = phi i32 [ -22, %if.end25.i.if.then177_crit_edge ], [ -2, %for.end.i.if.then177_crit_edge ], [ %call2.i, %if.then1.i365.if.then177_crit_edge ], [ -5, %do.end79.i ], [ -2, %for.inc.i.if.then177_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %indirect_mode.i) #7
  call void @llvm.lifetime.end.p0(i64 13, ptr nonnull %scode_buf.i) #7
  %152 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %cmp178 = icmp sgt i32 %152, 0
  br i1 %cmp178, label %do.end183, label %if.then177.check_device_crit_edge

if.then177.check_device_crit_edge:                ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  br label %check_device

do.end183:                                        ; preds = %if.then177
  call void @__sanitizer_cov_trace_pc() #9
  %call185 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i370.ph) #10
  br label %check_device

check_device:                                     ; preds = %do.end183, %if.then177.check_device_crit_edge, %load_scode.exit, %do.end163, %if.then157.check_device_crit_edge
  %rc.5 = phi i32 [ %rc.4, %do.end163 ], [ %rc.4, %if.then157.check_device_crit_edge ], [ %retval.0.i370.ph, %do.end183 ], [ %retval.0.i370.ph, %if.then177.check_device_crit_edge ], [ 0, %load_scode.exit ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i) #7
  %153 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %153)
  store i8 0, ptr %buf.i, align 1
  %154 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %154)
  store i8 8, ptr %15, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i) #7
  %155 = ptrtoint ptr %bval.i to i32
  call void @__asan_store2_noabort(i32 %155)
  store i16 0, ptr %bval.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #7
  %156 = call ptr @memset(ptr %16, i32 255, i32 16)
  %157 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %1, align 8
  %conv6.i = zext i8 %158 to i16
  %159 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv6.i, ptr %msg.i, align 4
  %160 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %160)
  store i16 0, ptr %flags.i, align 2
  %161 = ptrtoint ptr %16 to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 2, ptr %16, align 4
  %162 = ptrtoint ptr %buf7.i to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %buf.i, ptr %buf7.i, align 4
  %163 = ptrtoint ptr %arrayinit.element8.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv6.i, ptr %arrayinit.element8.i, align 4
  %164 = ptrtoint ptr %flags13.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 1, ptr %flags13.i, align 2
  %165 = ptrtoint ptr %len14.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 2, ptr %len14.i, align 4
  %166 = ptrtoint ptr %buf15.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr %bval.i, ptr %buf15.i, align 4
  %167 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %adap, align 4
  %call.i372 = call i32 @i2c_transfer(ptr noundef %168, ptr noundef nonnull %msg.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i372)
  %cmp.not.i = icmp eq i32 %call.i372, 2
  br i1 %cmp.not.i, label %if.end197, label %do.end194

do.end194:                                        ; preds = %check_device
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  %call196 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #10
  br label %fail

if.end197:                                        ; preds = %check_device
  %169 = ptrtoint ptr %bval.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %bval.i, align 2
  %conv21.i = zext i8 %170 to i16
  %shl.i = shl nuw i16 %conv21.i, 8
  %171 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %arrayidx22.i, align 1
  %conv23.i = zext i8 %172 to i16
  %or.i = or i16 %shl.i, %conv23.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i376) #7
  %173 = ptrtoint ptr %buf.i.i376 to i32
  call void @__asan_store1_noabort(i32 %173)
  store i8 0, ptr %buf.i.i376, align 1
  %174 = ptrtoint ptr %17 to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 7, ptr %17, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i) #7
  %175 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 0, ptr %bval.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i377) #7
  %176 = call ptr @memset(ptr %18, i32 255, i32 16)
  %177 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %1, align 8
  %conv6.i.i = zext i8 %178 to i16
  %179 = ptrtoint ptr %msg.i.i377 to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv6.i.i, ptr %msg.i.i377, align 4
  %180 = ptrtoint ptr %flags.i.i378 to i32
  call void @__asan_store2_noabort(i32 %180)
  store i16 0, ptr %flags.i.i378, align 2
  %181 = ptrtoint ptr %18 to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 2, ptr %18, align 4
  %182 = ptrtoint ptr %buf7.i.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %buf.i.i376, ptr %buf7.i.i, align 4
  %183 = ptrtoint ptr %arrayinit.element8.i.i to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 %conv6.i.i, ptr %arrayinit.element8.i.i, align 4
  %184 = ptrtoint ptr %flags13.i.i to i32
  call void @__asan_store2_noabort(i32 %184)
  store i16 1, ptr %flags13.i.i, align 2
  %185 = ptrtoint ptr %len14.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 2, ptr %len14.i.i, align 4
  %186 = ptrtoint ptr %buf15.i.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %bval.i.i, ptr %buf15.i.i, align 4
  %187 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %adap, align 4
  %call.i.i379 = call i32 @i2c_transfer(ptr noundef %188, ptr noundef nonnull %msg.i.i377, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i379)
  %cmp.not.i.i380 = icmp eq i32 %call.i.i379, 2
  br i1 %cmp.not.i.i380, label %if.end207, label %do.end204

do.end204:                                        ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i377) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i376) #7
  %call206 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.105) #10
  br label %fail

if.end207:                                        ; preds = %if.end197
  %189 = ptrtoint ptr %bval.i.i to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %bval.i.i, align 2
  %191 = ptrtoint ptr %arrayidx22.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %arrayidx22.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i377) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i376) #7
  %193 = lshr i8 %190, 4
  %conv5.i = and i8 %190, 15
  %194 = lshr i8 %192, 4
  %conv12.i = and i8 %192, 15
  %195 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp208 = icmp sgt i32 %195, 0
  br i1 %cmp208, label %do.end213, label %if.end207.if.end221_crit_edge

if.end207.if.end221_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  %.pre = zext i8 %194 to i32
  %.pre433 = zext i8 %conv12.i to i32
  br label %if.end221

do.end213:                                        ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #9
  %conv215 = zext i16 %or.i to i32
  %conv216 = zext i8 %193 to i32
  %conv217 = zext i8 %conv5.i to i32
  %conv218 = zext i8 %194 to i32
  %conv219 = zext i8 %conv12.i to i32
  %call220 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.3, i32 noundef %conv215, i32 noundef %conv216, i32 noundef %conv217, i32 noundef %conv218, i32 noundef %conv219) #10
  br label %if.end221

if.end221:                                        ; preds = %do.end213, %if.end207.if.end221_crit_edge
  %conv224.pre-phi = phi i32 [ %.pre433, %if.end207.if.end221_crit_edge ], [ %conv219, %do.end213 ]
  %conv223.pre-phi = phi i32 [ %.pre, %if.end207.if.end221_crit_edge ], [ %conv218, %do.end213 ]
  %196 = ptrtoint ptr %firm_version to i32
  call void @__asan_load2_noabort(i32 %196)
  %197 = load i16, ptr %firm_version, align 2
  %conv222 = zext i16 %197 to i32
  %shl = shl nuw nsw i32 %conv223.pre-phi, 8
  %or225 = or i32 %shl, %conv224.pre-phi
  call void @__sanitizer_cov_trace_cmp4(i32 %or225, i32 %conv222)
  %cmp226.not = icmp eq i32 %or225, %conv222
  br i1 %cmp226.not, label %if.end236, label %do.end231

do.end231:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #9
  %call235 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.113, i32 noundef %conv223.pre-phi, i32 noundef %conv224.pre-phi) #10
  br label %fail

if.end236:                                        ; preds = %if.end221
  %198 = ptrtoint ptr %hwmodel237 to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %hwmodel237, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %199)
  %cmp239 = icmp eq i16 %199, 0
  br i1 %cmp239, label %land.lhs.true241, label %lor.lhs.false260

land.lhs.true241:                                 ; preds = %if.end236
  %200 = zext i16 %or.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %200, ptr @__sancov_gen_cov_switch_values.395)
  switch i16 %or.i, label %land.lhs.true241.do.end278_crit_edge [
    i16 4000, label %land.lhs.true241.if.then248_crit_edge
    i16 4100, label %land.lhs.true241.if.then248_crit_edge450
  ]

land.lhs.true241.if.then248_crit_edge450:         ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then248

land.lhs.true241.if.then248_crit_edge:            ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then248

land.lhs.true241.do.end278_crit_edge:             ; preds = %land.lhs.true241
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end278

if.then248:                                       ; preds = %land.lhs.true241.if.then248_crit_edge, %land.lhs.true241.if.then248_crit_edge450
  %201 = ptrtoint ptr %hwmodel237 to i32
  call void @__asan_store2_noabort(i32 %201)
  store i16 %or.i, ptr %hwmodel237, align 8
  %conv250 = zext i8 %193 to i16
  %shl251 = shl nuw nsw i16 %conv250, 8
  %conv252 = zext i8 %conv5.i to i16
  %or253 = or i16 %shl251, %conv252
  %202 = ptrtoint ptr %hwvers267 to i32
  call void @__asan_store2_noabort(i32 %202)
  store i16 %or253, ptr %hwvers267, align 2
  br label %if.end282

lor.lhs.false260:                                 ; preds = %if.end236
  call void @__sanitizer_cov_trace_cmp2(i16 %199, i16 %or.i)
  %cmp264.not = icmp eq i16 %199, %or.i
  br i1 %cmp264.not, label %lor.lhs.false266, label %lor.lhs.false260.do.end278_crit_edge

lor.lhs.false260.do.end278_crit_edge:             ; preds = %lor.lhs.false260
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end278

lor.lhs.false266:                                 ; preds = %lor.lhs.false260
  %203 = ptrtoint ptr %hwvers267 to i32
  call void @__asan_load2_noabort(i32 %203)
  %204 = load i16, ptr %hwvers267, align 2
  %conv268 = zext i16 %204 to i32
  %conv269 = zext i8 %193 to i32
  %shl270 = shl nuw nsw i32 %conv269, 8
  %conv271 = zext i8 %conv5.i to i32
  %or272 = or i32 %shl270, %conv271
  call void @__sanitizer_cov_trace_cmp4(i32 %or272, i32 %conv268)
  %cmp273.not = icmp eq i32 %or272, %conv268
  br i1 %cmp273.not, label %lor.lhs.false266.if.end282_crit_edge, label %lor.lhs.false266.do.end278_crit_edge

lor.lhs.false266.do.end278_crit_edge:             ; preds = %lor.lhs.false266
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end278

lor.lhs.false266.if.end282_crit_edge:             ; preds = %lor.lhs.false266
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end282

do.end278:                                        ; preds = %lor.lhs.false266.do.end278_crit_edge, %lor.lhs.false260.do.end278_crit_edge, %land.lhs.true241.do.end278_crit_edge
  %call280 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.116) #10
  br label %fail

if.end282:                                        ; preds = %lor.lhs.false266.if.end282_crit_edge, %if.then248
  %205 = call ptr @memcpy(ptr %cur_fw, ptr %new_fw, i32 40)
  %206 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %cur_fw, align 8
  %or286 = or i32 %207, 1
  store i32 %or286, ptr %cur_fw, align 8
  br label %cleanup

fail:                                             ; preds = %do.end278, %do.end231, %do.end204, %do.end194, %if.end136.fail_crit_edge, %cond.end, %do.end73, %xc4000_tuner_reset.exit.thread
  %rc.6 = phi i32 [ %rc.5, %do.end194 ], [ %rc.5, %do.end204 ], [ %rc.5, %do.end231 ], [ %rc.5, %do.end278 ], [ %call141, %if.end136.fail_crit_edge ], [ %call67, %do.end73 ], [ %rc.2, %cond.end ], [ %retval.0.ph.i, %xc4000_tuner_reset.exit.thread ]
  %208 = call ptr @memset(ptr %cur_fw, i32 0, i32 40)
  br i1 %tobool288.not, label %if.then289, label %if.end299

if.then289:                                       ; preds = %fail
  call void @msleep(i32 noundef 50) #7
  %209 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %209)
  %cmp290 = icmp sgt i32 %209, 0
  br i1 %cmp290, label %do.end295, label %if.then289.retry.backedge_crit_edge

if.then289.retry.backedge_crit_edge:              ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #9
  br label %retry.backedge

do.end295:                                        ; preds = %if.then289
  call void @__sanitizer_cov_trace_pc() #9
  %call297 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.119, ptr noundef nonnull @.str.3) #10
  br label %retry.backedge

retry.backedge:                                   ; preds = %do.end295, %if.then289.retry.backedge_crit_edge
  br label %retry

if.end299:                                        ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %rc.6)
  %cmp300 = icmp eq i32 %rc.6, -2
  %spec.select = select i1 %cmp300, i32 -22, i32 %rc.6
  br label %cleanup

cleanup:                                          ; preds = %if.end299, %if.end282, %if.then1.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.end299 ], [ 0, %if.end282 ], [ %call2, %if.then1.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %std0) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %new_fw) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc_set_signal_source(ptr nocapture noundef readonly %priv, i16 noundef zeroext %rf_mode) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %rf_mode to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rf_mode)
  %cmp2 = icmp eq i16 %rf_mode, 0
  %cond = select i1 %cmp2, ptr @.str.249, ptr @.str.250
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.248, i32 noundef %conv, ptr noundef nonnull %cond) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %rf_mode)
  %switch = icmp ult i16 %rf_mode, 2
  %extract.t = trunc i16 %rf_mode to i8
  %extract = lshr i16 %rf_mode, 8
  %extract.t21 = trunc i16 %extract to i8
  br i1 %switch, label %if.end.if.end15_crit_edge, label %if.then10

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.252, ptr noundef nonnull @.str.248) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then10, %if.end.if.end15_crit_edge
  %rf_mode.addr.0.off0 = phi i8 [ 1, %if.then10 ], [ %extract.t, %if.end.if.end15_crit_edge ]
  %rf_mode.addr.0.off8 = phi i8 [ 0, %if.then10 ], [ %extract.t21, %if.end.if.end15_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %1 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %2 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %3 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %4 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %buf.i, align 1
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 10, ptr %1, align 1
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %rf_mode.addr.0.off8, ptr %2, align 1
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %rf_mode.addr.0.off0, ptr %3, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %8 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 327679, ptr %8, align 4
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %priv, align 8
  %conv.i.i = zext i8 %11 to i16
  %12 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv, i32 0, i32 1
  %15 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %16, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end15.xc_write_reg.exit_crit_edge, label %if.then.i.i

if.end15.xc_write_reg.exit_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_write_reg.exit

if.then.i.i:                                      ; preds = %if.end15
  %ignore_i2c_write_errors.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %priv, i32 0, i32 13
  %17 = ptrtoint ptr %ignore_i2c_write_errors.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ignore_i2c_write_errors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp8.i.i = icmp eq i8 %18, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.then.i.i.xc_write_reg.exit_crit_edge

if.then.i.i.xc_write_reg.exit_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_write_reg.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  br label %xc_write_reg.exit

xc_write_reg.exit:                                ; preds = %do.end.i.i, %if.then.i.i.xc_write_reg.exit_crit_edge, %if.end15.xc_write_reg.exit_crit_edge
  %retval.0.i.i = phi i32 [ -121, %do.end.i.i ], [ 0, %if.then.i.i.xc_write_reg.exit_crit_edge ], [ 0, %if.end15.xc_write_reg.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc_set_tv_standard(ptr nocapture noundef %priv, i16 noundef zeroext %video_mode, i16 noundef zeroext %audio_mode) unnamed_addr #0 align 64 {
entry:
  %msg.i.i25 = alloca %struct.i2c_msg, align 4
  %buf.i26 = alloca [4 x i8], align 1
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %entry.if.end10_crit_edge

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.end:                                           ; preds = %entry
  %conv = zext i16 %video_mode to i32
  %conv1 = zext i16 %audio_mode to i32
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.279, i32 noundef %conv, i32 noundef %conv1) #10
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp2 = icmp sgt i32 %.pr, 0
  br i1 %cmp2, label %do.end7, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %video_standard = getelementptr inbounds %struct.xc4000_priv, ptr %priv, i32 0, i32 8
  %1 = ptrtoint ptr %video_standard to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %video_standard, align 8
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [24 x %struct.XC_TV_STANDARD], ptr @xc4000_standard, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.281, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.279, ptr noundef %4) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %ignore_i2c_write_errors = getelementptr inbounds %struct.xc4000_priv, ptr %priv, i32 0, i32 13
  %5 = ptrtoint ptr %ignore_i2c_write_errors to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %ignore_i2c_write_errors, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i) #7
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buf.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %6, align 1
  %11 = lshr i16 %video_mode, 8
  %conv9.i = trunc i16 %11 to i8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9.i, ptr %7, align 1
  %conv13.i = trunc i16 %video_mode to i8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13.i, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 327679, ptr %14, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %priv, align 8
  %conv.i.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i, align 2
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv, i32 0, i32 1
  %21 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %if.end10.if.then14_crit_edge, label %if.then.i.i

if.end10.if.then14_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

if.then.i.i:                                      ; preds = %if.end10
  %23 = ptrtoint ptr %ignore_i2c_write_errors to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ignore_i2c_write_errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp8.i.i = icmp eq i8 %24, 0
  br i1 %cmp8.i.i, label %xc_write_reg.exit, label %if.then.i.i.if.then14_crit_edge

if.then.i.i.if.then14_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then14

xc_write_reg.exit:                                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  br label %if.end16

if.then14:                                        ; preds = %if.then.i.i.if.then14_crit_edge, %if.end10.if.then14_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i) #7
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i26) #7
  %25 = getelementptr inbounds [4 x i8], ptr %buf.i26, i32 0, i32 1
  %26 = getelementptr inbounds [4 x i8], ptr %buf.i26, i32 0, i32 2
  %27 = getelementptr inbounds [4 x i8], ptr %buf.i26, i32 0, i32 3
  %28 = ptrtoint ptr %buf.i26 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 0, ptr %buf.i26, align 1
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %25, align 1
  %30 = lshr i16 %audio_mode, 8
  %conv9.i27 = trunc i16 %30 to i8
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv9.i27, ptr %26, align 1
  %conv13.i28 = trunc i16 %audio_mode to i8
  %32 = ptrtoint ptr %27 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %conv13.i28, ptr %27, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i25) #7
  %33 = getelementptr inbounds i8, ptr %msg.i.i25, i32 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 327679, ptr %33, align 4
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %priv, align 8
  %conv.i.i29 = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i.i25 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv.i.i29, ptr %msg.i.i25, align 4
  %flags.i.i30 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25, i32 0, i32 1
  %38 = ptrtoint ptr %flags.i.i30 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i30, align 2
  %buf4.i.i31 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i25, i32 0, i32 3
  %39 = ptrtoint ptr %buf4.i.i31 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %buf.i26, ptr %buf4.i.i31, align 4
  %40 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap.i.i, align 4
  %call.i.i33 = call i32 @i2c_transfer(ptr noundef %41, ptr noundef nonnull %msg.i.i25, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i33)
  %cmp.not.i.i34 = icmp eq i32 %call.i.i33, 1
  br i1 %cmp.not.i.i34, label %if.then14.xc_write_reg.exit42_crit_edge, label %if.then.i.i37

if.then14.xc_write_reg.exit42_crit_edge:          ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_write_reg.exit42

if.then.i.i37:                                    ; preds = %if.then14
  %42 = ptrtoint ptr %ignore_i2c_write_errors to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %ignore_i2c_write_errors, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %cmp8.i.i36 = icmp eq i8 %43, 0
  br i1 %cmp8.i.i36, label %do.end.i.i40, label %if.then.i.i37.xc_write_reg.exit42_crit_edge

if.then.i.i37.xc_write_reg.exit42_crit_edge:      ; preds = %if.then.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_write_reg.exit42

do.end.i.i40:                                     ; preds = %if.then.i.i37
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i39 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i26) #10
  br label %xc_write_reg.exit42

xc_write_reg.exit42:                              ; preds = %do.end.i.i40, %if.then.i.i37.xc_write_reg.exit42_crit_edge, %if.then14.xc_write_reg.exit42_crit_edge
  %retval.0.i.i41 = phi i32 [ -121, %do.end.i.i40 ], [ 0, %if.then.i.i37.xc_write_reg.exit42_crit_edge ], [ 0, %if.then14.xc_write_reg.exit42_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i25) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i26) #7
  br label %if.end16

if.end16:                                         ; preds = %xc_write_reg.exit42, %xc_write_reg.exit
  %ret.0 = phi i32 [ %retval.0.i.i41, %xc_write_reg.exit42 ], [ -121, %xc_write_reg.exit ]
  %44 = ptrtoint ptr %ignore_i2c_write_errors to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %ignore_i2c_write_errors, align 1
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xc_tune_channel(ptr nocapture noundef %priv, i32 noundef %freq_hz) unnamed_addr #0 align 64 {
entry:
  %buf.i.i253.i = alloca [2 x i8], align 1
  %bval.i.i254.i = alloca [2 x i8], align 2
  %msg.i.i255.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i231.i = alloca [2 x i8], align 1
  %bval.i.i232.i = alloca [2 x i8], align 2
  %msg.i.i233.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i209.i = alloca [2 x i8], align 1
  %bval.i.i210.i = alloca [2 x i8], align 2
  %msg.i.i211.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i187.i = alloca [2 x i8], align 1
  %bval.i.i188.i = alloca [2 x i8], align 2
  %msg.i.i189.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i166.i = alloca [2 x i8], align 1
  %bval.i.i167.i = alloca [2 x i8], align 2
  %msg.i.i168.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i149.i = alloca [2 x i8], align 1
  %bval.i.i150.i = alloca [2 x i8], align 2
  %msg.i.i151.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i127.i = alloca [2 x i8], align 1
  %bval.i.i128.i = alloca [2 x i8], align 2
  %msg.i.i129.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i108.i = alloca [2 x i8], align 1
  %bval.i.i109.i = alloca [2 x i8], align 2
  %msg.i.i110.i = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i.i9 = alloca [2 x i8], align 1
  %bval.i.i.i10 = alloca [2 x i8], align 2
  %msg.i.i.i11 = alloca [2 x %struct.i2c_msg], align 4
  %buf.i.i.i = alloca [2 x i8], align 1
  %bval.i.i.i = alloca [2 x i8], align 2
  %msg.i.i.i1 = alloca [2 x %struct.i2c_msg], align 4
  %msg.i.i.i = alloca %struct.i2c_msg, align 4
  %buf.i.i = alloca [4 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.end, label %if.end.thread

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ignore_i2c_write_errors33 = getelementptr inbounds %struct.xc4000_priv, ptr %priv, i32 0, i32 13
  %1 = ptrtoint ptr %ignore_i2c_write_errors33 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %ignore_i2c_write_errors33, align 1
  br label %if.end.i

if.end:                                           ; preds = %entry
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.284, i32 noundef %freq_hz) #10
  %.pr = load i32, ptr @debug, align 4
  %ignore_i2c_write_errors = getelementptr inbounds %struct.xc4000_priv, ptr %priv, i32 0, i32 13
  %2 = ptrtoint ptr %ignore_i2c_write_errors to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %ignore_i2c_write_errors, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp sgt i32 %.pr, 0
  br i1 %cmp.i, label %do.end.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.283, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.285, i32 noundef %freq_hz) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge, %if.end.thread
  %ignore_i2c_write_errors35 = phi ptr [ %ignore_i2c_write_errors33, %if.end.thread ], [ %ignore_i2c_write_errors, %do.end.i ], [ %ignore_i2c_write_errors, %if.end.if.end.i_crit_edge ]
  %3 = add i32 %freq_hz, -1023000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1022000001, i32 %3)
  %4 = icmp ult i32 %3, -1022000001
  br i1 %4, label %xc_set_rf_frequency.exit.thread, label %if.end4.i

xc_set_rf_frequency.exit.thread:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %ignore_i2c_write_errors35 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %ignore_i2c_write_errors35, align 1
  br label %cleanup

if.end4.i:                                        ; preds = %if.end.i
  %div.i = udiv i32 %freq_hz, 15625
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf.i.i) #7
  %6 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 1
  %7 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 2
  %8 = getelementptr inbounds [4 x i8], ptr %buf.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %buf.i.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %buf.i.i, align 1
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 3, ptr %6, align 1
  %11 = lshr i32 %div.i, 8
  %conv9.i.i = trunc i32 %11 to i8
  %12 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv9.i.i, ptr %7, align 1
  %conv13.i.i = trunc i32 %div.i to i8
  %13 = ptrtoint ptr %8 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv13.i.i, ptr %8, align 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  %14 = getelementptr inbounds i8, ptr %msg.i.i.i, i32 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 327679, ptr %14, align 4
  %16 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %priv, align 8
  %conv.i.i.i = zext i8 %17 to i16
  %18 = ptrtoint ptr %msg.i.i.i to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i.i.i, ptr %msg.i.i.i, align 4
  %flags.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 0, ptr %flags.i.i.i, align 2
  %buf4.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i, i32 0, i32 3
  %20 = ptrtoint ptr %buf4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %buf.i.i, ptr %buf4.i.i.i, align 4
  %adap.i.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %priv, i32 0, i32 1
  %21 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i.i = call i32 @i2c_transfer(ptr noundef %22, ptr noundef nonnull %msg.i.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %call.i.i.i, 1
  br i1 %cmp.not.i.i.i, label %if.end4.i.if.end5_crit_edge, label %if.then.i.i.i

if.end4.i.if.end5_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then.i.i.i:                                    ; preds = %if.end4.i
  %23 = ptrtoint ptr %ignore_i2c_write_errors35 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %ignore_i2c_write_errors35, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %cmp8.i.i.i = icmp eq i8 %24, 0
  br i1 %cmp8.i.i.i, label %xc_set_rf_frequency.exit, label %if.then.i.i.i.if.end5_crit_edge

if.then.i.i.i.if.end5_crit_edge:                  ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

xc_set_rf_frequency.exit:                         ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef 4) #10
  %call19.i.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i.i) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  %25 = ptrtoint ptr %ignore_i2c_write_errors35 to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %ignore_i2c_write_errors35, align 1
  br label %cleanup

if.end5:                                          ; preds = %if.then.i.i.i.if.end5_crit_edge, %if.end4.i.if.end5_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf.i.i) #7
  %26 = ptrtoint ptr %ignore_i2c_write_errors35 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %ignore_i2c_write_errors35, align 1
  %cur_fw = getelementptr inbounds %struct.xc4000_priv, ptr %priv, i32 0, i32 15
  %27 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cur_fw, align 8
  %and = and i32 %28, 1952
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp6 = icmp eq i32 %and, 0
  br i1 %cmp6, label %if.then7, label %if.end5.if.end13_crit_edge

if.end5.if.end13_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then7:                                         ; preds = %if.end5
  %29 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i, i32 0, i32 1
  %30 = getelementptr inbounds i8, ptr %msg.i.i.i1, i32 4
  %flags.i.i.i2 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i1, i32 0, i32 1
  %buf7.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i1, i32 0, i32 3
  %arrayinit.element8.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i1, i32 1
  %flags13.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i1, i32 1, i32 1
  %len14.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i1, i32 1, i32 2
  %buf15.i.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i1, i32 1, i32 3
  %arrayidx22.i.i.i = getelementptr inbounds [2 x i8], ptr %bval.i.i.i, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i8.while.body.i_crit_edge, %if.then7
  %watchdog_count.014.i = phi i32 [ 40, %if.then7 ], [ %dec.i, %if.end.i8.while.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  %31 = ptrtoint ptr %buf.i.i.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 0, ptr %buf.i.i.i, align 1
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 4, ptr %29, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i.i) #7
  %33 = ptrtoint ptr %bval.i.i.i to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 0, ptr %bval.i.i.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i1) #7
  %34 = call ptr @memset(ptr %30, i32 255, i32 16)
  %35 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %priv, align 8
  %conv6.i.i.i = zext i8 %36 to i16
  %37 = ptrtoint ptr %msg.i.i.i1 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv6.i.i.i, ptr %msg.i.i.i1, align 4
  %38 = ptrtoint ptr %flags.i.i.i2 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 0, ptr %flags.i.i.i2, align 2
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 2, ptr %30, align 4
  %40 = ptrtoint ptr %buf7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %buf.i.i.i, ptr %buf7.i.i.i, align 4
  %41 = ptrtoint ptr %arrayinit.element8.i.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %conv6.i.i.i, ptr %arrayinit.element8.i.i.i, align 4
  %42 = ptrtoint ptr %flags13.i.i.i to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %flags13.i.i.i, align 2
  %43 = ptrtoint ptr %len14.i.i.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 2, ptr %len14.i.i.i, align 4
  %44 = ptrtoint ptr %buf15.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %bval.i.i.i, ptr %buf15.i.i.i, align 4
  %45 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i.i4 = call i32 @i2c_transfer(ptr noundef %46, ptr noundef nonnull %msg.i.i.i1, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i4)
  %cmp.not.i.i.i5 = icmp eq i32 %call.i.i.i4, 2
  br i1 %cmp.not.i.i.i5, label %xc_get_lock_status.exit.i, label %xc_get_lock_status.exit.thread.i

xc_get_lock_status.exit.thread.i:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i.i6 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  br label %if.end.i8

xc_get_lock_status.exit.i:                        ; preds = %while.body.i
  %47 = ptrtoint ptr %bval.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bval.i.i.i, align 2
  %conv21.i.i.i = zext i8 %48 to i16
  %shl.i.i.i = shl nuw i16 %conv21.i.i.i, 8
  %49 = ptrtoint ptr %arrayidx22.i.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %arrayidx22.i.i.i, align 1
  %conv23.i.i.i = zext i8 %50 to i16
  %or.i.i.i = or i16 %shl.i.i.i, %conv23.i.i.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i1) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %or.i.i.i)
  %cmp5.not.i = icmp eq i16 %or.i.i.i, 1
  br i1 %cmp5.not.i, label %xc_get_lock_status.exit.i.if.end13_crit_edge, label %xc_get_lock_status.exit.i.if.end.i8_crit_edge

xc_get_lock_status.exit.i.if.end.i8_crit_edge:    ; preds = %xc_get_lock_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i8

xc_get_lock_status.exit.i.if.end13_crit_edge:     ; preds = %xc_get_lock_status.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i8:                                        ; preds = %xc_get_lock_status.exit.i.if.end.i8_crit_edge, %xc_get_lock_status.exit.thread.i
  %lock_state.112.i = phi i16 [ 0, %xc_get_lock_status.exit.thread.i ], [ %or.i.i.i, %xc_get_lock_status.exit.i.if.end.i8_crit_edge ]
  call void @msleep(i32 noundef 5) #7
  %dec.i = add nsw i32 %watchdog_count.014.i, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %lock_state.112.i)
  %cmp.i7 = icmp eq i16 %lock_state.112.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp2.i = icmp ne i32 %dec.i, 0
  %or.cond.i = select i1 %cmp.i7, i1 %cmp2.i, i1 false
  br i1 %or.cond.i, label %if.end.i8.while.body.i_crit_edge, label %if.end.i8.if.end13_crit_edge

if.end.i8.if.end13_crit_edge:                     ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end.i8.while.body.i_crit_edge:                 ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

if.end13:                                         ; preds = %if.end.i8.if.end13_crit_edge, %xc_get_lock_status.exit.i.if.end13_crit_edge, %if.end5.if.end13_crit_edge
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not = icmp eq i32 %51, 0
  %cond = select i1 %tobool.not, i32 10, i32 100
  call void @msleep(i32 noundef %cond) #7
  %52 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool14.not = icmp eq i32 %52, 0
  br i1 %tobool14.not, label %if.end13.cleanup_crit_edge, label %if.then15

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then15:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i.i9) #7
  %53 = getelementptr inbounds [2 x i8], ptr %buf.i.i.i9, i32 0, i32 1
  %54 = ptrtoint ptr %buf.i.i.i9 to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 0, ptr %buf.i.i.i9, align 1
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %53, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i.i10) #7
  %56 = ptrtoint ptr %bval.i.i.i10 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 0, ptr %bval.i.i.i10, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i.i11) #7
  %57 = getelementptr inbounds i8, ptr %msg.i.i.i11, i32 4
  %58 = call ptr @memset(ptr %57, i32 255, i32 16)
  %59 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %priv, align 8
  %conv6.i.i.i12 = zext i8 %60 to i16
  %61 = ptrtoint ptr %msg.i.i.i11 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv6.i.i.i12, ptr %msg.i.i.i11, align 4
  %flags.i.i.i13 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i11, i32 0, i32 1
  %62 = ptrtoint ptr %flags.i.i.i13 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 0, ptr %flags.i.i.i13, align 2
  %63 = ptrtoint ptr %57 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 2, ptr %57, align 4
  %buf7.i.i.i14 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i11, i32 0, i32 3
  %64 = ptrtoint ptr %buf7.i.i.i14 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %buf.i.i.i9, ptr %buf7.i.i.i14, align 4
  %arrayinit.element8.i.i.i15 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i11, i32 1
  %65 = ptrtoint ptr %arrayinit.element8.i.i.i15 to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv6.i.i.i12, ptr %arrayinit.element8.i.i.i15, align 4
  %flags13.i.i.i16 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i11, i32 1, i32 1
  %66 = ptrtoint ptr %flags13.i.i.i16 to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 1, ptr %flags13.i.i.i16, align 2
  %len14.i.i.i17 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i11, i32 1, i32 2
  %67 = ptrtoint ptr %len14.i.i.i17 to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 2, ptr %len14.i.i.i17, align 4
  %buf15.i.i.i18 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i.i11, i32 1, i32 3
  %68 = ptrtoint ptr %buf15.i.i.i18 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %bval.i.i.i10, ptr %buf15.i.i.i18, align 4
  %69 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i.i20 = call i32 @i2c_transfer(ptr noundef %70, ptr noundef nonnull %msg.i.i.i11, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i.i20)
  %cmp.not.i.i.i21 = icmp eq i32 %call.i.i.i20, 2
  br i1 %cmp.not.i.i.i21, label %if.end.i.i.i, label %do.end.i.i.i23

do.end.i.i.i23:                                   ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i.i22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %xc_get_adc_envelope.exit.i

if.end.i.i.i:                                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %bval.i.i.i10 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %bval.i.i.i10, align 2
  %conv21.i.i.i24 = zext i8 %72 to i32
  %shl.i.i.i25 = shl nuw nsw i32 %conv21.i.i.i24, 8
  %arrayidx22.i.i.i26 = getelementptr inbounds [2 x i8], ptr %bval.i.i.i10, i32 0, i32 1
  %73 = ptrtoint ptr %arrayidx22.i.i.i26 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx22.i.i.i26, align 1
  %conv23.i.i.i27 = zext i8 %74 to i32
  %or.i.i.i28 = or i32 %shl.i.i.i25, %conv23.i.i.i27
  br label %xc_get_adc_envelope.exit.i

xc_get_adc_envelope.exit.i:                       ; preds = %if.end.i.i.i, %do.end.i.i.i23
  %adc_envelope.0.i = phi i32 [ %or.i.i.i28, %if.end.i.i.i ], [ 65535, %do.end.i.i.i23 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i.i11) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i.i10) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i.i9) #7
  %75 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %cmp.i29 = icmp sgt i32 %75, 0
  br i1 %cmp.i29, label %do.end.i30, label %xc_get_adc_envelope.exit.i.if.end.i31_crit_edge

xc_get_adc_envelope.exit.i.if.end.i31_crit_edge:  ; preds = %xc_get_adc_envelope.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i31

do.end.i30:                                       ; preds = %xc_get_adc_envelope.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i = and i32 %adc_envelope.0.i, 65535
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.286, ptr noundef nonnull @.str.3, i32 noundef %conv.i) #10
  br label %if.end.i31

if.end.i31:                                       ; preds = %do.end.i30, %xc_get_adc_envelope.exit.i.if.end.i31_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i108.i) #7
  %76 = getelementptr inbounds [2 x i8], ptr %buf.i.i108.i, i32 0, i32 1
  %77 = ptrtoint ptr %buf.i.i108.i to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 0, ptr %buf.i.i108.i, align 1
  %78 = ptrtoint ptr %76 to i32
  call void @__asan_store1_noabort(i32 %78)
  store i8 5, ptr %76, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i109.i) #7
  %79 = ptrtoint ptr %bval.i.i109.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 0, ptr %bval.i.i109.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i110.i) #7
  %80 = getelementptr inbounds i8, ptr %msg.i.i110.i, i32 4
  %81 = call ptr @memset(ptr %80, i32 255, i32 16)
  %82 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %priv, align 8
  %conv6.i.i111.i = zext i8 %83 to i16
  %84 = ptrtoint ptr %msg.i.i110.i to i32
  call void @__asan_store2_noabort(i32 %84)
  store i16 %conv6.i.i111.i, ptr %msg.i.i110.i, align 4
  %flags.i.i112.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i110.i, i32 0, i32 1
  %85 = ptrtoint ptr %flags.i.i112.i to i32
  call void @__asan_store2_noabort(i32 %85)
  store i16 0, ptr %flags.i.i112.i, align 2
  %86 = ptrtoint ptr %80 to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 2, ptr %80, align 4
  %buf7.i.i113.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i110.i, i32 0, i32 3
  %87 = ptrtoint ptr %buf7.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %buf.i.i108.i, ptr %buf7.i.i113.i, align 4
  %arrayinit.element8.i.i114.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i110.i, i32 1
  %88 = ptrtoint ptr %arrayinit.element8.i.i114.i to i32
  call void @__asan_store2_noabort(i32 %88)
  store i16 %conv6.i.i111.i, ptr %arrayinit.element8.i.i114.i, align 4
  %flags13.i.i115.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i110.i, i32 1, i32 1
  %89 = ptrtoint ptr %flags13.i.i115.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 1, ptr %flags13.i.i115.i, align 2
  %len14.i.i116.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i110.i, i32 1, i32 2
  %90 = ptrtoint ptr %len14.i.i116.i to i32
  call void @__asan_store2_noabort(i32 %90)
  store i16 2, ptr %len14.i.i116.i, align 4
  %buf15.i.i117.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i110.i, i32 1, i32 3
  %91 = ptrtoint ptr %buf15.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %bval.i.i109.i, ptr %buf15.i.i117.i, align 4
  %92 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i119.i = call i32 @i2c_transfer(ptr noundef %93, ptr noundef nonnull %msg.i.i110.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i119.i)
  %cmp.not.i.i120.i = icmp eq i32 %call.i.i119.i, 2
  br i1 %cmp.not.i.i120.i, label %if.end.i.i, label %xc4000_readreg.exit.i.i

xc4000_readreg.exit.i.i:                          ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i121.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i110.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i109.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i108.i) #7
  br label %xc_get_frequency_error.exit.i

if.end.i.i:                                       ; preds = %if.end.i31
  call void @__sanitizer_cov_trace_pc() #9
  %94 = ptrtoint ptr %bval.i.i109.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %bval.i.i109.i, align 2
  %conv21.i.i122.i = zext i8 %95 to i16
  %shl.i.i123.i = shl nuw i16 %conv21.i.i122.i, 8
  %arrayidx22.i.i124.i = getelementptr inbounds [2 x i8], ptr %bval.i.i109.i, i32 0, i32 1
  %96 = ptrtoint ptr %arrayidx22.i.i124.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx22.i.i124.i, align 1
  %conv23.i.i125.i = zext i8 %97 to i16
  %or.i.i126.i = or i16 %shl.i.i123.i, %conv23.i.i125.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i110.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i109.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i108.i) #7
  %conv.i.i = zext i16 %or.i.i126.i to i32
  %sub.i.i = sub nuw nsw i32 65536, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %or.i.i126.i)
  %cmp15.i.i = icmp slt i16 %or.i.i126.i, 0
  %cond.i.i = select i1 %cmp15.i.i, i32 %sub.i.i, i32 %conv.i.i
  %mul.i.i = mul nuw nsw i32 %cond.i.i, 15625
  br label %xc_get_frequency_error.exit.i

xc_get_frequency_error.exit.i:                    ; preds = %if.end.i.i, %xc4000_readreg.exit.i.i
  %freq_error_hz.0.i = phi i32 [ %mul.i.i, %if.end.i.i ], [ 0, %xc4000_readreg.exit.i.i ]
  %98 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %cmp3.i = icmp sgt i32 %98, 0
  br i1 %cmp3.i, label %do.end8.i, label %xc_get_frequency_error.exit.i.if.end11.i_crit_edge

xc_get_frequency_error.exit.i.if.end11.i_crit_edge: ; preds = %xc_get_frequency_error.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

do.end8.i:                                        ; preds = %xc_get_frequency_error.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.289, ptr noundef nonnull @.str.3, i32 noundef %freq_error_hz.0.i) #10
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end8.i, %xc_get_frequency_error.exit.i.if.end11.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i127.i) #7
  %99 = getelementptr inbounds [2 x i8], ptr %buf.i.i127.i, i32 0, i32 1
  %100 = ptrtoint ptr %buf.i.i127.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 0, ptr %buf.i.i127.i, align 1
  %101 = ptrtoint ptr %99 to i32
  call void @__asan_store1_noabort(i32 %101)
  store i8 4, ptr %99, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i128.i) #7
  %102 = ptrtoint ptr %bval.i.i128.i to i32
  call void @__asan_store2_noabort(i32 %102)
  store i16 0, ptr %bval.i.i128.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i129.i) #7
  %103 = getelementptr inbounds i8, ptr %msg.i.i129.i, i32 4
  %104 = call ptr @memset(ptr %103, i32 255, i32 16)
  %105 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %priv, align 8
  %conv6.i.i130.i = zext i8 %106 to i16
  %107 = ptrtoint ptr %msg.i.i129.i to i32
  call void @__asan_store2_noabort(i32 %107)
  store i16 %conv6.i.i130.i, ptr %msg.i.i129.i, align 4
  %flags.i.i131.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129.i, i32 0, i32 1
  %108 = ptrtoint ptr %flags.i.i131.i to i32
  call void @__asan_store2_noabort(i32 %108)
  store i16 0, ptr %flags.i.i131.i, align 2
  %109 = ptrtoint ptr %103 to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 2, ptr %103, align 4
  %buf7.i.i132.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129.i, i32 0, i32 3
  %110 = ptrtoint ptr %buf7.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %buf.i.i127.i, ptr %buf7.i.i132.i, align 4
  %arrayinit.element8.i.i133.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129.i, i32 1
  %111 = ptrtoint ptr %arrayinit.element8.i.i133.i to i32
  call void @__asan_store2_noabort(i32 %111)
  store i16 %conv6.i.i130.i, ptr %arrayinit.element8.i.i133.i, align 4
  %flags13.i.i134.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129.i, i32 1, i32 1
  %112 = ptrtoint ptr %flags13.i.i134.i to i32
  call void @__asan_store2_noabort(i32 %112)
  store i16 1, ptr %flags13.i.i134.i, align 2
  %len14.i.i135.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129.i, i32 1, i32 2
  %113 = ptrtoint ptr %len14.i.i135.i to i32
  call void @__asan_store2_noabort(i32 %113)
  store i16 2, ptr %len14.i.i135.i, align 4
  %buf15.i.i136.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i129.i, i32 1, i32 3
  %114 = ptrtoint ptr %buf15.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr %bval.i.i128.i, ptr %buf15.i.i136.i, align 4
  %115 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i138.i = call i32 @i2c_transfer(ptr noundef %116, ptr noundef nonnull %msg.i.i129.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i138.i)
  %cmp.not.i.i139.i = icmp eq i32 %call.i.i138.i, 2
  br i1 %cmp.not.i.i139.i, label %if.end.i.i147.i, label %do.end.i.i141.i

do.end.i.i141.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i140.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %xc_get_lock_status.exit.i32

if.end.i.i147.i:                                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  %117 = ptrtoint ptr %bval.i.i128.i to i32
  call void @__asan_load1_noabort(i32 %117)
  %118 = load i8, ptr %bval.i.i128.i, align 2
  %conv21.i.i142.i = zext i8 %118 to i32
  %shl.i.i143.i = shl nuw nsw i32 %conv21.i.i142.i, 8
  %arrayidx22.i.i144.i = getelementptr inbounds [2 x i8], ptr %bval.i.i128.i, i32 0, i32 1
  %119 = ptrtoint ptr %arrayidx22.i.i144.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %arrayidx22.i.i144.i, align 1
  %conv23.i.i145.i = zext i8 %120 to i32
  %or.i.i146.i = or i32 %shl.i.i143.i, %conv23.i.i145.i
  br label %xc_get_lock_status.exit.i32

xc_get_lock_status.exit.i32:                      ; preds = %if.end.i.i147.i, %do.end.i.i141.i
  %lock_status.0.i = phi i32 [ %or.i.i146.i, %if.end.i.i147.i ], [ 65535, %do.end.i.i141.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i129.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i128.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i127.i) #7
  %121 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp13.i = icmp sgt i32 %121, 0
  br i1 %cmp13.i, label %do.end18.i, label %xc_get_lock_status.exit.i32.if.end22.i_crit_edge

xc_get_lock_status.exit.i32.if.end22.i_crit_edge: ; preds = %xc_get_lock_status.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

do.end18.i:                                       ; preds = %xc_get_lock_status.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  %conv20.i = and i32 %lock_status.0.i, 65535
  %call21.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.292, ptr noundef nonnull @.str.3, i32 noundef %conv20.i) #10
  br label %if.end22.i

if.end22.i:                                       ; preds = %do.end18.i, %xc_get_lock_status.exit.i32.if.end22.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i149.i) #7
  %122 = getelementptr inbounds [2 x i8], ptr %buf.i.i149.i, i32 0, i32 1
  %123 = ptrtoint ptr %buf.i.i149.i to i32
  call void @__asan_store1_noabort(i32 %123)
  store i8 0, ptr %buf.i.i149.i, align 1
  %124 = ptrtoint ptr %122 to i32
  call void @__asan_store1_noabort(i32 %124)
  store i8 7, ptr %122, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i150.i) #7
  %125 = ptrtoint ptr %bval.i.i150.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %bval.i.i150.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i151.i) #7
  %126 = getelementptr inbounds i8, ptr %msg.i.i151.i, i32 4
  %127 = call ptr @memset(ptr %126, i32 255, i32 16)
  %128 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %priv, align 8
  %conv6.i.i152.i = zext i8 %129 to i16
  %130 = ptrtoint ptr %msg.i.i151.i to i32
  call void @__asan_store2_noabort(i32 %130)
  store i16 %conv6.i.i152.i, ptr %msg.i.i151.i, align 4
  %flags.i.i153.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i, i32 0, i32 1
  %131 = ptrtoint ptr %flags.i.i153.i to i32
  call void @__asan_store2_noabort(i32 %131)
  store i16 0, ptr %flags.i.i153.i, align 2
  %132 = ptrtoint ptr %126 to i32
  call void @__asan_store2_noabort(i32 %132)
  store i16 2, ptr %126, align 4
  %buf7.i.i154.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i, i32 0, i32 3
  %133 = ptrtoint ptr %buf7.i.i154.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %buf.i.i149.i, ptr %buf7.i.i154.i, align 4
  %arrayinit.element8.i.i155.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i, i32 1
  %134 = ptrtoint ptr %arrayinit.element8.i.i155.i to i32
  call void @__asan_store2_noabort(i32 %134)
  store i16 %conv6.i.i152.i, ptr %arrayinit.element8.i.i155.i, align 4
  %flags13.i.i156.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i, i32 1, i32 1
  %135 = ptrtoint ptr %flags13.i.i156.i to i32
  call void @__asan_store2_noabort(i32 %135)
  store i16 1, ptr %flags13.i.i156.i, align 2
  %len14.i.i157.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i, i32 1, i32 2
  %136 = ptrtoint ptr %len14.i.i157.i to i32
  call void @__asan_store2_noabort(i32 %136)
  store i16 2, ptr %len14.i.i157.i, align 4
  %buf15.i.i158.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i151.i, i32 1, i32 3
  %137 = ptrtoint ptr %buf15.i.i158.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store ptr %bval.i.i150.i, ptr %buf15.i.i158.i, align 4
  %138 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i160.i = call i32 @i2c_transfer(ptr noundef %139, ptr noundef nonnull %msg.i.i151.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i160.i)
  %cmp.not.i.i161.i = icmp eq i32 %call.i.i160.i, 2
  br i1 %cmp.not.i.i161.i, label %if.end.i165.i, label %xc4000_readreg.exit.i163.i

xc4000_readreg.exit.i163.i:                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i162.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i151.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i150.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i149.i) #7
  br label %xc_get_version.exit.i

if.end.i165.i:                                    ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  %140 = ptrtoint ptr %bval.i.i150.i to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %bval.i.i150.i, align 2
  %arrayidx22.i.i164.i = getelementptr inbounds [2 x i8], ptr %bval.i.i150.i, i32 0, i32 1
  %142 = ptrtoint ptr %arrayidx22.i.i164.i to i32
  call void @__asan_load1_noabort(i32 %142)
  %143 = load i8, ptr %arrayidx22.i.i164.i, align 1
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i151.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i150.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i149.i) #7
  %144 = lshr i8 %141, 4
  %conv5.i.i = and i8 %141, 15
  %145 = lshr i8 %143, 4
  %conv12.i.i = and i8 %143, 15
  %phi.cast.i = zext i8 %144 to i32
  %phi.cast275.i = zext i8 %conv5.i.i to i32
  %phi.cast276.i = zext i8 %145 to i32
  %phi.cast277.i = zext i8 %conv12.i.i to i32
  br label %xc_get_version.exit.i

xc_get_version.exit.i:                            ; preds = %if.end.i165.i, %xc4000_readreg.exit.i163.i
  %hw_majorversion.0.i = phi i32 [ %phi.cast.i, %if.end.i165.i ], [ 0, %xc4000_readreg.exit.i163.i ]
  %hw_minorversion.0.i = phi i32 [ %phi.cast275.i, %if.end.i165.i ], [ 0, %xc4000_readreg.exit.i163.i ]
  %fw_majorversion.0.i = phi i32 [ %phi.cast276.i, %if.end.i165.i ], [ 0, %xc4000_readreg.exit.i163.i ]
  %fw_minorversion.0.i = phi i32 [ %phi.cast277.i, %if.end.i165.i ], [ 0, %xc4000_readreg.exit.i163.i ]
  %146 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp24.i = icmp sgt i32 %146, 0
  br i1 %cmp24.i, label %do.end29.i, label %xc_get_version.exit.i.if.end36.i_crit_edge

xc_get_version.exit.i.if.end36.i_crit_edge:       ; preds = %xc_get_version.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end36.i

do.end29.i:                                       ; preds = %xc_get_version.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call35.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.3, i32 noundef %hw_majorversion.0.i, i32 noundef %hw_minorversion.0.i, i32 noundef %fw_majorversion.0.i, i32 noundef %fw_minorversion.0.i) #10
  br label %if.end36.i

if.end36.i:                                       ; preds = %do.end29.i, %xc_get_version.exit.i.if.end36.i_crit_edge
  %video_standard.i = getelementptr inbounds %struct.xc4000_priv, ptr %priv, i32 0, i32 8
  %147 = ptrtoint ptr %video_standard.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %video_standard.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %148)
  %cmp38.i = icmp ult i8 %148, 18
  br i1 %cmp38.i, label %if.then40.i, label %if.end36.i.if.end62.i_crit_edge

if.end36.i.if.end62.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

if.then40.i:                                      ; preds = %if.end36.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i166.i) #7
  %149 = getelementptr inbounds [2 x i8], ptr %buf.i.i166.i, i32 0, i32 1
  %150 = ptrtoint ptr %buf.i.i166.i to i32
  call void @__asan_store1_noabort(i32 %150)
  store i8 0, ptr %buf.i.i166.i, align 1
  %151 = ptrtoint ptr %149 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 3, ptr %149, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i167.i) #7
  %152 = ptrtoint ptr %bval.i.i167.i to i32
  call void @__asan_store2_noabort(i32 %152)
  store i16 0, ptr %bval.i.i167.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i168.i) #7
  %153 = getelementptr inbounds i8, ptr %msg.i.i168.i, i32 4
  %154 = call ptr @memset(ptr %153, i32 255, i32 16)
  %155 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %priv, align 8
  %conv6.i.i169.i = zext i8 %156 to i16
  %157 = ptrtoint ptr %msg.i.i168.i to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %conv6.i.i169.i, ptr %msg.i.i168.i, align 4
  %flags.i.i170.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i168.i, i32 0, i32 1
  %158 = ptrtoint ptr %flags.i.i170.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 0, ptr %flags.i.i170.i, align 2
  %159 = ptrtoint ptr %153 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 2, ptr %153, align 4
  %buf7.i.i171.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i168.i, i32 0, i32 3
  %160 = ptrtoint ptr %buf7.i.i171.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr %buf.i.i166.i, ptr %buf7.i.i171.i, align 4
  %arrayinit.element8.i.i172.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i168.i, i32 1
  %161 = ptrtoint ptr %arrayinit.element8.i.i172.i to i32
  call void @__asan_store2_noabort(i32 %161)
  store i16 %conv6.i.i169.i, ptr %arrayinit.element8.i.i172.i, align 4
  %flags13.i.i173.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i168.i, i32 1, i32 1
  %162 = ptrtoint ptr %flags13.i.i173.i to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 1, ptr %flags13.i.i173.i, align 2
  %len14.i.i174.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i168.i, i32 1, i32 2
  %163 = ptrtoint ptr %len14.i.i174.i to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 2, ptr %len14.i.i174.i, align 4
  %buf15.i.i175.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i168.i, i32 1, i32 3
  %164 = ptrtoint ptr %buf15.i.i175.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store ptr %bval.i.i167.i, ptr %buf15.i.i175.i, align 4
  %165 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i177.i = call i32 @i2c_transfer(ptr noundef %166, ptr noundef nonnull %msg.i.i168.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i177.i)
  %cmp.not.i.i178.i = icmp eq i32 %call.i.i177.i, 2
  br i1 %cmp.not.i.i178.i, label %if.end.i186.i, label %xc4000_readreg.exit.i180.i

xc4000_readreg.exit.i180.i:                       ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i179.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i168.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i167.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i166.i) #7
  br label %xc_get_hsync_freq.exit.i

if.end.i186.i:                                    ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #9
  %167 = ptrtoint ptr %bval.i.i167.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %bval.i.i167.i, align 2
  %conv21.i.i181.i = zext i8 %168 to i32
  %shl.i.i182.i = shl nuw nsw i32 %conv21.i.i181.i, 8
  %arrayidx22.i.i183.i = getelementptr inbounds [2 x i8], ptr %bval.i.i167.i, i32 0, i32 1
  %169 = ptrtoint ptr %arrayidx22.i.i183.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %arrayidx22.i.i183.i, align 1
  %conv23.i.i184.i = zext i8 %170 to i32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i168.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i167.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i166.i) #7
  %shl.i.masked.i.i = and i32 %shl.i.i182.i, 3840
  %171 = or i32 %shl.i.masked.i.i, %conv23.i.i184.i
  %mul.i185.i = mul nuw nsw i32 %171, 763
  %div.i.i = udiv i32 %mul.i185.i, 100
  br label %xc_get_hsync_freq.exit.i

xc_get_hsync_freq.exit.i:                         ; preds = %if.end.i186.i, %xc4000_readreg.exit.i180.i
  %hsync_freq_hz.0.i = phi i32 [ %div.i.i, %if.end.i186.i ], [ 0, %xc4000_readreg.exit.i180.i ]
  %172 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %cmp42.i = icmp sgt i32 %172, 0
  br i1 %cmp42.i, label %do.end47.i, label %xc_get_hsync_freq.exit.i.if.end50.i_crit_edge

xc_get_hsync_freq.exit.i.if.end50.i_crit_edge:    ; preds = %xc_get_hsync_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end50.i

do.end47.i:                                       ; preds = %xc_get_hsync_freq.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call49.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, ptr noundef nonnull @.str.3, i32 noundef %hsync_freq_hz.0.i) #10
  br label %if.end50.i

if.end50.i:                                       ; preds = %do.end47.i, %xc_get_hsync_freq.exit.i.if.end50.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i187.i) #7
  %173 = getelementptr inbounds [2 x i8], ptr %buf.i.i187.i, i32 0, i32 1
  %174 = ptrtoint ptr %buf.i.i187.i to i32
  call void @__asan_store1_noabort(i32 %174)
  store i8 0, ptr %buf.i.i187.i, align 1
  %175 = ptrtoint ptr %173 to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 2, ptr %173, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i188.i) #7
  %176 = ptrtoint ptr %bval.i.i188.i to i32
  call void @__asan_store2_noabort(i32 %176)
  store i16 0, ptr %bval.i.i188.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i189.i) #7
  %177 = getelementptr inbounds i8, ptr %msg.i.i189.i, i32 4
  %178 = call ptr @memset(ptr %177, i32 255, i32 16)
  %179 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %priv, align 8
  %conv6.i.i190.i = zext i8 %180 to i16
  %181 = ptrtoint ptr %msg.i.i189.i to i32
  call void @__asan_store2_noabort(i32 %181)
  store i16 %conv6.i.i190.i, ptr %msg.i.i189.i, align 4
  %flags.i.i191.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189.i, i32 0, i32 1
  %182 = ptrtoint ptr %flags.i.i191.i to i32
  call void @__asan_store2_noabort(i32 %182)
  store i16 0, ptr %flags.i.i191.i, align 2
  %183 = ptrtoint ptr %177 to i32
  call void @__asan_store2_noabort(i32 %183)
  store i16 2, ptr %177, align 4
  %buf7.i.i192.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189.i, i32 0, i32 3
  %184 = ptrtoint ptr %buf7.i.i192.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %buf.i.i187.i, ptr %buf7.i.i192.i, align 4
  %arrayinit.element8.i.i193.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189.i, i32 1
  %185 = ptrtoint ptr %arrayinit.element8.i.i193.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %conv6.i.i190.i, ptr %arrayinit.element8.i.i193.i, align 4
  %flags13.i.i194.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189.i, i32 1, i32 1
  %186 = ptrtoint ptr %flags13.i.i194.i to i32
  call void @__asan_store2_noabort(i32 %186)
  store i16 1, ptr %flags13.i.i194.i, align 2
  %len14.i.i195.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189.i, i32 1, i32 2
  %187 = ptrtoint ptr %len14.i.i195.i to i32
  call void @__asan_store2_noabort(i32 %187)
  store i16 2, ptr %len14.i.i195.i, align 4
  %buf15.i.i196.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i189.i, i32 1, i32 3
  %188 = ptrtoint ptr %buf15.i.i196.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store ptr %bval.i.i188.i, ptr %buf15.i.i196.i, align 4
  %189 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i198.i = call i32 @i2c_transfer(ptr noundef %190, ptr noundef nonnull %msg.i.i189.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i198.i)
  %cmp.not.i.i199.i = icmp eq i32 %call.i.i198.i, 2
  br i1 %cmp.not.i.i199.i, label %if.end.i.i207.i, label %do.end.i.i201.i

do.end.i.i201.i:                                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i200.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %xc_get_frame_lines.exit.i

if.end.i.i207.i:                                  ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %bval.i.i188.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %bval.i.i188.i, align 2
  %conv21.i.i202.i = zext i8 %192 to i32
  %shl.i.i203.i = shl nuw nsw i32 %conv21.i.i202.i, 8
  %arrayidx22.i.i204.i = getelementptr inbounds [2 x i8], ptr %bval.i.i188.i, i32 0, i32 1
  %193 = ptrtoint ptr %arrayidx22.i.i204.i to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %arrayidx22.i.i204.i, align 1
  %conv23.i.i205.i = zext i8 %194 to i32
  %or.i.i206.i = or i32 %shl.i.i203.i, %conv23.i.i205.i
  br label %xc_get_frame_lines.exit.i

xc_get_frame_lines.exit.i:                        ; preds = %if.end.i.i207.i, %do.end.i.i201.i
  %frame_lines.0.i = phi i32 [ %or.i.i206.i, %if.end.i.i207.i ], [ 65535, %do.end.i.i201.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i189.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i188.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i187.i) #7
  %195 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %cmp52.i = icmp sgt i32 %195, 0
  br i1 %cmp52.i, label %do.end57.i, label %xc_get_frame_lines.exit.i.if.end62.i_crit_edge

xc_get_frame_lines.exit.i.if.end62.i_crit_edge:   ; preds = %xc_get_frame_lines.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62.i

do.end57.i:                                       ; preds = %xc_get_frame_lines.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call60.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.301, ptr noundef nonnull @.str.3, i32 noundef %frame_lines.0.i) #10
  br label %if.end62.i

if.end62.i:                                       ; preds = %do.end57.i, %xc_get_frame_lines.exit.i.if.end62.i_crit_edge, %if.end36.i.if.end62.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i209.i) #7
  %196 = getelementptr inbounds [2 x i8], ptr %buf.i.i209.i, i32 0, i32 1
  %197 = ptrtoint ptr %buf.i.i209.i to i32
  call void @__asan_store1_noabort(i32 %197)
  store i8 0, ptr %buf.i.i209.i, align 1
  %198 = ptrtoint ptr %196 to i32
  call void @__asan_store1_noabort(i32 %198)
  store i8 1, ptr %196, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i210.i) #7
  %199 = ptrtoint ptr %bval.i.i210.i to i32
  call void @__asan_store2_noabort(i32 %199)
  store i16 0, ptr %bval.i.i210.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i211.i) #7
  %200 = getelementptr inbounds i8, ptr %msg.i.i211.i, i32 4
  %201 = call ptr @memset(ptr %200, i32 255, i32 16)
  %202 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %priv, align 8
  %conv6.i.i212.i = zext i8 %203 to i16
  %204 = ptrtoint ptr %msg.i.i211.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv6.i.i212.i, ptr %msg.i.i211.i, align 4
  %flags.i.i213.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i, i32 0, i32 1
  %205 = ptrtoint ptr %flags.i.i213.i to i32
  call void @__asan_store2_noabort(i32 %205)
  store i16 0, ptr %flags.i.i213.i, align 2
  %206 = ptrtoint ptr %200 to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 2, ptr %200, align 4
  %buf7.i.i214.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i, i32 0, i32 3
  %207 = ptrtoint ptr %buf7.i.i214.i to i32
  call void @__asan_store4_noabort(i32 %207)
  store ptr %buf.i.i209.i, ptr %buf7.i.i214.i, align 4
  %arrayinit.element8.i.i215.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i, i32 1
  %208 = ptrtoint ptr %arrayinit.element8.i.i215.i to i32
  call void @__asan_store2_noabort(i32 %208)
  store i16 %conv6.i.i212.i, ptr %arrayinit.element8.i.i215.i, align 4
  %flags13.i.i216.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i, i32 1, i32 1
  %209 = ptrtoint ptr %flags13.i.i216.i to i32
  call void @__asan_store2_noabort(i32 %209)
  store i16 1, ptr %flags13.i.i216.i, align 2
  %len14.i.i217.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i, i32 1, i32 2
  %210 = ptrtoint ptr %len14.i.i217.i to i32
  call void @__asan_store2_noabort(i32 %210)
  store i16 2, ptr %len14.i.i217.i, align 4
  %buf15.i.i218.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i211.i, i32 1, i32 3
  %211 = ptrtoint ptr %buf15.i.i218.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store ptr %bval.i.i210.i, ptr %buf15.i.i218.i, align 4
  %212 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i220.i = call i32 @i2c_transfer(ptr noundef %213, ptr noundef nonnull %msg.i.i211.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i220.i)
  %cmp.not.i.i221.i = icmp eq i32 %call.i.i220.i, 2
  br i1 %cmp.not.i.i221.i, label %if.end.i.i229.i, label %do.end.i.i223.i

do.end.i.i223.i:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i222.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %xc_get_quality.exit.i

if.end.i.i229.i:                                  ; preds = %if.end62.i
  call void @__sanitizer_cov_trace_pc() #9
  %214 = ptrtoint ptr %bval.i.i210.i to i32
  call void @__asan_load1_noabort(i32 %214)
  %215 = load i8, ptr %bval.i.i210.i, align 2
  %conv21.i.i224.i = zext i8 %215 to i32
  %shl.i.i225.i = shl nuw nsw i32 %conv21.i.i224.i, 8
  %arrayidx22.i.i226.i = getelementptr inbounds [2 x i8], ptr %bval.i.i210.i, i32 0, i32 1
  %216 = ptrtoint ptr %arrayidx22.i.i226.i to i32
  call void @__asan_load1_noabort(i32 %216)
  %217 = load i8, ptr %arrayidx22.i.i226.i, align 1
  %conv23.i.i227.i = zext i8 %217 to i32
  %or.i.i228.i = or i32 %shl.i.i225.i, %conv23.i.i227.i
  br label %xc_get_quality.exit.i

xc_get_quality.exit.i:                            ; preds = %if.end.i.i229.i, %do.end.i.i223.i
  %quality.0.i = phi i32 [ %or.i.i228.i, %if.end.i.i229.i ], [ 65535, %do.end.i.i223.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i211.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i210.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i209.i) #7
  %218 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %218)
  %cmp64.i = icmp sgt i32 %218, 0
  br i1 %cmp64.i, label %do.end69.i, label %xc_get_quality.exit.i.if.end73.i_crit_edge

xc_get_quality.exit.i.if.end73.i_crit_edge:       ; preds = %xc_get_quality.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end73.i

do.end69.i:                                       ; preds = %xc_get_quality.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %call72.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.304, ptr noundef nonnull @.str.3, i32 noundef %quality.0.i) #10
  br label %if.end73.i

if.end73.i:                                       ; preds = %do.end69.i, %xc_get_quality.exit.i.if.end73.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i231.i) #7
  %219 = getelementptr inbounds [2 x i8], ptr %buf.i.i231.i, i32 0, i32 1
  %220 = ptrtoint ptr %buf.i.i231.i to i32
  call void @__asan_store1_noabort(i32 %220)
  store i8 0, ptr %buf.i.i231.i, align 1
  %221 = ptrtoint ptr %219 to i32
  call void @__asan_store1_noabort(i32 %221)
  store i8 10, ptr %219, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i232.i) #7
  %222 = ptrtoint ptr %bval.i.i232.i to i32
  call void @__asan_store2_noabort(i32 %222)
  store i16 0, ptr %bval.i.i232.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i233.i) #7
  %223 = getelementptr inbounds i8, ptr %msg.i.i233.i, i32 4
  %224 = call ptr @memset(ptr %223, i32 255, i32 16)
  %225 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %225)
  %226 = load i8, ptr %priv, align 8
  %conv6.i.i234.i = zext i8 %226 to i16
  %227 = ptrtoint ptr %msg.i.i233.i to i32
  call void @__asan_store2_noabort(i32 %227)
  store i16 %conv6.i.i234.i, ptr %msg.i.i233.i, align 4
  %flags.i.i235.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i233.i, i32 0, i32 1
  %228 = ptrtoint ptr %flags.i.i235.i to i32
  call void @__asan_store2_noabort(i32 %228)
  store i16 0, ptr %flags.i.i235.i, align 2
  %229 = ptrtoint ptr %223 to i32
  call void @__asan_store2_noabort(i32 %229)
  store i16 2, ptr %223, align 4
  %buf7.i.i236.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i233.i, i32 0, i32 3
  %230 = ptrtoint ptr %buf7.i.i236.i to i32
  call void @__asan_store4_noabort(i32 %230)
  store ptr %buf.i.i231.i, ptr %buf7.i.i236.i, align 4
  %arrayinit.element8.i.i237.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i233.i, i32 1
  %231 = ptrtoint ptr %arrayinit.element8.i.i237.i to i32
  call void @__asan_store2_noabort(i32 %231)
  store i16 %conv6.i.i234.i, ptr %arrayinit.element8.i.i237.i, align 4
  %flags13.i.i238.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i233.i, i32 1, i32 1
  %232 = ptrtoint ptr %flags13.i.i238.i to i32
  call void @__asan_store2_noabort(i32 %232)
  store i16 1, ptr %flags13.i.i238.i, align 2
  %len14.i.i239.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i233.i, i32 1, i32 2
  %233 = ptrtoint ptr %len14.i.i239.i to i32
  call void @__asan_store2_noabort(i32 %233)
  store i16 2, ptr %len14.i.i239.i, align 4
  %buf15.i.i240.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i233.i, i32 1, i32 3
  %234 = ptrtoint ptr %buf15.i.i240.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr %bval.i.i232.i, ptr %buf15.i.i240.i, align 4
  %235 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i242.i = call i32 @i2c_transfer(ptr noundef %236, ptr noundef nonnull %msg.i.i233.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i242.i)
  %cmp.not.i.i243.i = icmp eq i32 %call.i.i242.i, 2
  br i1 %cmp.not.i.i243.i, label %if.end.i.i251.i, label %do.end.i.i245.i

do.end.i.i245.i:                                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i244.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %xc_get_signal_level.exit.i

if.end.i.i251.i:                                  ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %237 = ptrtoint ptr %bval.i.i232.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %bval.i.i232.i, align 2
  %conv21.i.i246.i = zext i8 %238 to i32
  %shl.i.i247.i = shl nuw nsw i32 %conv21.i.i246.i, 8
  %arrayidx22.i.i248.i = getelementptr inbounds [2 x i8], ptr %bval.i.i232.i, i32 0, i32 1
  %239 = ptrtoint ptr %arrayidx22.i.i248.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %arrayidx22.i.i248.i, align 1
  %conv23.i.i249.i = zext i8 %240 to i32
  %or.i.i250.i = or i32 %shl.i.i247.i, %conv23.i.i249.i
  br label %xc_get_signal_level.exit.i

xc_get_signal_level.exit.i:                       ; preds = %if.end.i.i251.i, %do.end.i.i245.i
  %signal.0.i = phi i32 [ %or.i.i250.i, %if.end.i.i251.i ], [ 0, %do.end.i.i245.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i233.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i232.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i231.i) #7
  %241 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %cmp75.i = icmp sgt i32 %241, 0
  br i1 %cmp75.i, label %do.end80.i, label %xc_get_signal_level.exit.i.if.end85.i_crit_edge

xc_get_signal_level.exit.i.if.end85.i_crit_edge:  ; preds = %xc_get_signal_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85.i

do.end80.i:                                       ; preds = %xc_get_signal_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %242 = lshr i32 %signal.0.i, 8
  %call84.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.307, ptr noundef nonnull @.str.3, i32 noundef %242, i32 noundef %signal.0.i) #10
  br label %if.end85.i

if.end85.i:                                       ; preds = %do.end80.i, %xc_get_signal_level.exit.i.if.end85.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf.i.i253.i) #7
  %243 = getelementptr inbounds [2 x i8], ptr %buf.i.i253.i, i32 0, i32 1
  %244 = ptrtoint ptr %buf.i.i253.i to i32
  call void @__asan_store1_noabort(i32 %244)
  store i8 0, ptr %buf.i.i253.i, align 1
  %245 = ptrtoint ptr %243 to i32
  call void @__asan_store1_noabort(i32 %245)
  store i8 11, ptr %243, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %bval.i.i254.i) #7
  %246 = ptrtoint ptr %bval.i.i254.i to i32
  call void @__asan_store2_noabort(i32 %246)
  store i16 0, ptr %bval.i.i254.i, align 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i.i255.i) #7
  %247 = getelementptr inbounds i8, ptr %msg.i.i255.i, i32 4
  %248 = call ptr @memset(ptr %247, i32 255, i32 16)
  %249 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %priv, align 8
  %conv6.i.i256.i = zext i8 %250 to i16
  %251 = ptrtoint ptr %msg.i.i255.i to i32
  call void @__asan_store2_noabort(i32 %251)
  store i16 %conv6.i.i256.i, ptr %msg.i.i255.i, align 4
  %flags.i.i257.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i255.i, i32 0, i32 1
  %252 = ptrtoint ptr %flags.i.i257.i to i32
  call void @__asan_store2_noabort(i32 %252)
  store i16 0, ptr %flags.i.i257.i, align 2
  %253 = ptrtoint ptr %247 to i32
  call void @__asan_store2_noabort(i32 %253)
  store i16 2, ptr %247, align 4
  %buf7.i.i258.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i255.i, i32 0, i32 3
  %254 = ptrtoint ptr %buf7.i.i258.i to i32
  call void @__asan_store4_noabort(i32 %254)
  store ptr %buf.i.i253.i, ptr %buf7.i.i258.i, align 4
  %arrayinit.element8.i.i259.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i255.i, i32 1
  %255 = ptrtoint ptr %arrayinit.element8.i.i259.i to i32
  call void @__asan_store2_noabort(i32 %255)
  store i16 %conv6.i.i256.i, ptr %arrayinit.element8.i.i259.i, align 4
  %flags13.i.i260.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i255.i, i32 1, i32 1
  %256 = ptrtoint ptr %flags13.i.i260.i to i32
  call void @__asan_store2_noabort(i32 %256)
  store i16 1, ptr %flags13.i.i260.i, align 2
  %len14.i.i261.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i255.i, i32 1, i32 2
  %257 = ptrtoint ptr %len14.i.i261.i to i32
  call void @__asan_store2_noabort(i32 %257)
  store i16 2, ptr %len14.i.i261.i, align 4
  %buf15.i.i262.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i255.i, i32 1, i32 3
  %258 = ptrtoint ptr %buf15.i.i262.i to i32
  call void @__asan_store4_noabort(i32 %258)
  store ptr %bval.i.i254.i, ptr %buf15.i.i262.i, align 4
  %259 = ptrtoint ptr %adap.i.i.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %adap.i.i.i, align 4
  %call.i.i264.i = call i32 @i2c_transfer(ptr noundef %260, ptr noundef nonnull %msg.i.i255.i, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i.i264.i)
  %cmp.not.i.i265.i = icmp eq i32 %call.i.i264.i, 2
  br i1 %cmp.not.i.i265.i, label %if.end.i.i273.i, label %do.end.i.i267.i

do.end.i.i267.i:                                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i266.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27) #10
  br label %xc_get_noise_level.exit.i

if.end.i.i273.i:                                  ; preds = %if.end85.i
  call void @__sanitizer_cov_trace_pc() #9
  %261 = ptrtoint ptr %bval.i.i254.i to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %bval.i.i254.i, align 2
  %conv21.i.i268.i = zext i8 %262 to i32
  %shl.i.i269.i = shl nuw nsw i32 %conv21.i.i268.i, 8
  %arrayidx22.i.i270.i = getelementptr inbounds [2 x i8], ptr %bval.i.i254.i, i32 0, i32 1
  %263 = ptrtoint ptr %arrayidx22.i.i270.i to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %arrayidx22.i.i270.i, align 1
  %conv23.i.i271.i = zext i8 %264 to i32
  %or.i.i272.i = or i32 %shl.i.i269.i, %conv23.i.i271.i
  br label %xc_get_noise_level.exit.i

xc_get_noise_level.exit.i:                        ; preds = %if.end.i.i273.i, %do.end.i.i267.i
  %noise.0.i = phi i32 [ %or.i.i272.i, %if.end.i.i273.i ], [ 0, %do.end.i.i267.i ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i.i255.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %bval.i.i254.i) #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf.i.i253.i) #7
  %265 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %265)
  %cmp87.i = icmp sgt i32 %265, 0
  br i1 %cmp87.i, label %do.end92.i, label %xc_get_noise_level.exit.i.cleanup_crit_edge

xc_get_noise_level.exit.i.cleanup_crit_edge:      ; preds = %xc_get_noise_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end92.i:                                       ; preds = %xc_get_noise_level.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %266 = lshr i32 %noise.0.i, 8
  %call97.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.310, ptr noundef nonnull @.str.3, i32 noundef %266, i32 noundef %noise.0.i) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end92.i, %xc_get_noise_level.exit.i.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %xc_set_rf_frequency.exit, %xc_set_rf_frequency.exit.thread
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_firm_type_and_int_freq(i32 noundef %type, i16 noundef zeroext %int_freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and1 = and i32 %type, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %do.end5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #10
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end.if.end8_crit_edge
  %and9 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %do.end13

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #10
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end8.if.end16_crit_edge
  %and17 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %do.end21

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end24

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #10
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end16.if.end24_crit_edge
  %and25 = and i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %do.end29

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #10
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end24.if.end32_crit_edge
  %and33 = and i32 %type, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end40_crit_edge, label %do.end37

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #10
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end32.if.end40_crit_edge
  %and41 = and i32 %type, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %do.end45

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #10
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end40.if.end48_crit_edge
  %and49 = and i32 %type, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end56_crit_edge, label %do.end53

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #10
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %if.end48.if.end56_crit_edge
  %and57 = and i32 %type, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end64_crit_edge, label %do.end61

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end64

do.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #10
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end56.if.end64_crit_edge
  %and65 = and i32 %type, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end72_crit_edge, label %do.end69

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

do.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #9
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #10
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end64.if.end72_crit_edge
  %and73 = and i32 %type, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end80_crit_edge, label %do.end77

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end80

do.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #10
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.end72.if.end80_crit_edge
  %and81 = and i32 %type, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end88_crit_edge, label %do.end85

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

do.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #10
  br label %if.end88

if.end88:                                         ; preds = %do.end85, %if.end80.if.end88_crit_edge
  %and89 = and i32 %type, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end96_crit_edge, label %do.end93

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end96

do.end93:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #10
  br label %if.end96

if.end96:                                         ; preds = %do.end93, %if.end88.if.end96_crit_edge
  %and97 = and i32 %type, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end104_crit_edge, label %do.end101

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

do.end101:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #9
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #10
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %if.end96.if.end104_crit_edge
  %and105 = and i32 %type, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end112_crit_edge, label %do.end109

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

do.end109:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #9
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #10
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.end104.if.end112_crit_edge
  %and113 = and i32 %type, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end120_crit_edge, label %do.end117

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end120

do.end117:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #10
  br label %if.end120

if.end120:                                        ; preds = %do.end117, %if.end112.if.end120_crit_edge
  %and121 = and i32 %type, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end128_crit_edge, label %do.end125

if.end120.if.end128_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end128

do.end125:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #9
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #10
  br label %if.end128

if.end128:                                        ; preds = %do.end125, %if.end120.if.end128_crit_edge
  %and129 = and i32 %type, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end136_crit_edge, label %do.end133

if.end128.if.end136_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

do.end133:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #9
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #10
  br label %if.end136

if.end136:                                        ; preds = %do.end133, %if.end128.if.end136_crit_edge
  %and137 = and i32 %type, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end144_crit_edge, label %do.end141

if.end136.if.end144_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end144

do.end141:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #10
  br label %if.end144

if.end144:                                        ; preds = %do.end141, %if.end136.if.end144_crit_edge
  %and145 = and i32 %type, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end144.if.end152_crit_edge, label %do.end149

if.end144.if.end152_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end152

do.end149:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #9
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #10
  br label %if.end152

if.end152:                                        ; preds = %do.end149, %if.end144.if.end152_crit_edge
  %and153 = and i32 %type, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end152.if.end160_crit_edge, label %do.end157

if.end152.if.end160_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end160

do.end157:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #10
  br label %if.end160

if.end160:                                        ; preds = %do.end157, %if.end152.if.end160_crit_edge
  %and161 = and i32 %type, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end160.if.end168_crit_edge, label %do.end165

if.end160.if.end168_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end168

do.end165:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #9
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184) #10
  br label %if.end168

if.end168:                                        ; preds = %do.end165, %if.end160.if.end168_crit_edge
  %and169 = and i32 %type, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end168.if.end176_crit_edge, label %do.end173

if.end168.if.end176_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

do.end173:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #9
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #10
  br label %if.end176

if.end176:                                        ; preds = %do.end173, %if.end168.if.end176_crit_edge
  %and177 = and i32 %type, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.end176.if.end184_crit_edge, label %do.end181

if.end176.if.end184_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end184

do.end181:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #10
  br label %if.end184

if.end184:                                        ; preds = %do.end181, %if.end176.if.end184_crit_edge
  %and185 = and i32 %type, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end184.if.end192_crit_edge, label %do.end189

if.end184.if.end192_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end192

do.end189:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #9
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #10
  br label %if.end192

if.end192:                                        ; preds = %do.end189, %if.end184.if.end192_crit_edge
  %and193 = and i32 %type, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end192.if.end200_crit_edge, label %do.end197

if.end192.if.end200_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end200

do.end197:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #9
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #10
  br label %if.end200

if.end200:                                        ; preds = %do.end197, %if.end192.if.end200_crit_edge
  %and201 = and i32 %type, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end200.if.end208_crit_edge, label %do.end205

if.end200.if.end208_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end208

do.end205:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #9
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #10
  br label %if.end208

if.end208:                                        ; preds = %do.end205, %if.end200.if.end208_crit_edge
  %and209 = and i32 %type, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end208.if.end216_crit_edge, label %do.end213

if.end208.if.end216_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end216

do.end213:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202) #10
  br label %if.end216

if.end216:                                        ; preds = %do.end213, %if.end208.if.end216_crit_edge
  %and217 = and i32 %type, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end216.if.end224_crit_edge, label %do.end221

if.end216.if.end224_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end224

do.end221:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #9
  %call223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.205) #10
  br label %if.end224

if.end224:                                        ; preds = %do.end221, %if.end216.if.end224_crit_edge
  %and225 = and i32 %type, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.if.end232_crit_edge, label %do.end229

if.end224.if.end232_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end232

do.end229:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #9
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.208) #10
  br label %if.end232

if.end232:                                        ; preds = %do.end229, %if.end224.if.end232_crit_edge
  %and233 = and i32 %type, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.end232.if.end240_crit_edge, label %do.end237

if.end232.if.end240_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end240

do.end237:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #9
  %conv = zext i16 %int_freq to i32
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.211, i32 noundef %conv) #10
  br label %if.end240

if.end240:                                        ; preds = %do.end237, %if.end232.if.end240_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr nocapture noundef readonly %fe, i32 noundef %type, ptr nocapture noundef %id) unnamed_addr #0 align 64 {
entry:
  %msg.i.i = alloca %struct.i2c_msg, align 4
  %buf.i = alloca [64 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %call = tail call fastcc i32 @seek_firmware(ptr noundef %fe, i32 noundef %type, ptr noundef %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %firm = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firm, align 8
  %ptr = getelementptr %struct.firmware_description, ptr %3, i32 %call, i32 3
  %4 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ptr, align 4
  %ignore_i2c_write_errors = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 13
  %6 = ptrtoint ptr %ignore_i2c_write_errors to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ignore_i2c_write_errors, align 1
  %7 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %buf.i) #7
  %9 = call ptr @memset(ptr %buf.i, i32 255, i32 64)
  %arrayidx24.i = getelementptr inbounds [64 x i8], ptr %buf.i, i32 0, i32 1
  %10 = getelementptr inbounds i8, ptr %msg.i.i, i32 4
  %flags.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 1
  %buf4.i.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i.i, i32 0, i32 3
  %adap.i.i = getelementptr inbounds %struct.tuner_i2c_props, ptr %8, i32 0, i32 1
  %ignore_i2c_write_errors.i.i = getelementptr inbounds %struct.xc4000_priv, ptr %8, i32 0, i32 13
  %uglygep.i = getelementptr inbounds i8, ptr %buf.i, i32 2
  %uglygep99.i = getelementptr i8, ptr %5, i32 2
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i.backedge, %if.end
  %index.0.i = phi i32 [ 0, %if.end ], [ %index.0.i.be, %while.cond.i.backedge ]
  %arrayidx.i = getelementptr i8, ptr %5, i32 %index.0.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %12)
  %cmp.not.i = icmp eq i8 %12, -1
  %add.i = add i32 %index.0.i, 1
  br i1 %cmp.not.i, label %lor.rhs.i, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

lor.rhs.i:                                        ; preds = %while.cond.i
  %arrayidx2.i = getelementptr i8, ptr %5, i32 %add.i
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %14)
  %cmp4.not.i = icmp eq i8 %14, -1
  br i1 %cmp4.not.i, label %lor.rhs.i.xc_load_i2c_sequence.exit_crit_edge, label %lor.rhs.i.while.body.i_crit_edge

lor.rhs.i.while.body.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

lor.rhs.i.xc_load_i2c_sequence.exit_crit_edge:    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_load_i2c_sequence.exit

while.body.i:                                     ; preds = %lor.rhs.i.while.body.i_crit_edge, %while.cond.i.while.body.i_crit_edge
  %conv7.i = zext i8 %12 to i32
  %mul.i = shl nuw nsw i32 %conv7.i, 8
  %arrayidx9.i = getelementptr i8, ptr %5, i32 %add.i
  %15 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx9.i, align 1
  %conv10.i = zext i8 %16 to i32
  %add11.i = or i32 %mul.i, %conv10.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add11.i)
  %cmp12.i = icmp eq i32 %add11.i, 0
  br i1 %cmp12.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add14.i = add i32 %index.0.i, 2
  br label %while.cond.i.backedge

if.else.i:                                        ; preds = %while.body.i
  %17 = and i32 %conv7.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i, label %if.else18.i, label %if.then15.i

if.then15.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %and16.i = and i32 %add11.i, 32767
  call void @msleep(i32 noundef %and16.i) #7
  %add17.i = add i32 %index.0.i, 2
  br label %while.cond.i.backedge

if.else18.i:                                      ; preds = %if.else.i
  %add19.i = add i32 %index.0.i, 2
  %arrayidx20.i = getelementptr i8, ptr %5, i32 %add19.i
  %18 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx20.i, align 1
  %20 = ptrtoint ptr %buf.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %buf.i, align 1
  %add22.i = add i32 %index.0.i, 3
  %arrayidx23.i = getelementptr i8, ptr %5, i32 %add22.i
  %21 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx23.i, align 1
  %23 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %arrayidx24.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add11.i)
  %cmp2695.i = icmp ugt i32 %add11.i, 2
  br i1 %cmp2695.i, label %while.body28.preheader.i, label %if.else18.i.while.end.i_crit_edge

if.else18.i.while.end.i_crit_edge:                ; preds = %if.else18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

while.body28.preheader.i:                         ; preds = %if.else18.i
  %uglygep100.i = getelementptr i8, ptr %uglygep99.i, i32 %index.0.i
  br label %while.body28.i

while.body28.i:                                   ; preds = %if.end45.i.while.body28.i_crit_edge, %while.body28.preheader.i
  %pos.096.i = phi i32 [ %add47.i, %if.end45.i.while.body28.i_crit_edge ], [ 2, %while.body28.preheader.i ]
  %sub.i = sub i32 %add11.i, %pos.096.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %sub.i)
  %cmp29.i = icmp ugt i32 %sub.i, 62
  %add34.i = add i32 %sub.i, 2
  %nbytes_to_send.0.i = select i1 %cmp29.i, i32 64, i32 %add34.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %nbytes_to_send.0.i)
  %cmp3593.i = icmp ugt i32 %nbytes_to_send.0.i, 2
  br i1 %cmp3593.i, label %for.body.lr.ph.i, label %while.body28.i.for.end.i_crit_edge

while.body28.i.for.end.i_crit_edge:               ; preds = %while.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body28.i
  call void @__sanitizer_cov_trace_pc() #9
  %uglygep101.i = getelementptr i8, ptr %uglygep100.i, i32 %pos.096.i
  %umin.i = call i32 @llvm.umin.i32(i32 %sub.i, i32 62) #7
  %24 = call ptr @memcpy(ptr %uglygep.i, ptr %uglygep101.i, i32 %umin.i)
  br label %for.end.i

for.end.i:                                        ; preds = %for.body.lr.ph.i, %while.body28.i.for.end.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i.i) #7
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %10, align 4
  %26 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %8, align 8
  %conv.i.i = zext i8 %27 to i16
  %28 = ptrtoint ptr %msg.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %conv.i.i, ptr %msg.i.i, align 4
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 0, ptr %flags.i.i, align 2
  %conv3.i.i = trunc i32 %nbytes_to_send.0.i to i16
  store i16 %conv3.i.i, ptr %10, align 4
  %30 = ptrtoint ptr %buf4.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %buf.i, ptr %buf4.i.i, align 4
  %31 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap.i.i, align 4
  %call.i.i = call i32 @i2c_transfer(ptr noundef %32, ptr noundef nonnull %msg.i.i, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i.i)
  %cmp.not.i.i = icmp eq i32 %call.i.i, 1
  br i1 %cmp.not.i.i, label %for.end.i.if.end45.i_crit_edge, label %if.then.i.i

for.end.i.if.end45.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

if.then.i.i:                                      ; preds = %for.end.i
  %33 = ptrtoint ptr %ignore_i2c_write_errors.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %ignore_i2c_write_errors.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %cmp8.i.i = icmp eq i8 %34, 0
  br i1 %cmp8.i.i, label %do.end.i.i, label %if.then.i.i.if.end45.i_crit_edge

if.then.i.i.if.end45.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.i

do.end.i.i:                                       ; preds = %if.then.i.i
  %call11.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, i32 noundef %nbytes_to_send.0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %nbytes_to_send.0.i)
  %cmp12.i.i = icmp eq i32 %nbytes_to_send.0.i, 4
  br i1 %cmp12.i.i, label %do.end17.i.i, label %do.end.i.i.xc_send_i2c_data.exit.i_crit_edge

do.end.i.i.xc_send_i2c_data.exit.i_crit_edge:     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %xc_send_i2c_data.exit.i

do.end17.i.i:                                     ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call19.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.38, i32 noundef 4, ptr noundef nonnull %buf.i) #10
  br label %xc_send_i2c_data.exit.i

xc_send_i2c_data.exit.i:                          ; preds = %do.end17.i.i, %do.end.i.i.xc_send_i2c_data.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  br label %xc_load_i2c_sequence.exit

if.end45.i:                                       ; preds = %if.then.i.i.if.end45.i_crit_edge, %for.end.i.if.end45.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i.i) #7
  %sub46.i = add i32 %pos.096.i, -2
  %add47.i = add i32 %sub46.i, %nbytes_to_send.0.i
  %cmp26.i = icmp ugt i32 %add11.i, %add47.i
  br i1 %cmp26.i, label %if.end45.i.while.body28.i_crit_edge, label %if.end45.i.while.end.i_crit_edge

if.end45.i.while.end.i_crit_edge:                 ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end.i

if.end45.i.while.body28.i_crit_edge:              ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body28.i

while.end.i:                                      ; preds = %if.end45.i.while.end.i_crit_edge, %if.else18.i.while.end.i_crit_edge
  %add48.i = add i32 %add11.i, %add19.i
  br label %while.cond.i.backedge

while.cond.i.backedge:                            ; preds = %while.end.i, %if.then15.i, %if.then.i
  %index.0.i.be = phi i32 [ %add14.i, %if.then.i ], [ %add17.i, %if.then15.i ], [ %add48.i, %while.end.i ]
  br label %while.cond.i

xc_load_i2c_sequence.exit:                        ; preds = %xc_send_i2c_data.exit.i, %lor.rhs.i.xc_load_i2c_sequence.exit_crit_edge
  %retval.0.i = phi i32 [ -121, %xc_send_i2c_data.exit.i ], [ 0, %lor.rhs.i.xc_load_i2c_sequence.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %buf.i) #7
  %35 = ptrtoint ptr %ignore_i2c_write_errors to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %ignore_i2c_write_errors, align 1
  br label %cleanup

cleanup:                                          ; preds = %xc_load_i2c_sequence.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %xc_load_i2c_sequence.exit ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seek_firmware(ptr nocapture noundef readonly %fe, i32 noundef %type, ptr nocapture noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %firm = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %firm, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220) #10
  br label %cleanup889

if.end:                                           ; preds = %entry
  %and = and i32 %type, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

land.lhs.true:                                    ; preds = %if.end
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp1 = icmp eq i64 %5, 0
  br i1 %cmp1, label %if.then2, label %land.lhs.true.if.end3_crit_edge

land.lhs.true.if.end3_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end3

if.then2:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 255, ptr %id, align 8
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %land.lhs.true.if.end3_crit_edge, %if.end.if.end3_crit_edge
  %firm_size = getelementptr inbounds %struct.xc4000_priv, ptr %1, i32 0, i32 3
  %7 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %firm_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp41084 = icmp sgt i32 %8, 0
  br i1 %cmp41084, label %if.end3.for.body_crit_edge, label %if.end3.ret_crit_edge

if.end3.ret_crit_edge:                            ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.01087 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %best_i.01086 = phi i32 [ %best_i.2.ph, %for.inc.for.body_crit_edge ], [ -1, %if.end3.for.body_crit_edge ]
  %best_nr_diffs.01085 = phi i32 [ %best_nr_diffs.2.ph, %for.inc.for.body_crit_edge ], [ 255, %if.end3.for.body_crit_edge ]
  %9 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %firm, align 8
  %arrayidx = getelementptr %struct.firmware_description, ptr %10, i32 %i.01087
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 8
  %xor11 = xor i32 %12, %type
  %and13 = and i32 %xor11, 536889249
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %cond.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

cond.false:                                       ; preds = %for.body
  %and12 = and i32 %xor11, 805437439
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %id, align 8
  %id6 = getelementptr %struct.firmware_description, ptr %10, i32 %i.01087, i32 1
  %15 = ptrtoint ptr %id6 to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %id6, align 8
  %17 = xor i64 %16, -1
  %and7 = and i64 %14, %17
  %call.i = tail call i32 @__sw_hweight64(i64 noundef %and7) #7
  %call.i1075 = tail call i32 @__sw_hweight32(i32 noundef %and12) #7
  %add847 = add i32 %call.i1075, %call.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add847)
  %tobool848.not = icmp eq i32 %add847, 0
  br i1 %tobool848.not, label %cond.false.found_crit_edge, label %if.end850

cond.false.found_crit_edge:                       ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %found

if.end850:                                        ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %add847, i32 %best_nr_diffs.01085)
  %cmp851 = icmp ult i32 %add847, %best_nr_diffs.01085
  %18 = tail call i32 @llvm.umin.i32(i32 %add847, i32 %best_nr_diffs.01085)
  %spec.select1074 = select i1 %cmp851, i32 %i.01087, i32 %best_i.01086
  br label %for.inc

for.inc:                                          ; preds = %if.end850, %for.body.for.inc_crit_edge
  %best_nr_diffs.2.ph = phi i32 [ %best_nr_diffs.01085, %for.body.for.inc_crit_edge ], [ %18, %if.end850 ]
  %best_i.2.ph = phi i32 [ %best_i.01086, %for.body.for.inc_crit_edge ], [ %spec.select1074, %if.end850 ]
  %inc = add nuw nsw i32 %i.01087, 1
  %19 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %firm_size, align 4
  %cmp4 = icmp slt i32 %inc, %20
  br i1 %cmp4, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_i.2.ph)
  %cmp857 = icmp slt i32 %best_i.2.ph, 0
  br i1 %cmp857, label %for.end.ret_crit_edge, label %do.end866

for.end.ret_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

do.end866:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %id, align 8
  %call868 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, i32 noundef %best_nr_diffs.2.ph, i32 noundef %type, i64 noundef %22) #10
  br label %found

found:                                            ; preds = %do.end866, %cond.false.found_crit_edge
  %i.1 = phi i32 [ %best_i.2.ph, %do.end866 ], [ %i.01087, %cond.false.found_crit_edge ]
  %23 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %firm, align 8
  %id872 = getelementptr %struct.firmware_description, ptr %24, i32 %i.1, i32 1
  %25 = ptrtoint ptr %id872 to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %id872, align 8
  %27 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %26, ptr %id, align 8
  br label %ret

ret:                                              ; preds = %found, %for.end.ret_crit_edge, %if.end3.ret_crit_edge
  %i.2 = phi i32 [ %i.1, %found ], [ -2, %for.end.ret_crit_edge ], [ -2, %if.end3.ret_crit_edge ]
  %28 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool873.not = icmp eq i32 %28, 0
  br i1 %tobool873.not, label %ret.cleanup889_crit_edge, label %do.end877

ret.cleanup889_crit_edge:                         ; preds = %ret
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup889

do.end877:                                        ; preds = %ret
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.2)
  %cmp879 = icmp slt i32 %i.2, 0
  %cond881 = select i1 %cmp879, ptr @.str.228, ptr @.str.229
  %call882 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.226, ptr noundef nonnull %cond881) #10
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %type, i16 noundef zeroext 0)
  %29 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %id, align 8
  %call887 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, i32 noundef %type, i64 noundef %30) #10
  br label %cleanup889

cleanup889:                                       ; preds = %do.end877, %ret.cleanup889_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %i.2, %do.end877 ], [ %i.2, %ret.cleanup889_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight32(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 316)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 316)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !27, !29, !30, !31, !32, !33, !34, !36, !37, !39, !40, !41, !43, !44, !45, !47, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !64, !65, !67, !69, !71, !73, !75, !76, !77, !78, !79, !80, !82, !84, !85, !86, !88, !90, !91, !92, !93, !95, !97, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !113, !115, !116, !117, !119, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !159, !161, !162, !163, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178, !179, !181, !182, !183, !185, !186, !187, !189, !190, !191, !193, !194, !195, !197, !198, !199, !201, !202, !203, !205, !206, !207, !209, !210, !211, !213, !214, !216, !217, !218, !220, !221, !222, !224, !225, !226, !228, !229, !230, !232, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !367, !369, !370, !371, !372, !374, !375, !376, !378, !379, !380, !381, !382, !384, !385, !386, !388, !389, !390, !391, !393, !394, !395, !397, !398, !399, !401, !402, !403, !405, !406, !407, !409, !410, !411, !412, !413, !414, !416, !417, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !471, !472, !473, !475, !476, !477, !479, !480, !481, !482, !484, !485, !486, !488, !489, !490, !491, !493, !494, !495, !497, !498, !499, !501, !502, !503, !505, !506, !507, !509, !510, !511, !513, !514, !515, !517, !518, !519, !521, !522, !523, !525, !526, !527, !528, !530, !531, !532, !534, !535, !537, !538, !540, !541, !543, !544, !545, !546, !548, !549, !551, !552, !553, !555, !556, !557, !558, !560, !561, !562, !563, !565, !566, !567, !569, !570, !571, !572, !574, !576, !577, !578, !580, !582, !583, !585, !586, !587, !589, !590, !591, !593, !594, !595, !597, !598, !599, !601, !602, !603, !605, !606, !607, !609, !610, !611, !613, !614, !615, !617, !618, !620, !621, !622, !624, !625, !626, !628, !629, !630, !632, !633, !634, !636, !637, !638, !640, !641, !642, !644, !645, !646, !648, !649}
!llvm.module.flags = !{!650, !651, !652, !653, !654, !655, !656, !657}
!llvm.ident = !{!658}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/xc4000.c", i32 28, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype290, !1, !"__UNIQUE_ID_debugtype290", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug291, !4, !"__UNIQUE_ID_debug291", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/xc4000.c", i32 29, i32 1}
!5 = !{ptr @__param_no_poweroff, !6, !"__param_no_poweroff", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/xc4000.c", i32 32, i32 1}
!7 = !{ptr @__UNIQUE_ID_no_powerofftype292, !6, !"__UNIQUE_ID_no_powerofftype292", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_no_poweroff293, !9, !"__UNIQUE_ID_no_poweroff293", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/xc4000.c", i32 33, i32 1}
!10 = !{ptr @__param_audio_std, !11, !"__param_audio_std", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/xc4000.c", i32 36, i32 1}
!12 = !{ptr @__UNIQUE_ID_audio_stdtype294, !11, !"__UNIQUE_ID_audio_stdtype294", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_audio_std295, !14, !"__UNIQUE_ID_audio_std295", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/xc4000.c", i32 37, i32 1}
!15 = !{ptr @__param_firmware_name, !16, !"__param_firmware_name", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/xc4000.c", i32 46, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware_nametype296, !16, !"__UNIQUE_ID_firmware_nametype296", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_firmware_name297, !19, !"__UNIQUE_ID_firmware_name297", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/xc4000.c", i32 47, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/xc4000.c", i32 1654, i32 2}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xc4000_attach._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @xc4000_attach._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/tuners/xc4000.c", i32 1660, i32 13}
!29 = !{ptr @xc4000_attach._entry.4, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @xc4000_attach._entry_ptr.6, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xc4000_attach._entry.7, !28, !"_entry", i1 false, i1 false}
!33 = !{ptr @xc4000_attach._entry_ptr.9, !28, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @xc4000_attach.__key, !35, !"__key", i1 false, i1 false}
!35 = !{!"../drivers/media/tuners/xc4000.c", i32 1674, i32 3}
!36 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/media/tuners/xc4000.c", i32 1706, i32 3}
!39 = !{ptr @xc4000_attach._entry.11, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @xc4000_attach._entry_ptr.13, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/xc4000.c", i32 1709, i32 3}
!43 = !{ptr @xc4000_attach._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @xc4000_attach._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @xc4000_attach._entry.17, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/media/tuners/xc4000.c", i32 1713, i32 3}
!47 = !{ptr @xc4000_attach._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/xc4000.c", i32 1716, i32 3}
!50 = !{ptr @xc4000_attach._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @xc4000_attach._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/xc4000.c", i32 1720, i32 3}
!54 = !{ptr @xc4000_attach._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @xc4000_attach._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @__ksymtab_xc4000_attach, !57, !"__ksymtab_xc4000_attach", i1 false, i1 false}
!57 = !{!"../drivers/media/tuners/xc4000.c", i32 1747, i32 1}
!58 = !{ptr @__UNIQUE_ID_author298, !59, !"__UNIQUE_ID_author298", i1 false, i1 false}
!59 = !{!"../drivers/media/tuners/xc4000.c", i32 1749, i32 1}
!60 = !{ptr @__UNIQUE_ID_description299, !61, !"__UNIQUE_ID_description299", i1 false, i1 false}
!61 = !{!"../drivers/media/tuners/xc4000.c", i32 1750, i32 1}
!62 = !{ptr @__UNIQUE_ID_file300, !63, !"__UNIQUE_ID_file300", i1 false, i1 false}
!63 = !{!"../drivers/media/tuners/xc4000.c", i32 1751, i32 1}
!64 = !{ptr @__UNIQUE_ID_license301, !63, !"__UNIQUE_ID_license301", i1 false, i1 false}
!65 = !{ptr @__UNIQUE_ID_firmware302, !66, !"__UNIQUE_ID_firmware302", i1 false, i1 false}
!66 = !{!"../drivers/media/tuners/xc4000.c", i32 1752, i32 1}
!67 = !{ptr @__UNIQUE_ID_firmware303, !68, !"__UNIQUE_ID_firmware303", i1 false, i1 false}
!68 = !{!"../drivers/media/tuners/xc4000.c", i32 1753, i32 1}
!69 = !{ptr @debug, !70, !"debug", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/xc4000.c", i32 27, i32 12}
!71 = !{ptr @no_poweroff, !72, !"no_poweroff", i1 false, i1 false}
!72 = !{!"../drivers/media/tuners/xc4000.c", i32 31, i32 12}
!73 = !{ptr @audio_std, !74, !"audio_std", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/xc4000.c", i32 35, i32 12}
!75 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!76 = !{ptr @__param_str_no_poweroff, !6, !"__param_str_no_poweroff", i1 false, i1 false}
!77 = !{ptr @__param_str_audio_std, !11, !"__param_str_audio_std", i1 false, i1 false}
!78 = !{ptr @__param_str_firmware_name, !16, !"__param_str_firmware_name", i1 false, i1 false}
!79 = !{ptr @__param_string_firmware_name, !16, !"__param_string_firmware_name", i1 false, i1 false}
!80 = !{ptr @firmware_name, !81, !"firmware_name", i1 false, i1 false}
!81 = !{!"../drivers/media/tuners/xc4000.c", i32 45, i32 13}
!82 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/tuners/xc4000.c", i32 49, i32 8}
!84 = !{ptr @.str.26, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @xc4000_list_mutex, !83, !"xc4000_list_mutex", i1 false, i1 false}
!86 = !{ptr @hybrid_tuner_instance_list, !87, !"hybrid_tuner_instance_list", i1 false, i1 false}
!87 = !{!"../drivers/media/tuners/xc4000.c", i32 50, i32 8}
!88 = !{ptr @.str.27, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/xc4000.c", i32 543, i32 3}
!90 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @xc4000_readreg._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @xc4000_readreg._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @xc4000_tuner_ops, !94, !"xc4000_tuner_ops", i1 false, i1 false}
!94 = !{!"../drivers/media/tuners/xc4000.c", i32 1626, i32 35}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/media/tuners/xc4000.c", i32 1605, i32 2}
!97 = !{ptr @.str.30, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @xc4000_init._entry, !96, !"_entry", i1 false, i1 false}
!99 = !{ptr @xc4000_init._entry_ptr, !96, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.31, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/tuners/xc4000.c", i32 1578, i32 2}
!102 = !{ptr @xc4000_sleep._entry, !101, !"_entry", i1 false, i1 false}
!103 = !{ptr @xc4000_sleep._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!104 = !{ptr @.str.33, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/tuners/xc4000.c", i32 1590, i32 4}
!106 = !{ptr @xc4000_sleep._entry.32, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @xc4000_sleep._entry_ptr.34, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @.str.35, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/media/tuners/xc4000.c", i32 247, i32 4}
!110 = !{ptr @.str.36, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @xc_send_i2c_data._entry, !109, !"_entry", i1 false, i1 false}
!112 = !{ptr @xc_send_i2c_data._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/tuners/xc4000.c", i32 250, i32 5}
!115 = !{ptr @xc_send_i2c_data._entry.37, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @xc_send_i2c_data._entry_ptr.39, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/media/tuners/xc4000.c", i32 1147, i32 2}
!119 = !{ptr @.str.41, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @xc4000_set_params._entry, !118, !"_entry", i1 false, i1 false}
!121 = !{ptr @xc4000_set_params._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.43, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/tuners/xc4000.c", i32 1153, i32 3}
!124 = !{ptr @xc4000_set_params._entry.42, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @xc4000_set_params._entry_ptr.44, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.46, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/media/tuners/xc4000.c", i32 1160, i32 3}
!128 = !{ptr @xc4000_set_params._entry.45, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @xc4000_set_params._entry_ptr.47, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/tuners/xc4000.c", i32 1168, i32 3}
!132 = !{ptr @xc4000_set_params._entry.48, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @xc4000_set_params._entry_ptr.50, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/tuners/xc4000.c", i32 1193, i32 3}
!136 = !{ptr @xc4000_set_params._entry.51, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @xc4000_set_params._entry_ptr.53, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.55, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/tuners/xc4000.c", i32 1200, i32 2}
!140 = !{ptr @xc4000_set_params._entry.54, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @xc4000_set_params._entry_ptr.56, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.58, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/tuners/xc4000.c", i32 1211, i32 3}
!144 = !{ptr @xc4000_set_params._entry.57, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @xc4000_set_params._entry_ptr.59, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.61, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/xc4000.c", i32 1222, i32 4}
!148 = !{ptr @xc4000_set_params._entry.60, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @xc4000_set_params._entry_ptr.62, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/xc4000.c", i32 1242, i32 3}
!152 = !{ptr @xc4000_set_params._entry.63, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @xc4000_set_params._entry_ptr.65, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/tuners/xc4000.c", i32 933, i32 2}
!156 = !{ptr @.str.67, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @check_firmware._entry, !155, !"_entry", i1 false, i1 false}
!158 = !{ptr @check_firmware._entry_ptr, !155, !"_entry_ptr", i1 false, i1 false}
!159 = !{ptr @.str.69, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/media/tuners/xc4000.c", i32 949, i32 2}
!161 = !{ptr @check_firmware._entry.68, !160, !"_entry", i1 false, i1 false}
!162 = !{ptr @check_firmware._entry_ptr.70, !160, !"_entry_ptr", i1 false, i1 false}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/media/tuners/xc4000.c", i32 952, i32 3}
!165 = !{ptr @check_firmware._entry.71, !164, !"_entry", i1 false, i1 false}
!166 = !{ptr @check_firmware._entry_ptr.73, !164, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.75, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/tuners/xc4000.c", i32 955, i32 4}
!169 = !{ptr @check_firmware._entry.74, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @check_firmware._entry_ptr.76, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/tuners/xc4000.c", i32 957, i32 4}
!173 = !{ptr @check_firmware._entry.77, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @check_firmware._entry_ptr.79, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.81, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/media/tuners/xc4000.c", i32 958, i32 3}
!177 = !{ptr @check_firmware._entry.80, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @check_firmware._entry_ptr.82, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/media/tuners/xc4000.c", i32 963, i32 3}
!181 = !{ptr @check_firmware._entry.83, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @check_firmware._entry_ptr.85, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.87, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/media/tuners/xc4000.c", i32 979, i32 3}
!185 = !{ptr @check_firmware._entry.86, !184, !"_entry", i1 false, i1 false}
!186 = !{ptr @check_firmware._entry_ptr.88, !184, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/media/tuners/xc4000.c", i32 984, i32 2}
!189 = !{ptr @check_firmware._entry.89, !188, !"_entry", i1 false, i1 false}
!190 = !{ptr @check_firmware._entry_ptr.91, !188, !"_entry_ptr", i1 false, i1 false}
!191 = !{ptr @.str.93, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/media/tuners/xc4000.c", i32 990, i32 3}
!193 = !{ptr @check_firmware._entry.92, !192, !"_entry", i1 false, i1 false}
!194 = !{ptr @check_firmware._entry_ptr.94, !192, !"_entry_ptr", i1 false, i1 false}
!195 = !{ptr @.str.96, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/tuners/xc4000.c", i32 1002, i32 3}
!197 = !{ptr @check_firmware._entry.95, !196, !"_entry", i1 false, i1 false}
!198 = !{ptr @check_firmware._entry_ptr.97, !196, !"_entry_ptr", i1 false, i1 false}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/media/tuners/xc4000.c", i32 1018, i32 3}
!201 = !{ptr @check_firmware._entry.98, !200, !"_entry", i1 false, i1 false}
!202 = !{ptr @check_firmware._entry_ptr.100, !200, !"_entry_ptr", i1 false, i1 false}
!203 = !{ptr @.str.102, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/media/tuners/xc4000.c", i32 1026, i32 3}
!205 = !{ptr @check_firmware._entry.101, !204, !"_entry", i1 false, i1 false}
!206 = !{ptr @check_firmware._entry_ptr.103, !204, !"_entry_ptr", i1 false, i1 false}
!207 = !{ptr @.str.105, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/tuners/xc4000.c", i32 1030, i32 3}
!209 = !{ptr @check_firmware._entry.104, !208, !"_entry", i1 false, i1 false}
!210 = !{ptr @check_firmware._entry_ptr.106, !208, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @check_firmware._entry.107, !212, !"_entry", i1 false, i1 false}
!212 = !{!"../drivers/media/tuners/xc4000.c", i32 1036, i32 3}
!213 = !{ptr @check_firmware._entry_ptr.108, !212, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/tuners/xc4000.c", i32 1040, i32 2}
!216 = !{ptr @check_firmware._entry.109, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @check_firmware._entry_ptr.111, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/tuners/xc4000.c", i32 1045, i32 3}
!220 = !{ptr @check_firmware._entry.112, !219, !"_entry", i1 false, i1 false}
!221 = !{ptr @check_firmware._entry_ptr.114, !219, !"_entry_ptr", i1 false, i1 false}
!222 = !{ptr @.str.116, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/media/tuners/xc4000.c", i32 1059, i32 3}
!224 = !{ptr @check_firmware._entry.115, !223, !"_entry", i1 false, i1 false}
!225 = !{ptr @check_firmware._entry_ptr.117, !223, !"_entry_ptr", i1 false, i1 false}
!226 = !{ptr @.str.119, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/media/tuners/xc4000.c", i32 1081, i32 3}
!228 = !{ptr @check_firmware._entry.118, !227, !"_entry", i1 false, i1 false}
!229 = !{ptr @check_firmware._entry_ptr.120, !227, !"_entry_ptr", i1 false, i1 false}
!230 = !{ptr @.str.121, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/media/tuners/xc4000.c", i32 555, i32 3}
!232 = !{ptr @.str.122, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @dump_firm_type_and_int_freq._entry, !231, !"_entry", i1 false, i1 false}
!234 = !{ptr @dump_firm_type_and_int_freq._entry_ptr, !231, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/tuners/xc4000.c", i32 557, i32 3}
!237 = !{ptr @dump_firm_type_and_int_freq._entry.123, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.125, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/tuners/xc4000.c", i32 559, i32 3}
!241 = !{ptr @dump_firm_type_and_int_freq._entry.126, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.128, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/tuners/xc4000.c", i32 561, i32 3}
!245 = !{ptr @dump_firm_type_and_int_freq._entry.129, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.131, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.133, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/tuners/xc4000.c", i32 563, i32 3}
!249 = !{ptr @dump_firm_type_and_int_freq._entry.132, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.134, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/tuners/xc4000.c", i32 565, i32 3}
!253 = !{ptr @dump_firm_type_and_int_freq._entry.135, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.137, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.139, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/tuners/xc4000.c", i32 567, i32 3}
!257 = !{ptr @dump_firm_type_and_int_freq._entry.138, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.140, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.142, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/tuners/xc4000.c", i32 569, i32 3}
!261 = !{ptr @dump_firm_type_and_int_freq._entry.141, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.143, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.145, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/tuners/xc4000.c", i32 571, i32 3}
!265 = !{ptr @dump_firm_type_and_int_freq._entry.144, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.146, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.148, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/tuners/xc4000.c", i32 573, i32 3}
!269 = !{ptr @dump_firm_type_and_int_freq._entry.147, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.149, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.151, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/tuners/xc4000.c", i32 575, i32 3}
!273 = !{ptr @dump_firm_type_and_int_freq._entry.150, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.152, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.154, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/tuners/xc4000.c", i32 577, i32 3}
!277 = !{ptr @dump_firm_type_and_int_freq._entry.153, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.155, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.157, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/tuners/xc4000.c", i32 579, i32 3}
!281 = !{ptr @dump_firm_type_and_int_freq._entry.156, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.158, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.160, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/tuners/xc4000.c", i32 581, i32 3}
!285 = !{ptr @dump_firm_type_and_int_freq._entry.159, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.161, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.163, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/tuners/xc4000.c", i32 583, i32 3}
!289 = !{ptr @dump_firm_type_and_int_freq._entry.162, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.164, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.166, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/tuners/xc4000.c", i32 585, i32 3}
!293 = !{ptr @dump_firm_type_and_int_freq._entry.165, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.167, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.169, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/tuners/xc4000.c", i32 587, i32 3}
!297 = !{ptr @dump_firm_type_and_int_freq._entry.168, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.170, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.172, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/tuners/xc4000.c", i32 589, i32 3}
!301 = !{ptr @dump_firm_type_and_int_freq._entry.171, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.173, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.175, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/tuners/xc4000.c", i32 591, i32 3}
!305 = !{ptr @dump_firm_type_and_int_freq._entry.174, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.176, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.178, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/tuners/xc4000.c", i32 593, i32 3}
!309 = !{ptr @dump_firm_type_and_int_freq._entry.177, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.179, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/tuners/xc4000.c", i32 595, i32 3}
!313 = !{ptr @dump_firm_type_and_int_freq._entry.180, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.182, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.184, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/tuners/xc4000.c", i32 597, i32 3}
!317 = !{ptr @dump_firm_type_and_int_freq._entry.183, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.185, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.187, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/tuners/xc4000.c", i32 599, i32 3}
!321 = !{ptr @dump_firm_type_and_int_freq._entry.186, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.188, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.190, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/tuners/xc4000.c", i32 601, i32 3}
!325 = !{ptr @dump_firm_type_and_int_freq._entry.189, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.191, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.193, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/tuners/xc4000.c", i32 603, i32 3}
!329 = !{ptr @dump_firm_type_and_int_freq._entry.192, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.194, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.196, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/tuners/xc4000.c", i32 605, i32 3}
!333 = !{ptr @dump_firm_type_and_int_freq._entry.195, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.197, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.199, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/tuners/xc4000.c", i32 607, i32 3}
!337 = !{ptr @dump_firm_type_and_int_freq._entry.198, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.200, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.202, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/tuners/xc4000.c", i32 609, i32 3}
!341 = !{ptr @dump_firm_type_and_int_freq._entry.201, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.203, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.205, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/tuners/xc4000.c", i32 611, i32 3}
!345 = !{ptr @dump_firm_type_and_int_freq._entry.204, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.206, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.208, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/tuners/xc4000.c", i32 613, i32 3}
!349 = !{ptr @dump_firm_type_and_int_freq._entry.207, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.209, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.211, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/tuners/xc4000.c", i32 615, i32 3}
!353 = !{ptr @dump_firm_type_and_int_freq._entry.210, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.212, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.213, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/tuners/xc4000.c", i32 263, i32 2}
!357 = !{ptr @xc4000_tuner_reset._entry, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @xc4000_tuner_reset._entry_ptr, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.215, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/tuners/xc4000.c", i32 272, i32 4}
!361 = !{ptr @xc4000_tuner_reset._entry.214, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @xc4000_tuner_reset._entry_ptr.216, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @.str.218, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/media/tuners/xc4000.c", i32 276, i32 3}
!365 = !{ptr @xc4000_tuner_reset._entry.217, !364, !"_entry", i1 false, i1 false}
!366 = !{ptr @xc4000_tuner_reset._entry_ptr.219, !364, !"_entry_ptr", i1 false, i1 false}
!367 = !{ptr @.str.220, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/media/tuners/xc4000.c", i32 626, i32 3}
!369 = !{ptr @.str.221, !368, !"<string literal>", i1 false, i1 false}
!370 = !{ptr @seek_firmware._entry, !368, !"_entry", i1 false, i1 false}
!371 = !{ptr @seek_firmware._entry_ptr, !368, !"_entry_ptr", i1 false, i1 false}
!372 = !{ptr @.str.223, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/media/tuners/xc4000.c", i32 663, i32 3}
!374 = !{ptr @seek_firmware._entry.222, !373, !"_entry", i1 false, i1 false}
!375 = !{ptr @seek_firmware._entry_ptr.224, !373, !"_entry_ptr", i1 false, i1 false}
!376 = !{ptr @.str.226, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/media/tuners/xc4000.c", i32 674, i32 3}
!378 = !{ptr @seek_firmware._entry.225, !377, !"_entry", i1 false, i1 false}
!379 = !{ptr @seek_firmware._entry_ptr.227, !377, !"_entry_ptr", i1 false, i1 false}
!380 = !{ptr @.str.228, !377, !"<string literal>", i1 false, i1 false}
!381 = !{ptr @.str.229, !377, !"<string literal>", i1 false, i1 false}
!382 = !{ptr @.str.231, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/media/tuners/xc4000.c", i32 677, i32 3}
!384 = !{ptr @seek_firmware._entry.230, !383, !"_entry", i1 false, i1 false}
!385 = !{ptr @seek_firmware._entry_ptr.232, !383, !"_entry_ptr", i1 false, i1 false}
!386 = !{ptr @.str.233, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/media/tuners/xc4000.c", i32 867, i32 2}
!388 = !{ptr @.str.234, !387, !"<string literal>", i1 false, i1 false}
!389 = !{ptr @load_scode._entry, !387, !"_entry", i1 false, i1 false}
!390 = !{ptr @load_scode._entry_ptr, !387, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @.str.236, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/media/tuners/xc4000.c", i32 890, i32 3}
!393 = !{ptr @load_scode._entry.235, !392, !"_entry", i1 false, i1 false}
!394 = !{ptr @load_scode._entry_ptr.237, !392, !"_entry_ptr", i1 false, i1 false}
!395 = !{ptr @.str.239, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/media/tuners/xc4000.c", i32 893, i32 3}
!397 = !{ptr @load_scode._entry.238, !396, !"_entry", i1 false, i1 false}
!398 = !{ptr @load_scode._entry_ptr.240, !396, !"_entry_ptr", i1 false, i1 false}
!399 = !{ptr @.str.242, !400, !"<string literal>", i1 false, i1 false}
!400 = !{!"../drivers/media/tuners/xc4000.c", i32 903, i32 3}
!401 = !{ptr @load_scode._entry.241, !400, !"_entry", i1 false, i1 false}
!402 = !{ptr @load_scode._entry_ptr.243, !400, !"_entry_ptr", i1 false, i1 false}
!403 = !{ptr @.str.245, !404, !"<string literal>", i1 false, i1 false}
!404 = !{!"../drivers/media/tuners/xc4000.c", i32 911, i32 3}
!405 = !{ptr @load_scode._entry.244, !404, !"_entry", i1 false, i1 false}
!406 = !{ptr @load_scode._entry_ptr.246, !404, !"_entry_ptr", i1 false, i1 false}
!407 = !{ptr @.str.247, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/media/tuners/xc4000.c", i32 372, i32 2}
!409 = !{ptr @.str.248, !408, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @xc_set_signal_source._entry, !408, !"_entry", i1 false, i1 false}
!411 = !{ptr @xc_set_signal_source._entry_ptr, !408, !"_entry_ptr", i1 false, i1 false}
!412 = !{ptr @.str.249, !408, !"<string literal>", i1 false, i1 false}
!413 = !{ptr @.str.250, !408, !"<string literal>", i1 false, i1 false}
!414 = !{ptr @.str.252, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/tuners/xc4000.c", i32 377, i32 3}
!416 = !{ptr @xc_set_signal_source._entry.251, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @xc_set_signal_source._entry_ptr.253, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.254, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/media/tuners/xc4000.c", i32 211, i32 3}
!420 = !{ptr @.str.255, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/media/tuners/xc4000.c", i32 212, i32 3}
!422 = !{ptr @.str.256, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/media/tuners/xc4000.c", i32 213, i32 3}
!424 = !{ptr @.str.257, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/media/tuners/xc4000.c", i32 214, i32 3}
!426 = !{ptr @.str.258, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/media/tuners/xc4000.c", i32 215, i32 3}
!428 = !{ptr @.str.259, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/media/tuners/xc4000.c", i32 216, i32 3}
!430 = !{ptr @.str.260, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/media/tuners/xc4000.c", i32 217, i32 3}
!432 = !{ptr @.str.261, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/media/tuners/xc4000.c", i32 218, i32 3}
!434 = !{ptr @.str.262, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/media/tuners/xc4000.c", i32 219, i32 3}
!436 = !{ptr @.str.263, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/media/tuners/xc4000.c", i32 220, i32 3}
!438 = !{ptr @.str.264, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/media/tuners/xc4000.c", i32 221, i32 3}
!440 = !{ptr @.str.265, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/tuners/xc4000.c", i32 222, i32 3}
!442 = !{ptr @.str.266, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/media/tuners/xc4000.c", i32 223, i32 3}
!444 = !{ptr @.str.267, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/media/tuners/xc4000.c", i32 224, i32 3}
!446 = !{ptr @.str.268, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/media/tuners/xc4000.c", i32 225, i32 3}
!448 = !{ptr @.str.269, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/media/tuners/xc4000.c", i32 226, i32 3}
!450 = !{ptr @.str.270, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/media/tuners/xc4000.c", i32 227, i32 3}
!452 = !{ptr @.str.271, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/media/tuners/xc4000.c", i32 228, i32 3}
!454 = !{ptr @.str.272, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/media/tuners/xc4000.c", i32 229, i32 3}
!456 = !{ptr @.str.273, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/media/tuners/xc4000.c", i32 230, i32 3}
!458 = !{ptr @.str.274, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/media/tuners/xc4000.c", i32 231, i32 3}
!460 = !{ptr @.str.275, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/media/tuners/xc4000.c", i32 232, i32 3}
!462 = !{ptr @.str.276, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/media/tuners/xc4000.c", i32 233, i32 3}
!464 = !{ptr @.str.277, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/media/tuners/xc4000.c", i32 234, i32 3}
!466 = !{ptr @xc4000_standard, !467, !"xc4000_standard", i1 false, i1 false}
!467 = !{!"../drivers/media/tuners/xc4000.c", i32 210, i32 30}
!468 = !{ptr @.str.278, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/media/tuners/xc4000.c", i32 353, i32 2}
!470 = !{ptr @.str.279, !469, !"<string literal>", i1 false, i1 false}
!471 = !{ptr @xc_set_tv_standard._entry, !469, !"_entry", i1 false, i1 false}
!472 = !{ptr @xc_set_tv_standard._entry_ptr, !469, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.281, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/tuners/xc4000.c", i32 354, i32 2}
!475 = !{ptr @xc_set_tv_standard._entry.280, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @xc_set_tv_standard._entry_ptr.282, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.283, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/tuners/xc4000.c", i32 503, i32 2}
!479 = !{ptr @.str.284, !478, !"<string literal>", i1 false, i1 false}
!480 = !{ptr @xc_tune_channel._entry, !478, !"_entry", i1 false, i1 false}
!481 = !{ptr @xc_tune_channel._entry_ptr, !478, !"_entry_ptr", i1 false, i1 false}
!482 = !{ptr @.str.285, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/media/tuners/xc4000.c", i32 390, i32 2}
!484 = !{ptr @xc_set_rf_frequency._entry, !483, !"_entry", i1 false, i1 false}
!485 = !{ptr @xc_set_rf_frequency._entry_ptr, !483, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.286, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/media/tuners/xc4000.c", i32 1104, i32 2}
!488 = !{ptr @.str.287, !487, !"<string literal>", i1 false, i1 false}
!489 = !{ptr @xc_debug_dump._entry, !487, !"_entry", i1 false, i1 false}
!490 = !{ptr @xc_debug_dump._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!491 = !{ptr @.str.289, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/media/tuners/xc4000.c", i32 1107, i32 2}
!493 = !{ptr @xc_debug_dump._entry.288, !492, !"_entry", i1 false, i1 false}
!494 = !{ptr @xc_debug_dump._entry_ptr.290, !492, !"_entry_ptr", i1 false, i1 false}
!495 = !{ptr @.str.292, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/media/tuners/xc4000.c", i32 1110, i32 2}
!497 = !{ptr @xc_debug_dump._entry.291, !496, !"_entry", i1 false, i1 false}
!498 = !{ptr @xc_debug_dump._entry_ptr.293, !496, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.295, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/media/tuners/xc4000.c", i32 1115, i32 2}
!501 = !{ptr @xc_debug_dump._entry.294, !500, !"_entry", i1 false, i1 false}
!502 = !{ptr @xc_debug_dump._entry_ptr.296, !500, !"_entry_ptr", i1 false, i1 false}
!503 = !{ptr @.str.298, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/media/tuners/xc4000.c", i32 1121, i32 3}
!505 = !{ptr @xc_debug_dump._entry.297, !504, !"_entry", i1 false, i1 false}
!506 = !{ptr @xc_debug_dump._entry_ptr.299, !504, !"_entry_ptr", i1 false, i1 false}
!507 = !{ptr @.str.301, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/media/tuners/xc4000.c", i32 1125, i32 3}
!509 = !{ptr @xc_debug_dump._entry.300, !508, !"_entry", i1 false, i1 false}
!510 = !{ptr @xc_debug_dump._entry_ptr.302, !508, !"_entry_ptr", i1 false, i1 false}
!511 = !{ptr @.str.304, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/media/tuners/xc4000.c", i32 1129, i32 2}
!513 = !{ptr @xc_debug_dump._entry.303, !512, !"_entry", i1 false, i1 false}
!514 = !{ptr @xc_debug_dump._entry_ptr.305, !512, !"_entry_ptr", i1 false, i1 false}
!515 = !{ptr @.str.307, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/media/tuners/xc4000.c", i32 1132, i32 2}
!517 = !{ptr @xc_debug_dump._entry.306, !516, !"_entry", i1 false, i1 false}
!518 = !{ptr @xc_debug_dump._entry_ptr.308, !516, !"_entry_ptr", i1 false, i1 false}
!519 = !{ptr @.str.310, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/media/tuners/xc4000.c", i32 1135, i32 2}
!521 = !{ptr @xc_debug_dump._entry.309, !520, !"_entry", i1 false, i1 false}
!522 = !{ptr @xc_debug_dump._entry_ptr.311, !520, !"_entry_ptr", i1 false, i1 false}
!523 = !{ptr @.str.312, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/media/tuners/xc4000.c", i32 1264, i32 3}
!525 = !{ptr @.str.313, !524, !"<string literal>", i1 false, i1 false}
!526 = !{ptr @xc4000_set_analog_params._entry, !524, !"_entry", i1 false, i1 false}
!527 = !{ptr @xc4000_set_analog_params._entry_ptr, !524, !"_entry_ptr", i1 false, i1 false}
!528 = !{ptr @.str.315, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/media/tuners/xc4000.c", i32 1283, i32 2}
!530 = !{ptr @xc4000_set_analog_params._entry.314, !529, !"_entry", i1 false, i1 false}
!531 = !{ptr @xc4000_set_analog_params._entry_ptr.316, !529, !"_entry_ptr", i1 false, i1 false}
!532 = !{ptr @xc4000_set_analog_params._entry.317, !533, !"_entry", i1 false, i1 false}
!533 = !{!"../drivers/media/tuners/xc4000.c", i32 1404, i32 3}
!534 = !{ptr @xc4000_set_analog_params._entry_ptr.318, !533, !"_entry_ptr", i1 false, i1 false}
!535 = !{ptr @xc4000_set_analog_params._entry.319, !536, !"_entry", i1 false, i1 false}
!536 = !{!"../drivers/media/tuners/xc4000.c", i32 1423, i32 4}
!537 = !{ptr @xc4000_set_analog_params._entry_ptr.320, !536, !"_entry_ptr", i1 false, i1 false}
!538 = !{ptr @xc4000_set_analog_params._entry.321, !539, !"_entry", i1 false, i1 false}
!539 = !{!"../drivers/media/tuners/xc4000.c", i32 1437, i32 3}
!540 = !{ptr @xc4000_set_analog_params._entry_ptr.322, !539, !"_entry_ptr", i1 false, i1 false}
!541 = !{ptr @.str.323, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/media/tuners/xc4000.c", i32 1529, i32 5}
!543 = !{ptr @.str.324, !542, !"<string literal>", i1 false, i1 false}
!544 = !{ptr @xc4000_get_frequency._entry, !542, !"_entry", i1 false, i1 false}
!545 = !{ptr @xc4000_get_frequency._entry_ptr, !542, !"_entry_ptr", i1 false, i1 false}
!546 = !{ptr @xc4000_get_frequency._entry.325, !547, !"_entry", i1 false, i1 false}
!547 = !{!"../drivers/media/tuners/xc4000.c", i32 1537, i32 2}
!548 = !{ptr @xc4000_get_frequency._entry_ptr.326, !547, !"_entry_ptr", i1 false, i1 false}
!549 = !{ptr @.str.327, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/media/tuners/xc4000.c", i32 1545, i32 2}
!551 = !{ptr @xc4000_get_bandwidth._entry, !550, !"_entry", i1 false, i1 false}
!552 = !{ptr @xc4000_get_bandwidth._entry_ptr, !550, !"_entry_ptr", i1 false, i1 false}
!553 = !{ptr @.str.328, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/media/tuners/xc4000.c", i32 1568, i32 2}
!555 = !{ptr @.str.329, !554, !"<string literal>", i1 false, i1 false}
!556 = !{ptr @xc4000_get_status._entry, !554, !"_entry", i1 false, i1 false}
!557 = !{ptr @xc4000_get_status._entry_ptr, !554, !"_entry_ptr", i1 false, i1 false}
!558 = !{ptr @.str.330, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/media/tuners/xc4000.c", i32 1467, i32 2}
!560 = !{ptr @.str.331, !559, !"<string literal>", i1 false, i1 false}
!561 = !{ptr @xc4000_get_signal._entry, !559, !"_entry", i1 false, i1 false}
!562 = !{ptr @xc4000_get_signal._entry_ptr, !559, !"_entry_ptr", i1 false, i1 false}
!563 = !{ptr @.str.333, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/media/tuners/xc4000.c", i32 1485, i32 2}
!565 = !{ptr @xc4000_get_signal._entry.332, !564, !"_entry", i1 false, i1 false}
!566 = !{ptr @xc4000_get_signal._entry_ptr.334, !564, !"_entry_ptr", i1 false, i1 false}
!567 = !{ptr @.str.335, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/media/tuners/xc4000.c", i32 718, i32 3}
!569 = !{ptr @.str.336, !568, !"<string literal>", i1 false, i1 false}
!570 = !{ptr @xc4000_fwupload._entry, !568, !"_entry", i1 false, i1 false}
!571 = !{ptr @xc4000_fwupload._entry_ptr, !568, !"_entry_ptr", i1 false, i1 false}
!572 = !{ptr @.str.337, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/media/tuners/xc4000.c", i32 722, i32 11}
!574 = !{ptr @.str.339, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/media/tuners/xc4000.c", i32 723, i32 3}
!576 = !{ptr @xc4000_fwupload._entry.338, !575, !"_entry", i1 false, i1 false}
!577 = !{ptr @xc4000_fwupload._entry_ptr.340, !575, !"_entry_ptr", i1 false, i1 false}
!578 = !{ptr @.str.341, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/media/tuners/xc4000.c", i32 727, i32 12}
!580 = !{ptr @xc4000_fwupload._entry.342, !581, !"_entry", i1 false, i1 false}
!581 = !{!"../drivers/media/tuners/xc4000.c", i32 728, i32 4}
!582 = !{ptr @xc4000_fwupload._entry_ptr.343, !581, !"_entry_ptr", i1 false, i1 false}
!583 = !{ptr @.str.345, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/media/tuners/xc4000.c", i32 736, i32 4}
!585 = !{ptr @xc4000_fwupload._entry.344, !584, !"_entry", i1 false, i1 false}
!586 = !{ptr @xc4000_fwupload._entry_ptr.346, !584, !"_entry_ptr", i1 false, i1 false}
!587 = !{ptr @.str.348, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/media/tuners/xc4000.c", i32 738, i32 4}
!589 = !{ptr @xc4000_fwupload._entry.347, !588, !"_entry", i1 false, i1 false}
!590 = !{ptr @xc4000_fwupload._entry_ptr.349, !588, !"_entry_ptr", i1 false, i1 false}
!591 = !{ptr @.str.351, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/media/tuners/xc4000.c", i32 743, i32 2}
!593 = !{ptr @xc4000_fwupload._entry.350, !592, !"_entry", i1 false, i1 false}
!594 = !{ptr @xc4000_fwupload._entry_ptr.352, !592, !"_entry_ptr", i1 false, i1 false}
!595 = !{ptr @.str.354, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/media/tuners/xc4000.c", i32 749, i32 3}
!597 = !{ptr @xc4000_fwupload._entry.353, !596, !"_entry", i1 false, i1 false}
!598 = !{ptr @xc4000_fwupload._entry_ptr.355, !596, !"_entry_ptr", i1 false, i1 false}
!599 = !{ptr @.str.357, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/media/tuners/xc4000.c", i32 764, i32 2}
!601 = !{ptr @xc4000_fwupload._entry.356, !600, !"_entry", i1 false, i1 false}
!602 = !{ptr @xc4000_fwupload._entry_ptr.358, !600, !"_entry_ptr", i1 false, i1 false}
!603 = !{ptr @.str.360, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/media/tuners/xc4000.c", i32 770, i32 3}
!605 = !{ptr @xc4000_fwupload._entry.359, !604, !"_entry", i1 false, i1 false}
!606 = !{ptr @xc4000_fwupload._entry_ptr.361, !604, !"_entry_ptr", i1 false, i1 false}
!607 = !{ptr @.str.363, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/media/tuners/xc4000.c", i32 784, i32 4}
!609 = !{ptr @xc4000_fwupload._entry.362, !608, !"_entry", i1 false, i1 false}
!610 = !{ptr @xc4000_fwupload._entry_ptr.364, !608, !"_entry_ptr", i1 false, i1 false}
!611 = !{ptr @.str.366, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/media/tuners/xc4000.c", i32 809, i32 4}
!613 = !{ptr @xc4000_fwupload._entry.365, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @xc4000_fwupload._entry_ptr.367, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @xc4000_fwupload._entry.368, !616, !"_entry", i1 false, i1 false}
!616 = !{!"../drivers/media/tuners/xc4000.c", i32 817, i32 4}
!617 = !{ptr @xc4000_fwupload._entry_ptr.369, !616, !"_entry_ptr", i1 false, i1 false}
!618 = !{ptr @.str.371, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/media/tuners/xc4000.c", i32 823, i32 4}
!620 = !{ptr @xc4000_fwupload._entry.370, !619, !"_entry", i1 false, i1 false}
!621 = !{ptr @xc4000_fwupload._entry_ptr.372, !619, !"_entry_ptr", i1 false, i1 false}
!622 = !{ptr @.str.374, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/media/tuners/xc4000.c", i32 825, i32 4}
!624 = !{ptr @xc4000_fwupload._entry.373, !623, !"_entry", i1 false, i1 false}
!625 = !{ptr @xc4000_fwupload._entry_ptr.375, !623, !"_entry_ptr", i1 false, i1 false}
!626 = !{ptr @.str.377, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/media/tuners/xc4000.c", i32 838, i32 3}
!628 = !{ptr @xc4000_fwupload._entry.376, !627, !"_entry", i1 false, i1 false}
!629 = !{ptr @xc4000_fwupload._entry_ptr.378, !627, !"_entry_ptr", i1 false, i1 false}
!630 = !{ptr @.str.380, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/media/tuners/xc4000.c", i32 845, i32 2}
!632 = !{ptr @xc4000_fwupload._entry.379, !631, !"_entry", i1 false, i1 false}
!633 = !{ptr @xc4000_fwupload._entry_ptr.381, !631, !"_entry_ptr", i1 false, i1 false}
!634 = !{ptr @.str.383, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/media/tuners/xc4000.c", i32 848, i32 2}
!636 = !{ptr @xc4000_fwupload._entry.382, !635, !"_entry", i1 false, i1 false}
!637 = !{ptr @xc4000_fwupload._entry_ptr.384, !635, !"_entry_ptr", i1 false, i1 false}
!638 = !{ptr @.str.386, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/media/tuners/xc4000.c", i32 853, i32 3}
!640 = !{ptr @xc4000_fwupload._entry.385, !639, !"_entry", i1 false, i1 false}
!641 = !{ptr @xc4000_fwupload._entry_ptr.387, !639, !"_entry_ptr", i1 false, i1 false}
!642 = !{ptr @.str.388, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/media/tuners/xc4000.c", i32 1614, i32 2}
!644 = !{ptr @xc4000_release._entry, !643, !"_entry", i1 false, i1 false}
!645 = !{ptr @xc4000_release._entry_ptr, !643, !"_entry_ptr", i1 false, i1 false}
!646 = !{ptr @.str.390, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/media/tuners/xc4000.c", i32 1619, i32 3}
!648 = !{ptr @xc4000_release._entry.389, !647, !"_entry", i1 false, i1 false}
!649 = !{ptr @xc4000_release._entry_ptr.391, !647, !"_entry_ptr", i1 false, i1 false}
!650 = !{i32 1, !"wchar_size", i32 2}
!651 = !{i32 1, !"min_enum_size", i32 4}
!652 = !{i32 8, !"branch-target-enforcement", i32 0}
!653 = !{i32 8, !"sign-return-address", i32 0}
!654 = !{i32 8, !"sign-return-address-all", i32 0}
!655 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!656 = !{i32 7, !"uwtable", i32 1}
!657 = !{i32 7, !"frame-pointer", i32 2}
!658 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!659 = !{!"auto-init"}
