; ModuleID = '/llk/IR_all_yes/drivers/media/tuners/tuner-xc2028.c_pt.bc'
source_filename = "../drivers/media/tuners/tuner-xc2028.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+xc2028_attach\22, \22a\22\09"
module asm "\09.weak\09__crc_xc2028_attach\09\09\09\09"
module asm "\09.long\09__crc_xc2028_attach\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_xc2028_attach:\09\09\09\09\09"
module asm "\09.asciz \09\22xc2028_attach\22\09\09\09\09\09"
module asm "__kstrtabns_xc2028_attach:\09\09\09\09\09"
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
%struct.xc2028_config = type { ptr, i8, ptr }
%struct.xc2028_data = type { %struct.list_head, %struct.tuner_i2c_props, i32, i32, ptr, ptr, i32, i16, i16, i16, %struct.xc2028_ctrl, %struct.firmware_properties, %struct.mutex }
%struct.tuner_i2c_props = type { i8, ptr, i32, ptr }
%struct.xc2028_ctrl = type { ptr, i32, i32, i32, i8, i32, i8 }
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
%struct.i2c_msg = type { i16, i16, i16, ptr }
%struct.analog_parameters = type { i32, i32, i32, i64 }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.firmware_description = type { i32, i64, i16, ptr, i32 }
%struct.firmware = type { i32, ptr, ptr }

@__param_str_debug = internal constant [19 x i8] c"tuner_xc2028.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype292 = internal constant [32 x i8] c"tuner_xc2028.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug293 = internal constant [54 x i8] c"tuner_xc2028.parm=debug:enable verbose debug messages\00", section ".modinfo", align 1
@__param_str_no_poweroff = internal constant [25 x i8] c"tuner_xc2028.no_poweroff\00", align 1
@no_poweroff = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_no_poweroff = internal constant %struct.kernel_param { ptr @__param_str_no_poweroff, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @no_poweroff } }, section "__param", align 4
@__UNIQUE_ID_no_powerofftype294 = internal constant [38 x i8] c"tuner_xc2028.parmtype=no_poweroff:int\00", section ".modinfo", align 1
@__UNIQUE_ID_no_poweroff295 = internal constant [198 x i8] c"tuner_xc2028.parm=no_poweroff:0 (default) powers device off when not used.\0A1 keep device energized and with tuner ready all the times.\0A  Faster, but consumes more power and keeps the device hotter\0A\00", section ".modinfo", align 1
@__param_str_audio_std = internal constant [23 x i8] c"tuner_xc2028.audio_std\00", align 1
@param_ops_string = external dso_local constant %struct.kernel_param_ops, align 4
@__param_string_audio_std = internal constant %struct.kparam_string { i32 8, ptr @audio_std }, align 4
@__param_audio_std = internal constant %struct.kernel_param { ptr @__param_str_audio_std, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_audio_std } }, section "__param", align 4
@__UNIQUE_ID_audio_stdtype296 = internal constant [39 x i8] c"tuner_xc2028.parmtype=audio_std:string\00", section ".modinfo", align 1
@__UNIQUE_ID_audio_std297 = internal constant [227 x i8] c"tuner_xc2028.parm=audio_std:Audio standard. XC3028 audio decoder explicitly needs to know what audio\0Astandard is needed for some video standards with audio A2 or NICAM.\0AThe valid values are:\0AA2\0AA2/A\0AA2/B\0ANICAM\0ANICAM/A\0ANICAM/B\0A\00", section ".modinfo", align 1
@__param_str_firmware_name = internal constant [27 x i8] c"tuner_xc2028.firmware_name\00", align 1
@__param_string_firmware_name = internal constant %struct.kparam_string { i32 30, ptr @firmware_name }, align 4
@__param_firmware_name = internal constant %struct.kernel_param { ptr @__param_str_firmware_name, ptr null, ptr @param_ops_string, i16 0, i8 -1, i8 0, %union.anon.76 { ptr @__param_string_firmware_name } }, section "__param", align 4
@__UNIQUE_ID_firmware_nametype298 = internal constant [43 x i8] c"tuner_xc2028.parmtype=firmware_name:string\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware_name299 = internal constant [97 x i8] c"tuner_xc2028.parm=firmware_name:Firmware file name. Allows overriding the default firmware name\0A\00", section ".modinfo", align 1
@xc2028_attach._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1463, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017xc2028: Xcv2028/3028 init called!\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_attach\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/media/tuners/tuner-xc2028.c\00", [60 x i8] zeroinitializer }, align 32
@xc2028_attach._entry_ptr = internal global ptr @xc2028_attach._entry, section ".printk_index", align 4
@xc2028_attach._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1469, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013xc2028: No frontend!\0A\00", [40 x i8] zeroinitializer }, align 32
@xc2028_attach._entry_ptr.5 = internal global ptr @xc2028_attach._entry.3, section ".printk_index", align 4
@xc2028_list_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.18, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @xc2028_list_mutex, i64 52), ptr getelementptr (i8, ptr @xc2028_list_mutex, i64 52) }, ptr @xc2028_list_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@hybrid_tuner_instance_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hybrid_tuner_instance_list, ptr @hybrid_tuner_instance_list }, [24 x i8] zeroinitializer }, align 32
@xc2028_attach._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016%s %d-%04x: attaching existing instance\0A\00", [53 x i8] zeroinitializer }, align 32
@xc2028_attach._entry_ptr.8 = internal global ptr @xc2028_attach._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xc2028\00", [25 x i8] zeroinitializer }, align 32
@xc2028_attach._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1478, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: creating new instance\0A\00", [59 x i8] zeroinitializer }, align 32
@xc2028_attach._entry_ptr.12 = internal global ptr @xc2028_attach._entry.10, section ".printk_index", align 4
@xc2028_attach.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&priv->lock\00", [20 x i8] zeroinitializer }, align 32
@xc2028_dvb_tuner_ops = internal constant { %struct.dvb_tuner_ops, [36 x i8] } { %struct.dvb_tuner_ops { %struct.dvb_tuner_info { [128 x i8] c"Xceive XC3028\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 42000000, i32 864000000, i32 50000, i32 0, i32 0, i32 0 }, ptr @xc2028_dvb_release, ptr null, ptr @xc2028_sleep, ptr null, ptr null, ptr @xc2028_set_params, ptr @xc2028_set_analog_freq, ptr @xc2028_set_config, ptr @xc2028_get_frequency, ptr null, ptr null, ptr null, ptr @xc2028_signal, ptr @xc2028_get_afc, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@xc2028_attach._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.1, ptr @.str.2, i32 1500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016%s %d-%04x: type set to %s\0A\00", [34 x i8] zeroinitializer }, align 32
@xc2028_attach._entry_ptr.16 = internal global ptr @xc2028_attach._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"XCeive xc2028/xc3028 tuner\00", [37 x i8] zeroinitializer }, align 32
@__kstrtab_xc2028_attach = external dso_local constant [0 x i8], align 1
@__kstrtabns_xc2028_attach = external dso_local constant [0 x i8], align 1
@__ksymtab_xc2028_attach = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @xc2028_attach to i32), ptr @__kstrtab_xc2028_attach, ptr @__kstrtabns_xc2028_attach }, section "___ksymtab+xc2028_attach", align 4
@__UNIQUE_ID_description300 = internal constant [59 x i8] c"tuner_xc2028.description=Xceive xc2028/xc3028 tuner driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author301 = internal constant [60 x i8] c"tuner_xc2028.author=Michel Ludwig <michel.ludwig@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author302 = internal constant [63 x i8] c"tuner_xc2028.author=Mauro Carvalho Chehab <mchehab@kernel.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file303 = internal constant [52 x i8] c"tuner_xc2028.file=drivers/media/tuners/tuner-xc2028\00", section ".modinfo", align 1
@__UNIQUE_ID_license304 = internal constant [28 x i8] c"tuner_xc2028.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware305 = internal constant [36 x i8] c"tuner_xc2028.firmware=xc3028-v27.fw\00", section ".modinfo", align 1
@__UNIQUE_ID_firmware306 = internal constant [37 x i8] c"tuner_xc2028.firmware=xc3028L-v36.fw\00", section ".modinfo", align 1
@audio_std = internal global { [8 x i8], [24 x i8] } zeroinitializer, align 32
@firmware_name = internal global { [30 x i8], [34 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"xc2028_list_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc2028_list_mutex\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xc2028_sleep._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1303, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\017%s %d-%04x: Putting xc2028/3028 into poweroff mode.\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xc2028_sleep\00", [19 x i8] zeroinitializer }, align 32
@xc2028_sleep._entry_ptr = internal global ptr @xc2028_sleep._entry, section ".printk_index", align 4
@xc2028_sleep._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.21, ptr @.str.2, i32 1305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: Printing sleep stack trace:\0A\00", [53 x i8] zeroinitializer }, align 32
@xc2028_sleep._entry_ptr.24 = internal global ptr @xc2028_sleep._entry.22, section ".printk_index", align 4
@xc2028_sleep._val = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\08\00\00", [28 x i8] zeroinitializer }, align 32
@xc2028_sleep._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%s %d-%04x: Error on line %d: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@xc2028_sleep._entry_ptr.27 = internal global ptr @xc2028_sleep._entry.25, section ".printk_index", align 4
@xc2028_sleep._val.28 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\80\08\00\00", [28 x i8] zeroinitializer }, align 32
@xc2028_sleep._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.21, ptr @.str.2, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@xc2028_sleep._entry_ptr.30 = internal global ptr @xc2028_sleep._entry.29, section ".printk_index", align 4
@xc2028_set_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 1198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\017%s %d-%04x: %s called\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc2028_set_params\00", [46 x i8] zeroinitializer }, align 32
@xc2028_set_params._entry_ptr = internal global ptr @xc2028_set_params._entry, section ".printk_index", align 4
@generic_set_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.33, ptr @.str.2, i32 1019, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"generic_set_freq\00", [47 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr = internal global ptr @generic_set_freq._entry, section ".printk_index", align 4
@generic_set_freq._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.2, i32 1023, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\017%s %d-%04x: should set frequency %d kHz\0A\00", [53 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.36 = internal global ptr @generic_set_freq._entry.34, section ".printk_index", align 4
@generic_set_freq._val = internal global { [2 x i8], [30 x i8] } zeroinitializer, align 32
@generic_set_freq._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.33, ptr @.str.2, i32 1037, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.38 = internal global ptr @generic_set_freq._entry.37, section ".printk_index", align 4
@generic_set_freq._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str.2, i32 1110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s %d-%04x: Unsupported tuner type %d.\0A\00", [54 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.41 = internal global ptr @generic_set_freq._entry.39, section ".printk_index", align 4
@generic_set_freq._val.42 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\00\02\00\00", [28 x i8] zeroinitializer }, align 32
@generic_set_freq._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.33, ptr @.str.2, i32 1118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.44 = internal global ptr @generic_set_freq._entry.43, section ".printk_index", align 4
@generic_set_freq._val.45 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\80\02\00\00", [28 x i8] zeroinitializer }, align 32
@generic_set_freq._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.33, ptr @.str.2, i32 1120, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.47 = internal global ptr @generic_set_freq._entry.46, section ".printk_index", align 4
@generic_set_freq._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.33, ptr @.str.2, i32 1139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016%s %d-%04x: i2c output error: rc = %d (should be %d)\0A\00", [40 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.50 = internal global ptr @generic_set_freq._entry.48, section ".printk_index", align 4
@generic_set_freq._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @.str.33, ptr @.str.2, i32 1147, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\017%s %d-%04x: divisor= %*ph (freq=%d.%03d)\0A\00", [52 x i8] zeroinitializer }, align 32
@generic_set_freq._entry_ptr.53 = internal global ptr @generic_set_freq._entry.51, section ".printk_index", align 4
@check_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.54, ptr @.str.2, i32 726, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"check_firmware\00", [17 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr = internal global ptr @check_firmware._entry, section ".printk_index", align 4
@check_firmware._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.2, i32 743, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017%s %d-%04x: checking firmware, user requested type=\00", [42 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.57 = internal global ptr @check_firmware._entry.55, section ".printk_index", align 4
@check_firmware._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.2, i32 747, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c(%x), id %016llx, \00", [43 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.60 = internal global ptr @check_firmware._entry.58, section ".printk_index", align 4
@check_firmware._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.2, i32 749, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cscode_tbl \00", [19 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.63 = internal global ptr @check_firmware._entry.61, section ".printk_index", align 4
@check_firmware._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.2, i32 751, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01c(%x), \00", [23 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.66 = internal global ptr @check_firmware._entry.64, section ".printk_index", align 4
@check_firmware._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.54, ptr @.str.2, i32 753, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\01cint_freq %d, \00", [16 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.69 = internal global ptr @check_firmware._entry.67, section ".printk_index", align 4
@check_firmware._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.54, ptr @.str.2, i32 754, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\01cscode_nr %d\0A\00", [17 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.72 = internal global ptr @check_firmware._entry.70, section ".printk_index", align 4
@check_firmware._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.54, ptr @.str.2, i32 764, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\017%s %d-%04x: BASE firmware not changed.\0A\00", [54 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.75 = internal global ptr @check_firmware._entry.73, section ".printk_index", align 4
@check_firmware._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.54, ptr @.str.2, i32 781, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"\013%s %d-%04x: Error %d while loading base firmware\0A\00", [44 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.78 = internal global ptr @check_firmware._entry.76, section ".printk_index", align 4
@check_firmware._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.54, ptr @.str.2, i32 786, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s %d-%04x: Load init1 firmware, if exists\0A\00", [50 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.81 = internal global ptr @check_firmware._entry.79, section ".printk_index", align 4
@check_firmware._entry.82 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.83, ptr @.str.54, ptr @.str.2, i32 794, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s %d-%04x: Error %d while loading init1 firmware\0A\00", [43 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.84 = internal global ptr @check_firmware._entry.82, section ".printk_index", align 4
@check_firmware._entry.85 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.86, ptr @.str.54, ptr @.str.2, i32 805, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\017%s %d-%04x: Std-specific firmware already loaded.\0A\00", [43 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.87 = internal global ptr @check_firmware._entry.85, section ".printk_index", align 4
@check_firmware._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.54, ptr @.str.2, i32 822, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\017%s %d-%04x: SCODE firmware already loaded.\0A\00", [50 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.90 = internal global ptr @check_firmware._entry.88, section ".printk_index", align 4
@check_firmware._entry.91 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.54, ptr @.str.2, i32 830, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\017%s %d-%04x: Trying to load scode %d\0A\00", [57 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.93 = internal global ptr @check_firmware._entry.91, section ".printk_index", align 4
@check_firmware._entry.94 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.95, ptr @.str.54, ptr @.str.2, i32 838, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s %d-%04x: Unable to read tuner registers.\0A\00", [49 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.96 = internal global ptr @check_firmware._entry.94, section ".printk_index", align 4
@check_firmware._entry.97 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.98, ptr @.str.54, ptr @.str.2, i32 844, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\017%s %d-%04x: Device is Xceive %d version %d.%d, firmware version %d.%d\0A\00", [55 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.99 = internal global ptr @check_firmware._entry.97, section ".printk_index", align 4
@check_firmware._entry.100 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.101, ptr @.str.54, ptr @.str.2, i32 853, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s %d-%04x: Incorrect readback of firmware version.\0A\00", [41 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.102 = internal global ptr @check_firmware._entry.100, section ".printk_index", align 4
@check_firmware._entry.103 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.54, ptr @.str.2, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [97 x i8], [63 x i8] } { [97 x i8] c"\013%s %d-%04x: Returned an incorrect version. However, read is not reliable enough. Ignoring it.\0A\00", [63 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.105 = internal global ptr @check_firmware._entry.103, section ".printk_index", align 4
@check_firmware._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.54, ptr @.str.2, i32 867, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013%s %d-%04x: Read invalid device hardware information - tuner hung?\0A\00", [58 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.108 = internal global ptr @check_firmware._entry.106, section ".printk_index", align 4
@check_firmware._entry.109 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.110, ptr @.str.54, ptr @.str.2, i32 891, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s %d-%04x: Retrying firmware load\0A\00", [58 x i8] zeroinitializer }, align 32
@check_firmware._entry_ptr.111 = internal global ptr @check_firmware._entry.109, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.113, ptr @.str.2, i32 179, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cBASE \00", [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dump_firm_type_and_int_freq\00", [36 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr = internal global ptr @dump_firm_type_and_int_freq._entry, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.114 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.115, ptr @.str.113, ptr @.str.2, i32 181, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cINIT1 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.116 = internal global ptr @dump_firm_type_and_int_freq._entry.114, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.117 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.118, ptr @.str.113, ptr @.str.2, i32 183, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cF8MHZ \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.119 = internal global ptr @dump_firm_type_and_int_freq._entry.117, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.120 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.121, ptr @.str.113, ptr @.str.2, i32 185, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cMTS \00", [25 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.122 = internal global ptr @dump_firm_type_and_int_freq._entry.120, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.124, ptr @.str.113, ptr @.str.2, i32 187, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cD2620 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.125 = internal global ptr @dump_firm_type_and_int_freq._entry.123, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.126 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.127, ptr @.str.113, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cD2633 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.128 = internal global ptr @dump_firm_type_and_int_freq._entry.126, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.129 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.130, ptr @.str.113, ptr @.str.2, i32 191, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cDTV6 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.131 = internal global ptr @dump_firm_type_and_int_freq._entry.129, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.132 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.113, ptr @.str.2, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cQAM \00", [25 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.134 = internal global ptr @dump_firm_type_and_int_freq._entry.132, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.135 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.113, ptr @.str.2, i32 195, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cDTV7 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.137 = internal global ptr @dump_firm_type_and_int_freq._entry.135, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.113, ptr @.str.2, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cDTV78 \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.140 = internal global ptr @dump_firm_type_and_int_freq._entry.138, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.113, ptr @.str.2, i32 199, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cDTV8 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.143 = internal global ptr @dump_firm_type_and_int_freq._entry.141, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.144 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.145, ptr @.str.113, ptr @.str.2, i32 201, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01cFM \00", [26 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.146 = internal global ptr @dump_firm_type_and_int_freq._entry.144, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.147 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.148, ptr @.str.113, ptr @.str.2, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cINPUT1 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.149 = internal global ptr @dump_firm_type_and_int_freq._entry.147, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.150 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.151, ptr @.str.113, ptr @.str.2, i32 205, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"\01cLCD \00", [25 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.152 = internal global ptr @dump_firm_type_and_int_freq._entry.150, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.153 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.154, ptr @.str.113, ptr @.str.2, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cNOGD \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.155 = internal global ptr @dump_firm_type_and_int_freq._entry.153, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.156 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.157, ptr @.str.113, ptr @.str.2, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cMONO \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.158 = internal global ptr @dump_firm_type_and_int_freq._entry.156, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.159 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.160, ptr @.str.113, ptr @.str.2, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cATSC \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.161 = internal global ptr @dump_firm_type_and_int_freq._entry.159, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.162 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.163, ptr @.str.113, ptr @.str.2, i32 213, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\01cIF \00", [26 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.164 = internal global ptr @dump_firm_type_and_int_freq._entry.162, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.165 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.166, ptr @.str.113, ptr @.str.2, i32 215, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\01cLG60 \00", [24 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.167 = internal global ptr @dump_firm_type_and_int_freq._entry.165, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.113, ptr @.str.2, i32 217, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cATI638 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.170 = internal global ptr @dump_firm_type_and_int_freq._entry.168, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.113, ptr @.str.2, i32 219, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\01cOREN538 \00", [21 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.173 = internal global ptr @dump_firm_type_and_int_freq._entry.171, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.113, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cOREN36 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.176 = internal global ptr @dump_firm_type_and_int_freq._entry.174, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.177 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.178, ptr @.str.113, ptr @.str.2, i32 223, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cTOYOTA388 \00", [19 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.179 = internal global ptr @dump_firm_type_and_int_freq._entry.177, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.180 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.181, ptr @.str.113, ptr @.str.2, i32 225, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cTOYOTA794 \00", [19 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.182 = internal global ptr @dump_firm_type_and_int_freq._entry.180, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.183 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.184, ptr @.str.113, ptr @.str.2, i32 227, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\01cDIBCOM52 \00", [20 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.185 = internal global ptr @dump_firm_type_and_int_freq._entry.183, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.186 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.187, ptr @.str.113, ptr @.str.2, i32 229, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\01cZARLINK456 \00", [18 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.188 = internal global ptr @dump_firm_type_and_int_freq._entry.186, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.189 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.190, ptr @.str.113, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cCHINA \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.191 = internal global ptr @dump_firm_type_and_int_freq._entry.189, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.192 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.193, ptr @.str.113, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cF6MHZ \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.194 = internal global ptr @dump_firm_type_and_int_freq._entry.192, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.195 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.196, ptr @.str.113, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\01cINPUT2 \00", [22 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.197 = internal global ptr @dump_firm_type_and_int_freq._entry.195, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.198 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.199, ptr @.str.113, ptr @.str.2, i32 237, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\01cSCODE \00", [23 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.200 = internal global ptr @dump_firm_type_and_int_freq._entry.198, section ".printk_index", align 4
@dump_firm_type_and_int_freq._entry.201 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.202, ptr @.str.113, ptr @.str.2, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\01cHAS_IF_%d \00", [19 x i8] zeroinitializer }, align 32
@dump_firm_type_and_int_freq._entry_ptr.203 = internal global ptr @dump_firm_type_and_int_freq._entry.201, section ".printk_index", align 4
@load_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.204, ptr @.str.2, i32 552, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"load_firmware\00", [18 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr = internal global ptr @load_firmware._entry, section ".printk_index", align 4
@load_firmware._entry.205 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.206, ptr @.str.204, ptr @.str.2, i32 558, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016%s %d-%04x: Loading firmware for type=\00", [55 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.207 = internal global ptr @load_firmware._entry.205, section ".printk_index", align 4
@load_firmware._entry.208 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.204, ptr @.str.2, i32 561, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c(%x), id %016llx.\0A\00", [43 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.210 = internal global ptr @load_firmware._entry.208, section ".printk_index", align 4
@load_firmware._entry.211 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.212, ptr @.str.204, ptr @.str.2, i32 571, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s %d-%04x: Firmware chunk size is wrong\0A\00", [52 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.213 = internal global ptr @load_firmware._entry.211, section ".printk_index", align 4
@load_firmware._entry.214 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.204, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s %d-%04x: Error at RESET code %d\0A\00", [58 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.216 = internal global ptr @load_firmware._entry.214, section ".printk_index", align 4
@load_firmware._entry.217 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.215, ptr @.str.204, ptr @.str.2, i32 597, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.218 = internal global ptr @load_firmware._entry.217, section ".printk_index", align 4
@load_firmware._entry.219 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.220, ptr @.str.204, ptr @.str.2, i32 603, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\016%s %d-%04x: Invalid RESET code %d\0A\00", [59 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.221 = internal global ptr @load_firmware._entry.219, section ".printk_index", align 4
@load_firmware._entry.222 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.223, ptr @.str.204, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s %d-%04x: missing bytes: need %d, have %zd\0A\00", [48 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.224 = internal global ptr @load_firmware._entry.222, section ".printk_index", align 4
@load_firmware._entry.225 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.204, ptr @.str.2, i32 633, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.226 = internal global ptr @load_firmware._entry.225, section ".printk_index", align 4
@load_firmware._entry.227 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.228, ptr @.str.204, ptr @.str.2, i32 635, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s %d-%04x: %d returned from send\0A\00", [59 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.229 = internal global ptr @load_firmware._entry.227, section ".printk_index", align 4
@load_firmware._entry.230 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.231, ptr @.str.204, ptr @.str.2, i32 646, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s %d-%04x: error executing flush: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@load_firmware._entry_ptr.232 = internal global ptr @load_firmware._entry.230, section ".printk_index", align 4
@seek_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.233, ptr @.str.234, ptr @.str.2, i32 438, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s %d-%04x: %s called, want type=\00", [60 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"seek_firmware\00", [18 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr = internal global ptr @seek_firmware._entry, section ".printk_index", align 4
@seek_firmware._entry.235 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.234, ptr @.str.2, i32 442, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.236 = internal global ptr @seek_firmware._entry.235, section ".printk_index", align 4
@seek_firmware._entry.237 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.238, ptr @.str.234, ptr @.str.2, i32 446, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013%s %d-%04x: Error! firmware not loaded\0A\00", [54 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.239 = internal global ptr @seek_firmware._entry.237, section ".printk_index", align 4
@seek_firmware._entry.240 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.241, ptr @.str.234, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\017%s %d-%04x: Selecting best matching firmware (%d bits) for type=\00", [61 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.242 = internal global ptr @seek_firmware._entry.240, section ".printk_index", align 4
@seek_firmware._entry.243 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.244, ptr @.str.234, ptr @.str.2, i32 502, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\01c(%x), id %016llx:\0A\00", [43 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.245 = internal global ptr @seek_firmware._entry.243, section ".printk_index", align 4
@seek_firmware._entry.246 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.247, ptr @.str.234, ptr @.str.2, i32 516, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\017%s %d-%04x: %s firmware for type=\00", [60 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.248 = internal global ptr @seek_firmware._entry.246, section ".printk_index", align 4
@.str.249 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Can't find\00", [21 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Found\00", [26 x i8] zeroinitializer }, align 32
@seek_firmware._entry.251 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.234, ptr @.str.2, i32 520, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@seek_firmware._entry_ptr.252 = internal global ptr @seek_firmware._entry.251, section ".printk_index", align 4
@load_scode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.253, ptr @.str.2, i32 660, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"load_scode\00", [21 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr = internal global ptr @load_scode._entry, section ".printk_index", align 4
@load_scode._entry.254 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.255, ptr @.str.253, ptr @.str.2, i32 691, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\016%s %d-%04x: Loading SCODE for type=\00", [58 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.256 = internal global ptr @load_scode._entry.254, section ".printk_index", align 4
@load_scode._entry.257 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.209, ptr @.str.253, ptr @.str.2, i32 695, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.258 = internal global ptr @load_scode._entry.257, section ".printk_index", align 4
@load_scode._val = internal global { [4 x i8], [28 x i8] } { [4 x i8] c" \00\00\00", [28 x i8] zeroinitializer }, align 32
@load_scode._entry.259 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.253, ptr @.str.2, i32 698, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.260 = internal global ptr @load_scode._entry.259, section ".printk_index", align 4
@load_scode._val.261 = internal global { [4 x i8], [28 x i8] } { [4 x i8] c"\A0\00\00\00", [28 x i8] zeroinitializer }, align 32
@load_scode._entry.262 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.253, ptr @.str.2, i32 700, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.263 = internal global ptr @load_scode._entry.262, section ".printk_index", align 4
@load_scode._entry.264 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.253, ptr @.str.2, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.265 = internal global ptr @load_scode._entry.264, section ".printk_index", align 4
@load_scode._val.266 = internal global { [2 x i8], [30 x i8] } { [2 x i8] c"\00\8C", [30 x i8] zeroinitializer }, align 32
@load_scode._entry.267 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.253, ptr @.str.2, i32 708, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_scode._entry_ptr.268 = internal global ptr @load_scode._entry.267, section ".printk_index", align 4
@xc2028_get_reg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.269, ptr @.str.270, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\017%s %d-%04x: %s %04x called\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc2028_get_reg\00", [17 x i8] zeroinitializer }, align 32
@xc2028_get_reg._entry_ptr = internal global ptr @xc2028_get_reg._entry, section ".printk_index", align 4
@xc2028_get_reg._entry.271 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.272, ptr @.str.270, ptr @.str.2, i32 168, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013%s %d-%04x: i2c input error: rc = %d (should be %d)\0A\00", [41 x i8] zeroinitializer }, align 32
@xc2028_get_reg._entry_ptr.273 = internal global ptr @xc2028_get_reg._entry.271, section ".printk_index", align 4
@free_firmware._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.274, ptr @.str.2, i32 279, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_firmware\00", [18 x i8] zeroinitializer }, align 32
@free_firmware._entry_ptr = internal global ptr @free_firmware._entry, section ".printk_index", align 4
@xc2028_set_analog_freq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.275, ptr @.str.2, i32 1163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"xc2028_set_analog_freq\00", [41 x i8] zeroinitializer }, align 32
@xc2028_set_analog_freq._entry_ptr = internal global ptr @xc2028_set_analog_freq._entry, section ".printk_index", align 4
@.str.276 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"A2\00", [29 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A2/A\00", [27 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"A2/B\00", [27 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"NICAM\00", [26 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NICAM/A\00", [24 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"NICAM/B\00", [24 x i8] zeroinitializer }, align 32
@xc2028_get_frequency._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.282, ptr @.str.2, i32 1349, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"xc2028_get_frequency\00", [43 x i8] zeroinitializer }, align 32
@xc2028_get_frequency._entry_ptr = internal global ptr @xc2028_get_frequency._entry, section ".printk_index", align 4
@xc2028_signal._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.283, ptr @.str.2, i32 909, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xc2028_signal\00", [18 x i8] zeroinitializer }, align 32
@xc2028_signal._entry_ptr = internal global ptr @xc2028_signal._entry, section ".printk_index", align 4
@xc2028_signal._entry.284 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.285, ptr @.str.283, ptr @.str.2, i32 952, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: signal strength is %d\0A\00", [59 x i8] zeroinitializer }, align 32
@xc2028_signal._entry_ptr.286 = internal global ptr @xc2028_signal._entry.284, section ".printk_index", align 4
@xc2028_get_afc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.287, ptr @.str.288, ptr @.str.2, i32 998, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\017%s %d-%04x: AFC is %d Hz\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"xc2028_get_afc\00", [17 x i8] zeroinitializer }, align 32
@xc2028_get_afc._entry_ptr = internal global ptr @xc2028_get_afc._entry, section ".printk_index", align 4
@xc2028_set_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.289, ptr @.str.2, i32 1389, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xc2028_set_config\00", [46 x i8] zeroinitializer }, align 32
@xc2028_set_config._entry_ptr = internal global ptr @xc2028_set_config._entry, section ".printk_index", align 4
@xc2028_set_config._entry.290 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.291, ptr @.str.289, ptr @.str.2, i32 1427, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s %d-%04x: Failed to request firmware %s\0A\00", [51 x i8] zeroinitializer }, align 32
@xc2028_set_config._entry_ptr.292 = internal global ptr @xc2028_set_config._entry.290, section ".printk_index", align 4
@load_firmware_cb._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.293, ptr @.str.294, ptr @.str.2, i32 1367, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\017%s %d-%04x: request_firmware_nowait(): %s\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"load_firmware_cb\00", [47 x i8] zeroinitializer }, align 32
@load_firmware_cb._entry_ptr = internal global ptr @load_firmware_cb._entry, section ".printk_index", align 4
@.str.295 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"OK\00", [29 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@load_firmware_cb._entry.297 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.298, ptr @.str.294, ptr @.str.2, i32 1369, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s %d-%04x: Could not load firmware %s.\0A\00", [53 x i8] zeroinitializer }, align 32
@load_firmware_cb._entry_ptr.299 = internal global ptr @load_firmware_cb._entry.297, section ".printk_index", align 4
@load_all_firmwares._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.300, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.300 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"load_all_firmwares\00", [45 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr = internal global ptr @load_all_firmwares._entry, section ".printk_index", align 4
@load_all_firmwares._entry.301 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.302, ptr @.str.300, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.302 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013%s %d-%04x: Error: firmware file %s has invalid size!\0A\00", [39 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.303 = internal global ptr @load_all_firmwares._entry.301, section ".printk_index", align 4
@load_all_firmwares._entry.304 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.305, ptr @.str.300, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.305 = internal constant { [71 x i8], [57 x i8] } { [71 x i8] c"\016%s %d-%04x: Loading %d firmware images from %s, type: %s, ver %d.%d\0A\00", [57 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.306 = internal global ptr @load_all_firmwares._entry.304, section ".printk_index", align 4
@load_all_firmwares._entry.307 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.300, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.308 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013%s %d-%04x: Not enough memory to load firmware file.\0A\00", [40 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.309 = internal global ptr @load_all_firmwares._entry.307, section ".printk_index", align 4
@load_all_firmwares._entry.310 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.311, ptr @.str.300, ptr @.str.2, i32 351, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.311 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013%s %d-%04x: More firmware images in file than were expected!\0A\00", [32 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.312 = internal global ptr @load_all_firmwares._entry.310, section ".printk_index", align 4
@load_all_firmwares._entry.313 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.314, ptr @.str.300, ptr @.str.2, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.314 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013%s %d-%04x: Firmware type \00", [35 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.315 = internal global ptr @load_all_firmwares._entry.313, section ".printk_index", align 4
@load_all_firmwares._entry.316 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.317, ptr @.str.300, ptr @.str.2, i32 380, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.317 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\01c(%x), id %llx is corrupted (size=%zd, expected %d)\0A\00", [42 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.318 = internal global ptr @load_all_firmwares._entry.316, section ".printk_index", align 4
@load_all_firmwares._entry.319 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.308, ptr @.str.300, ptr @.str.2, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.320 = internal global ptr @load_all_firmwares._entry.319, section ".printk_index", align 4
@load_all_firmwares._entry.321 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.322, ptr @.str.300, ptr @.str.2, i32 390, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.322 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\017%s %d-%04x: Reading firmware type \00", [59 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.323 = internal global ptr @load_all_firmwares._entry.321, section ".printk_index", align 4
@load_all_firmwares._entry.324 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.325, ptr @.str.300, ptr @.str.2, i32 394, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.325 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\01c(%x), id %llx, size=%d.\0A\00", [37 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.326 = internal global ptr @load_all_firmwares._entry.324, section ".printk_index", align 4
@load_all_firmwares._entry.327 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.328, ptr @.str.300, ptr @.str.2, i32 406, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.328 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s %d-%04x: Firmware file is incomplete!\0A\00", [52 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.329 = internal global ptr @load_all_firmwares._entry.327, section ".printk_index", align 4
@load_all_firmwares._entry.330 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.331, ptr @.str.300, ptr @.str.2, i32 413, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.331 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s %d-%04x: Firmware header is incomplete!\0A\00", [50 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.332 = internal global ptr @load_all_firmwares._entry.330, section ".printk_index", align 4
@load_all_firmwares._entry.333 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.334, ptr @.str.300, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.334 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013%s %d-%04x: Error: firmware file is corrupted!\0A\00", [46 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.335 = internal global ptr @load_all_firmwares._entry.333, section ".printk_index", align 4
@load_all_firmwares._entry.336 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.337, ptr @.str.300, ptr @.str.2, i32 419, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.337 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016%s %d-%04x: Releasing partially loaded firmware file.\0A\00", [39 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.338 = internal global ptr @load_all_firmwares._entry.336, section ".printk_index", align 4
@load_all_firmwares._entry.339 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.340, ptr @.str.300, ptr @.str.2, i32 424, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.340 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\017%s %d-%04x: Firmware files loaded.\0A\00", [58 x i8] zeroinitializer }, align 32
@load_all_firmwares._entry_ptr.341 = internal global ptr @load_all_firmwares._entry.339, section ".printk_index", align 4
@xc2028_dvb_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.342, ptr @.str.2, i32 1328, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.342 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xc2028_dvb_release\00", [45 x i8] zeroinitializer }, align 32
@xc2028_dvb_release._entry_ptr = internal global ptr @xc2028_dvb_release._entry, section ".printk_index", align 4
@xc2028_dvb_release._entry.343 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.344, ptr @.str.342, ptr @.str.2, i32 1337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.344 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\016%s %d-%04x: destroying instance\0A\00", [61 x i8] zeroinitializer }, align 32
@xc2028_dvb_release._entry_ptr.345 = internal global ptr @xc2028_dvb_release._entry.343, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.346 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.347 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.348 = internal global [5 x i64] [i64 3, i64 32, i64 3, i64 11, i64 16]
@__sancov_gen_cov_switch_values.349 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.350 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@__sancov_gen_cov_switch_values.351 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.352 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.353 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.354 = internal global [4 x i64] [i64 2, i64 16, i64 2028, i64 3028]
@__sancov_gen_cov_switch_values.355 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.356 = internal global [4 x i64] [i64 2, i64 16, i64 0, i64 65535]
@___asan_gen_.357 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 44, i32 12 }
@___asan_gen_.360 = private unnamed_addr constant [12 x i8] c"no_poweroff\00", align 1
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 48, i32 12 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1463, i32 3 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1469, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant [18 x i8] c"xc2028_list_mutex\00", align 1
@___asan_gen_.384 = private unnamed_addr constant [27 x i8] c"hybrid_tuner_instance_list\00", align 1
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 72, i32 8 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1475, i32 13 }
@___asan_gen_.402 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1487, i32 3 }
@___asan_gen_.408 = private unnamed_addr constant [21 x i8] c"xc2028_dvb_tuner_ops\00", align 1
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1438, i32 35 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1500, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant [10 x i8] c"audio_std\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 54, i32 13 }
@___asan_gen_.423 = private unnamed_addr constant [14 x i8] c"firmware_name\00", align 1
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 67, i32 13 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 73, i32 8 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1303, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1305, i32 3 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1312, i32 8 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1314, i32 8 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1198, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1019, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1023, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1037, i32 8 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1110, i32 3 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1118, i32 8 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1120, i32 8 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1139, i32 7 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1146, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 726, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 743, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 746, i32 3 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 749, i32 4 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 751, i32 4 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 753, i32 4 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 754, i32 3 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 764, i32 3 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 780, i32 3 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 786, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 793, i32 3 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 805, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 822, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 830, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 838, i32 3 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 842, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 853, i32 4 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 856, i32 4 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 867, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 891, i32 3 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 179, i32 3 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 181, i32 3 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 183, i32 3 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 185, i32 3 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 187, i32 3 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 189, i32 3 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 191, i32 3 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 193, i32 3 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 195, i32 3 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 197, i32 3 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 199, i32 3 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 201, i32 3 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 203, i32 3 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 205, i32 3 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 207, i32 3 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 209, i32 3 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 211, i32 3 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 213, i32 3 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 215, i32 3 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 217, i32 3 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 219, i32 3 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 221, i32 3 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 223, i32 3 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 225, i32 3 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 227, i32 3 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 229, i32 3 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 231, i32 3 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 233, i32 3 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 235, i32 3 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 237, i32 3 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 239, i32 3 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 552, i32 2 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 558, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 560, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 571, i32 4 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 585, i32 5 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 596, i32 6 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 602, i32 5 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 617, i32 4 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 633, i32 9 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 635, i32 5 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 646, i32 4 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 438, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 441, i32 3 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 446, i32 3 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 498, i32 3 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 501, i32 3 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 516, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 519, i32 3 }
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 660, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 691, i32 2 }
@___asan_gen_.947 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 694, i32 2 }
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 698, i32 8 }
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 700, i32 8 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 704, i32 7 }
@___asan_gen_.963 = private unnamed_addr constant [5 x i8] c"_val\00", align 1
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 708, i32 7 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 163, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 168, i32 6 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 279, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1163, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 244, i32 28 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 246, i32 28 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 248, i32 28 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 250, i32 28 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 252, i32 28 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 254, i32 28 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1349, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 909, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 952, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 998, i32 2 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1389, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1426, i32 4 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1367, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1369, i32 3 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 310, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 316, i32 3 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 331, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 337, i32 3 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 351, i32 4 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 376, i32 4 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 378, i32 4 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 386, i32 4 }
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 390, i32 3 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 393, i32 4 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 406, i32 3 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 413, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 416, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 419, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 424, i32 3 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1328, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1170 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1171 = private constant [39 x i8] c"../drivers/media/tuners/tuner-xc2028.c\00", align 1
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1171, i32 1337, i32 3 }
@llvm.compiler.used = appending global [415 x ptr] [ptr @__UNIQUE_ID_audio_std297, ptr @__UNIQUE_ID_audio_stdtype296, ptr @__UNIQUE_ID_author301, ptr @__UNIQUE_ID_author302, ptr @__UNIQUE_ID_debug293, ptr @__UNIQUE_ID_debugtype292, ptr @__UNIQUE_ID_description300, ptr @__UNIQUE_ID_file303, ptr @__UNIQUE_ID_firmware305, ptr @__UNIQUE_ID_firmware306, ptr @__UNIQUE_ID_firmware_name299, ptr @__UNIQUE_ID_firmware_nametype298, ptr @__UNIQUE_ID_license304, ptr @__UNIQUE_ID_no_poweroff295, ptr @__UNIQUE_ID_no_powerofftype294, ptr @__ksymtab_xc2028_attach, ptr @__param_audio_std, ptr @__param_debug, ptr @__param_firmware_name, ptr @__param_no_poweroff, ptr @check_firmware._entry, ptr @check_firmware._entry.100, ptr @check_firmware._entry.103, ptr @check_firmware._entry.106, ptr @check_firmware._entry.109, ptr @check_firmware._entry.55, ptr @check_firmware._entry.58, ptr @check_firmware._entry.61, ptr @check_firmware._entry.64, ptr @check_firmware._entry.67, ptr @check_firmware._entry.70, ptr @check_firmware._entry.73, ptr @check_firmware._entry.76, ptr @check_firmware._entry.79, ptr @check_firmware._entry.82, ptr @check_firmware._entry.85, ptr @check_firmware._entry.88, ptr @check_firmware._entry.91, ptr @check_firmware._entry.94, ptr @check_firmware._entry.97, ptr @check_firmware._entry_ptr, ptr @check_firmware._entry_ptr.102, ptr @check_firmware._entry_ptr.105, ptr @check_firmware._entry_ptr.108, ptr @check_firmware._entry_ptr.111, ptr @check_firmware._entry_ptr.57, ptr @check_firmware._entry_ptr.60, ptr @check_firmware._entry_ptr.63, ptr @check_firmware._entry_ptr.66, ptr @check_firmware._entry_ptr.69, ptr @check_firmware._entry_ptr.72, ptr @check_firmware._entry_ptr.75, ptr @check_firmware._entry_ptr.78, ptr @check_firmware._entry_ptr.81, ptr @check_firmware._entry_ptr.84, ptr @check_firmware._entry_ptr.87, ptr @check_firmware._entry_ptr.90, ptr @check_firmware._entry_ptr.93, ptr @check_firmware._entry_ptr.96, ptr @check_firmware._entry_ptr.99, ptr @dump_firm_type_and_int_freq._entry, ptr @dump_firm_type_and_int_freq._entry.114, ptr @dump_firm_type_and_int_freq._entry.117, ptr @dump_firm_type_and_int_freq._entry.120, ptr @dump_firm_type_and_int_freq._entry.123, ptr @dump_firm_type_and_int_freq._entry.126, ptr @dump_firm_type_and_int_freq._entry.129, ptr @dump_firm_type_and_int_freq._entry.132, ptr @dump_firm_type_and_int_freq._entry.135, ptr @dump_firm_type_and_int_freq._entry.138, ptr @dump_firm_type_and_int_freq._entry.141, ptr @dump_firm_type_and_int_freq._entry.144, ptr @dump_firm_type_and_int_freq._entry.147, ptr @dump_firm_type_and_int_freq._entry.150, ptr @dump_firm_type_and_int_freq._entry.153, ptr @dump_firm_type_and_int_freq._entry.156, ptr @dump_firm_type_and_int_freq._entry.159, ptr @dump_firm_type_and_int_freq._entry.162, ptr @dump_firm_type_and_int_freq._entry.165, ptr @dump_firm_type_and_int_freq._entry.168, ptr @dump_firm_type_and_int_freq._entry.171, ptr @dump_firm_type_and_int_freq._entry.174, ptr @dump_firm_type_and_int_freq._entry.177, ptr @dump_firm_type_and_int_freq._entry.180, ptr @dump_firm_type_and_int_freq._entry.183, ptr @dump_firm_type_and_int_freq._entry.186, ptr @dump_firm_type_and_int_freq._entry.189, ptr @dump_firm_type_and_int_freq._entry.192, ptr @dump_firm_type_and_int_freq._entry.195, ptr @dump_firm_type_and_int_freq._entry.198, ptr @dump_firm_type_and_int_freq._entry.201, ptr @dump_firm_type_and_int_freq._entry_ptr, ptr @dump_firm_type_and_int_freq._entry_ptr.116, ptr @dump_firm_type_and_int_freq._entry_ptr.119, ptr @dump_firm_type_and_int_freq._entry_ptr.122, ptr @dump_firm_type_and_int_freq._entry_ptr.125, ptr @dump_firm_type_and_int_freq._entry_ptr.128, ptr @dump_firm_type_and_int_freq._entry_ptr.131, ptr @dump_firm_type_and_int_freq._entry_ptr.134, ptr @dump_firm_type_and_int_freq._entry_ptr.137, ptr @dump_firm_type_and_int_freq._entry_ptr.140, ptr @dump_firm_type_and_int_freq._entry_ptr.143, ptr @dump_firm_type_and_int_freq._entry_ptr.146, ptr @dump_firm_type_and_int_freq._entry_ptr.149, ptr @dump_firm_type_and_int_freq._entry_ptr.152, ptr @dump_firm_type_and_int_freq._entry_ptr.155, ptr @dump_firm_type_and_int_freq._entry_ptr.158, ptr @dump_firm_type_and_int_freq._entry_ptr.161, ptr @dump_firm_type_and_int_freq._entry_ptr.164, ptr @dump_firm_type_and_int_freq._entry_ptr.167, ptr @dump_firm_type_and_int_freq._entry_ptr.170, ptr @dump_firm_type_and_int_freq._entry_ptr.173, ptr @dump_firm_type_and_int_freq._entry_ptr.176, ptr @dump_firm_type_and_int_freq._entry_ptr.179, ptr @dump_firm_type_and_int_freq._entry_ptr.182, ptr @dump_firm_type_and_int_freq._entry_ptr.185, ptr @dump_firm_type_and_int_freq._entry_ptr.188, ptr @dump_firm_type_and_int_freq._entry_ptr.191, ptr @dump_firm_type_and_int_freq._entry_ptr.194, ptr @dump_firm_type_and_int_freq._entry_ptr.197, ptr @dump_firm_type_and_int_freq._entry_ptr.200, ptr @dump_firm_type_and_int_freq._entry_ptr.203, ptr @free_firmware._entry, ptr @free_firmware._entry_ptr, ptr @generic_set_freq._entry, ptr @generic_set_freq._entry.34, ptr @generic_set_freq._entry.37, ptr @generic_set_freq._entry.39, ptr @generic_set_freq._entry.43, ptr @generic_set_freq._entry.46, ptr @generic_set_freq._entry.48, ptr @generic_set_freq._entry.51, ptr @generic_set_freq._entry_ptr, ptr @generic_set_freq._entry_ptr.36, ptr @generic_set_freq._entry_ptr.38, ptr @generic_set_freq._entry_ptr.41, ptr @generic_set_freq._entry_ptr.44, ptr @generic_set_freq._entry_ptr.47, ptr @generic_set_freq._entry_ptr.50, ptr @generic_set_freq._entry_ptr.53, ptr @load_all_firmwares._entry, ptr @load_all_firmwares._entry.301, ptr @load_all_firmwares._entry.304, ptr @load_all_firmwares._entry.307, ptr @load_all_firmwares._entry.310, ptr @load_all_firmwares._entry.313, ptr @load_all_firmwares._entry.316, ptr @load_all_firmwares._entry.319, ptr @load_all_firmwares._entry.321, ptr @load_all_firmwares._entry.324, ptr @load_all_firmwares._entry.327, ptr @load_all_firmwares._entry.330, ptr @load_all_firmwares._entry.333, ptr @load_all_firmwares._entry.336, ptr @load_all_firmwares._entry.339, ptr @load_all_firmwares._entry_ptr, ptr @load_all_firmwares._entry_ptr.303, ptr @load_all_firmwares._entry_ptr.306, ptr @load_all_firmwares._entry_ptr.309, ptr @load_all_firmwares._entry_ptr.312, ptr @load_all_firmwares._entry_ptr.315, ptr @load_all_firmwares._entry_ptr.318, ptr @load_all_firmwares._entry_ptr.320, ptr @load_all_firmwares._entry_ptr.323, ptr @load_all_firmwares._entry_ptr.326, ptr @load_all_firmwares._entry_ptr.329, ptr @load_all_firmwares._entry_ptr.332, ptr @load_all_firmwares._entry_ptr.335, ptr @load_all_firmwares._entry_ptr.338, ptr @load_all_firmwares._entry_ptr.341, ptr @load_firmware._entry, ptr @load_firmware._entry.205, ptr @load_firmware._entry.208, ptr @load_firmware._entry.211, ptr @load_firmware._entry.214, ptr @load_firmware._entry.217, ptr @load_firmware._entry.219, ptr @load_firmware._entry.222, ptr @load_firmware._entry.225, ptr @load_firmware._entry.227, ptr @load_firmware._entry.230, ptr @load_firmware._entry_ptr, ptr @load_firmware._entry_ptr.207, ptr @load_firmware._entry_ptr.210, ptr @load_firmware._entry_ptr.213, ptr @load_firmware._entry_ptr.216, ptr @load_firmware._entry_ptr.218, ptr @load_firmware._entry_ptr.221, ptr @load_firmware._entry_ptr.224, ptr @load_firmware._entry_ptr.226, ptr @load_firmware._entry_ptr.229, ptr @load_firmware._entry_ptr.232, ptr @load_firmware_cb._entry, ptr @load_firmware_cb._entry.297, ptr @load_firmware_cb._entry_ptr, ptr @load_firmware_cb._entry_ptr.299, ptr @load_scode._entry, ptr @load_scode._entry.254, ptr @load_scode._entry.257, ptr @load_scode._entry.259, ptr @load_scode._entry.262, ptr @load_scode._entry.264, ptr @load_scode._entry.267, ptr @load_scode._entry_ptr, ptr @load_scode._entry_ptr.256, ptr @load_scode._entry_ptr.258, ptr @load_scode._entry_ptr.260, ptr @load_scode._entry_ptr.263, ptr @load_scode._entry_ptr.265, ptr @load_scode._entry_ptr.268, ptr @seek_firmware._entry, ptr @seek_firmware._entry.235, ptr @seek_firmware._entry.237, ptr @seek_firmware._entry.240, ptr @seek_firmware._entry.243, ptr @seek_firmware._entry.246, ptr @seek_firmware._entry.251, ptr @seek_firmware._entry_ptr, ptr @seek_firmware._entry_ptr.236, ptr @seek_firmware._entry_ptr.239, ptr @seek_firmware._entry_ptr.242, ptr @seek_firmware._entry_ptr.245, ptr @seek_firmware._entry_ptr.248, ptr @seek_firmware._entry_ptr.252, ptr @xc2028_attach._entry, ptr @xc2028_attach._entry.10, ptr @xc2028_attach._entry.14, ptr @xc2028_attach._entry.3, ptr @xc2028_attach._entry.6, ptr @xc2028_attach._entry_ptr, ptr @xc2028_attach._entry_ptr.12, ptr @xc2028_attach._entry_ptr.16, ptr @xc2028_attach._entry_ptr.5, ptr @xc2028_attach._entry_ptr.8, ptr @xc2028_dvb_release._entry, ptr @xc2028_dvb_release._entry.343, ptr @xc2028_dvb_release._entry_ptr, ptr @xc2028_dvb_release._entry_ptr.345, ptr @xc2028_get_afc._entry, ptr @xc2028_get_afc._entry_ptr, ptr @xc2028_get_frequency._entry, ptr @xc2028_get_frequency._entry_ptr, ptr @xc2028_get_reg._entry, ptr @xc2028_get_reg._entry.271, ptr @xc2028_get_reg._entry_ptr, ptr @xc2028_get_reg._entry_ptr.273, ptr @xc2028_set_analog_freq._entry, ptr @xc2028_set_analog_freq._entry_ptr, ptr @xc2028_set_config._entry, ptr @xc2028_set_config._entry.290, ptr @xc2028_set_config._entry_ptr, ptr @xc2028_set_config._entry_ptr.292, ptr @xc2028_set_params._entry, ptr @xc2028_set_params._entry_ptr, ptr @xc2028_signal._entry, ptr @xc2028_signal._entry.284, ptr @xc2028_signal._entry_ptr, ptr @xc2028_signal._entry_ptr.286, ptr @xc2028_sleep._entry, ptr @xc2028_sleep._entry.22, ptr @xc2028_sleep._entry.25, ptr @xc2028_sleep._entry.29, ptr @xc2028_sleep._entry_ptr, ptr @xc2028_sleep._entry_ptr.24, ptr @xc2028_sleep._entry_ptr.27, ptr @xc2028_sleep._entry_ptr.30, ptr @debug, ptr @no_poweroff, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @xc2028_list_mutex, ptr @hybrid_tuner_instance_list, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @xc2028_attach.__key, ptr @.str.13, ptr @xc2028_dvb_tuner_ops, ptr @.str.15, ptr @.str.17, ptr @audio_std, ptr @firmware_name, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @xc2028_sleep._val, ptr @.str.26, ptr @xc2028_sleep._val.28, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @generic_set_freq._val, ptr @.str.40, ptr @generic_set_freq._val.42, ptr @generic_set_freq._val.45, ptr @.str.49, ptr @.str.52, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.68, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @.str.83, ptr @.str.86, ptr @.str.89, ptr @.str.92, ptr @.str.95, ptr @.str.98, ptr @.str.101, ptr @.str.104, ptr @.str.107, ptr @.str.110, ptr @.str.112, ptr @.str.113, ptr @.str.115, ptr @.str.118, ptr @.str.121, ptr @.str.124, ptr @.str.127, ptr @.str.130, ptr @.str.133, ptr @.str.136, ptr @.str.139, ptr @.str.142, ptr @.str.145, ptr @.str.148, ptr @.str.151, ptr @.str.154, ptr @.str.157, ptr @.str.160, ptr @.str.163, ptr @.str.166, ptr @.str.169, ptr @.str.172, ptr @.str.175, ptr @.str.178, ptr @.str.181, ptr @.str.184, ptr @.str.187, ptr @.str.190, ptr @.str.193, ptr @.str.196, ptr @.str.199, ptr @.str.202, ptr @.str.204, ptr @.str.206, ptr @.str.209, ptr @.str.212, ptr @.str.215, ptr @.str.220, ptr @.str.223, ptr @.str.228, ptr @.str.231, ptr @.str.233, ptr @.str.234, ptr @.str.238, ptr @.str.241, ptr @.str.244, ptr @.str.247, ptr @.str.249, ptr @.str.250, ptr @.str.253, ptr @.str.255, ptr @load_scode._val, ptr @load_scode._val.261, ptr @load_scode._val.266, ptr @.str.269, ptr @.str.270, ptr @.str.272, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.285, ptr @.str.287, ptr @.str.288, ptr @.str.289, ptr @.str.291, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.298, ptr @.str.300, ptr @.str.302, ptr @.str.305, ptr @.str.308, ptr @.str.311, ptr @.str.314, ptr @.str.317, ptr @.str.322, ptr @.str.325, ptr @.str.328, ptr @.str.331, ptr @.str.334, ptr @.str.337, ptr @.str.340, ptr @.str.342, ptr @.str.344], section "llvm.metadata"
@0 = internal global [272 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @no_poweroff to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_attach._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_attach._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_list_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hybrid_tuner_instance_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_attach._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_attach._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_attach.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_dvb_tuner_ops to i32), i32 220, i32 256, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_attach._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_std to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @firmware_name to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_sleep._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_sleep._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_sleep._val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_sleep._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_sleep._val.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_sleep._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_set_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._val to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._val.42 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._val.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @generic_set_freq._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.85 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.94 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.97 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.100 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.103 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 97, i32 160, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @check_firmware._entry.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.114 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.117 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.126 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.129 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.132 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.135 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.144 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.147 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.150 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.153 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.156 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.159 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.162 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.165 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.177 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.180 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.183 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.186 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.189 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.195 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.198 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dump_firm_type_and_int_freq._entry.201 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.205 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.208 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.214 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.217 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.219 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.222 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.225 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.227 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware._entry.230 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.235 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.237 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.240 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.243 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.246 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seek_firmware._entry.251 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.254 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.257 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.947 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._val to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.259 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._val.261 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.262 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.264 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._val.266 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_scode._entry.267 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_get_reg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_get_reg._entry.271 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @free_firmware._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_set_analog_freq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_get_frequency._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_signal._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_signal._entry.284 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_get_afc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_set_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_set_config._entry.290 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware_cb._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_firmware_cb._entry.297 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.300 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.301 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.302 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.304 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.305 to i32), i32 71, i32 128, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.307 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.308 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.310 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.311 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.313 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.314 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.316 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.317 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.319 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.321 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.322 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.324 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.325 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.327 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.328 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.330 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.331 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.333 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.334 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.336 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.337 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @load_all_firmwares._entry.339 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.340 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_dvb_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.342 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xc2028_dvb_release._entry.343 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.344 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @xc2028_attach(ptr noundef %fe, ptr noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %cmp = icmp eq ptr %cfg, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %tobool3.not = icmp eq ptr %fe, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end2
  tail call void @mutex_lock_nested(ptr noundef nonnull @xc2028_list_mutex, i32 noundef 0) #10
  %priv.0203 = load ptr, ptr @hybrid_tuner_instance_list, align 4
  %cmp12.not204 = icmp eq ptr %priv.0203, @hybrid_tuner_instance_list
  br i1 %cmp12.not204, label %if.end10.if.then59_crit_edge, label %for.body.lr.ph

if.end10.if.then59_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

for.body.lr.ph:                                   ; preds = %if.end10
  %1 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %cfg, align 4
  %tobool13.not = icmp eq ptr %2, null
  %nr.i192 = getelementptr inbounds %struct.i2c_adapter, ptr %2, i32 0, i32 11
  %i2c_addr = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %priv.0205 = phi ptr [ %priv.0203, %for.body.lr.ph ], [ %priv.0, %for.inc.for.body_crit_edge ]
  br i1 %tobool13.not, label %for.body.for.inc_crit_edge, label %land.lhs.true

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true:                                    ; preds = %for.body
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %priv.0205, i32 0, i32 1
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %priv.0205, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 4
  %tobool14.not = icmp eq ptr %4, null
  br i1 %tobool14.not, label %land.lhs.true.for.inc_crit_edge, label %land.lhs.true15

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true15:                                  ; preds = %land.lhs.true
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  %7 = ptrtoint ptr %nr.i192 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i192, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp21 = icmp eq i32 %6, %8
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true15.for.inc_crit_edge

land.lhs.true15.for.inc_crit_edge:                ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true22:                                  ; preds = %land.lhs.true15
  %9 = ptrtoint ptr %i2c_addr to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_addr, align 4
  %11 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_props, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp25 = icmp eq i8 %10, %12
  br i1 %cmp25, label %for.end, label %land.lhs.true22.for.inc_crit_edge

land.lhs.true22.for.inc_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %land.lhs.true22.for.inc_crit_edge, %land.lhs.true15.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %13 = ptrtoint ptr %priv.0205 to i32
  call void @__asan_load4_noabort(i32 %13)
  %priv.0 = load ptr, ptr %priv.0205, align 4
  %cmp12.not = icmp eq ptr %priv.0, @hybrid_tuner_instance_list
  br i1 %cmp12.not, label %for.inc.if.then59_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.if.then59_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

for.end:                                          ; preds = %land.lhs.true22
  %name = getelementptr inbounds %struct.xc2028_data, ptr %priv.0205, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %name, align 4
  %conv43 = zext i8 %10 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %15, i32 noundef %6, i32 noundef %conv43) #13
  %count = getelementptr inbounds %struct.xc2028_data, ptr %priv.0205, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 8
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %cmp57 = icmp eq i32 %inc, 0
  br i1 %cmp57, label %for.end.if.then59_crit_edge, label %for.end.__fail_crit_edge

for.end.__fail_crit_edge:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %__fail

for.end.if.then59_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %for.end.if.then59_crit_edge, %for.inc.if.then59_crit_edge, %if.end10.if.then59_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %18 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %18, i32 noundef 3520, i32 noundef 216) #14
  %tobool61.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool61.not, label %if.then59.sw.epilog_crit_edge, label %if.end63

if.then59.sw.epilog_crit_edge:                    ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end63:                                         ; preds = %if.then59
  %i2c_addr64 = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 1
  %19 = ptrtoint ptr %i2c_addr64 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %i2c_addr64, align 4
  %i2c_props65 = getelementptr inbounds %struct.xc2028_data, ptr %call7.i.i, i32 0, i32 1
  %21 = ptrtoint ptr %i2c_props65 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %i2c_props65, align 8
  %22 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg, align 4
  %adap69 = getelementptr inbounds %struct.xc2028_data, ptr %call7.i.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %adap69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %adap69, align 4
  %name71 = getelementptr inbounds %struct.xc2028_data, ptr %call7.i.i, i32 0, i32 1, i32 3
  %25 = ptrtoint ptr %name71 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @.str.9, ptr %name71, align 4
  %tobool82.not = icmp eq ptr %23, null
  br i1 %tobool82.not, label %if.end63.cond.end88_crit_edge, label %cond.true83

if.end63.cond.end88_crit_edge:                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end88

cond.true83:                                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i194 = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %26 = ptrtoint ptr %nr.i194 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %nr.i194, align 4
  br label %cond.end88

cond.end88:                                       ; preds = %cond.true83, %if.end63.cond.end88_crit_edge
  %cond89 = phi i32 [ %27, %cond.true83 ], [ -1, %if.end63.cond.end88_crit_edge ]
  %conv92 = zext i8 %20 to i32
  %call93 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.9, i32 noundef %cond89, i32 noundef %conv92) #13
  %28 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %28, ptr noundef nonnull @hybrid_tuner_instance_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %cond.end88.list_add_tail.exit_crit_edge

cond.end88.list_add_tail.exit_crit_edge:          ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #12
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @hybrid_tuner_instance_list, i32 0, i32 1), align 4
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @hybrid_tuner_instance_list, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %call7.i.i, ptr %28, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %cond.end88.list_add_tail.exit_crit_edge
  %count100 = getelementptr inbounds %struct.xc2028_data, ptr %call7.i.i, i32 0, i32 1, i32 2
  %32 = ptrtoint ptr %count100 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %count100, align 8
  %inc101 = add i32 %33, 1
  store i32 %inc101, ptr %count100, align 8
  br label %__fail

__fail:                                           ; preds = %list_add_tail.exit, %for.end.__fail_crit_edge
  %__ret.1 = phi i32 [ %inc101, %list_add_tail.exit ], [ %inc, %for.end.__fail_crit_edge ]
  %priv.1 = phi ptr [ %call7.i.i, %list_add_tail.exit ], [ %priv.0205, %for.end.__fail_crit_edge ]
  %34 = zext i32 %__ret.1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %__ret.1, label %__fail.sw.epilog_crit_edge [
    i32 0, label %fail
    i32 1, label %sw.bb106
    i32 2, label %__fail.sw.epilog.sink.split_crit_edge
  ]

__fail.sw.epilog.sink.split_crit_edge:            ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.sink.split

__fail.sw.epilog_crit_edge:                       ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb106:                                         ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #12
  %max_len = getelementptr inbounds %struct.xc2028_data, ptr %priv.1, i32 0, i32 10, i32 1
  %35 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 13, ptr %max_len, align 4
  %lock = getelementptr inbounds %struct.xc2028_data, ptr %priv.1, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @xc2028_attach.__key) #10
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb106, %__fail.sw.epilog.sink.split_crit_edge
  %tuner_priv111 = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %36 = ptrtoint ptr %tuner_priv111 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %priv.1, ptr %tuner_priv111, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %__fail.sw.epilog_crit_edge, %if.then59.sw.epilog_crit_edge
  %priv.1200 = phi ptr [ %priv.1, %__fail.sw.epilog_crit_edge ], [ null, %if.then59.sw.epilog_crit_edge ], [ %priv.1, %sw.epilog.sink.split ]
  %tuner_ops = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 1, i32 32
  %37 = call ptr @memcpy(ptr %tuner_ops, ptr @xc2028_dvb_tuner_ops, i32 220)
  %i2c_props118 = getelementptr inbounds %struct.xc2028_data, ptr %priv.1200, i32 0, i32 1
  %name119 = getelementptr inbounds %struct.xc2028_data, ptr %priv.1200, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %name119 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name119, align 4
  %adap121 = getelementptr inbounds %struct.xc2028_data, ptr %priv.1200, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %adap121 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap121, align 4
  %tobool122.not = icmp eq ptr %41, null
  br i1 %tobool122.not, label %sw.epilog.cond.end128_crit_edge, label %cond.true123

sw.epilog.cond.end128_crit_edge:                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end128

cond.true123:                                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i195 = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %nr.i195 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr.i195, align 4
  br label %cond.end128

cond.end128:                                      ; preds = %cond.true123, %sw.epilog.cond.end128_crit_edge
  %cond129 = phi i32 [ %43, %cond.true123 ], [ -1, %sw.epilog.cond.end128_crit_edge ]
  %44 = ptrtoint ptr %i2c_props118 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_props118, align 8
  %conv132 = zext i8 %45 to i32
  %call133 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %39, i32 noundef %cond129, i32 noundef %conv132, ptr noundef nonnull @.str.17) #13
  %ctrl138 = getelementptr inbounds %struct.xc2028_config, ptr %cfg, i32 0, i32 2
  %46 = ptrtoint ptr %ctrl138 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ctrl138, align 4
  %tobool139.not = icmp eq ptr %47, null
  br i1 %tobool139.not, label %cond.end128.if.end143_crit_edge, label %if.then140

cond.end128.if.end143_crit_edge:                  ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end143

if.then140:                                       ; preds = %cond.end128
  call void @__sanitizer_cov_trace_pc() #12
  %call142 = tail call i32 @xc2028_set_config(ptr noundef nonnull %fe, ptr noundef nonnull %47)
  br label %if.end143

if.end143:                                        ; preds = %if.then140, %cond.end128.if.end143_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @xc2028_list_mutex) #10
  br label %cleanup

fail:                                             ; preds = %__fail
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull @xc2028_list_mutex) #10
  tail call void @xc2028_dvb_release(ptr noundef nonnull %fe)
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end143, %do.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %fe, %if.end143 ], [ null, %fail ], [ null, %do.end7 ], [ null, %if.end.cleanup_crit_edge ]
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc2028_set_config(ptr noundef %fe, ptr nocapture noundef readonly %priv_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.289) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %lock = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %ctrl = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10
  %11 = call ptr @memcpy(ptr %ctrl, ptr %priv_cfg, i32 28)
  %12 = load i8, ptr @firmware_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool13.not = icmp eq i8 %12, 0
  br i1 %tobool13.not, label %land.lhs.true, label %do.end12.if.end24_crit_edge

do.end12.if.end24_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true:                                    ; preds = %do.end12
  %13 = ptrtoint ptr %priv_cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv_cfg, align 4
  %tobool14.not = icmp eq ptr %14, null
  br i1 %tobool14.not, label %land.lhs.true.if.end24_crit_edge, label %land.lhs.true15

land.lhs.true.if.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true15:                                  ; preds = %land.lhs.true
  %fname16 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %fname16 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fname16, align 8
  %tobool17.not = icmp eq ptr %16, null
  br i1 %tobool17.not, label %land.lhs.true15.if.end24_crit_edge, label %land.lhs.true18

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

land.lhs.true18:                                  ; preds = %land.lhs.true15
  %call21 = tail call i32 @strcmp(ptr noundef nonnull %14, ptr noundef nonnull %16) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true18.if.end24_crit_edge, label %if.then23

land.lhs.true18.if.end24_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @free_firmware(ptr noundef %1)
  br label %if.end24

if.end24:                                         ; preds = %if.then23, %land.lhs.true18.if.end24_crit_edge, %land.lhs.true15.if.end24_crit_edge, %land.lhs.true.if.end24_crit_edge, %do.end12.if.end24_crit_edge
  %max_len = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 1
  %17 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %18)
  %cmp = icmp slt i32 %18, 9
  br i1 %cmp, label %if.then27, label %if.end24.if.end30_crit_edge

if.end24.if.end30_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 13, ptr %max_len, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then27, %if.end24.if.end30_crit_edge
  %state = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp31 = icmp eq i32 %21, 0
  br i1 %cmp31, label %if.then33, label %if.end30.unlock_crit_edge

if.end30.unlock_crit_edge:                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.then33:                                        ; preds = %if.end30
  %22 = load i8, ptr @firmware_name, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool34.not = icmp eq i8 %22, 0
  br i1 %tobool34.not, label %if.end40, label %if.end40.thread

if.end40.thread:                                  ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #12
  %23 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @firmware_name, ptr %23, align 8
  br label %if.end44

if.end40:                                         ; preds = %if.then33
  %25 = ptrtoint ptr %priv_cfg to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %priv_cfg, align 4
  %call37 = tail call noalias ptr @kstrdup(ptr noundef %26, i32 noundef 3264) #10
  %27 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call37, ptr %27, align 8
  %tobool42.not = icmp eq ptr %call37, null
  br i1 %tobool42.not, label %if.end40.unlock_crit_edge, label %if.end40.if.end44_crit_edge

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end40.unlock_crit_edge:                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock

if.end44:                                         ; preds = %if.end40.if.end44_crit_edge, %if.end40.thread
  %29 = phi ptr [ %23, %if.end40.thread ], [ %27, %if.end40.if.end44_crit_edge ]
  %firmware_name.sink121 = phi ptr [ @firmware_name, %if.end40.thread ], [ %call37, %if.end40.if.end44_crit_edge ]
  %i2c_props46 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %adap47 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %30 = ptrtoint ptr %adap47 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %adap47, align 4
  %parent = getelementptr inbounds %struct.i2c_adapter, ptr %31, i32 0, i32 9, i32 1
  %32 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent, align 8
  %call48 = tail call i32 @request_firmware_nowait(ptr noundef null, i1 noundef zeroext true, ptr noundef nonnull %firmware_name.sink121, ptr noundef %33, i32 noundef 3264, ptr noundef %fe, ptr noundef nonnull @load_firmware_cb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp49 = icmp slt i32 %call48, 0
  br i1 %cmp49, label %do.end56, label %if.end44.unlock.sink.split_crit_edge

if.end44.unlock.sink.split_crit_edge:             ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock.sink.split

do.end56:                                         ; preds = %if.end44
  %name59 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name59, align 4
  %36 = ptrtoint ptr %adap47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap47, align 4
  %tobool62.not = icmp eq ptr %37, null
  br i1 %tobool62.not, label %do.end56.cond.end68_crit_edge, label %cond.true63

do.end56.cond.end68_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end68

cond.true63:                                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i118 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %nr.i118 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr.i118, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true63, %do.end56.cond.end68_crit_edge
  %cond69 = phi i32 [ %39, %cond.true63 ], [ -1, %do.end56.cond.end68_crit_edge ]
  %40 = ptrtoint ptr %i2c_props46 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_props46, align 8
  %conv72 = zext i8 %41 to i32
  %42 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %29, align 8
  %call74 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.291, ptr noundef %35, i32 noundef %cond69, i32 noundef %conv72, ptr noundef %43) #13
  br label %unlock.sink.split

unlock.sink.split:                                ; preds = %cond.end68, %if.end44.unlock.sink.split_crit_edge
  %.sink = phi i32 [ 4, %cond.end68 ], [ 1, %if.end44.unlock.sink.split_crit_edge ]
  %44 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %.sink, ptr %state, align 4
  br label %unlock

unlock:                                           ; preds = %unlock.sink.split, %if.end40.unlock_crit_edge, %if.end30.unlock_crit_edge
  %rc.0 = phi i32 [ 0, %if.end30.unlock_crit_edge ], [ -12, %if.end40.unlock_crit_edge ], [ %call48, %unlock.sink.split ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xc2028_dvb_release(ptr nocapture noundef %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.342) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  tail call void @mutex_lock_nested(ptr noundef nonnull @xc2028_list_mutex, i32 noundef 0) #10
  %tobool13.not = icmp eq ptr %1, null
  br i1 %tobool13.not, label %do.end12.if.end60_crit_edge, label %if.then14

do.end12.if.end60_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then14:                                        ; preds = %do.end12
  %count = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 2
  %11 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %phi.cmp = icmp eq i32 %12, 1
  br i1 %phi.cmp, label %if.then19, label %if.then14.if.then22_crit_edge

if.then14.if.then22_crit_edge:                    ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then22

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @free_firmware(ptr noundef nonnull %1)
  br label %if.then22

if.then22:                                        ; preds = %if.then19, %if.then14.if.then22_crit_edge
  %i2c_props24 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %count, align 8
  %dec = add i32 %14, -1
  store i32 %dec, ptr %count, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool30.not = icmp eq i32 %dec, 0
  br i1 %tobool30.not, label %do.end36, label %if.then22.if.end60_crit_edge

if.then22.if.end60_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

do.end36:                                         ; preds = %if.then22
  %name39 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %name39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name39, align 4
  %adap41 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %adap41 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap41, align 4
  %tobool42.not = icmp eq ptr %18, null
  br i1 %tobool42.not, label %do.end36.cond.end48_crit_edge, label %cond.true43

do.end36.cond.end48_crit_edge:                    ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end48

cond.true43:                                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i82 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i82 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i82, align 4
  br label %cond.end48

cond.end48:                                       ; preds = %cond.true43, %do.end36.cond.end48_crit_edge
  %cond49 = phi i32 [ %20, %cond.true43 ], [ -1, %do.end36.cond.end48_crit_edge ]
  %21 = ptrtoint ptr %i2c_props24 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_props24, align 8
  %conv52 = zext i8 %22 to i32
  %call53 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.344, ptr noundef %16, i32 noundef %cond49, i32 noundef %conv52) #13
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef nonnull %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %cond.end48.list_del.exit_crit_edge

cond.end48.list_del.exit_crit_edge:               ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %cond.end48
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %cond.end48.list_del.exit_crit_edge
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %if.end60

if.end60:                                         ; preds = %list_del.exit, %if.then22.if.end60_crit_edge, %do.end12.if.end60_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @xc2028_list_mutex) #10
  %31 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %tuner_priv, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc2028_sleep(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  %msg.i189 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %state.i = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %state.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.346)
  switch i32 %3, label %if.end.thread [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge209
    i32 2, label %if.end2
    i32 4, label %sw.bb3.i
  ]

entry.cleanup_crit_edge209:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.thread:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end2:                                          ; preds = %entry
  %5 = load i32, ptr @no_poweroff, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %lor.lhs.false, label %if.end2.cleanup_crit_edge

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end2
  %disable_power_mgmt = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 4
  %6 = ptrtoint ptr %disable_power_mgmt to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %disable_power_mgmt, align 4
  %7 = and i8 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  br i1 %tobool4.not, label %do.body, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false
  %8 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool7.not = icmp eq i32 %8, 0
  br i1 %tobool7.not, label %do.body.if.end55_crit_edge, label %do.end

do.body.if.end55_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end:                                           ; preds = %do.body
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %adap, align 4
  %tobool12.not = icmp eq ptr %12, null
  br i1 %tobool12.not, label %do.end.do.end22_crit_edge, label %cond.true

do.end.do.end22_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end22

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nr.i, align 4
  br label %do.end22

do.end22:                                         ; preds = %cond.true, %do.end.do.end22_crit_edge
  %cond = phi i32 [ %14, %cond.true ], [ -1, %do.end.do.end22_crit_edge ]
  %15 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %16 to i32
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef %10, i32 noundef %cond, i32 noundef %conv) #13
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.pr)
  %cmp23 = icmp sgt i32 %.pr, 1
  br i1 %cmp23, label %do.end32, label %do.end22.if.end55_crit_edge

do.end22.if.end55_crit_edge:                      ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end55

do.end32:                                         ; preds = %do.end22
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %19 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %adap, align 4
  %tobool38.not = icmp eq ptr %20, null
  br i1 %tobool38.not, label %do.end32.cond.end44_crit_edge, label %cond.true39

do.end32.cond.end44_crit_edge:                    ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end44

cond.true39:                                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i187 = getelementptr inbounds %struct.i2c_adapter, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %nr.i187 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %nr.i187, align 4
  br label %cond.end44

cond.end44:                                       ; preds = %cond.true39, %do.end32.cond.end44_crit_edge
  %cond45 = phi i32 [ %22, %cond.true39 ], [ -1, %do.end32.cond.end44_crit_edge ]
  %23 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %i2c_props, align 8
  %conv48 = zext i8 %24 to i32
  %call49 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23, ptr noundef %18, i32 noundef %cond45, i32 noundef %conv48) #13
  tail call void @dump_stack() #13
  br label %if.end55

if.end55:                                         ; preds = %cond.end44, %do.end22.if.end55_crit_edge, %do.body.if.end55_crit_edge
  %lock = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %firm_version = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 7
  %25 = ptrtoint ptr %firm_version to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %firm_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 514, i16 %26)
  %cmp57 = icmp ult i16 %26, 514
  %i2c_props60 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  br i1 %cmp57, label %if.then59, label %if.else99

if.then59:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %27 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 327679, ptr %27, align 4
  %29 = ptrtoint ptr %i2c_props60 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %i2c_props60, align 4
  %conv.i = zext i8 %30 to i16
  %31 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %33 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @xc2028_sleep._val, ptr %buf4.i, align 4
  %adap.i = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %34 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %35, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 1
  %len.call.i = select i1 %cmp.i, i32 4, i32 %call.i
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.call.i)
  %cmp62.not = icmp eq i32 %len.call.i, 4
  br i1 %cmp62.not, label %if.else, label %do.end69

do.end69:                                         ; preds = %if.then59
  %name72 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %36 = ptrtoint ptr %name72 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %name72, align 4
  %38 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %adap.i, align 4
  %tobool75.not = icmp eq ptr %39, null
  br i1 %tobool75.not, label %do.end69.cond.end81_crit_edge, label %cond.true76

do.end69.cond.end81_crit_edge:                    ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end81

cond.true76:                                      ; preds = %do.end69
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i188 = getelementptr inbounds %struct.i2c_adapter, ptr %39, i32 0, i32 11
  %40 = ptrtoint ptr %nr.i188 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr.i188, align 4
  br label %cond.end81

cond.end81:                                       ; preds = %cond.true76, %do.end69.cond.end81_crit_edge
  %cond82 = phi i32 [ %41, %cond.true76 ], [ -1, %do.end69.cond.end81_crit_edge ]
  %42 = ptrtoint ptr %i2c_props60 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %i2c_props60, align 8
  %conv85 = zext i8 %43 to i32
  %call86 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %37, i32 noundef %cond82, i32 noundef %conv85, i32 noundef 1312, i32 noundef %len.call.i) #13
  br label %if.end142

if.else:                                          ; preds = %if.then59
  %msleep = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 2
  %44 = ptrtoint ptr %msleep to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %msleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool92.not = icmp eq i32 %45, 0
  br i1 %tobool92.not, label %if.else.if.then145_crit_edge, label %if.else.if.then145.sink.split_crit_edge

if.else.if.then145.sink.split_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145.sink.split

if.else.if.then145_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145

if.else99:                                        ; preds = %if.end55
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i189) #10
  %46 = getelementptr inbounds i8, ptr %msg.i189, i32 4
  %47 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 327679, ptr %46, align 4
  %48 = ptrtoint ptr %i2c_props60 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %i2c_props60, align 4
  %conv.i190 = zext i8 %49 to i16
  %50 = ptrtoint ptr %msg.i189 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %conv.i190, ptr %msg.i189, align 4
  %flags.i191 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i189, i32 0, i32 1
  %51 = ptrtoint ptr %flags.i191 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %flags.i191, align 2
  %buf4.i193 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i189, i32 0, i32 3
  %52 = ptrtoint ptr %buf4.i193 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @xc2028_sleep._val.28, ptr %buf4.i193, align 4
  %adap.i194 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %53 = ptrtoint ptr %adap.i194 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %adap.i194, align 4
  %call.i195 = call i32 @i2c_transfer(ptr noundef %54, ptr noundef nonnull %msg.i189, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i195)
  %cmp.i196 = icmp eq i32 %call.i195, 1
  %len.call.i197 = select i1 %cmp.i196, i32 4, i32 %call.i195
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i189) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.call.i197)
  %cmp103.not = icmp eq i32 %len.call.i197, 4
  br i1 %cmp103.not, label %if.else132, label %do.end110

do.end110:                                        ; preds = %if.else99
  %name113 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %55 = ptrtoint ptr %name113 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %name113, align 4
  %57 = ptrtoint ptr %adap.i194 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %adap.i194, align 4
  %tobool116.not = icmp eq ptr %58, null
  br i1 %tobool116.not, label %do.end110.cond.end122_crit_edge, label %cond.true117

do.end110.cond.end122_crit_edge:                  ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end122

cond.true117:                                     ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i198 = getelementptr inbounds %struct.i2c_adapter, ptr %58, i32 0, i32 11
  %59 = ptrtoint ptr %nr.i198 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %nr.i198, align 4
  br label %cond.end122

cond.end122:                                      ; preds = %cond.true117, %do.end110.cond.end122_crit_edge
  %cond123 = phi i32 [ %60, %cond.true117 ], [ -1, %do.end110.cond.end122_crit_edge ]
  %61 = ptrtoint ptr %i2c_props60 to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %i2c_props60, align 8
  %conv126 = zext i8 %62 to i32
  %call127 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %56, i32 noundef %cond123, i32 noundef %conv126, i32 noundef 1314, i32 noundef %len.call.i197) #13
  br label %if.end142

if.else132:                                       ; preds = %if.else99
  %msleep134 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 2
  %63 = ptrtoint ptr %msleep134 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %msleep134, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool135.not = icmp eq i32 %64, 0
  br i1 %tobool135.not, label %if.else132.if.then145_crit_edge, label %if.else132.if.then145.sink.split_crit_edge

if.else132.if.then145.sink.split_crit_edge:       ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145.sink.split

if.else132.if.then145_crit_edge:                  ; preds = %if.else132
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145

if.end142:                                        ; preds = %cond.end122, %cond.end81
  %rc.0 = phi i32 [ %len.call.i, %cond.end81 ], [ %len.call.i197, %cond.end122 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %rc.0)
  %cmp143 = icmp sgt i32 %rc.0, -1
  br i1 %cmp143, label %if.end142.if.then145_crit_edge, label %if.end142.if.end146_crit_edge

if.end142.if.end146_crit_edge:                    ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end146

if.end142.if.then145_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then145

if.then145.sink.split:                            ; preds = %if.else132.if.then145.sink.split_crit_edge, %if.else.if.then145.sink.split_crit_edge
  %.sink = phi i32 [ %45, %if.else.if.then145.sink.split_crit_edge ], [ %64, %if.else132.if.then145.sink.split_crit_edge ]
  call void @msleep(i32 noundef %.sink) #10
  br label %if.then145

if.then145:                                       ; preds = %if.then145.sink.split, %if.end142.if.then145_crit_edge, %if.else132.if.then145_crit_edge, %if.else.if.then145_crit_edge
  %rc.0208 = phi i32 [ %rc.0, %if.end142.if.then145_crit_edge ], [ 4, %if.else132.if.then145_crit_edge ], [ 4, %if.else.if.then145_crit_edge ], [ 4, %if.then145.sink.split ]
  %65 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 3, ptr %state.i, align 4
  br label %if.end146

if.end146:                                        ; preds = %if.then145, %if.end142.if.end146_crit_edge
  %rc.0207 = phi i32 [ %rc.0208, %if.then145 ], [ %rc.0, %if.end142.if.end146_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end146, %lor.lhs.false.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.thread, %sw.bb3.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge209
  %retval.0 = phi i32 [ %rc.0207, %if.end146 ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end2.cleanup_crit_edge ], [ -19, %sw.bb3.i ], [ -11, %entry.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge209 ], [ 0, %if.end.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc2028_set_params(ptr nocapture noundef readonly %fe) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %13 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %14 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %8, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.32) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %state.i = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 3
  %15 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state.i, align 4
  %17 = zext i32 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.347)
  switch i32 %16, label %if.end16 [
    i32 0, label %do.end12.cleanup_crit_edge
    i32 1, label %do.end12.cleanup_crit_edge196
    i32 4, label %sw.bb3.i
  ]

do.end12.cleanup_crit_edge196:                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.i:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  %18 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.348)
  switch i32 %1, label %if.end16.cleanup_crit_edge [
    i32 3, label %if.end16.sw.bb_crit_edge
    i32 16, label %if.end16.sw.bb_crit_edge197
    i32 11, label %if.end16.sw.epilog38_crit_edge
  ]

if.end16.sw.epilog38_crit_edge:                   ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog38

if.end16.sw.bb_crit_edge197:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end16.sw.bb_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end16.sw.bb_crit_edge, %if.end16.sw.bb_crit_edge197
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp17 = icmp ult i32 %3, 6000001
  %spec.select = select i1 %cmp17, i32 64, i32 0
  %type21 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 6
  %19 = ptrtoint ptr %type21 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load = load i8, ptr %type21, align 4
  %bf.lshr = lshr i8 %bf.load, 6
  %bf.cast = zext i8 %bf.lshr to i32
  %20 = zext i32 %bf.cast to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.349)
  switch i32 %bf.cast, label %sw.default [
    i32 1, label %sw.bb22
    i32 2, label %sw.bb24
  ]

sw.bb22:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %or23 = or i32 %spec.select, 16
  br label %sw.epilog38

sw.bb24:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %or25 = or i32 %spec.select, 8
  br label %sw.epilog38

sw.default:                                       ; preds = %sw.bb
  %demod28 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 5
  %21 = ptrtoint ptr %demod28 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %demod28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4560, i32 %22)
  %cmp29 = icmp eq i32 %22, 4560
  br i1 %cmp29, label %if.then31, label %if.else

if.then31:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %or32 = or i32 %spec.select, 16
  br label %sw.epilog38

if.else:                                          ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %or33 = or i32 %spec.select, 8
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %if.else, %if.then31, %sw.bb24, %sw.bb22, %if.end16.sw.epilog38_crit_edge
  %type.1 = phi i32 [ %or32, %if.then31 ], [ %or33, %if.else ], [ %or25, %sw.bb24 ], [ %or23, %sw.bb22 ], [ 65552, %if.end16.sw.epilog38_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 6000001, i32 %3)
  %cmp39 = icmp ult i32 %3, 6000001
  br i1 %cmp39, label %if.then41, label %if.else49

if.then41:                                        ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_pc() #12
  %or42 = or i32 %type.1, 32
  %vhfbw7 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 4
  %23 = ptrtoint ptr %vhfbw7 to i32
  call void @__asan_load1_noabort(i32 %23)
  %bf.load44 = load i8, ptr %vhfbw7, align 4
  %bf.clear47 = and i8 %bf.load44, -49
  store i8 %bf.clear47, ptr %vhfbw7, align 4
  br label %if.end122

if.else49:                                        ; preds = %sw.epilog38
  call void @__sanitizer_cov_trace_const_cmp4(i32 7000001, i32 %3)
  %cmp50 = icmp ult i32 %3, 7000001
  %24 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dtv_property_cache, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 470000000, i32 %25)
  %cmp53 = icmp ult i32 %25, 470000000
  %vhfbw757 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %vhfbw757 to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load58 = load i8, ptr %vhfbw757, align 4
  br i1 %cmp50, label %if.then52, label %if.else85

if.then52:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  %bf.clear65 = and i8 %bf.load58, -17
  %bf.set60 = or i8 %bf.load58, 32
  %bf.clear65.sink = select i1 %cmp53, i8 %bf.set60, i8 %bf.clear65
  %27 = ptrtoint ptr %vhfbw757 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %bf.clear65.sink, ptr %vhfbw757, align 4
  %28 = and i8 %bf.clear65.sink, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %28)
  %.not195 = icmp eq i8 %28, 48
  %29 = select i1 %.not195, i32 256, i32 128
  %or83 = or i32 %type.1, %29
  %or84 = or i32 %or83, 2
  br label %if.end122

if.else85:                                        ; preds = %if.else49
  call void @__sanitizer_cov_trace_pc() #12
  %bf.set100 = or i8 %bf.load58, 16
  %bf.clear93 = and i8 %bf.load58, -33
  %bf.set100.sink = select i1 %cmp53, i8 %bf.clear93, i8 %bf.set100
  %30 = ptrtoint ptr %vhfbw757 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %bf.set100.sink, ptr %vhfbw757, align 4
  %31 = and i8 %bf.set100.sink, 48
  call void @__sanitizer_cov_trace_const_cmp1(i8 48, i8 %31)
  %.not = icmp eq i8 %31, 48
  %32 = select i1 %.not, i32 256, i32 512
  %or119 = or i32 %type.1, %32
  %or120 = or i32 %or119, 2
  br label %if.end122

if.end122:                                        ; preds = %if.else85, %if.then52, %if.then41
  %type.2 = phi i32 [ %or42, %if.then41 ], [ %or84, %if.then52 ], [ %or120, %if.else85 ]
  %demod124 = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 10, i32 5
  %33 = ptrtoint ptr %demod124 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %demod124, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool125.not = icmp eq i32 %34, 0
  br i1 %tobool125.not, label %if.end122.if.end139_crit_edge, label %lor.lhs.false

if.end122.if.end139_crit_edge:                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

lor.lhs.false:                                    ; preds = %if.end122
  call void @__sanitizer_cov_trace_pc() #12
  %conv129 = trunc i32 %34 to i16
  %firm_version = getelementptr inbounds %struct.xc2028_data, ptr %5, i32 0, i32 7
  %35 = ptrtoint ptr %firm_version to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %firm_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 770, i16 %36)
  %cmp133 = icmp ult i16 %36, 770
  %conv137 = add i16 %conv129, 200
  %spec.select194 = select i1 %cmp133, i16 %conv137, i16 %conv129
  br label %if.end139

if.end139:                                        ; preds = %lor.lhs.false, %if.end122.if.end139_crit_edge
  %demod.0 = phi i16 [ 0, %if.end122.if.end139_crit_edge ], [ %spec.select194, %lor.lhs.false ]
  %37 = ptrtoint ptr %dtv_property_cache to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dtv_property_cache, align 4
  %call141 = tail call fastcc i32 @generic_set_freq(ptr noundef %fe, i32 noundef %38, i32 noundef 3, i32 noundef %type.2, i64 noundef 0, i16 noundef zeroext %demod.0)
  br label %cleanup

cleanup:                                          ; preds = %if.end139, %if.end16.cleanup_crit_edge, %sw.bb3.i, %do.end12.cleanup_crit_edge, %do.end12.cleanup_crit_edge196
  %retval.0 = phi i32 [ %call141, %if.end139 ], [ -22, %if.end16.cleanup_crit_edge ], [ -19, %sw.bb3.i ], [ -11, %do.end12.cleanup_crit_edge ], [ -11, %do.end12.cleanup_crit_edge196 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc2028_set_analog_freq(ptr nocapture noundef readonly %fe, ptr nocapture noundef %p) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.275) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %mode = getelementptr inbounds %struct.analog_parameters, ptr %p, i32 0, i32 1
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp = icmp eq i32 %12, 1
  br i1 %cmp, label %if.then14, label %if.end20

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %input1 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 4
  %13 = ptrtoint ptr %input1 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load = load i8, ptr %input1, align 4
  %14 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool15.not = icmp eq i8 %14, 0
  %spec.select = select i1 %tobool15.not, i32 1024, i32 3072
  %15 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %p, align 8
  %mul = mul i32 %16, 625
  %div = udiv i32 %mul, 10
  %call19 = tail call fastcc i32 @generic_set_freq(ptr noundef %fe, i32 noundef %div, i32 noundef 1, i32 noundef %spec.select, i64 noundef 0, i16 noundef zeroext 0)
  br label %cleanup

if.end20:                                         ; preds = %do.end12
  %std = getelementptr inbounds %struct.analog_parameters, ptr %p, i32 0, i32 3
  %17 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %std, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %18)
  %tobool21.not = icmp eq i64 %18, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.if.end24_crit_edge

if.end20.if.end24_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 46848, ptr %std, align 8
  br label %if.end24

if.end24:                                         ; preds = %if.then22, %if.end20.if.end24_crit_edge
  %20 = ptrtoint ptr %std to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %std, align 8
  %and = and i64 %21, 46848
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool26.not = icmp eq i64 %and, 0
  %spec.select55 = select i1 %tobool26.not, i32 2, i32 0
  %call.i = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.276) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.end24.parse_audio_std_option.exit_crit_edge, label %if.end.i

if.end24.parse_audio_std_option.exit_crit_edge:   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_audio_std_option.exit

if.end.i:                                         ; preds = %if.end24
  %call1.i = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.277) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp2.i = icmp eq i32 %call1.i, 0
  br i1 %cmp2.i, label %if.end.i.parse_audio_std_option.exit_crit_edge, label %if.end4.i

if.end.i.parse_audio_std_option.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_audio_std_option.exit

if.end4.i:                                        ; preds = %if.end.i
  %call5.i = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.278) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp eq i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.parse_audio_std_option.exit_crit_edge, label %if.end8.i

if.end4.i.parse_audio_std_option.exit_crit_edge:  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_audio_std_option.exit

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.279) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp eq i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.parse_audio_std_option.exit_crit_edge, label %if.end12.i

if.end8.i.parse_audio_std_option.exit_crit_edge:  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_audio_std_option.exit

if.end12.i:                                       ; preds = %if.end8.i
  %call13.i = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.280) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp eq i32 %call13.i, 0
  br i1 %cmp14.i, label %if.end12.i.parse_audio_std_option.exit_crit_edge, label %if.end16.i

if.end12.i.parse_audio_std_option.exit_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %parse_audio_std_option.exit

if.end16.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %call17.i = tail call i32 @strcasecmp(ptr noundef nonnull @audio_std, ptr noundef nonnull @.str.281) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp eq i32 %call17.i, 0
  %..i = select i1 %cmp18.i, i64 34359738368, i64 0
  br label %parse_audio_std_option.exit

parse_audio_std_option.exit:                      ; preds = %if.end16.i, %if.end12.i.parse_audio_std_option.exit_crit_edge, %if.end8.i.parse_audio_std_option.exit_crit_edge, %if.end4.i.parse_audio_std_option.exit_crit_edge, %if.end.i.parse_audio_std_option.exit_crit_edge, %if.end24.parse_audio_std_option.exit_crit_edge
  %retval.0.i = phi i64 [ 12884901888, %if.end24.parse_audio_std_option.exit_crit_edge ], [ 4294967296, %if.end.i.parse_audio_std_option.exit_crit_edge ], [ 8589934592, %if.end4.i.parse_audio_std_option.exit_crit_edge ], [ 51539607552, %if.end8.i.parse_audio_std_option.exit_crit_edge ], [ 17179869184, %if.end12.i.parse_audio_std_option.exit_crit_edge ], [ %..i, %if.end16.i ]
  %or32 = or i64 %retval.0.i, %21
  %22 = ptrtoint ptr %std to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %or32, ptr %std, align 8
  %23 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %p, align 8
  %mul34 = mul i32 %24, 62500
  %call36 = tail call fastcc i32 @generic_set_freq(ptr noundef %fe, i32 noundef %mul34, i32 noundef 2, i32 noundef %spec.select55, i64 noundef %or32, i16 noundef zeroext 0)
  br label %cleanup

cleanup:                                          ; preds = %parse_audio_std_option.exit, %if.then14
  %retval.0 = phi i32 [ %call19, %if.then14 ], [ %call36, %parse_audio_std_option.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc2028_get_frequency(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %frequency) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.282) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %state.i = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %state.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.350)
  switch i32 %12, label %if.end16 [
    i32 0, label %do.end12.cleanup_crit_edge
    i32 1, label %do.end12.cleanup_crit_edge27
    i32 4, label %sw.bb3.i
  ]

do.end12.cleanup_crit_edge27:                     ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.i:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %frequency17 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %frequency17 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %frequency17, align 8
  %16 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %frequency, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %sw.bb3.i, %do.end12.cleanup_crit_edge, %do.end12.cleanup_crit_edge27
  %retval.0 = phi i32 [ 0, %if.end16 ], [ -19, %sw.bb3.i ], [ -11, %do.end12.cleanup_crit_edge ], [ -11, %do.end12.cleanup_crit_edge27 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc2028_signal(ptr nocapture noundef readonly %fe, ptr nocapture noundef writeonly %strength) #0 align 64 {
entry:
  %frq_lock = alloca i16, align 2
  %signal = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frq_lock) #10
  %2 = ptrtoint ptr %frq_lock to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 -1, ptr %frq_lock, align 2, !annotation !581
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %signal) #10
  %3 = ptrtoint ptr %signal to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %signal, align 2
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %11 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %12 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %6, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.283) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %state.i = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %state.i, align 4
  %15 = zext i32 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.351)
  switch i32 %14, label %if.then18 [
    i32 0, label %do.end12.cleanup_crit_edge
    i32 1, label %do.end12.cleanup_crit_edge111
    i32 2, label %if.end19
    i32 4, label %sw.bb3.i
  ]

do.end12.cleanup_crit_edge111:                    ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end12.cleanup_crit_edge:                       ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.i:                                         ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then18:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 0, ptr %strength, align 2
  br label %cleanup

if.end19:                                         ; preds = %do.end12
  %lock = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call22 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %frq_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end19.ret_crit_edge, label %if.end26

if.end19.ret_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end26:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %frq_lock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %18)
  %tobool27.not = icmp eq i16 %18, 0
  br i1 %tobool27.not, label %if.end29, label %if.end26.for.end_crit_edge

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end29:                                         ; preds = %if.end26
  tail call void @msleep(i32 noundef 6) #10
  %call22.1 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %frq_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.1)
  %cmp23.1 = icmp slt i32 %call22.1, 0
  br i1 %cmp23.1, label %if.end29.ret_crit_edge, label %if.end26.1

if.end29.ret_crit_edge:                           ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end26.1:                                       ; preds = %if.end29
  %19 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %frq_lock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool27.not.1 = icmp eq i16 %20, 0
  br i1 %tobool27.not.1, label %if.end29.1, label %if.end26.1.for.end_crit_edge

if.end26.1.for.end_crit_edge:                     ; preds = %if.end26.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end29.1:                                       ; preds = %if.end26.1
  tail call void @msleep(i32 noundef 6) #10
  %call22.2 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %frq_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.2)
  %cmp23.2 = icmp slt i32 %call22.2, 0
  br i1 %cmp23.2, label %if.end29.1.ret_crit_edge, label %if.end26.2

if.end29.1.ret_crit_edge:                         ; preds = %if.end29.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end26.2:                                       ; preds = %if.end29.1
  %21 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %frq_lock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool27.not.2 = icmp eq i16 %22, 0
  br i1 %tobool27.not.2, label %if.end29.2, label %if.end26.2.for.end_crit_edge

if.end26.2.for.end_crit_edge:                     ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end29.2:                                       ; preds = %if.end26.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 6) #10
  %23 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %23)
  %.pr = load i16, ptr %frq_lock, align 2
  br label %for.end

for.end:                                          ; preds = %if.end29.2, %if.end26.2.for.end_crit_edge, %if.end26.1.for.end_crit_edge, %if.end26.for.end_crit_edge
  %call22109 = phi i32 [ %call22.2, %if.end29.2 ], [ %call22, %if.end26.for.end_crit_edge ], [ %call22.1, %if.end26.1.for.end_crit_edge ], [ %call22.2, %if.end26.2.for.end_crit_edge ]
  %24 = phi i16 [ %.pr, %if.end29.2 ], [ %18, %if.end26.for.end_crit_edge ], [ %20, %if.end26.1.for.end_crit_edge ], [ %22, %if.end26.2.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %24)
  %cmp31 = icmp eq i16 %24, 2
  br i1 %cmp31, label %for.end.ret_crit_edge, label %if.end34

for.end.ret_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end34:                                         ; preds = %for.end
  %call35 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 64, ptr noundef nonnull %signal)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36 = icmp slt i32 %call35, 0
  br i1 %cmp36, label %if.end34.ret_crit_edge, label %if.end39

if.end34.ret_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end39:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %signal, align 2
  %27 = shl i16 %26, 12
  %28 = and i16 %27, 28672
  %29 = or i16 %28, 4095
  store i16 %29, ptr %signal, align 2
  br label %ret

ret:                                              ; preds = %if.end39, %if.end34.ret_crit_edge, %for.end.ret_crit_edge, %if.end29.1.ret_crit_edge, %if.end29.ret_crit_edge, %if.end19.ret_crit_edge
  %rc.2 = phi i32 [ %call22109, %for.end.ret_crit_edge ], [ %call35, %if.end34.ret_crit_edge ], [ 0, %if.end39 ], [ %call22, %if.end19.ret_crit_edge ], [ %call22.1, %if.end29.ret_crit_edge ], [ %call22.2, %if.end29.1.ret_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  %30 = ptrtoint ptr %signal to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %signal, align 2
  %32 = ptrtoint ptr %strength to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %strength, align 2
  %33 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool44.not = icmp eq i32 %33, 0
  br i1 %tobool44.not, label %ret.cleanup_crit_edge, label %do.end49

ret.cleanup_crit_edge:                            ; preds = %ret
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end49:                                         ; preds = %ret
  %i2c_props51 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name52 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %34 = ptrtoint ptr %name52 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %name52, align 4
  %adap54 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %36 = ptrtoint ptr %adap54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %adap54, align 4
  %tobool55.not = icmp eq ptr %37, null
  br i1 %tobool55.not, label %do.end49.cond.end61_crit_edge, label %cond.true56

do.end49.cond.end61_crit_edge:                    ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end61

cond.true56:                                      ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i97 = getelementptr inbounds %struct.i2c_adapter, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %nr.i97 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr.i97, align 4
  br label %cond.end61

cond.end61:                                       ; preds = %cond.true56, %do.end49.cond.end61_crit_edge
  %cond62 = phi i32 [ %39, %cond.true56 ], [ -1, %do.end49.cond.end61_crit_edge ]
  %40 = ptrtoint ptr %i2c_props51 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %i2c_props51, align 8
  %conv65 = zext i8 %41 to i32
  %conv66 = zext i16 %31 to i32
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.285, ptr noundef %35, i32 noundef %cond62, i32 noundef %conv65, i32 noundef %conv66) #13
  br label %cleanup

cleanup:                                          ; preds = %cond.end61, %ret.cleanup_crit_edge, %if.then18, %sw.bb3.i, %do.end12.cleanup_crit_edge, %do.end12.cleanup_crit_edge111
  %retval.0 = phi i32 [ 0, %if.then18 ], [ %rc.2, %cond.end61 ], [ %rc.2, %ret.cleanup_crit_edge ], [ -19, %sw.bb3.i ], [ -11, %do.end12.cleanup_crit_edge ], [ -11, %do.end12.cleanup_crit_edge111 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %signal) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frq_lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xc2028_get_afc(ptr nocapture noundef readonly %fe, ptr nocapture noundef %afc) #0 align 64 {
entry:
  %frq_lock = alloca i16, align 2
  %afc_reg = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frq_lock) #10
  %2 = ptrtoint ptr %frq_lock to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 0, ptr %frq_lock, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %afc_reg) #10
  %3 = ptrtoint ptr %afc_reg to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 0, ptr %afc_reg, align 2
  %state.i = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.352)
  switch i32 %5, label %if.then1 [
    i32 0, label %entry.cleanup_crit_edge
    i32 1, label %entry.cleanup_crit_edge72
    i32 2, label %if.end2
    i32 4, label %sw.bb3.i
  ]

entry.cleanup_crit_edge72:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb3.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %afc, align 4
  br label %cleanup

if.end2:                                          ; preds = %entry
  %lock = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %call4 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %frq_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end2.ret_crit_edge, label %if.end7

if.end2.ret_crit_edge:                            ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end7:                                          ; preds = %if.end2
  %8 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %frq_lock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %9)
  %tobool8.not = icmp eq i16 %9, 0
  br i1 %tobool8.not, label %if.end10, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10:                                         ; preds = %if.end7
  tail call void @msleep(i32 noundef 6) #10
  %call4.1 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %frq_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.1)
  %cmp5.1 = icmp slt i32 %call4.1, 0
  br i1 %cmp5.1, label %if.end10.ret_crit_edge, label %if.end7.1

if.end10.ret_crit_edge:                           ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end7.1:                                        ; preds = %if.end10
  %10 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %frq_lock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %tobool8.not.1 = icmp eq i16 %11, 0
  br i1 %tobool8.not.1, label %if.end10.1, label %if.end7.1.for.end_crit_edge

if.end7.1.for.end_crit_edge:                      ; preds = %if.end7.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.1:                                       ; preds = %if.end7.1
  tail call void @msleep(i32 noundef 6) #10
  %call4.2 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 2, ptr noundef nonnull %frq_lock)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.2)
  %cmp5.2 = icmp slt i32 %call4.2, 0
  br i1 %cmp5.2, label %if.end10.1.ret_crit_edge, label %if.end7.2

if.end10.1.ret_crit_edge:                         ; preds = %if.end10.1
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end7.2:                                        ; preds = %if.end10.1
  %12 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %frq_lock, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool8.not.2 = icmp eq i16 %13, 0
  br i1 %tobool8.not.2, label %if.end10.2, label %if.end7.2.for.end_crit_edge

if.end7.2.for.end_crit_edge:                      ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end10.2:                                       ; preds = %if.end7.2
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef 6) #10
  %14 = ptrtoint ptr %frq_lock to i32
  call void @__asan_load2_noabort(i32 %14)
  %.pr = load i16, ptr %frq_lock, align 2
  br label %for.end

for.end:                                          ; preds = %if.end10.2, %if.end7.2.for.end_crit_edge, %if.end7.1.for.end_crit_edge, %if.end7.for.end_crit_edge
  %call470 = phi i32 [ %call4.2, %if.end10.2 ], [ %call4, %if.end7.for.end_crit_edge ], [ %call4.1, %if.end7.1.for.end_crit_edge ], [ %call4.2, %if.end7.2.for.end_crit_edge ]
  %15 = phi i16 [ %.pr, %if.end10.2 ], [ %9, %if.end7.for.end_crit_edge ], [ %11, %if.end7.1.for.end_crit_edge ], [ %13, %if.end7.2.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp11 = icmp eq i16 %15, 2
  br i1 %cmp11, label %for.end.ret_crit_edge, label %if.end14

for.end.ret_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end14:                                         ; preds = %for.end
  %call15 = call fastcc i32 @xc2028_get_reg(ptr noundef %1, i16 noundef zeroext 1, ptr noundef nonnull %afc_reg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end14.ret_crit_edge, label %if.end19

if.end14.ret_crit_edge:                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end19:                                         ; preds = %if.end14
  %16 = ptrtoint ptr %afc_reg to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %afc_reg, align 2
  %conv20 = sext i16 %17 to i32
  %mul = mul nsw i32 %conv20, 15625
  %18 = ptrtoint ptr %afc to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul, ptr %afc, align 4
  %19 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool21.not = icmp eq i32 %19, 0
  br i1 %tobool21.not, label %if.end19.ret_crit_edge, label %do.end

if.end19.ret_crit_edge:                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

do.end:                                           ; preds = %if.end19
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %20 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %adap, align 4
  %tobool26.not = icmp eq ptr %23, null
  br i1 %tobool26.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %23, i32 0, i32 11
  %24 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %25, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %26 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %i2c_props, align 8
  %conv31 = zext i8 %27 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.287, ptr noundef %21, i32 noundef %cond, i32 noundef %conv31, i32 noundef %mul) #13
  br label %ret

ret:                                              ; preds = %cond.end, %if.end19.ret_crit_edge, %if.end14.ret_crit_edge, %for.end.ret_crit_edge, %if.end10.1.ret_crit_edge, %if.end10.ret_crit_edge, %if.end2.ret_crit_edge
  %rc.2 = phi i32 [ %call470, %for.end.ret_crit_edge ], [ %call15, %if.end14.ret_crit_edge ], [ 0, %cond.end ], [ 0, %if.end19.ret_crit_edge ], [ %call4, %if.end2.ret_crit_edge ], [ %call4.1, %if.end10.ret_crit_edge ], [ %call4.2, %if.end10.1.ret_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %ret, %if.then1, %sw.bb3.i, %entry.cleanup_crit_edge, %entry.cleanup_crit_edge72
  %retval.0 = phi i32 [ %rc.2, %ret ], [ 0, %if.then1 ], [ -19, %sw.bb3.i ], [ -11, %entry.cleanup_crit_edge ], [ -11, %entry.cleanup_crit_edge72 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %afc_reg) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frq_lock) #10
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @dump_stack() local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tuner_i2c_xfer_send(ptr nocapture noundef readonly %props, ptr noundef %buf, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  %msg = alloca %struct.i2c_msg, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg) #10
  %0 = getelementptr inbounds i8, ptr %msg, i32 4
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %0, align 4
  %2 = ptrtoint ptr %props to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %props, align 4
  %conv = zext i8 %3 to i16
  %4 = ptrtoint ptr %msg to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv, ptr %msg, align 4
  %flags = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 1
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 0, ptr %flags, align 2
  %len2 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 2
  %conv3 = trunc i32 %len to i16
  %6 = ptrtoint ptr %len2 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %conv3, ptr %len2, align 4
  %buf4 = getelementptr inbounds %struct.i2c_msg, ptr %msg, i32 0, i32 3
  %7 = ptrtoint ptr %buf4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %buf, ptr %buf4, align 4
  %adap = getelementptr inbounds %struct.tuner_i2c_props, ptr %props, i32 0, i32 1
  %8 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %adap, align 4
  %call = call i32 @i2c_transfer(ptr noundef %9, ptr noundef nonnull %msg, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  %len.call = select i1 %cmp, i32 %len, i32 %call
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg) #10
  ret i32 %len.call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msleep(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @i2c_transfer(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @generic_set_freq(ptr nocapture noundef readonly %fe, i32 noundef %freq, i32 noundef %new_type, i32 noundef %type, i64 noundef %std, i16 noundef zeroext %int_freq) unnamed_addr #0 align 64 {
entry:
  %msg.i421 = alloca %struct.i2c_msg, align 4
  %msg.i405 = alloca %struct.i2c_msg, align 4
  %msg.i395 = alloca %struct.i2c_msg, align 4
  %msg.i = alloca %struct.i2c_msg, align 4
  %new_fw.i = alloca %struct.firmware_properties, align 8
  %version.i = alloca i16, align 2
  %hwmodel.i = alloca i16, align 2
  %std0.i = alloca i64, align 8
  %buf = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %buf) #10
  %2 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i8], ptr %buf, i32 0, i32 3
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %buf, align 4
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %10, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %13 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %14 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %8, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.33) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %lock = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #10
  %15 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool14.not = icmp eq i32 %15, 0
  br i1 %tobool14.not, label %do.end12.do.end42_crit_edge, label %do.end19

do.end12.do.end42_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end42

do.end19:                                         ; preds = %do.end12
  %i2c_props21 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name22 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %name22, align 4
  %adap24 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %18 = ptrtoint ptr %adap24 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adap24, align 4
  %tobool25.not = icmp eq ptr %19, null
  br i1 %tobool25.not, label %do.end19.cond.end31_crit_edge, label %cond.true26

do.end19.cond.end31_crit_edge:                    ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end31

cond.true26:                                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i390 = getelementptr inbounds %struct.i2c_adapter, ptr %19, i32 0, i32 11
  %20 = ptrtoint ptr %nr.i390 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr.i390, align 4
  br label %cond.end31

cond.end31:                                       ; preds = %cond.true26, %do.end19.cond.end31_crit_edge
  %cond32 = phi i32 [ %21, %cond.true26 ], [ -1, %do.end19.cond.end31_crit_edge ]
  %22 = ptrtoint ptr %i2c_props21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %i2c_props21, align 8
  %conv35 = zext i8 %23 to i32
  %div36 = udiv i32 %freq, 1000
  %call37 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35, ptr noundef %17, i32 noundef %cond32, i32 noundef %conv35, i32 noundef %div36) #13
  br label %do.end42

do.end42:                                         ; preds = %cond.end31, %do.end12.do.end42_crit_edge
  %24 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %new_fw.i) #10
  %26 = call ptr @memset(ptr %new_fw.i, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %version.i) #10
  %27 = ptrtoint ptr %version.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %version.i, align 2, !annotation !581
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hwmodel.i) #10
  %28 = ptrtoint ptr %hwmodel.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %hwmodel.i, align 2, !annotation !581
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %std0.i) #10
  %29 = ptrtoint ptr %std0.i to i32
  call void @__asan_store8_noabort(i32 %29)
  store i64 -1, ptr %std0.i, align 8, !annotation !581
  %30 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i = icmp eq i32 %30, 0
  br i1 %tobool.not.i, label %do.end42.do.end12.i_crit_edge, label %do.end.i

do.end42.do.end12.i_crit_edge:                    ; preds = %do.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i

do.end.i:                                         ; preds = %do.end42
  %i2c_props.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 1
  %name.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 1, i32 3
  %31 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name.i, align 4
  %adap.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 1, i32 1
  %33 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %adap.i, align 4
  %tobool4.not.i = icmp eq ptr %34, null
  br i1 %tobool4.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %34, i32 0, i32 11
  %35 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %36, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %37 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %i2c_props.i, align 8
  %conv.i = zext i8 %38 to i32
  %call8.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %32, i32 noundef %cond.i, i32 noundef %conv.i, ptr noundef nonnull @.str.54) #13
  br label %do.end12.i

do.end12.i:                                       ; preds = %cond.end.i, %do.end42.do.end12.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 3
  %39 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %state.i.i, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.353)
  switch i32 %40, label %sw.epilog.i.i [
    i32 0, label %do.end12.i.check_firmware.exit.thread_crit_edge
    i32 1, label %do.end12.i.check_firmware.exit.thread_crit_edge455
    i32 2, label %do.end12.i.if.end16.i_crit_edge
    i32 3, label %sw.bb2.i.i
    i32 4, label %do.end12.i.check_firmware.exit.thread_crit_edge456
  ]

do.end12.i.check_firmware.exit.thread_crit_edge456: ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_firmware.exit.thread

do.end12.i.if.end16.i_crit_edge:                  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

do.end12.i.check_firmware.exit.thread_crit_edge455: ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_firmware.exit.thread

do.end12.i.check_firmware.exit.thread_crit_edge:  ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_firmware.exit.thread

sw.bb2.i.i:                                       ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

sw.epilog.i.i:                                    ; preds = %do.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16.i

if.end16.i:                                       ; preds = %sw.epilog.i.i, %sw.bb2.i.i, %do.end12.i.if.end16.i_crit_edge
  %retval.0.i.ph.i = phi i32 [ 0, %sw.bb2.i.i ], [ 0, %sw.epilog.i.i ], [ 1, %do.end12.i.if.end16.i_crit_edge ]
  %mts.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 10, i32 4
  %42 = ptrtoint ptr %mts.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %bf.load.i = load i8, ptr %mts.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load.i)
  %tobool17.not.i = icmp slt i8 %bf.load.i, 0
  %and.i = and i32 %type, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool18.not.i = icmp eq i32 %and.i, 0
  %or.cond.i = and i1 %tobool18.not.i, %tobool17.not.i
  %or.i = or i32 %type, 4
  %type.addr.0.i = select i1 %or.cond.i, i32 %or.i, i32 %type
  %id.i = getelementptr inbounds %struct.firmware_properties, ptr %new_fw.i, i32 0, i32 1
  %std_req.i = getelementptr inbounds %struct.firmware_properties, ptr %new_fw.i, i32 0, i32 2
  %scode_table.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 10, i32 3
  %scode_table24.i = getelementptr inbounds %struct.firmware_properties, ptr %new_fw.i, i32 0, i32 4
  %scode_nr.i = getelementptr inbounds %struct.firmware_properties, ptr %new_fw.i, i32 0, i32 5
  %int_freq25.i = getelementptr inbounds %struct.firmware_properties, ptr %new_fw.i, i32 0, i32 3
  %i2c_props34.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 1
  %name35.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 1, i32 3
  %adap37.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 1, i32 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %int_freq)
  %tobool65.not.i = icmp eq i16 %int_freq, 0
  %conv86.i = zext i16 %int_freq to i32
  %cur_fw.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 11
  %callback.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %dvb.i.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %or144.i = or i32 %type.addr.0.i, 1
  %or206.i = or i32 %type.addr.0.i, 16385
  %or212.i = and i32 %type.addr.0.i, -16388
  %and213.i = or i32 %or212.i, 16385
  %std_req257.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 11, i32 2
  %scode_table292.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 11, i32 4
  %scode_nr315.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 11, i32 5
  %firm_version.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 7
  %hwmodel545.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 8
  %hwvers574.i = getelementptr inbounds %struct.xc2028_data, ptr %25, i32 0, i32 9
  %or100.i = and i32 %type.addr.0.i, 268454918
  %and101.i = or i32 %or100.i, 1
  br label %retry.i

retry.i:                                          ; preds = %retry.i.backedge, %if.end16.i
  %retry_count.0.i = phi i32 [ 0, %if.end16.i ], [ %inc.i, %retry.i.backedge ]
  %rc.0.i = phi i32 [ %retval.0.i.ph.i, %if.end16.i ], [ %rc.6.i, %retry.i.backedge ]
  %43 = ptrtoint ptr %new_fw.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %type.addr.0.i, ptr %new_fw.i, align 8
  %44 = ptrtoint ptr %id.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %std, ptr %id.i, align 8
  %45 = ptrtoint ptr %std_req.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %std, ptr %std_req.i, align 8
  %46 = ptrtoint ptr %scode_table.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scode_table.i, align 4
  %or23.i = or i32 %47, 536870912
  %48 = ptrtoint ptr %scode_table24.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or23.i, ptr %scode_table24.i, align 4
  %49 = ptrtoint ptr %scode_nr.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %scode_nr.i, align 8
  %50 = ptrtoint ptr %int_freq25.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 %int_freq, ptr %int_freq25.i, align 8
  %51 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool27.not.i = icmp eq i32 %51, 0
  br i1 %tobool27.not.i, label %retry.i.if.end95.i_crit_edge, label %do.end32.i

retry.i.if.end95.i_crit_edge:                     ; preds = %retry.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

do.end32.i:                                       ; preds = %retry.i
  %52 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %name35.i, align 4
  %54 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %adap37.i, align 4
  %tobool38.not.i = icmp eq ptr %55, null
  br i1 %tobool38.not.i, label %do.end32.i.do.end54.i_crit_edge, label %cond.true39.i

do.end32.i.do.end54.i_crit_edge:                  ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end54.i

cond.true39.i:                                    ; preds = %do.end32.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i786.i = getelementptr inbounds %struct.i2c_adapter, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %nr.i786.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %nr.i786.i, align 4
  br label %do.end54.i

do.end54.i:                                       ; preds = %cond.true39.i, %do.end32.i.do.end54.i_crit_edge
  %cond45.i = phi i32 [ %57, %cond.true39.i ], [ -1, %do.end32.i.do.end54.i_crit_edge ]
  %58 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %i2c_props34.i, align 8
  %conv48.i = zext i8 %59 to i32
  %call49.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, ptr noundef %53, i32 noundef %cond45.i, i32 noundef %conv48.i) #13
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool55.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool55.not.i, label %do.end54.i.if.end95.i_crit_edge, label %if.then56.i

do.end54.i.if.end95.i_crit_edge:                  ; preds = %do.end54.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end95.i

if.then56.i:                                      ; preds = %do.end54.i
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %type.addr.0.i, i16 noundef zeroext 0) #10
  %call64.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59, i32 noundef %type.addr.0.i, i64 noundef %std) #13
  br i1 %tobool65.not.i, label %do.end69.i, label %do.end83.i

do.end69.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %call71.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #13
  %60 = ptrtoint ptr %scode_table.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %scode_table.i, align 4
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %61, i16 noundef zeroext 0) #10
  %62 = ptrtoint ptr %scode_table.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %scode_table.i, align 4
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.65, i32 noundef %63) #13
  br label %do.end91.i

do.end83.i:                                       ; preds = %if.then56.i
  call void @__sanitizer_cov_trace_pc() #12
  %call87.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.68, i32 noundef %conv86.i) #13
  br label %do.end91.i

do.end91.i:                                       ; preds = %do.end83.i, %do.end69.i
  %call94.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.71, i32 noundef 0) #13
  br label %if.end95.i

if.end95.i:                                       ; preds = %do.end91.i, %do.end54.i.if.end95.i_crit_edge, %retry.i.if.end95.i_crit_edge
  %64 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %state.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %65)
  %cmp96.i = icmp eq i32 %65, 2
  br i1 %cmp96.i, label %land.lhs.true98.i, label %if.end95.i.if.end136.i_crit_edge

if.end95.i.if.end136.i_crit_edge:                 ; preds = %if.end95.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136.i

land.lhs.true98.i:                                ; preds = %if.end95.i
  %66 = ptrtoint ptr %cur_fw.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %cur_fw.i, align 8
  %and103.i = and i32 %67, 268454919
  call void @__sanitizer_cov_trace_cmp4(i32 %and101.i, i32 %and103.i)
  %cmp104.i = icmp eq i32 %and101.i, %and103.i
  br i1 %cmp104.i, label %do.body107.i, label %land.lhs.true98.i.if.end136.i_crit_edge

land.lhs.true98.i.if.end136.i_crit_edge:          ; preds = %land.lhs.true98.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136.i

do.body107.i:                                     ; preds = %land.lhs.true98.i
  %68 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool108.not.i = icmp eq i32 %68, 0
  br i1 %tobool108.not.i, label %do.body107.i.skip_base.i_crit_edge, label %do.end113.i

do.body107.i.skip_base.i_crit_edge:               ; preds = %do.body107.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_base.i

do.end113.i:                                      ; preds = %do.body107.i
  %69 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %name35.i, align 4
  %71 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %adap37.i, align 4
  %tobool119.not.i = icmp eq ptr %72, null
  br i1 %tobool119.not.i, label %do.end113.i.cond.end125.i_crit_edge, label %cond.true120.i

do.end113.i.cond.end125.i_crit_edge:              ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end125.i

cond.true120.i:                                   ; preds = %do.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i787.i = getelementptr inbounds %struct.i2c_adapter, ptr %72, i32 0, i32 11
  %73 = ptrtoint ptr %nr.i787.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %nr.i787.i, align 4
  br label %cond.end125.i

cond.end125.i:                                    ; preds = %cond.true120.i, %do.end113.i.cond.end125.i_crit_edge
  %cond126.i = phi i32 [ %74, %cond.true120.i ], [ -1, %do.end113.i.cond.end125.i_crit_edge ]
  %75 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %i2c_props34.i, align 8
  %conv129.i = zext i8 %76 to i32
  %call130.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74, ptr noundef %70, i32 noundef %cond126.i, i32 noundef %conv129.i) #13
  br label %skip_base.i

if.end136.i:                                      ; preds = %land.lhs.true98.i.if.end136.i_crit_edge, %if.end95.i.if.end136.i_crit_edge
  %77 = call ptr @memset(ptr %cur_fw.i, i32 0, i32 40)
  %78 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %tuner_priv, align 4
  %80 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %callback.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %81, null
  br i1 %tobool.not.i.i, label %if.end136.i.fail.i_crit_edge, label %cond.false.i.i

if.end136.i.fail.i_crit_edge:                     ; preds = %if.end136.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

cond.false.i.i:                                   ; preds = %if.end136.i
  %82 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dvb.i.i, align 4
  %tobool2.not.i.i = icmp eq ptr %83, null
  br i1 %tobool2.not.i.i, label %cond.false.i.i.cond.false9.i.i_crit_edge, label %land.lhs.true.i.i

cond.false.i.i.cond.false9.i.i_crit_edge:         ; preds = %cond.false.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i.i

land.lhs.true.i.i:                                ; preds = %cond.false.i.i
  %priv4.i.i = getelementptr inbounds %struct.dvb_adapter, ptr %83, i32 0, i32 5
  %84 = ptrtoint ptr %priv4.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv4.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %85, null
  br i1 %tobool5.not.i.i, label %land.lhs.true.i.i.cond.false9.i.i_crit_edge, label %land.lhs.true.i.i.do_tuner_callback.exit.i_crit_edge

land.lhs.true.i.i.do_tuner_callback.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_tuner_callback.exit.i

land.lhs.true.i.i.cond.false9.i.i_crit_edge:      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i.i

cond.false9.i.i:                                  ; preds = %land.lhs.true.i.i.cond.false9.i.i_crit_edge, %cond.false.i.i.cond.false9.i.i_crit_edge
  %adap.i.i = getelementptr inbounds %struct.xc2028_data, ptr %79, i32 0, i32 1, i32 1
  %86 = ptrtoint ptr %adap.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %adap.i.i, align 4
  %algo_data.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %87, i32 0, i32 3
  %88 = ptrtoint ptr %algo_data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %algo_data.i.i, align 4
  br label %do_tuner_callback.exit.i

do_tuner_callback.exit.i:                         ; preds = %cond.false9.i.i, %land.lhs.true.i.i.do_tuner_callback.exit.i_crit_edge
  %cond.i.i = phi ptr [ %89, %cond.false9.i.i ], [ %85, %land.lhs.true.i.i.do_tuner_callback.exit.i_crit_edge ]
  %call.i.i = tail call i32 %81(ptr noundef %cond.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp139.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp139.i, label %do_tuner_callback.exit.i.fail.i_crit_edge, label %if.end142.i

do_tuner_callback.exit.i.fail.i_crit_edge:        ; preds = %do_tuner_callback.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

if.end142.i:                                      ; preds = %do_tuner_callback.exit.i
  %90 = ptrtoint ptr %std0.i to i32
  call void @__asan_store8_noabort(i32 %90)
  store i64 0, ptr %std0.i, align 8
  %call145.i = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef %or144.i, ptr noundef nonnull %std0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145.i)
  %cmp146.i = icmp slt i32 %call145.i, 0
  br i1 %cmp146.i, label %do.end153.i, label %do.body176.i

do.end153.i:                                      ; preds = %if.end142.i
  %91 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %name35.i, align 4
  %93 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %adap37.i, align 4
  %tobool159.not.i = icmp eq ptr %94, null
  br i1 %tobool159.not.i, label %do.end153.i.cond.end165.i_crit_edge, label %cond.true160.i

do.end153.i.cond.end165.i_crit_edge:              ; preds = %do.end153.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end165.i

cond.true160.i:                                   ; preds = %do.end153.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i788.i = getelementptr inbounds %struct.i2c_adapter, ptr %94, i32 0, i32 11
  %95 = ptrtoint ptr %nr.i788.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr.i788.i, align 4
  br label %cond.end165.i

cond.end165.i:                                    ; preds = %cond.true160.i, %do.end153.i.cond.end165.i_crit_edge
  %cond166.i = phi i32 [ %96, %cond.true160.i ], [ -1, %do.end153.i.cond.end165.i_crit_edge ]
  %97 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %i2c_props34.i, align 8
  %conv169.i = zext i8 %98 to i32
  %call170.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.77, ptr noundef %92, i32 noundef %cond166.i, i32 noundef %conv169.i, i32 noundef %call145.i) #13
  br label %fail.i

do.body176.i:                                     ; preds = %if.end142.i
  %99 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool177.not.i = icmp eq i32 %99, 0
  br i1 %tobool177.not.i, label %do.body176.i.do.end204.i_crit_edge, label %do.end182.i

do.body176.i.do.end204.i_crit_edge:               ; preds = %do.body176.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end204.i

do.end182.i:                                      ; preds = %do.body176.i
  %100 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %name35.i, align 4
  %102 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %adap37.i, align 4
  %tobool188.not.i = icmp eq ptr %103, null
  br i1 %tobool188.not.i, label %do.end182.i.cond.end194.i_crit_edge, label %cond.true189.i

do.end182.i.cond.end194.i_crit_edge:              ; preds = %do.end182.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end194.i

cond.true189.i:                                   ; preds = %do.end182.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i789.i = getelementptr inbounds %struct.i2c_adapter, ptr %103, i32 0, i32 11
  %104 = ptrtoint ptr %nr.i789.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %nr.i789.i, align 4
  br label %cond.end194.i

cond.end194.i:                                    ; preds = %cond.true189.i, %do.end182.i.cond.end194.i_crit_edge
  %cond195.i = phi i32 [ %105, %cond.true189.i ], [ -1, %do.end182.i.cond.end194.i_crit_edge ]
  %106 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %106)
  %107 = load i8, ptr %i2c_props34.i, align 8
  %conv198.i = zext i8 %107 to i32
  %call199.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.80, ptr noundef %101, i32 noundef %cond195.i, i32 noundef %conv198.i) #13
  br label %do.end204.i

do.end204.i:                                      ; preds = %cond.end194.i, %do.body176.i.do.end204.i_crit_edge
  %call207.i = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef %or206.i, ptr noundef nonnull %std0.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call207.i)
  %cmp208.i = icmp eq i32 %call207.i, -2
  br i1 %cmp208.i, label %if.then210.i, label %do.end204.i.if.end215.i_crit_edge

do.end204.i.if.end215.i_crit_edge:                ; preds = %do.end204.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end215.i

if.then210.i:                                     ; preds = %do.end204.i
  call void @__sanitizer_cov_trace_pc() #12
  %call214.i = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef %and213.i, ptr noundef nonnull %std0.i) #10
  br label %if.end215.i

if.end215.i:                                      ; preds = %if.then210.i, %do.end204.i.if.end215.i_crit_edge
  %rc.1.i = phi i32 [ %call214.i, %if.then210.i ], [ %call207.i, %do.end204.i.if.end215.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.1.i)
  %cmp216.i = icmp slt i32 %rc.1.i, 0
  br i1 %cmp216.i, label %land.lhs.true218.i, label %if.end215.i.skip_base.i_crit_edge

if.end215.i.skip_base.i_crit_edge:                ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_base.i

land.lhs.true218.i:                               ; preds = %if.end215.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %rc.1.i)
  %cmp219.not.i = icmp eq i32 %rc.1.i, -2
  br i1 %cmp219.not.i, label %land.lhs.true218.i.skip_base.i_crit_edge, label %do.end226.i

land.lhs.true218.i.skip_base.i_crit_edge:         ; preds = %land.lhs.true218.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_base.i

do.end226.i:                                      ; preds = %land.lhs.true218.i
  %108 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %name35.i, align 4
  %110 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %adap37.i, align 4
  %tobool232.not.i = icmp eq ptr %111, null
  br i1 %tobool232.not.i, label %do.end226.i.cond.end238.i_crit_edge, label %cond.true233.i

do.end226.i.cond.end238.i_crit_edge:              ; preds = %do.end226.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end238.i

cond.true233.i:                                   ; preds = %do.end226.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i790.i = getelementptr inbounds %struct.i2c_adapter, ptr %111, i32 0, i32 11
  %112 = ptrtoint ptr %nr.i790.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %nr.i790.i, align 4
  br label %cond.end238.i

cond.end238.i:                                    ; preds = %cond.true233.i, %do.end226.i.cond.end238.i_crit_edge
  %cond239.i = phi i32 [ %113, %cond.true233.i ], [ -1, %do.end226.i.cond.end238.i_crit_edge ]
  %114 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %i2c_props34.i, align 8
  %conv242.i = zext i8 %115 to i32
  %call243.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.83, ptr noundef %109, i32 noundef %cond239.i, i32 noundef %conv242.i, i32 noundef %rc.1.i) #13
  br label %fail.i

skip_base.i:                                      ; preds = %land.lhs.true218.i.skip_base.i_crit_edge, %if.end215.i.skip_base.i_crit_edge, %cond.end125.i, %do.body107.i.skip_base.i_crit_edge
  %rc.2.i = phi i32 [ %rc.0.i, %cond.end125.i ], [ %rc.0.i, %do.body107.i.skip_base.i_crit_edge ], [ -2, %land.lhs.true218.i.skip_base.i_crit_edge ], [ 0, %if.end215.i.skip_base.i_crit_edge ]
  %116 = ptrtoint ptr %cur_fw.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %cur_fw.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %117, i32 %or144.i)
  %cmp253.i = icmp eq i32 %117, %or144.i
  br i1 %cmp253.i, label %land.lhs.true255.i, label %skip_base.i.if.end290.i_crit_edge

skip_base.i.if.end290.i_crit_edge:                ; preds = %skip_base.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end290.i

land.lhs.true255.i:                               ; preds = %skip_base.i
  %118 = ptrtoint ptr %std_req257.i to i32
  call void @__asan_load8_noabort(i32 %118)
  %119 = load i64, ptr %std_req257.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %119, i64 %std)
  %cmp258.i = icmp eq i64 %119, %std
  br i1 %cmp258.i, label %do.body261.i, label %land.lhs.true255.i.if.end290.i_crit_edge

land.lhs.true255.i.if.end290.i_crit_edge:         ; preds = %land.lhs.true255.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end290.i

do.body261.i:                                     ; preds = %land.lhs.true255.i
  %120 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool262.not.i = icmp eq i32 %120, 0
  br i1 %tobool262.not.i, label %do.body261.i.skip_std_specific.i_crit_edge, label %do.end267.i

do.body261.i.skip_std_specific.i_crit_edge:       ; preds = %do.body261.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_std_specific.i

do.end267.i:                                      ; preds = %do.body261.i
  %121 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %name35.i, align 4
  %123 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %adap37.i, align 4
  %tobool273.not.i = icmp eq ptr %124, null
  br i1 %tobool273.not.i, label %do.end267.i.cond.end279.i_crit_edge, label %cond.true274.i

do.end267.i.cond.end279.i_crit_edge:              ; preds = %do.end267.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end279.i

cond.true274.i:                                   ; preds = %do.end267.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i791.i = getelementptr inbounds %struct.i2c_adapter, ptr %124, i32 0, i32 11
  %125 = ptrtoint ptr %nr.i791.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %nr.i791.i, align 4
  br label %cond.end279.i

cond.end279.i:                                    ; preds = %cond.true274.i, %do.end267.i.cond.end279.i_crit_edge
  %cond280.i = phi i32 [ %126, %cond.true274.i ], [ -1, %do.end267.i.cond.end279.i_crit_edge ]
  %127 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %128 = load i8, ptr %i2c_props34.i, align 8
  %conv283.i = zext i8 %128 to i32
  %call284.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.86, ptr noundef %122, i32 noundef %cond280.i, i32 noundef %conv283.i) #13
  br label %skip_std_specific.i

if.end290.i:                                      ; preds = %land.lhs.true255.i.if.end290.i_crit_edge, %skip_base.i.if.end290.i_crit_edge
  %129 = ptrtoint ptr %scode_table292.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 0, ptr %scode_table292.i, align 4
  %call295.i = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef %type.addr.0.i, ptr noundef %id.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %call295.i)
  %cmp296.i = icmp eq i32 %call295.i, -2
  br i1 %cmp296.i, label %if.then298.i, label %if.end290.i.if.end303.i_crit_edge

if.end290.i.if.end303.i_crit_edge:                ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end303.i

if.then298.i:                                     ; preds = %if.end290.i
  call void @__sanitizer_cov_trace_pc() #12
  %130 = ptrtoint ptr %new_fw.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %new_fw.i, align 8
  %and300.i = and i32 %131, -3
  %call302.i = call fastcc i32 @load_firmware(ptr noundef %fe, i32 noundef %and300.i, ptr noundef %id.i) #10
  br label %if.end303.i

if.end303.i:                                      ; preds = %if.then298.i, %if.end290.i.if.end303.i_crit_edge
  %rc.3.i = phi i32 [ %call302.i, %if.then298.i ], [ %call295.i, %if.end290.i.if.end303.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.3.i)
  %cmp304.i = icmp slt i32 %rc.3.i, 0
  br i1 %cmp304.i, label %if.end303.i.fail.i_crit_edge, label %if.end303.i.skip_std_specific.i_crit_edge

if.end303.i.skip_std_specific.i_crit_edge:        ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip_std_specific.i

if.end303.i.fail.i_crit_edge:                     ; preds = %if.end303.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail.i

skip_std_specific.i:                              ; preds = %if.end303.i.skip_std_specific.i_crit_edge, %cond.end279.i, %do.body261.i.skip_std_specific.i_crit_edge
  %rc.4.i = phi i32 [ %rc.2.i, %cond.end279.i ], [ %rc.2.i, %do.body261.i.skip_std_specific.i_crit_edge ], [ %rc.3.i, %if.end303.i.skip_std_specific.i_crit_edge ]
  %132 = ptrtoint ptr %scode_table292.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %scode_table292.i, align 4
  %134 = ptrtoint ptr %scode_table24.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %scode_table24.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %133, i32 %135)
  %cmp311.i = icmp eq i32 %133, %135
  br i1 %cmp311.i, label %land.lhs.true313.i, label %skip_std_specific.i.if.end349.i_crit_edge

skip_std_specific.i.if.end349.i_crit_edge:        ; preds = %skip_std_specific.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end349.i

land.lhs.true313.i:                               ; preds = %skip_std_specific.i
  %136 = ptrtoint ptr %scode_nr315.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %scode_nr315.i, align 8
  %138 = ptrtoint ptr %scode_nr.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %scode_nr.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %137, i32 %139)
  %cmp317.i = icmp eq i32 %137, %139
  br i1 %cmp317.i, label %do.body320.i, label %land.lhs.true313.i.if.end349.i_crit_edge

land.lhs.true313.i.if.end349.i_crit_edge:         ; preds = %land.lhs.true313.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end349.i

do.body320.i:                                     ; preds = %land.lhs.true313.i
  %140 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool321.not.i = icmp eq i32 %140, 0
  br i1 %tobool321.not.i, label %do.body320.i.check_device.i_crit_edge, label %do.end326.i

do.body320.i.check_device.i_crit_edge:            ; preds = %do.body320.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

do.end326.i:                                      ; preds = %do.body320.i
  %141 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name35.i, align 4
  %143 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adap37.i, align 4
  %tobool332.not.i = icmp eq ptr %144, null
  br i1 %tobool332.not.i, label %do.end326.i.cond.end338.i_crit_edge, label %cond.true333.i

do.end326.i.cond.end338.i_crit_edge:              ; preds = %do.end326.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end338.i

cond.true333.i:                                   ; preds = %do.end326.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i792.i = getelementptr inbounds %struct.i2c_adapter, ptr %144, i32 0, i32 11
  %145 = ptrtoint ptr %nr.i792.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nr.i792.i, align 4
  br label %cond.end338.i

cond.end338.i:                                    ; preds = %cond.true333.i, %do.end326.i.cond.end338.i_crit_edge
  %cond339.i = phi i32 [ %146, %cond.true333.i ], [ -1, %do.end326.i.cond.end338.i_crit_edge ]
  %147 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %i2c_props34.i, align 8
  %conv342.i = zext i8 %148 to i32
  %call343.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.89, ptr noundef %142, i32 noundef %cond339.i, i32 noundef %conv342.i) #13
  br label %check_device.i

if.end349.i:                                      ; preds = %land.lhs.true313.i.if.end349.i_crit_edge, %skip_std_specific.i.if.end349.i_crit_edge
  %149 = ptrtoint ptr %new_fw.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %new_fw.i, align 8
  %and351.i = and i32 %150, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and351.i)
  %tobool352.not.i = icmp eq i32 %and351.i, 0
  br i1 %tobool352.not.i, label %do.body355.i, label %if.end349.i.check_device.i_crit_edge

if.end349.i.check_device.i_crit_edge:             ; preds = %if.end349.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

do.body355.i:                                     ; preds = %if.end349.i
  %151 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool356.not.i = icmp eq i32 %151, 0
  br i1 %tobool356.not.i, label %do.end384.i.thread, label %do.end361.i

do.end384.i.thread:                               ; preds = %do.body355.i
  call void @__sanitizer_cov_trace_pc() #12
  %152 = ptrtoint ptr %int_freq25.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %int_freq25.i, align 8
  %154 = ptrtoint ptr %scode_nr.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %scode_nr.i, align 8
  %156 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %tuner_priv, align 4
  br label %do.end12.i.i

do.end361.i:                                      ; preds = %do.body355.i
  %158 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %name35.i, align 4
  %160 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %adap37.i, align 4
  %tobool367.not.i = icmp eq ptr %161, null
  br i1 %tobool367.not.i, label %do.end361.i.do.end384.i_crit_edge, label %cond.true368.i

do.end361.i.do.end384.i_crit_edge:                ; preds = %do.end361.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end384.i

cond.true368.i:                                   ; preds = %do.end361.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i793.i = getelementptr inbounds %struct.i2c_adapter, ptr %161, i32 0, i32 11
  %162 = ptrtoint ptr %nr.i793.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %nr.i793.i, align 4
  br label %do.end384.i

do.end384.i:                                      ; preds = %cond.true368.i, %do.end361.i.do.end384.i_crit_edge
  %cond374.i = phi i32 [ %163, %cond.true368.i ], [ -1, %do.end361.i.do.end384.i_crit_edge ]
  %164 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %164)
  %165 = load i8, ptr %i2c_props34.i, align 8
  %conv377.i = zext i8 %165 to i32
  %166 = ptrtoint ptr %scode_nr.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %scode_nr.i, align 8
  %call379.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %159, i32 noundef %cond374.i, i32 noundef %conv377.i, i32 noundef %167) #13
  %.pr812.i = load i32, ptr @debug, align 4
  %168 = ptrtoint ptr %int_freq25.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %int_freq25.i, align 8
  %170 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %tuner_priv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr812.i)
  %tobool.not.i795.i = icmp eq i32 %.pr812.i, 0
  br i1 %tobool.not.i795.i, label %do.end384.i.do.end12.i.i_crit_edge, label %do.end.i.i

do.end384.i.do.end12.i.i_crit_edge:               ; preds = %do.end384.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12.i.i

do.end.i.i:                                       ; preds = %do.end384.i
  %i2c_props.i.i = getelementptr inbounds %struct.xc2028_data, ptr %171, i32 0, i32 1
  %name.i.i = getelementptr inbounds %struct.xc2028_data, ptr %171, i32 0, i32 1, i32 3
  %172 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name.i.i, align 4
  %adap.i796.i = getelementptr inbounds %struct.xc2028_data, ptr %171, i32 0, i32 1, i32 1
  %174 = ptrtoint ptr %adap.i796.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adap.i796.i, align 4
  %tobool4.not.i.i = icmp eq ptr %175, null
  br i1 %tobool4.not.i.i, label %do.end.i.i.cond.end.i798.i_crit_edge, label %cond.true.i.i

do.end.i.i.cond.end.i798.i_crit_edge:             ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i798.i

cond.true.i.i:                                    ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %175, i32 0, i32 11
  %176 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nr.i.i.i, align 4
  br label %cond.end.i798.i

cond.end.i798.i:                                  ; preds = %cond.true.i.i, %do.end.i.i.cond.end.i798.i_crit_edge
  %cond.i797.i = phi i32 [ %177, %cond.true.i.i ], [ -1, %do.end.i.i.cond.end.i798.i_crit_edge ]
  %178 = ptrtoint ptr %i2c_props.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %i2c_props.i.i, align 8
  %conv.i.i = zext i8 %179 to i32
  %call8.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %173, i32 noundef %cond.i797.i, i32 noundef %conv.i.i, ptr noundef nonnull @.str.253) #13
  br label %do.end12.i.i

do.end12.i.i:                                     ; preds = %cond.end.i798.i, %do.end384.i.do.end12.i.i_crit_edge, %do.end384.i.thread
  %180 = phi ptr [ %157, %do.end384.i.thread ], [ %171, %cond.end.i798.i ], [ %171, %do.end384.i.do.end12.i.i_crit_edge ]
  %181 = phi i32 [ %155, %do.end384.i.thread ], [ %167, %cond.end.i798.i ], [ %167, %do.end384.i.do.end12.i.i_crit_edge ]
  %182 = phi i16 [ %153, %do.end384.i.thread ], [ %169, %cond.end.i798.i ], [ %169, %do.end384.i.do.end12.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %182)
  %tobool13.not.i.i = icmp eq i16 %182, 0
  br i1 %tobool13.not.i.i, label %if.then14.i.i, label %for.cond.preheader.i.i

for.cond.preheader.i.i:                           ; preds = %do.end12.i.i
  %firm_size.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 6
  %183 = ptrtoint ptr %firm_size.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %firm_size.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp19393.i.i = icmp sgt i32 %184, 0
  br i1 %cmp19393.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %firm.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 5
  %185 = ptrtoint ptr %firm.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %firm.i.i, align 4
  br label %for.body.i.i

if.then14.i.i:                                    ; preds = %do.end12.i.i
  %or387.i434 = or i32 %150, %135
  %call15.i.i = call fastcc i32 @seek_firmware(ptr noundef %fe, i32 noundef %or387.i434, ptr noundef %id.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i.i)
  %cmp.i.i = icmp slt i32 %call15.i.i, 0
  br i1 %cmp.i.i, label %if.then14.i.i.check_device.i_crit_edge, label %if.then14.i.i.if.end37.i.i_crit_edge

if.then14.i.i.if.end37.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i.i

if.then14.i.i.check_device.i_crit_edge:           ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %pos.0394.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ]
  %int_freq21.i.i = getelementptr %struct.firmware_description, ptr %186, i32 %pos.0394.i.i, i32 2
  %187 = ptrtoint ptr %int_freq21.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %int_freq21.i.i, align 8
  call void @__sanitizer_cov_trace_cmp2(i16 %188, i16 %182)
  %cmp24.i.i = icmp eq i16 %188, %182
  br i1 %cmp24.i.i, label %land.lhs.true.i799.i, label %for.body.i.i.for.inc.i.i_crit_edge

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

land.lhs.true.i799.i:                             ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.firmware_description, ptr %186, i32 %pos.0394.i.i
  %189 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx.i.i, align 8
  %and.i.i = and i32 %190, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool29.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool29.not.i.i, label %land.lhs.true.i799.i.for.inc.i.i_crit_edge, label %land.lhs.true.i799.i.for.end.i.i_crit_edge

land.lhs.true.i799.i.for.end.i.i_crit_edge:       ; preds = %land.lhs.true.i799.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end.i.i

land.lhs.true.i799.i.for.inc.i.i_crit_edge:       ; preds = %land.lhs.true.i799.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i.i

for.inc.i.i:                                      ; preds = %land.lhs.true.i799.i.for.inc.i.i_crit_edge, %for.body.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %pos.0394.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %184
  br i1 %exitcond.not.i.i, label %for.inc.i.i.check_device.i_crit_edge, label %for.inc.i.i.for.body.i.i_crit_edge

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.inc.i.i.check_device.i_crit_edge:             ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

for.end.i.i:                                      ; preds = %land.lhs.true.i799.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %pos.0.lcssa.i.i = phi i32 [ 0, %for.cond.preheader.i.i.for.end.i.i_crit_edge ], [ %pos.0394.i.i, %land.lhs.true.i799.i.for.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.0.lcssa.i.i, i32 %184)
  %cmp33.i.i = icmp eq i32 %pos.0.lcssa.i.i, %184
  br i1 %cmp33.i.i, label %for.end.i.i.check_device.i_crit_edge, label %for.end.i.i.if.end37.i.i_crit_edge

for.end.i.i.if.end37.i.i_crit_edge:               ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37.i.i

for.end.i.i.check_device.i_crit_edge:             ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

if.end37.i.i:                                     ; preds = %for.end.i.i.if.end37.i.i_crit_edge, %if.then14.i.i.if.end37.i.i_crit_edge
  %pos.1.i.i = phi i32 [ %pos.0.lcssa.i.i, %for.end.i.i.if.end37.i.i_crit_edge ], [ %call15.i.i, %if.then14.i.i.if.end37.i.i_crit_edge ]
  %firm38.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 5
  %191 = ptrtoint ptr %firm38.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %firm38.i.i, align 4
  %arrayidx39.i.i = getelementptr %struct.firmware_description, ptr %192, i32 %pos.1.i.i
  %ptr.i.i = getelementptr %struct.firmware_description, ptr %192, i32 %pos.1.i.i, i32 3
  %193 = ptrtoint ptr %ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %ptr.i.i, align 4
  %195 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %arrayidx39.i.i, align 8
  %and43.i.i = and i32 %196, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i.i)
  %tobool44.not.i.i = icmp eq i32 %and43.i.i, 0
  %size57.i.i = getelementptr %struct.firmware_description, ptr %192, i32 %pos.1.i.i, i32 4
  %197 = ptrtoint ptr %size57.i.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %size57.i.i, align 8
  br i1 %tobool44.not.i.i, label %if.else54.i.i, label %if.then45.i.i

if.then45.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %198)
  %cmp48.not.i.i = icmp ne i32 %198, 192
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %181)
  %cmp50.i.i = icmp sgt i32 %181, 15
  %or.cond.i.i = or i1 %cmp50.i.i, %cmp48.not.i.i
  br i1 %or.cond.i.i, label %if.then45.i.i.check_device.i_crit_edge, label %if.end53.i.i

if.then45.i.i.check_device.i_crit_edge:           ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

if.end53.i.i:                                     ; preds = %if.then45.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = mul i32 %181, 12
  br label %do.end78.i.i

if.else54.i.i:                                    ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 224, i32 %198)
  %cmp58.not.i.i = icmp ne i32 %198, 224
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %181)
  %cmp61.i.i = icmp sgt i32 %181, 15
  %or.cond385.i.i = or i1 %cmp61.i.i, %cmp58.not.i.i
  br i1 %or.cond385.i.i, label %if.else54.i.i.check_device.i_crit_edge, label %lor.lhs.false63.i.i

if.else54.i.i.check_device.i_crit_edge:           ; preds = %if.else54.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

lor.lhs.false63.i.i:                              ; preds = %if.else54.i.i
  %mul64.i.i = mul i32 %181, 14
  %add.ptr65.i.i = getelementptr i8, ptr %194, i32 %mul64.i.i
  %199 = ptrtoint ptr %add.ptr65.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %200 = load i16, ptr %add.ptr65.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 3072, i16 %200)
  %cmp67.not.i.i = icmp eq i16 %200, 3072
  br i1 %cmp67.not.i.i, label %if.end70.i.i, label %lor.lhs.false63.i.i.check_device.i_crit_edge

lor.lhs.false63.i.i.check_device.i_crit_edge:     ; preds = %lor.lhs.false63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

if.end70.i.i:                                     ; preds = %lor.lhs.false63.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i.i = add i32 %mul64.i.i, 2
  br label %do.end78.i.i

do.end78.i.i:                                     ; preds = %if.end70.i.i, %if.end53.i.i
  %mul.pn.i.i = phi i32 [ %mul.i.i, %if.end53.i.i ], [ %add.i.i, %if.end70.i.i ]
  %p.0.i.i = getelementptr i8, ptr %194, i32 %mul.pn.i.i
  %i2c_props80.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 1
  %name81.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 1, i32 3
  %201 = ptrtoint ptr %name81.i.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %name81.i.i, align 4
  %adap83.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 1, i32 1
  %203 = ptrtoint ptr %adap83.i.i to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %adap83.i.i, align 4
  %tobool84.not.i.i = icmp eq ptr %204, null
  br i1 %tobool84.not.i.i, label %do.end78.i.i.cond.end90.i.i_crit_edge, label %cond.true85.i.i

do.end78.i.i.cond.end90.i.i_crit_edge:            ; preds = %do.end78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end90.i.i

cond.true85.i.i:                                  ; preds = %do.end78.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i386.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %204, i32 0, i32 11
  %205 = ptrtoint ptr %nr.i386.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %nr.i386.i.i, align 4
  br label %cond.end90.i.i

cond.end90.i.i:                                   ; preds = %cond.true85.i.i, %do.end78.i.i.cond.end90.i.i_crit_edge
  %cond91.i.i = phi i32 [ %206, %cond.true85.i.i ], [ -1, %do.end78.i.i.cond.end90.i.i_crit_edge ]
  %207 = ptrtoint ptr %i2c_props80.i.i to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %i2c_props80.i.i, align 8
  %conv94.i.i = zext i8 %208 to i32
  %call95.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.255, ptr noundef %202, i32 noundef %cond91.i.i, i32 noundef %conv94.i.i) #13
  %209 = ptrtoint ptr %firm38.i.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %firm38.i.i, align 4
  %arrayidx101.i.i = getelementptr %struct.firmware_description, ptr %210, i32 %pos.1.i.i
  %211 = ptrtoint ptr %arrayidx101.i.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %arrayidx101.i.i, align 8
  %int_freq105.i.i = getelementptr %struct.firmware_description, ptr %210, i32 %pos.1.i.i, i32 2
  %213 = ptrtoint ptr %int_freq105.i.i to i32
  call void @__asan_load2_noabort(i32 %213)
  %214 = load i16, ptr %int_freq105.i.i, align 8
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %212, i16 noundef zeroext %214) #10
  %215 = ptrtoint ptr %firm38.i.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %firm38.i.i, align 4
  %arrayidx111.i.i = getelementptr %struct.firmware_description, ptr %216, i32 %pos.1.i.i
  %217 = ptrtoint ptr %arrayidx111.i.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx111.i.i, align 8
  %219 = ptrtoint ptr %id.i to i32
  call void @__asan_load8_noabort(i32 %219)
  %220 = load i64, ptr %id.i, align 8
  %call113.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %218, i64 noundef %220) #13
  %firm_version.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 7
  %221 = ptrtoint ptr %firm_version.i.i to i32
  call void @__asan_load2_noabort(i32 %221)
  %222 = load i16, ptr %firm_version.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 514, i16 %222)
  %cmp115.i.i = icmp ult i16 %222, 514
  br i1 %cmp115.i.i, label %if.then117.i.i, label %if.else157.i.i

if.then117.i.i:                                   ; preds = %cond.end90.i.i
  %call119.i.i = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %i2c_props80.i.i, ptr noundef nonnull @load_scode._val, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call119.i.i)
  %cmp120.not.i.i = icmp eq i32 %call119.i.i, 4
  br i1 %cmp120.not.i.i, label %if.else149.i.i, label %do.end127.i.i

do.end127.i.i:                                    ; preds = %if.then117.i.i
  %223 = ptrtoint ptr %name81.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %name81.i.i, align 4
  %225 = ptrtoint ptr %adap83.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %adap83.i.i, align 4
  %tobool133.not.i.i = icmp eq ptr %226, null
  br i1 %tobool133.not.i.i, label %do.end127.i.i.cond.end139.i.i_crit_edge, label %cond.true134.i.i

do.end127.i.i.cond.end139.i.i_crit_edge:          ; preds = %do.end127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end139.i.i

cond.true134.i.i:                                 ; preds = %do.end127.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i387.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %226, i32 0, i32 11
  %227 = ptrtoint ptr %nr.i387.i.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %nr.i387.i.i, align 4
  br label %cond.end139.i.i

cond.end139.i.i:                                  ; preds = %cond.true134.i.i, %do.end127.i.i.cond.end139.i.i_crit_edge
  %cond140.i.i = phi i32 [ %228, %cond.true134.i.i ], [ -1, %do.end127.i.i.cond.end139.i.i_crit_edge ]
  %229 = ptrtoint ptr %i2c_props80.i.i to i32
  call void @__asan_load1_noabort(i32 %229)
  %230 = load i8, ptr %i2c_props80.i.i, align 8
  %conv143.i.i = zext i8 %230 to i32
  %call144.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %224, i32 noundef %cond140.i.i, i32 noundef %conv143.i.i, i32 noundef 698, i32 noundef %call119.i.i) #13
  br label %if.end200.i.i

if.else149.i.i:                                   ; preds = %if.then117.i.i
  %msleep.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 10, i32 2
  %231 = ptrtoint ptr %msleep.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %msleep.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %232)
  %tobool150.not.i.i = icmp eq i32 %232, 0
  br i1 %tobool150.not.i.i, label %if.else149.i.i.if.end204.i.i_crit_edge, label %if.else149.i.i.if.end204.sink.split.i.i_crit_edge

if.else149.i.i.if.end204.sink.split.i.i_crit_edge: ; preds = %if.else149.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204.sink.split.i.i

if.else149.i.i.if.end204.i.i_crit_edge:           ; preds = %if.else149.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204.i.i

if.else157.i.i:                                   ; preds = %cond.end90.i.i
  %call160.i.i = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %i2c_props80.i.i, ptr noundef nonnull @load_scode._val.261, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call160.i.i)
  %cmp161.not.i.i = icmp eq i32 %call160.i.i, 4
  br i1 %cmp161.not.i.i, label %if.else190.i.i, label %do.end168.i.i

do.end168.i.i:                                    ; preds = %if.else157.i.i
  %233 = ptrtoint ptr %name81.i.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %name81.i.i, align 4
  %235 = ptrtoint ptr %adap83.i.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %adap83.i.i, align 4
  %tobool174.not.i.i = icmp eq ptr %236, null
  br i1 %tobool174.not.i.i, label %do.end168.i.i.cond.end180.i.i_crit_edge, label %cond.true175.i.i

do.end168.i.i.cond.end180.i.i_crit_edge:          ; preds = %do.end168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end180.i.i

cond.true175.i.i:                                 ; preds = %do.end168.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i388.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %236, i32 0, i32 11
  %237 = ptrtoint ptr %nr.i388.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %nr.i388.i.i, align 4
  br label %cond.end180.i.i

cond.end180.i.i:                                  ; preds = %cond.true175.i.i, %do.end168.i.i.cond.end180.i.i_crit_edge
  %cond181.i.i = phi i32 [ %238, %cond.true175.i.i ], [ -1, %do.end168.i.i.cond.end180.i.i_crit_edge ]
  %239 = ptrtoint ptr %i2c_props80.i.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %i2c_props80.i.i, align 8
  %conv184.i.i = zext i8 %240 to i32
  %call185.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %234, i32 noundef %cond181.i.i, i32 noundef %conv184.i.i, i32 noundef 700, i32 noundef %call160.i.i) #13
  br label %if.end200.i.i

if.else190.i.i:                                   ; preds = %if.else157.i.i
  %msleep192.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 10, i32 2
  %241 = ptrtoint ptr %msleep192.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %msleep192.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool193.not.i.i = icmp eq i32 %242, 0
  br i1 %tobool193.not.i.i, label %if.else190.i.i.if.end204.i.i_crit_edge, label %if.else190.i.i.if.end204.sink.split.i.i_crit_edge

if.else190.i.i.if.end204.sink.split.i.i_crit_edge: ; preds = %if.else190.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204.sink.split.i.i

if.else190.i.i.if.end204.i.i_crit_edge:           ; preds = %if.else190.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204.i.i

if.end200.i.i:                                    ; preds = %cond.end180.i.i, %cond.end139.i.i
  %rc.0.i.i = phi i32 [ %call119.i.i, %cond.end139.i.i ], [ %call160.i.i, %cond.end180.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0.i.i)
  %cmp201.i.i = icmp slt i32 %rc.0.i.i, 0
  br i1 %cmp201.i.i, label %if.end200.i.i.check_device.i_crit_edge, label %if.end200.i.i.if.end204.i.i_crit_edge

if.end200.i.i.if.end204.i.i_crit_edge:            ; preds = %if.end200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end204.i.i

if.end200.i.i.check_device.i_crit_edge:           ; preds = %if.end200.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

if.end204.sink.split.i.i:                         ; preds = %if.else190.i.i.if.end204.sink.split.i.i_crit_edge, %if.else149.i.i.if.end204.sink.split.i.i_crit_edge
  %.sink.i.i = phi i32 [ %232, %if.else149.i.i.if.end204.sink.split.i.i_crit_edge ], [ %242, %if.else190.i.i.if.end204.sink.split.i.i_crit_edge ]
  tail call void @msleep(i32 noundef %.sink.i.i) #10
  br label %if.end204.i.i

if.end204.i.i:                                    ; preds = %if.end204.sink.split.i.i, %if.end200.i.i.if.end204.i.i_crit_edge, %if.else190.i.i.if.end204.i.i_crit_edge, %if.else149.i.i.if.end204.i.i_crit_edge
  %call207.i.i = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %i2c_props80.i.i, ptr noundef %p.0.i.i, i32 noundef 12) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %call207.i.i)
  %cmp208.not.i.i = icmp eq i32 %call207.i.i, 12
  br i1 %cmp208.not.i.i, label %if.end204.i.i.if.end237.i.i_crit_edge, label %do.end215.i.i

if.end204.i.i.if.end237.i.i_crit_edge:            ; preds = %if.end204.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end237.i.i

do.end215.i.i:                                    ; preds = %if.end204.i.i
  %243 = ptrtoint ptr %name81.i.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %name81.i.i, align 4
  %245 = ptrtoint ptr %adap83.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %adap83.i.i, align 4
  %tobool221.not.i.i = icmp eq ptr %246, null
  br i1 %tobool221.not.i.i, label %do.end215.i.i.cond.end227.i.i_crit_edge, label %cond.true222.i.i

do.end215.i.i.cond.end227.i.i_crit_edge:          ; preds = %do.end215.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end227.i.i

cond.true222.i.i:                                 ; preds = %do.end215.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i389.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %246, i32 0, i32 11
  %247 = ptrtoint ptr %nr.i389.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %nr.i389.i.i, align 4
  br label %cond.end227.i.i

cond.end227.i.i:                                  ; preds = %cond.true222.i.i, %do.end215.i.i.cond.end227.i.i_crit_edge
  %cond228.i.i = phi i32 [ %248, %cond.true222.i.i ], [ -1, %do.end215.i.i.cond.end227.i.i_crit_edge ]
  %249 = ptrtoint ptr %i2c_props80.i.i to i32
  call void @__asan_load1_noabort(i32 %249)
  %250 = load i8, ptr %i2c_props80.i.i, align 8
  %conv231.i.i = zext i8 %250 to i32
  %call232.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %244, i32 noundef %cond228.i.i, i32 noundef %conv231.i.i, i32 noundef %call207.i.i, i32 noundef 12) #13
  br label %if.end237.i.i

if.end237.i.i:                                    ; preds = %cond.end227.i.i, %if.end204.i.i.if.end237.i.i_crit_edge
  %msleep239.i.i = getelementptr inbounds %struct.xc2028_data, ptr %180, i32 0, i32 10, i32 2
  %251 = ptrtoint ptr %msleep239.i.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %msleep239.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %252)
  %tobool240.not.i.i = icmp eq i32 %252, 0
  br i1 %tobool240.not.i.i, label %if.end237.i.i.if.end244.i.i_crit_edge, label %if.then241.i.i

if.end237.i.i.if.end244.i.i_crit_edge:            ; preds = %if.end237.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end244.i.i

if.then241.i.i:                                   ; preds = %if.end237.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef %252) #10
  br label %if.end244.i.i

if.end244.i.i:                                    ; preds = %if.then241.i.i, %if.end237.i.i.if.end244.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207.i.i)
  %cmp246.i.i = icmp slt i32 %call207.i.i, 0
  br i1 %cmp246.i.i, label %if.end244.i.i.check_device.i_crit_edge, label %if.end249.i.i

if.end244.i.i.check_device.i_crit_edge:           ; preds = %if.end244.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_device.i

if.end249.i.i:                                    ; preds = %if.end244.i.i
  %call252.i.i = tail call fastcc i32 @tuner_i2c_xfer_send(ptr noundef %i2c_props80.i.i, ptr noundef nonnull @load_scode._val.266, i32 noundef 2) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call252.i.i)
  %cmp253.not.i.i = icmp eq i32 %call252.i.i, 2
  br i1 %cmp253.not.i.i, label %if.else282.i.i, label %do.end260.i.i

do.end260.i.i:                                    ; preds = %if.end249.i.i
  %253 = ptrtoint ptr %name81.i.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load ptr, ptr %name81.i.i, align 4
  %255 = ptrtoint ptr %adap83.i.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %adap83.i.i, align 4
  %tobool266.not.i.i = icmp eq ptr %256, null
  br i1 %tobool266.not.i.i, label %do.end260.i.i.cond.end272.i.i_crit_edge, label %cond.true267.i.i

do.end260.i.i.cond.end272.i.i_crit_edge:          ; preds = %do.end260.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end272.i.i

cond.true267.i.i:                                 ; preds = %do.end260.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i390.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %256, i32 0, i32 11
  %257 = ptrtoint ptr %nr.i390.i.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %nr.i390.i.i, align 4
  br label %cond.end272.i.i

cond.end272.i.i:                                  ; preds = %cond.true267.i.i, %do.end260.i.i.cond.end272.i.i_crit_edge
  %cond273.i.i = phi i32 [ %258, %cond.true267.i.i ], [ -1, %do.end260.i.i.cond.end272.i.i_crit_edge ]
  %259 = ptrtoint ptr %i2c_props80.i.i to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %i2c_props80.i.i, align 8
  %conv276.i.i = zext i8 %260 to i32
  %call277.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %254, i32 noundef %cond273.i.i, i32 noundef %conv276.i.i, i32 noundef 708, i32 noundef %call252.i.i) #13
  br label %if.end290.i.i

if.else282.i.i:                                   ; preds = %if.end249.i.i
  %261 = ptrtoint ptr %msleep239.i.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %msleep239.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %262)
  %tobool285.not.i.i = icmp eq i32 %262, 0
  br i1 %tobool285.not.i.i, label %if.else282.i.i.if.end290.i.i_crit_edge, label %if.then286.i.i

if.else282.i.i.if.end290.i.i_crit_edge:           ; preds = %if.else282.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end290.i.i

if.then286.i.i:                                   ; preds = %if.else282.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @msleep(i32 noundef %262) #10
  br label %if.end290.i.i

if.end290.i.i:                                    ; preds = %if.then286.i.i, %if.else282.i.i.if.end290.i.i_crit_edge, %cond.end272.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call252.i.i)
  %cmp292.i.i = icmp slt i32 %call252.i.i, 0
  %..i.i = select i1 %cmp292.i.i, i32 -5, i32 0
  br label %check_device.i

check_device.i:                                   ; preds = %if.end290.i.i, %if.end244.i.i.check_device.i_crit_edge, %if.end200.i.i.check_device.i_crit_edge, %lor.lhs.false63.i.i.check_device.i_crit_edge, %if.else54.i.i.check_device.i_crit_edge, %if.then45.i.i.check_device.i_crit_edge, %for.end.i.i.check_device.i_crit_edge, %for.inc.i.i.check_device.i_crit_edge, %if.then14.i.i.check_device.i_crit_edge, %if.end349.i.check_device.i_crit_edge, %cond.end338.i, %do.body320.i.check_device.i_crit_edge
  %rc.5.i = phi i32 [ %rc.4.i, %cond.end338.i ], [ %rc.4.i, %do.body320.i.check_device.i_crit_edge ], [ %rc.4.i, %if.end349.i.check_device.i_crit_edge ], [ %call15.i.i, %if.then14.i.i.check_device.i_crit_edge ], [ -2, %for.end.i.i.check_device.i_crit_edge ], [ -22, %if.then45.i.i.check_device.i_crit_edge ], [ -22, %lor.lhs.false63.i.i.check_device.i_crit_edge ], [ -22, %if.else54.i.i.check_device.i_crit_edge ], [ -5, %if.end200.i.i.check_device.i_crit_edge ], [ -5, %if.end244.i.i.check_device.i_crit_edge ], [ %..i.i, %if.end290.i.i ], [ -2, %for.inc.i.i.check_device.i_crit_edge ]
  %call392.i = call fastcc i32 @xc2028_get_reg(ptr noundef %25, i16 noundef zeroext 4, ptr noundef nonnull %version.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call392.i)
  %cmp393.i = icmp slt i32 %call392.i, 0
  br i1 %cmp393.i, label %check_device.i.do.end403.i_crit_edge, label %lor.lhs.false.i

check_device.i.do.end403.i_crit_edge:             ; preds = %check_device.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end403.i

lor.lhs.false.i:                                  ; preds = %check_device.i
  %call395.i = call fastcc i32 @xc2028_get_reg(ptr noundef %25, i16 noundef zeroext 8, ptr noundef nonnull %hwmodel.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call395.i)
  %cmp396.i = icmp slt i32 %call395.i, 0
  br i1 %cmp396.i, label %lor.lhs.false.i.do.end403.i_crit_edge, label %do.body426.i

lor.lhs.false.i.do.end403.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end403.i

do.end403.i:                                      ; preds = %lor.lhs.false.i.do.end403.i_crit_edge, %check_device.i.do.end403.i_crit_edge
  %263 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %name35.i, align 4
  %265 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load ptr, ptr %adap37.i, align 4
  %tobool409.not.i = icmp eq ptr %266, null
  br i1 %tobool409.not.i, label %do.end403.i.cond.end415.i_crit_edge, label %cond.true410.i

do.end403.i.cond.end415.i_crit_edge:              ; preds = %do.end403.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end415.i

cond.true410.i:                                   ; preds = %do.end403.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i801.i = getelementptr inbounds %struct.i2c_adapter, ptr %266, i32 0, i32 11
  %267 = ptrtoint ptr %nr.i801.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %nr.i801.i, align 4
  br label %cond.end415.i

cond.end415.i:                                    ; preds = %cond.true410.i, %do.end403.i.cond.end415.i_crit_edge
  %cond416.i = phi i32 [ %268, %cond.true410.i ], [ -1, %do.end403.i.cond.end415.i_crit_edge ]
  %269 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %i2c_props34.i, align 8
  %conv419.i = zext i8 %270 to i32
  %call420.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.95, ptr noundef %264, i32 noundef %cond416.i, i32 noundef %conv419.i) #13
  br label %fail.i

do.body426.i:                                     ; preds = %lor.lhs.false.i
  %271 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %271)
  %tobool427.not.i = icmp eq i32 %271, 0
  br i1 %tobool427.not.i, label %do.body426.i.do.end465.i_crit_edge, label %do.end432.i

do.body426.i.do.end465.i_crit_edge:               ; preds = %do.body426.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end465.i

do.end432.i:                                      ; preds = %do.body426.i
  %272 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load ptr, ptr %name35.i, align 4
  %274 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load ptr, ptr %adap37.i, align 4
  %tobool438.not.i = icmp eq ptr %275, null
  br i1 %tobool438.not.i, label %do.end432.i.cond.end444.i_crit_edge, label %cond.true439.i

do.end432.i.cond.end444.i_crit_edge:              ; preds = %do.end432.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end444.i

cond.true439.i:                                   ; preds = %do.end432.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i802.i = getelementptr inbounds %struct.i2c_adapter, ptr %275, i32 0, i32 11
  %276 = ptrtoint ptr %nr.i802.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %nr.i802.i, align 4
  br label %cond.end444.i

cond.end444.i:                                    ; preds = %cond.true439.i, %do.end432.i.cond.end444.i_crit_edge
  %cond445.i = phi i32 [ %277, %cond.true439.i ], [ -1, %do.end432.i.cond.end444.i_crit_edge ]
  %278 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %278)
  %279 = load i8, ptr %i2c_props34.i, align 8
  %conv448.i = zext i8 %279 to i32
  %280 = ptrtoint ptr %hwmodel.i to i32
  call void @__asan_load2_noabort(i32 %280)
  %281 = load i16, ptr %hwmodel.i, align 2
  %conv449.i = zext i16 %281 to i32
  %282 = ptrtoint ptr %version.i to i32
  call void @__asan_load2_noabort(i32 %282)
  %283 = load i16, ptr %version.i, align 2
  %conv450.i = zext i16 %283 to i32
  %284 = lshr i32 %conv450.i, 12
  %and453.i = lshr i32 %conv450.i, 8
  %285 = and i32 %and453.i, 15
  %and456.i = lshr i32 %conv450.i, 4
  %286 = and i32 %and456.i, 15
  %and459.i = and i32 %conv450.i, 15
  %call460.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.98, ptr noundef %273, i32 noundef %cond445.i, i32 noundef %conv448.i, i32 noundef %conv449.i, i32 noundef %284, i32 noundef %285, i32 noundef %286, i32 noundef %and459.i) #13
  br label %do.end465.i

do.end465.i:                                      ; preds = %cond.end444.i, %do.body426.i.do.end465.i_crit_edge
  %287 = ptrtoint ptr %mts.i to i32
  call void @__asan_load1_noabort(i32 %287)
  %bf.load467.i = load i8, ptr %mts.i, align 4
  %288 = and i8 %bf.load467.i, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %288)
  %tobool470.not.i = icmp eq i8 %288, 0
  br i1 %tobool470.not.i, label %if.end472.i, label %do.end465.i.check_firmware.exit.thread437_crit_edge

do.end465.i.check_firmware.exit.thread437_crit_edge: ; preds = %do.end465.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_firmware.exit.thread437

if.end472.i:                                      ; preds = %do.end465.i
  %289 = ptrtoint ptr %firm_version.i to i32
  call void @__asan_load2_noabort(i32 %289)
  %290 = load i16, ptr %firm_version.i, align 4
  %conv473.i = zext i16 %290 to i32
  %291 = ptrtoint ptr %version.i to i32
  call void @__asan_load2_noabort(i32 %291)
  %292 = load i16, ptr %version.i, align 2
  %conv474.i = zext i16 %292 to i32
  %and475.i = shl nuw nsw i32 %conv474.i, 4
  %shl.i = and i32 %and475.i, 3840
  %and477.i = and i32 %conv474.i, 15
  %or478.i = or i32 %shl.i, %and477.i
  call void @__sanitizer_cov_trace_cmp4(i32 %or478.i, i32 %conv473.i)
  %cmp479.not.i = icmp eq i32 %or478.i, %conv473.i
  br i1 %cmp479.not.i, label %if.end544.i, label %do.end494.i

do.end494.i:                                      ; preds = %if.end472.i
  %293 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load ptr, ptr %name35.i, align 4
  %295 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %adap37.i, align 4
  %tobool500.not.i = icmp eq ptr %296, null
  br i1 %tobool500.not.i, label %do.end494.i.cond.end506.i_crit_edge, label %cond.true501.i

do.end494.i.cond.end506.i_crit_edge:              ; preds = %do.end494.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end506.i

cond.true501.i:                                   ; preds = %do.end494.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i803.i = getelementptr inbounds %struct.i2c_adapter, ptr %296, i32 0, i32 11
  %297 = ptrtoint ptr %nr.i803.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %nr.i803.i, align 4
  br label %cond.end506.i

cond.end506.i:                                    ; preds = %cond.true501.i, %do.end494.i.cond.end506.i_crit_edge
  %cond507.i = phi i32 [ %298, %cond.true501.i ], [ -1, %do.end494.i.cond.end506.i_crit_edge ]
  %299 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %i2c_props34.i, align 8
  %conv510.i = zext i8 %300 to i32
  %call511.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.101, ptr noundef %294, i32 noundef %cond507.i, i32 noundef %conv510.i) #13
  br label %fail.i

if.end544.i:                                      ; preds = %if.end472.i
  %301 = ptrtoint ptr %hwmodel545.i to i32
  call void @__asan_load2_noabort(i32 %301)
  %302 = load i16, ptr %hwmodel545.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %302)
  %cmp547.i = icmp eq i16 %302, 0
  %303 = ptrtoint ptr %hwmodel.i to i32
  call void @__asan_load2_noabort(i32 %303)
  %304 = load i16, ptr %hwmodel.i, align 2
  br i1 %cmp547.i, label %land.lhs.true549.i, label %lor.lhs.false567.i

land.lhs.true549.i:                               ; preds = %if.end544.i
  %305 = zext i16 %304 to i64
  call void @__sanitizer_cov_trace_switch(i64 %305, ptr @__sancov_gen_cov_switch_values.354)
  switch i16 %304, label %land.lhs.true549.i.do.end585.i_crit_edge [
    i16 2028, label %land.lhs.true549.i.if.then557.i_crit_edge
    i16 3028, label %land.lhs.true549.i.if.then557.i_crit_edge457
  ]

land.lhs.true549.i.if.then557.i_crit_edge457:     ; preds = %land.lhs.true549.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then557.i

land.lhs.true549.i.if.then557.i_crit_edge:        ; preds = %land.lhs.true549.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then557.i

land.lhs.true549.i.do.end585.i_crit_edge:         ; preds = %land.lhs.true549.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end585.i

if.then557.i:                                     ; preds = %land.lhs.true549.i.if.then557.i_crit_edge, %land.lhs.true549.i.if.then557.i_crit_edge457
  %306 = ptrtoint ptr %hwmodel545.i to i32
  call void @__asan_store2_noabort(i32 %306)
  store i16 %304, ptr %hwmodel545.i, align 2
  %307 = and i16 %292, -256
  %308 = ptrtoint ptr %hwvers574.i to i32
  call void @__asan_store2_noabort(i32 %308)
  store i16 %307, ptr %hwvers574.i, align 8
  br label %check_firmware.exit.thread437

lor.lhs.false567.i:                               ; preds = %if.end544.i
  call void @__sanitizer_cov_trace_cmp2(i16 %302, i16 %304)
  %cmp571.not.i = icmp eq i16 %302, %304
  br i1 %cmp571.not.i, label %lor.lhs.false573.i, label %lor.lhs.false567.i.do.end585.i_crit_edge

lor.lhs.false567.i.do.end585.i_crit_edge:         ; preds = %lor.lhs.false567.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end585.i

lor.lhs.false573.i:                               ; preds = %lor.lhs.false567.i
  %309 = ptrtoint ptr %hwvers574.i to i32
  call void @__asan_load2_noabort(i32 %309)
  %310 = load i16, ptr %hwvers574.i, align 8
  %311 = and i16 %292, -256
  call void @__sanitizer_cov_trace_cmp2(i16 %310, i16 %311)
  %cmp578.not.i = icmp eq i16 %310, %311
  br i1 %cmp578.not.i, label %lor.lhs.false573.i.check_firmware.exit.thread437_crit_edge, label %lor.lhs.false573.i.do.end585.i_crit_edge

lor.lhs.false573.i.do.end585.i_crit_edge:         ; preds = %lor.lhs.false573.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end585.i

lor.lhs.false573.i.check_firmware.exit.thread437_crit_edge: ; preds = %lor.lhs.false573.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_firmware.exit.thread437

do.end585.i:                                      ; preds = %lor.lhs.false573.i.do.end585.i_crit_edge, %lor.lhs.false567.i.do.end585.i_crit_edge, %land.lhs.true549.i.do.end585.i_crit_edge
  %312 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %name35.i, align 4
  %314 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %adap37.i, align 4
  %tobool591.not.i = icmp eq ptr %315, null
  br i1 %tobool591.not.i, label %do.end585.i.cond.end597.i_crit_edge, label %cond.true592.i

do.end585.i.cond.end597.i_crit_edge:              ; preds = %do.end585.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end597.i

cond.true592.i:                                   ; preds = %do.end585.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i804.i = getelementptr inbounds %struct.i2c_adapter, ptr %315, i32 0, i32 11
  %316 = ptrtoint ptr %nr.i804.i to i32
  call void @__asan_load4_noabort(i32 %316)
  %317 = load i32, ptr %nr.i804.i, align 4
  br label %cond.end597.i

cond.end597.i:                                    ; preds = %cond.true592.i, %do.end585.i.cond.end597.i_crit_edge
  %cond598.i = phi i32 [ %317, %cond.true592.i ], [ -1, %do.end585.i.cond.end597.i_crit_edge ]
  %318 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %318)
  %319 = load i8, ptr %i2c_props34.i, align 8
  %conv601.i = zext i8 %319 to i32
  %call602.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.107, ptr noundef %313, i32 noundef %cond598.i, i32 noundef %conv601.i) #13
  br label %fail.i

check_firmware.exit.thread437:                    ; preds = %lor.lhs.false573.i.check_firmware.exit.thread437_crit_edge, %if.then557.i, %do.end465.i.check_firmware.exit.thread437_crit_edge
  %320 = call ptr @memcpy(ptr %cur_fw.i, ptr %new_fw.i, i32 40)
  %321 = ptrtoint ptr %cur_fw.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %cur_fw.i, align 8
  %or613.i = or i32 %322, 1
  store i32 %or613.i, ptr %cur_fw.i, align 8
  %323 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %323)
  store i32 2, ptr %state.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %std0.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hwmodel.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %new_fw.i) #10
  br label %if.end46

fail.i:                                           ; preds = %cond.end597.i, %cond.end506.i, %cond.end415.i, %if.end303.i.fail.i_crit_edge, %cond.end238.i, %cond.end165.i, %do_tuner_callback.exit.i.fail.i_crit_edge, %if.end136.i.fail.i_crit_edge
  %rc.6.i = phi i32 [ %rc.5.i, %cond.end415.i ], [ %rc.5.i, %cond.end597.i ], [ %rc.5.i, %cond.end506.i ], [ %rc.3.i, %if.end303.i.fail.i_crit_edge ], [ %call.i.i, %do_tuner_callback.exit.i.fail.i_crit_edge ], [ %call145.i, %cond.end165.i ], [ %rc.1.i, %cond.end238.i ], [ -22, %if.end136.i.fail.i_crit_edge ]
  tail call fastcc void @free_firmware(ptr noundef %25) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %retry_count.0.i)
  %exitcond.not.i = icmp eq i32 %retry_count.0.i, 8
  br i1 %exitcond.not.i, label %if.end647.i, label %if.then617.i

if.then617.i:                                     ; preds = %fail.i
  tail call void @msleep(i32 noundef 50) #10
  %inc.i = add nuw nsw i32 %retry_count.0.i, 1
  %324 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %324)
  %tobool619.not.i = icmp eq i32 %324, 0
  br i1 %tobool619.not.i, label %if.then617.i.retry.i.backedge_crit_edge, label %do.end624.i

if.then617.i.retry.i.backedge_crit_edge:          ; preds = %if.then617.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %retry.i.backedge

do.end624.i:                                      ; preds = %if.then617.i
  %325 = ptrtoint ptr %name35.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %name35.i, align 4
  %327 = ptrtoint ptr %adap37.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %adap37.i, align 4
  %tobool630.not.i = icmp eq ptr %328, null
  br i1 %tobool630.not.i, label %do.end624.i.cond.end636.i_crit_edge, label %cond.true631.i

do.end624.i.cond.end636.i_crit_edge:              ; preds = %do.end624.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end636.i

cond.true631.i:                                   ; preds = %do.end624.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i805.i = getelementptr inbounds %struct.i2c_adapter, ptr %328, i32 0, i32 11
  %329 = ptrtoint ptr %nr.i805.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %nr.i805.i, align 4
  br label %cond.end636.i

cond.end636.i:                                    ; preds = %cond.true631.i, %do.end624.i.cond.end636.i_crit_edge
  %cond637.i = phi i32 [ %330, %cond.true631.i ], [ -1, %do.end624.i.cond.end636.i_crit_edge ]
  %331 = ptrtoint ptr %i2c_props34.i to i32
  call void @__asan_load1_noabort(i32 %331)
  %332 = load i8, ptr %i2c_props34.i, align 8
  %conv640.i = zext i8 %332 to i32
  %call641.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.110, ptr noundef %326, i32 noundef %cond637.i, i32 noundef %conv640.i) #13
  br label %retry.i.backedge

retry.i.backedge:                                 ; preds = %cond.end636.i, %if.then617.i.retry.i.backedge_crit_edge
  br label %retry.i

if.end647.i:                                      ; preds = %fail.i
  %call648.i = tail call i32 @xc2028_sleep(ptr noundef %fe) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %rc.6.i)
  %cmp649.i = icmp eq i32 %rc.6.i, -2
  br i1 %cmp649.i, label %if.end647.i.check_firmware.exit.thread_crit_edge, label %check_firmware.exit

if.end647.i.check_firmware.exit.thread_crit_edge: ; preds = %if.end647.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %check_firmware.exit.thread

check_firmware.exit.thread:                       ; preds = %if.end647.i.check_firmware.exit.thread_crit_edge, %do.end12.i.check_firmware.exit.thread_crit_edge, %do.end12.i.check_firmware.exit.thread_crit_edge455, %do.end12.i.check_firmware.exit.thread_crit_edge456
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %std0.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hwmodel.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %new_fw.i) #10
  br label %ret

check_firmware.exit:                              ; preds = %if.end647.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %std0.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hwmodel.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %version.i) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %new_fw.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.6.i)
  %cmp = icmp slt i32 %rc.6.i, 0
  br i1 %cmp, label %check_firmware.exit.ret_crit_edge, label %check_firmware.exit.if.end46_crit_edge

check_firmware.exit.if.end46_crit_edge:           ; preds = %check_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

check_firmware.exit.ret_crit_edge:                ; preds = %check_firmware.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end46:                                         ; preds = %check_firmware.exit.if.end46_crit_edge, %check_firmware.exit.thread437
  %333 = zext i32 %new_type to i64
  call void @__sanitizer_cov_trace_switch(i64 %333, ptr @__sancov_gen_cov_switch_values.355)
  switch i32 %new_type, label %do.end95 [
    i32 2, label %sw.bb
    i32 1, label %if.end46.sw.epilog_crit_edge
    i32 3, label %sw.bb85
  ]

if.end46.sw.epilog_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end46
  %i2c_props47 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %334 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %335 = ptrtoint ptr %334 to i32
  call void @__asan_store4_noabort(i32 %335)
  store i32 196607, ptr %334, align 4
  %336 = ptrtoint ptr %i2c_props47 to i32
  call void @__asan_load1_noabort(i32 %336)
  %337 = load i8, ptr %i2c_props47, align 4
  %conv.i391 = zext i8 %337 to i16
  %338 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %338)
  store i16 %conv.i391, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %339 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %339)
  store i16 0, ptr %flags.i, align 2
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %340 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %340)
  store ptr @generic_set_freq._val, ptr %buf4.i, align 4
  %adap.i392 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %341 = ptrtoint ptr %adap.i392 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %adap.i392, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %342, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  %343 = add i32 %call.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %343)
  %344 = icmp ult i32 %343, 2
  br i1 %344, label %if.else, label %do.end56

do.end56:                                         ; preds = %sw.bb
  %name59 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %345 = ptrtoint ptr %name59 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %name59, align 4
  %347 = ptrtoint ptr %adap.i392 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %adap.i392, align 4
  %tobool62.not = icmp eq ptr %348, null
  br i1 %tobool62.not, label %do.end56.cond.end68_crit_edge, label %cond.true63

do.end56.cond.end68_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end68

cond.true63:                                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i393 = getelementptr inbounds %struct.i2c_adapter, ptr %348, i32 0, i32 11
  %349 = ptrtoint ptr %nr.i393 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %nr.i393, align 4
  br label %cond.end68

cond.end68:                                       ; preds = %cond.true63, %do.end56.cond.end68_crit_edge
  %cond69 = phi i32 [ %350, %cond.true63 ], [ -1, %do.end56.cond.end68_crit_edge ]
  %351 = ptrtoint ptr %i2c_props47 to i32
  call void @__asan_load1_noabort(i32 %351)
  %352 = load i8, ptr %i2c_props47, align 8
  %conv72 = zext i8 %352 to i32
  %call73 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %346, i32 noundef %cond69, i32 noundef %conv72, i32 noundef 1037, i32 noundef %call.i) #13
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  %msleep = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 2
  %353 = ptrtoint ptr %msleep to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load i32, ptr %msleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %354)
  %tobool78.not = icmp eq i32 %354, 0
  br i1 %tobool78.not, label %if.else.sw.epilog_crit_edge, label %if.then79

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then79:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef %354) #10
  br label %sw.epilog

sw.bb85:                                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %cur_fw = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 11
  %355 = ptrtoint ptr %cur_fw to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %cur_fw, align 8
  %and = and i32 %356, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool87.not = icmp eq i32 %and, 0
  %. = select i1 %tobool87.not, i32 -2750000, i32 -1750000
  br label %sw.epilog

do.end95:                                         ; preds = %if.end46
  %i2c_props97 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name98 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %357 = ptrtoint ptr %name98 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %name98, align 4
  %adap100 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %359 = ptrtoint ptr %adap100 to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load ptr, ptr %adap100, align 4
  %tobool101.not = icmp eq ptr %360, null
  br i1 %tobool101.not, label %do.end95.cond.end107_crit_edge, label %cond.true102

do.end95.cond.end107_crit_edge:                   ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end107

cond.true102:                                     ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i394 = getelementptr inbounds %struct.i2c_adapter, ptr %360, i32 0, i32 11
  %361 = ptrtoint ptr %nr.i394 to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load i32, ptr %nr.i394, align 4
  br label %cond.end107

cond.end107:                                      ; preds = %cond.true102, %do.end95.cond.end107_crit_edge
  %cond108 = phi i32 [ %362, %cond.true102 ], [ -1, %do.end95.cond.end107_crit_edge ]
  %363 = ptrtoint ptr %i2c_props97 to i32
  call void @__asan_load1_noabort(i32 %363)
  %364 = load i8, ptr %i2c_props97, align 8
  %conv111 = zext i8 %364 to i32
  %call112 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, ptr noundef %358, i32 noundef %cond108, i32 noundef %conv111, i32 noundef %new_type) #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end107, %sw.bb85, %if.then79, %if.else.sw.epilog_crit_edge, %cond.end68, %if.end46.sw.epilog_crit_edge
  %offset.0.neg = phi i32 [ 0, %cond.end107 ], [ 0, %if.end46.sw.epilog_crit_edge ], [ 0, %if.else.sw.epilog_crit_edge ], [ 0, %if.then79 ], [ 0, %cond.end68 ], [ %., %sw.bb85 ]
  %sub = add i32 %freq, 7812
  %add = add i32 %sub, %offset.0.neg
  %div117 = udiv i32 %add, 15625
  %firm_version = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 7
  %365 = ptrtoint ptr %firm_version to i32
  call void @__asan_load2_noabort(i32 %365)
  %366 = load i16, ptr %firm_version, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 514, i16 %366)
  %cmp119 = icmp ult i16 %366, 514
  %i2c_props123 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  br i1 %cmp119, label %if.then121, label %if.else164

if.then121:                                       ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i395) #10
  %367 = getelementptr inbounds i8, ptr %msg.i395, i32 4
  %368 = ptrtoint ptr %367 to i32
  call void @__asan_store4_noabort(i32 %368)
  store i32 327679, ptr %367, align 4
  %369 = ptrtoint ptr %i2c_props123 to i32
  call void @__asan_load1_noabort(i32 %369)
  %370 = load i8, ptr %i2c_props123, align 4
  %conv.i396 = zext i8 %370 to i16
  %371 = ptrtoint ptr %msg.i395 to i32
  call void @__asan_store2_noabort(i32 %371)
  store i16 %conv.i396, ptr %msg.i395, align 4
  %flags.i397 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i395, i32 0, i32 1
  %372 = ptrtoint ptr %flags.i397 to i32
  call void @__asan_store2_noabort(i32 %372)
  store i16 0, ptr %flags.i397, align 2
  %buf4.i399 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i395, i32 0, i32 3
  %373 = ptrtoint ptr %buf4.i399 to i32
  call void @__asan_store4_noabort(i32 %373)
  store ptr @generic_set_freq._val.42, ptr %buf4.i399, align 4
  %adap.i400 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %374 = ptrtoint ptr %adap.i400 to i32
  call void @__asan_load4_noabort(i32 %374)
  %375 = load ptr, ptr %adap.i400, align 4
  %call.i401 = call i32 @i2c_transfer(ptr noundef %375, ptr noundef nonnull %msg.i395, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i401)
  %cmp.i402 = icmp eq i32 %call.i401, 1
  %len.call.i403 = select i1 %cmp.i402, i32 4, i32 %call.i401
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i395) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.call.i403)
  %cmp125.not = icmp eq i32 %len.call.i403, 4
  br i1 %cmp125.not, label %if.else154, label %do.end132

do.end132:                                        ; preds = %if.then121
  %name135 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %376 = ptrtoint ptr %name135 to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %name135, align 4
  %378 = ptrtoint ptr %adap.i400 to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %adap.i400, align 4
  %tobool138.not = icmp eq ptr %379, null
  br i1 %tobool138.not, label %do.end132.cond.end144_crit_edge, label %cond.true139

do.end132.cond.end144_crit_edge:                  ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end144

cond.true139:                                     ; preds = %do.end132
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i404 = getelementptr inbounds %struct.i2c_adapter, ptr %379, i32 0, i32 11
  %380 = ptrtoint ptr %nr.i404 to i32
  call void @__asan_load4_noabort(i32 %380)
  %381 = load i32, ptr %nr.i404, align 4
  br label %cond.end144

cond.end144:                                      ; preds = %cond.true139, %do.end132.cond.end144_crit_edge
  %cond145 = phi i32 [ %381, %cond.true139 ], [ -1, %do.end132.cond.end144_crit_edge ]
  %382 = ptrtoint ptr %i2c_props123 to i32
  call void @__asan_load1_noabort(i32 %382)
  %383 = load i8, ptr %i2c_props123, align 8
  %conv148 = zext i8 %383 to i32
  %call149 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %377, i32 noundef %cond145, i32 noundef %conv148, i32 noundef 1118, i32 noundef %len.call.i403) #13
  br label %if.end207

if.else154:                                       ; preds = %if.then121
  %msleep156 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 2
  %384 = ptrtoint ptr %msleep156 to i32
  call void @__asan_load4_noabort(i32 %384)
  %385 = load i32, ptr %msleep156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %385)
  %tobool157.not = icmp eq i32 %385, 0
  br i1 %tobool157.not, label %if.else154.if.end211_crit_edge, label %if.else154.if.end211.sink.split_crit_edge

if.else154.if.end211.sink.split_crit_edge:        ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211.sink.split

if.else154.if.end211_crit_edge:                   ; preds = %if.else154
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.else164:                                       ; preds = %sw.epilog
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i405) #10
  %386 = getelementptr inbounds i8, ptr %msg.i405, i32 4
  %387 = ptrtoint ptr %386 to i32
  call void @__asan_store4_noabort(i32 %387)
  store i32 327679, ptr %386, align 4
  %388 = ptrtoint ptr %i2c_props123 to i32
  call void @__asan_load1_noabort(i32 %388)
  %389 = load i8, ptr %i2c_props123, align 4
  %conv.i406 = zext i8 %389 to i16
  %390 = ptrtoint ptr %msg.i405 to i32
  call void @__asan_store2_noabort(i32 %390)
  store i16 %conv.i406, ptr %msg.i405, align 4
  %flags.i407 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i405, i32 0, i32 1
  %391 = ptrtoint ptr %flags.i407 to i32
  call void @__asan_store2_noabort(i32 %391)
  store i16 0, ptr %flags.i407, align 2
  %buf4.i409 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i405, i32 0, i32 3
  %392 = ptrtoint ptr %buf4.i409 to i32
  call void @__asan_store4_noabort(i32 %392)
  store ptr @generic_set_freq._val.45, ptr %buf4.i409, align 4
  %adap.i410 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %393 = ptrtoint ptr %adap.i410 to i32
  call void @__asan_load4_noabort(i32 %393)
  %394 = load ptr, ptr %adap.i410, align 4
  %call.i411 = call i32 @i2c_transfer(ptr noundef %394, ptr noundef nonnull %msg.i405, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i411)
  %cmp.i412 = icmp eq i32 %call.i411, 1
  %len.call.i413 = select i1 %cmp.i412, i32 4, i32 %call.i411
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i405) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.call.i413)
  %cmp168.not = icmp eq i32 %len.call.i413, 4
  br i1 %cmp168.not, label %if.else197, label %do.end175

do.end175:                                        ; preds = %if.else164
  %name178 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %395 = ptrtoint ptr %name178 to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load ptr, ptr %name178, align 4
  %397 = ptrtoint ptr %adap.i410 to i32
  call void @__asan_load4_noabort(i32 %397)
  %398 = load ptr, ptr %adap.i410, align 4
  %tobool181.not = icmp eq ptr %398, null
  br i1 %tobool181.not, label %do.end175.cond.end187_crit_edge, label %cond.true182

do.end175.cond.end187_crit_edge:                  ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end187

cond.true182:                                     ; preds = %do.end175
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i414 = getelementptr inbounds %struct.i2c_adapter, ptr %398, i32 0, i32 11
  %399 = ptrtoint ptr %nr.i414 to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %nr.i414, align 4
  br label %cond.end187

cond.end187:                                      ; preds = %cond.true182, %do.end175.cond.end187_crit_edge
  %cond188 = phi i32 [ %400, %cond.true182 ], [ -1, %do.end175.cond.end187_crit_edge ]
  %401 = ptrtoint ptr %i2c_props123 to i32
  call void @__asan_load1_noabort(i32 %401)
  %402 = load i8, ptr %i2c_props123, align 8
  %conv191 = zext i8 %402 to i32
  %call192 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, ptr noundef %396, i32 noundef %cond188, i32 noundef %conv191, i32 noundef 1120, i32 noundef %len.call.i413) #13
  br label %if.end207

if.else197:                                       ; preds = %if.else164
  %msleep199 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 2
  %403 = ptrtoint ptr %msleep199 to i32
  call void @__asan_load4_noabort(i32 %403)
  %404 = load i32, ptr %msleep199, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %404)
  %tobool200.not = icmp eq i32 %404, 0
  br i1 %tobool200.not, label %if.else197.if.end211_crit_edge, label %if.else197.if.end211.sink.split_crit_edge

if.else197.if.end211.sink.split_crit_edge:        ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211.sink.split

if.else197.if.end211_crit_edge:                   ; preds = %if.else197
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.end207:                                        ; preds = %cond.end187, %cond.end144
  %rc.0 = phi i32 [ %len.call.i403, %cond.end144 ], [ %len.call.i413, %cond.end187 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rc.0)
  %cmp208 = icmp slt i32 %rc.0, 0
  br i1 %cmp208, label %if.end207.ret_crit_edge, label %if.end207.if.end211_crit_edge

if.end207.if.end211_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end211

if.end207.ret_crit_edge:                          ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end211.sink.split:                             ; preds = %if.else197.if.end211.sink.split_crit_edge, %if.else154.if.end211.sink.split_crit_edge
  %.sink = phi i32 [ %385, %if.else154.if.end211.sink.split_crit_edge ], [ %404, %if.else197.if.end211.sink.split_crit_edge ]
  call void @msleep(i32 noundef %.sink) #10
  br label %if.end211

if.end211:                                        ; preds = %if.end211.sink.split, %if.end207.if.end211_crit_edge, %if.else197.if.end211_crit_edge, %if.else154.if.end211_crit_edge
  %msleep213 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 2
  %405 = ptrtoint ptr %msleep213 to i32
  call void @__asan_load4_noabort(i32 %405)
  %406 = load i32, ptr %msleep213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %406)
  %tobool214.not = icmp eq i32 %406, 0
  br i1 %tobool214.not, label %if.end211.if.end218_crit_edge, label %if.then215

if.end211.if.end218_crit_edge:                    ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end218

if.then215:                                       ; preds = %if.end211
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef %406) #10
  br label %if.end218

if.end218:                                        ; preds = %if.then215, %if.end211.if.end218_crit_edge
  %407 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %407)
  %408 = load ptr, ptr %tuner_priv, align 4
  %409 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %409)
  %410 = load ptr, ptr %callback.i.i, align 4
  %tobool.not.i416 = icmp eq ptr %410, null
  br i1 %tobool.not.i416, label %if.end218.do_tuner_callback.exit_crit_edge, label %cond.false.i

if.end218.do_tuner_callback.exit_crit_edge:       ; preds = %if.end218
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_tuner_callback.exit

cond.false.i:                                     ; preds = %if.end218
  %411 = ptrtoint ptr %dvb.i.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load ptr, ptr %dvb.i.i, align 4
  %tobool2.not.i = icmp eq ptr %412, null
  br i1 %tobool2.not.i, label %cond.false.i.cond.false9.i_crit_edge, label %land.lhs.true.i

cond.false.i.cond.false9.i_crit_edge:             ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i

land.lhs.true.i:                                  ; preds = %cond.false.i
  %priv4.i = getelementptr inbounds %struct.dvb_adapter, ptr %412, i32 0, i32 5
  %413 = ptrtoint ptr %priv4.i to i32
  call void @__asan_load4_noabort(i32 %413)
  %414 = load ptr, ptr %priv4.i, align 4
  %tobool5.not.i = icmp eq ptr %414, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.cond.false9.i_crit_edge, label %land.lhs.true.i.cond.end.i420_crit_edge

land.lhs.true.i.cond.end.i420_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i420

land.lhs.true.i.cond.false9.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i

cond.false9.i:                                    ; preds = %land.lhs.true.i.cond.false9.i_crit_edge, %cond.false.i.cond.false9.i_crit_edge
  %adap.i417 = getelementptr inbounds %struct.xc2028_data, ptr %408, i32 0, i32 1, i32 1
  %415 = ptrtoint ptr %adap.i417 to i32
  call void @__asan_load4_noabort(i32 %415)
  %416 = load ptr, ptr %adap.i417, align 4
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %416, i32 0, i32 3
  %417 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load ptr, ptr %algo_data.i, align 4
  br label %cond.end.i420

cond.end.i420:                                    ; preds = %cond.false9.i, %land.lhs.true.i.cond.end.i420_crit_edge
  %cond.i418 = phi ptr [ %418, %cond.false9.i ], [ %414, %land.lhs.true.i.cond.end.i420_crit_edge ]
  %call.i419 = call i32 %410(ptr noundef %cond.i418, i32 noundef 0, i32 noundef 1, i32 noundef 1) #10
  br label %do_tuner_callback.exit

do_tuner_callback.exit:                           ; preds = %cond.end.i420, %if.end218.do_tuner_callback.exit_crit_edge
  call void @msleep(i32 noundef 10) #10
  %419 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %419)
  store i8 0, ptr %buf, align 4
  %shr222 = lshr i32 %div117, 16
  %conv224 = trunc i32 %shr222 to i8
  %420 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %420)
  store i8 %conv224, ptr %2, align 1
  %shr226 = lshr i32 %div117, 8
  %conv228 = trunc i32 %shr226 to i8
  %421 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %421)
  store i8 %conv228, ptr %3, align 2
  %conv231 = trunc i32 %div117 to i8
  %422 = ptrtoint ptr %4 to i32
  call void @__asan_store1_noabort(i32 %422)
  store i8 %conv231, ptr %4, align 1
  %i2c_props234 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i421) #10
  %423 = getelementptr inbounds i8, ptr %msg.i421, i32 4
  %424 = ptrtoint ptr %423 to i32
  call void @__asan_store4_noabort(i32 %424)
  store i32 327679, ptr %423, align 4
  %425 = ptrtoint ptr %i2c_props234 to i32
  call void @__asan_load1_noabort(i32 %425)
  %426 = load i8, ptr %i2c_props234, align 4
  %conv.i422 = zext i8 %426 to i16
  %427 = ptrtoint ptr %msg.i421 to i32
  call void @__asan_store2_noabort(i32 %427)
  store i16 %conv.i422, ptr %msg.i421, align 4
  %flags.i423 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i421, i32 0, i32 1
  %428 = ptrtoint ptr %flags.i423 to i32
  call void @__asan_store2_noabort(i32 %428)
  store i16 0, ptr %flags.i423, align 2
  %buf4.i425 = getelementptr inbounds %struct.i2c_msg, ptr %msg.i421, i32 0, i32 3
  %429 = ptrtoint ptr %buf4.i425 to i32
  call void @__asan_store4_noabort(i32 %429)
  store ptr %buf, ptr %buf4.i425, align 4
  %adap.i426 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %430 = ptrtoint ptr %adap.i426 to i32
  call void @__asan_load4_noabort(i32 %430)
  %431 = load ptr, ptr %adap.i426, align 4
  %call.i427 = call i32 @i2c_transfer(ptr noundef %431, ptr noundef nonnull %msg.i421, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i427)
  %cmp.i428 = icmp eq i32 %call.i427, 1
  %len.call.i429 = select i1 %cmp.i428, i32 4, i32 %call.i427
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i421) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len.call.i429)
  %cmp236.not = icmp eq i32 %len.call.i429, 4
  br i1 %cmp236.not, label %do_tuner_callback.exit.if.end265_crit_edge, label %do.end243

do_tuner_callback.exit.if.end265_crit_edge:       ; preds = %do_tuner_callback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end265

do.end243:                                        ; preds = %do_tuner_callback.exit
  %name246 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %432 = ptrtoint ptr %name246 to i32
  call void @__asan_load4_noabort(i32 %432)
  %433 = load ptr, ptr %name246, align 4
  %434 = ptrtoint ptr %adap.i426 to i32
  call void @__asan_load4_noabort(i32 %434)
  %435 = load ptr, ptr %adap.i426, align 4
  %tobool249.not = icmp eq ptr %435, null
  br i1 %tobool249.not, label %do.end243.cond.end255_crit_edge, label %cond.true250

do.end243.cond.end255_crit_edge:                  ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end255

cond.true250:                                     ; preds = %do.end243
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i430 = getelementptr inbounds %struct.i2c_adapter, ptr %435, i32 0, i32 11
  %436 = ptrtoint ptr %nr.i430 to i32
  call void @__asan_load4_noabort(i32 %436)
  %437 = load i32, ptr %nr.i430, align 4
  br label %cond.end255

cond.end255:                                      ; preds = %cond.true250, %do.end243.cond.end255_crit_edge
  %cond256 = phi i32 [ %437, %cond.true250 ], [ -1, %do.end243.cond.end255_crit_edge ]
  %438 = ptrtoint ptr %i2c_props234 to i32
  call void @__asan_load1_noabort(i32 %438)
  %439 = load i8, ptr %i2c_props234, align 8
  %conv259 = zext i8 %439 to i32
  %call260 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %433, i32 noundef %cond256, i32 noundef %conv259, i32 noundef %len.call.i429, i32 noundef 4) #13
  br label %if.end265

if.end265:                                        ; preds = %cond.end255, %do_tuner_callback.exit.if.end265_crit_edge
  %440 = ptrtoint ptr %msleep213 to i32
  call void @__asan_load4_noabort(i32 %440)
  %441 = load i32, ptr %msleep213, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %441)
  %tobool268.not = icmp eq i32 %441, 0
  br i1 %tobool268.not, label %if.end265.if.end272_crit_edge, label %if.then269

if.end265.if.end272_crit_edge:                    ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end272

if.then269:                                       ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef %441) #10
  br label %if.end272

if.end272:                                        ; preds = %if.then269, %if.end265.if.end272_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.call.i429)
  %cmp274 = icmp slt i32 %len.call.i429, 0
  br i1 %cmp274, label %if.end272.ret_crit_edge, label %if.end277

if.end272.ret_crit_edge:                          ; preds = %if.end272
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

if.end277:                                        ; preds = %if.end272
  call void @msleep(i32 noundef 100) #10
  %frequency = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 2
  %442 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %442)
  store i32 %freq, ptr %frequency, align 8
  %443 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %443)
  %tobool279.not = icmp eq i32 %443, 0
  br i1 %tobool279.not, label %if.end277.ret_crit_edge, label %do.end284

if.end277.ret_crit_edge:                          ; preds = %if.end277
  call void @__sanitizer_cov_trace_pc() #12
  br label %ret

do.end284:                                        ; preds = %if.end277
  %name287 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %444 = ptrtoint ptr %name287 to i32
  call void @__asan_load4_noabort(i32 %444)
  %445 = load ptr, ptr %name287, align 4
  %446 = ptrtoint ptr %adap.i426 to i32
  call void @__asan_load4_noabort(i32 %446)
  %447 = load ptr, ptr %adap.i426, align 4
  %tobool290.not = icmp eq ptr %447, null
  br i1 %tobool290.not, label %do.end284.cond.end296_crit_edge, label %cond.true291

do.end284.cond.end296_crit_edge:                  ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end296

cond.true291:                                     ; preds = %do.end284
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i431 = getelementptr inbounds %struct.i2c_adapter, ptr %447, i32 0, i32 11
  %448 = ptrtoint ptr %nr.i431 to i32
  call void @__asan_load4_noabort(i32 %448)
  %449 = load i32, ptr %nr.i431, align 4
  br label %cond.end296

cond.end296:                                      ; preds = %cond.true291, %do.end284.cond.end296_crit_edge
  %cond297 = phi i32 [ %449, %cond.true291 ], [ -1, %do.end284.cond.end296_crit_edge ]
  %450 = ptrtoint ptr %i2c_props234 to i32
  call void @__asan_load1_noabort(i32 %450)
  %451 = load i8, ptr %i2c_props234, align 8
  %conv300 = zext i8 %451 to i32
  %div302 = udiv i32 %freq, 1000000
  %452 = mul i32 %div302, 1000000
  %rem.decomposed = sub i32 %freq, %452
  %div303 = udiv i32 %rem.decomposed, 1000
  %call304 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.52, ptr noundef %445, i32 noundef %cond297, i32 noundef %conv300, i32 noundef 4, ptr noundef nonnull %buf, i32 noundef %div302, i32 noundef %div303) #13
  br label %ret

ret:                                              ; preds = %cond.end296, %if.end277.ret_crit_edge, %if.end272.ret_crit_edge, %if.end207.ret_crit_edge, %check_firmware.exit.ret_crit_edge, %check_firmware.exit.thread
  %rc.1 = phi i32 [ -22, %check_firmware.exit.ret_crit_edge ], [ %rc.0, %if.end207.ret_crit_edge ], [ %call.i427, %if.end272.ret_crit_edge ], [ 0, %cond.end296 ], [ 0, %if.end277.ret_crit_edge ], [ -22, %check_firmware.exit.thread ]
  call void @mutex_unlock(ptr noundef %lock) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %buf) #10
  ret i32 %rc.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dump_firm_type_and_int_freq(i32 noundef %type, i16 noundef zeroext %int_freq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.112) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %and1 = and i32 %type, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  br i1 %tobool2.not, label %if.end.if.end8_crit_edge, label %do.end5

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

do.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.115) #13
  br label %if.end8

if.end8:                                          ; preds = %do.end5, %if.end.if.end8_crit_edge
  %and9 = and i32 %type, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end8.if.end16_crit_edge, label %do.end13

if.end8.if.end16_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end13:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.118) #13
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end8.if.end16_crit_edge
  %and17 = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end16.if.end24_crit_edge, label %do.end21

if.end16.if.end24_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

do.end21:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.121) #13
  br label %if.end24

if.end24:                                         ; preds = %do.end21, %if.end16.if.end24_crit_edge
  %and25 = and i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  br i1 %tobool26.not, label %if.end24.if.end32_crit_edge, label %do.end29

if.end24.if.end32_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

do.end29:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.124) #13
  br label %if.end32

if.end32:                                         ; preds = %do.end29, %if.end24.if.end32_crit_edge
  %and33 = and i32 %type, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %if.end32.if.end40_crit_edge, label %do.end37

if.end32.if.end40_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.127) #13
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end32.if.end40_crit_edge
  %and41 = and i32 %type, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end40.if.end48_crit_edge, label %do.end45

if.end40.if.end48_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end48

do.end45:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #12
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.130) #13
  br label %if.end48

if.end48:                                         ; preds = %do.end45, %if.end40.if.end48_crit_edge
  %and49 = and i32 %type, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49)
  %tobool50.not = icmp eq i32 %and49, 0
  br i1 %tobool50.not, label %if.end48.if.end56_crit_edge, label %do.end53

if.end48.if.end56_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end56

do.end53:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %call55 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.133) #13
  br label %if.end56

if.end56:                                         ; preds = %do.end53, %if.end48.if.end56_crit_edge
  %and57 = and i32 %type, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %if.end56.if.end64_crit_edge, label %do.end61

if.end56.if.end64_crit_edge:                      ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end64

do.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #12
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136) #13
  br label %if.end64

if.end64:                                         ; preds = %do.end61, %if.end56.if.end64_crit_edge
  %and65 = and i32 %type, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and65)
  %tobool66.not = icmp eq i32 %and65, 0
  br i1 %tobool66.not, label %if.end64.if.end72_crit_edge, label %do.end69

if.end64.if.end72_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end72

do.end69:                                         ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %call71 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139) #13
  br label %if.end72

if.end72:                                         ; preds = %do.end69, %if.end64.if.end72_crit_edge
  %and73 = and i32 %type, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73)
  %tobool74.not = icmp eq i32 %and73, 0
  br i1 %tobool74.not, label %if.end72.if.end80_crit_edge, label %do.end77

if.end72.if.end80_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end80

do.end77:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %call79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142) #13
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.end72.if.end80_crit_edge
  %and81 = and i32 %type, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81)
  %tobool82.not = icmp eq i32 %and81, 0
  br i1 %tobool82.not, label %if.end80.if.end88_crit_edge, label %do.end85

if.end80.if.end88_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end88

do.end85:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #12
  %call87 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.145) #13
  br label %if.end88

if.end88:                                         ; preds = %do.end85, %if.end80.if.end88_crit_edge
  %and89 = and i32 %type, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and89)
  %tobool90.not = icmp eq i32 %and89, 0
  br i1 %tobool90.not, label %if.end88.if.end96_crit_edge, label %do.end93

if.end88.if.end96_crit_edge:                      ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end96

do.end93:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %call95 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.148) #13
  br label %if.end96

if.end96:                                         ; preds = %do.end93, %if.end88.if.end96_crit_edge
  %and97 = and i32 %type, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %if.end96.if.end104_crit_edge, label %do.end101

if.end96.if.end104_crit_edge:                     ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end104

do.end101:                                        ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  %call103 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.151) #13
  br label %if.end104

if.end104:                                        ; preds = %do.end101, %if.end96.if.end104_crit_edge
  %and105 = and i32 %type, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end112_crit_edge, label %do.end109

if.end104.if.end112_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end112

do.end109:                                        ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #12
  %call111 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.154) #13
  br label %if.end112

if.end112:                                        ; preds = %do.end109, %if.end104.if.end112_crit_edge
  %and113 = and i32 %type, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and113)
  %tobool114.not = icmp eq i32 %and113, 0
  br i1 %tobool114.not, label %if.end112.if.end120_crit_edge, label %do.end117

if.end112.if.end120_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end120

do.end117:                                        ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %call119 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.157) #13
  br label %if.end120

if.end120:                                        ; preds = %do.end117, %if.end112.if.end120_crit_edge
  %and121 = and i32 %type, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and121)
  %tobool122.not = icmp eq i32 %and121, 0
  br i1 %tobool122.not, label %if.end120.if.end128_crit_edge, label %do.end125

if.end120.if.end128_crit_edge:                    ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

do.end125:                                        ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #12
  %call127 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.160) #13
  br label %if.end128

if.end128:                                        ; preds = %do.end125, %if.end120.if.end128_crit_edge
  %and129 = and i32 %type, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end136_crit_edge, label %do.end133

if.end128.if.end136_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end136

do.end133:                                        ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %call135 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163) #13
  br label %if.end136

if.end136:                                        ; preds = %do.end133, %if.end128.if.end136_crit_edge
  %and137 = and i32 %type, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and137)
  %tobool138.not = icmp eq i32 %and137, 0
  br i1 %tobool138.not, label %if.end136.if.end144_crit_edge, label %do.end141

if.end136.if.end144_crit_edge:                    ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end144

do.end141:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #12
  %call143 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.166) #13
  br label %if.end144

if.end144:                                        ; preds = %do.end141, %if.end136.if.end144_crit_edge
  %and145 = and i32 %type, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145)
  %tobool146.not = icmp eq i32 %and145, 0
  br i1 %tobool146.not, label %if.end144.if.end152_crit_edge, label %do.end149

if.end144.if.end152_crit_edge:                    ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end152

do.end149:                                        ; preds = %if.end144
  call void @__sanitizer_cov_trace_pc() #12
  %call151 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.169) #13
  br label %if.end152

if.end152:                                        ; preds = %do.end149, %if.end144.if.end152_crit_edge
  %and153 = and i32 %type, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and153)
  %tobool154.not = icmp eq i32 %and153, 0
  br i1 %tobool154.not, label %if.end152.if.end160_crit_edge, label %do.end157

if.end152.if.end160_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end160

do.end157:                                        ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #12
  %call159 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172) #13
  br label %if.end160

if.end160:                                        ; preds = %do.end157, %if.end152.if.end160_crit_edge
  %and161 = and i32 %type, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161)
  %tobool162.not = icmp eq i32 %and161, 0
  br i1 %tobool162.not, label %if.end160.if.end168_crit_edge, label %do.end165

if.end160.if.end168_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end168

do.end165:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #12
  %call167 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175) #13
  br label %if.end168

if.end168:                                        ; preds = %do.end165, %if.end160.if.end168_crit_edge
  %and169 = and i32 %type, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and169)
  %tobool170.not = icmp eq i32 %and169, 0
  br i1 %tobool170.not, label %if.end168.if.end176_crit_edge, label %do.end173

if.end168.if.end176_crit_edge:                    ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end176

do.end173:                                        ; preds = %if.end168
  call void @__sanitizer_cov_trace_pc() #12
  %call175 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.178) #13
  br label %if.end176

if.end176:                                        ; preds = %do.end173, %if.end168.if.end176_crit_edge
  %and177 = and i32 %type, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and177)
  %tobool178.not = icmp eq i32 %and177, 0
  br i1 %tobool178.not, label %if.end176.if.end184_crit_edge, label %do.end181

if.end176.if.end184_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

do.end181:                                        ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #12
  %call183 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.181) #13
  br label %if.end184

if.end184:                                        ; preds = %do.end181, %if.end176.if.end184_crit_edge
  %and185 = and i32 %type, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185)
  %tobool186.not = icmp eq i32 %and185, 0
  br i1 %tobool186.not, label %if.end184.if.end192_crit_edge, label %do.end189

if.end184.if.end192_crit_edge:                    ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end192

do.end189:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  %call191 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.184) #13
  br label %if.end192

if.end192:                                        ; preds = %do.end189, %if.end184.if.end192_crit_edge
  %and193 = and i32 %type, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and193)
  %tobool194.not = icmp eq i32 %and193, 0
  br i1 %tobool194.not, label %if.end192.if.end200_crit_edge, label %do.end197

if.end192.if.end200_crit_edge:                    ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end200

do.end197:                                        ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #12
  %call199 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.187) #13
  br label %if.end200

if.end200:                                        ; preds = %do.end197, %if.end192.if.end200_crit_edge
  %and201 = and i32 %type, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and201)
  %tobool202.not = icmp eq i32 %and201, 0
  br i1 %tobool202.not, label %if.end200.if.end208_crit_edge, label %do.end205

if.end200.if.end208_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

do.end205:                                        ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #12
  %call207 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.190) #13
  br label %if.end208

if.end208:                                        ; preds = %do.end205, %if.end200.if.end208_crit_edge
  %and209 = and i32 %type, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and209)
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.end208.if.end216_crit_edge, label %do.end213

if.end208.if.end216_crit_edge:                    ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end216

do.end213:                                        ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  %call215 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.193) #13
  br label %if.end216

if.end216:                                        ; preds = %do.end213, %if.end208.if.end216_crit_edge
  %and217 = and i32 %type, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and217)
  %tobool218.not = icmp eq i32 %and217, 0
  br i1 %tobool218.not, label %if.end216.if.end224_crit_edge, label %do.end221

if.end216.if.end224_crit_edge:                    ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end224

do.end221:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #12
  %call223 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.196) #13
  br label %if.end224

if.end224:                                        ; preds = %do.end221, %if.end216.if.end224_crit_edge
  %and225 = and i32 %type, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  br i1 %tobool226.not, label %if.end224.if.end232_crit_edge, label %do.end229

if.end224.if.end232_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end232

do.end229:                                        ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #12
  %call231 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.199) #13
  br label %if.end232

if.end232:                                        ; preds = %do.end229, %if.end224.if.end232_crit_edge
  %and233 = and i32 %type, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and233)
  %tobool234.not = icmp eq i32 %and233, 0
  br i1 %tobool234.not, label %if.end232.if.end240_crit_edge, label %do.end237

if.end232.if.end240_crit_edge:                    ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end240

do.end237:                                        ; preds = %if.end232
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i16 %int_freq to i32
  %call239 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.202, i32 noundef %conv) #13
  br label %if.end240

if.end240:                                        ; preds = %do.end237, %if.end232.if.end240_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @load_firmware(ptr nocapture noundef readonly %fe, i32 noundef %type, ptr nocapture noundef %id) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca %struct.i2c_msg, align 4
  %buf = alloca [80 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %buf) #10
  %2 = call ptr @memset(ptr %buf, i32 255, i32 80)
  %max_len = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 1
  %3 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %max_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 80, i32 %4)
  %cmp = icmp ugt i32 %4, 80
  br i1 %cmp, label %if.then, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %max_len to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 80, ptr %max_len, align 4
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  %6 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %do.body.do.end16_crit_edge, label %do.end

do.body.do.end16_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end16

do.end:                                           ; preds = %do.body
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %adap, align 4
  %tobool7.not = icmp eq ptr %10, null
  br i1 %tobool7.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %12, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %13 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %14 to i32
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %8, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.204) #13
  br label %do.end16

do.end16:                                         ; preds = %cond.end, %do.body.do.end16_crit_edge
  %call17 = tail call fastcc i32 @seek_firmware(ptr noundef %fe, i32 noundef %type, ptr noundef %id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %do.end16.cleanup376_crit_edge, label %do.end26

do.end16.cleanup376_crit_edge:                    ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup376

do.end26:                                         ; preds = %do.end16
  %i2c_props28 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name29 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name29, align 4
  %adap31 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap31, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %do.end26.cond.end38_crit_edge, label %cond.true33

do.end26.cond.end38_crit_edge:                    ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end38

cond.true33:                                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i498 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i498 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i498, align 4
  br label %cond.end38

cond.end38:                                       ; preds = %cond.true33, %do.end26.cond.end38_crit_edge
  %cond39 = phi i32 [ %20, %cond.true33 ], [ -1, %do.end26.cond.end38_crit_edge ]
  %21 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_props28, align 8
  %conv42 = zext i8 %22 to i32
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.206, ptr noundef %16, i32 noundef %cond39, i32 noundef %conv42) #13
  %firm = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 5
  %23 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %firm, align 4
  %arrayidx = getelementptr %struct.firmware_description, ptr %24, i32 %call17
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 8
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %26, i16 noundef zeroext 0)
  %27 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %firm, align 4
  %arrayidx54 = getelementptr %struct.firmware_description, ptr %28, i32 %call17
  %29 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx54, align 8
  %31 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %id, align 8
  %call56 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %30, i64 noundef %32) #13
  %33 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %firm, align 4
  %ptr = getelementptr %struct.firmware_description, ptr %34, i32 %call17, i32 3
  %35 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ptr, align 4
  %size = getelementptr %struct.firmware_description, ptr %34, i32 %call17, i32 4
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 8
  %add.ptr = getelementptr i8, ptr %36, i32 %38
  %cmp61572 = icmp ult ptr %36, %add.ptr
  br i1 %cmp61572, label %while.body.lr.ph, label %cond.end38.cleanup376_crit_edge

cond.end38.cleanup376_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup376

while.body.lr.ph:                                 ; preds = %cond.end38
  %callback.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 9
  %dvb.i = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 2
  %add.ptr262 = getelementptr inbounds i8, ptr %buf, i32 1
  %39 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %buf4.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %msleep = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 10, i32 2
  br label %while.body

while.body:                                       ; preds = %cleanup372.while.body_crit_edge, %while.body.lr.ph
  %p.0573 = phi ptr [ %36, %while.body.lr.ph ], [ %p.3, %cleanup372.while.body_crit_edge ]
  %add.ptr64 = getelementptr i8, ptr %p.0573, i32 2
  %cmp65 = icmp ugt ptr %add.ptr64, %add.ptr
  br i1 %cmp65, label %do.end72, label %if.end94

do.end72:                                         ; preds = %while.body
  %40 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %name29, align 4
  %42 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %adap31, align 4
  %tobool78.not = icmp eq ptr %43, null
  br i1 %tobool78.not, label %do.end72.cond.end84_crit_edge, label %cond.true79

do.end72.cond.end84_crit_edge:                    ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end84

cond.true79:                                      ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i499 = getelementptr inbounds %struct.i2c_adapter, ptr %43, i32 0, i32 11
  %44 = ptrtoint ptr %nr.i499 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %nr.i499, align 4
  br label %cond.end84

cond.end84:                                       ; preds = %cond.true79, %do.end72.cond.end84_crit_edge
  %cond85 = phi i32 [ %45, %cond.true79 ], [ -1, %do.end72.cond.end84_crit_edge ]
  %46 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %i2c_props28, align 8
  %conv88 = zext i8 %47 to i32
  %call89 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.212, ptr noundef %41, i32 noundef %cond85, i32 noundef %conv88) #13
  br label %cleanup376

if.end94:                                         ; preds = %while.body
  %48 = ptrtoint ptr %p.0573 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %p.0573, align 2
  %50 = call i16 @llvm.bswap.i16(i16 %49)
  %conv96 = zext i16 %50 to i32
  %51 = zext i16 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.356)
  switch i16 %49, label %if.end135 [
    i16 -1, label %if.end94.cleanup376_crit_edge
    i16 0, label %if.then102
  ]

if.end94.cleanup376_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup376

if.then102:                                       ; preds = %if.end94
  %52 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %tuner_priv, align 4
  %54 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %callback.i, align 4
  %tobool.not.i = icmp eq ptr %55, null
  br i1 %tobool.not.i, label %if.then102.do.end111_crit_edge, label %cond.false.i

if.then102.do.end111_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111

cond.false.i:                                     ; preds = %if.then102
  %56 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dvb.i, align 4
  %tobool2.not.i = icmp eq ptr %57, null
  br i1 %tobool2.not.i, label %cond.false.i.cond.false9.i_crit_edge, label %land.lhs.true.i

cond.false.i.cond.false9.i_crit_edge:             ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i

land.lhs.true.i:                                  ; preds = %cond.false.i
  %priv4.i = getelementptr inbounds %struct.dvb_adapter, ptr %57, i32 0, i32 5
  %58 = ptrtoint ptr %priv4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %priv4.i, align 4
  %tobool5.not.i = icmp eq ptr %59, null
  br i1 %tobool5.not.i, label %land.lhs.true.i.cond.false9.i_crit_edge, label %land.lhs.true.i.do_tuner_callback.exit_crit_edge

land.lhs.true.i.do_tuner_callback.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_tuner_callback.exit

land.lhs.true.i.cond.false9.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i

cond.false9.i:                                    ; preds = %land.lhs.true.i.cond.false9.i_crit_edge, %cond.false.i.cond.false9.i_crit_edge
  %adap.i = getelementptr inbounds %struct.xc2028_data, ptr %53, i32 0, i32 1, i32 1
  %60 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %adap.i, align 4
  %algo_data.i = getelementptr inbounds %struct.i2c_adapter, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %algo_data.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %algo_data.i, align 4
  br label %do_tuner_callback.exit

do_tuner_callback.exit:                           ; preds = %cond.false9.i, %land.lhs.true.i.do_tuner_callback.exit_crit_edge
  %cond.i = phi ptr [ %63, %cond.false9.i ], [ %59, %land.lhs.true.i.do_tuner_callback.exit_crit_edge ]
  %call.i = call i32 %55(ptr noundef %cond.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp104 = icmp slt i32 %call.i, 0
  br i1 %cmp104, label %do_tuner_callback.exit.do.end111_crit_edge, label %do_tuner_callback.exit.cleanup372_crit_edge

do_tuner_callback.exit.cleanup372_crit_edge:      ; preds = %do_tuner_callback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup372

do_tuner_callback.exit.do.end111_crit_edge:       ; preds = %do_tuner_callback.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end111

do.end111:                                        ; preds = %do_tuner_callback.exit.do.end111_crit_edge, %if.then102.do.end111_crit_edge
  %64 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %name29, align 4
  %66 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %adap31, align 4
  %tobool117.not = icmp eq ptr %67, null
  br i1 %tobool117.not, label %do.end111.cond.end123_crit_edge, label %cond.true118

do.end111.cond.end123_crit_edge:                  ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end123

cond.true118:                                     ; preds = %do.end111
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i500 = getelementptr inbounds %struct.i2c_adapter, ptr %67, i32 0, i32 11
  %68 = ptrtoint ptr %nr.i500 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nr.i500, align 4
  br label %cond.end123

cond.end123:                                      ; preds = %cond.true118, %do.end111.cond.end123_crit_edge
  %cond124 = phi i32 [ %69, %cond.true118 ], [ -1, %do.end111.cond.end123_crit_edge ]
  %70 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %i2c_props28, align 8
  %conv127 = zext i8 %71 to i32
  %72 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %add.ptr64, align 1
  %74 = and i8 %73, 127
  %and = zext i8 %74 to i32
  %call129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %65, i32 noundef %cond124, i32 noundef %conv127, i32 noundef %and) #13
  br label %cleanup376

if.end135:                                        ; preds = %if.end94
  call void @__sanitizer_cov_trace_const_cmp2(i16 -257, i16 %50)
  %cmp137 = icmp ugt i16 %50, -257
  br i1 %cmp137, label %if.then139, label %if.end202

if.then139:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_const_cmp2(i16 255, i16 %49)
  %cond383 = icmp eq i16 %49, 255
  br i1 %cond383, label %sw.bb, label %do.end178

sw.bb:                                            ; preds = %if.then139
  %75 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %tuner_priv, align 4
  %77 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %callback.i, align 4
  %tobool.not.i503 = icmp eq ptr %78, null
  br i1 %tobool.not.i503, label %sw.bb.do.end149_crit_edge, label %cond.false.i506

sw.bb.do.end149_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

cond.false.i506:                                  ; preds = %sw.bb
  %79 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dvb.i, align 4
  %tobool2.not.i505 = icmp eq ptr %80, null
  br i1 %tobool2.not.i505, label %cond.false.i506.cond.false9.i512_crit_edge, label %land.lhs.true.i509

cond.false.i506.cond.false9.i512_crit_edge:       ; preds = %cond.false.i506
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i512

land.lhs.true.i509:                               ; preds = %cond.false.i506
  %priv4.i507 = getelementptr inbounds %struct.dvb_adapter, ptr %80, i32 0, i32 5
  %81 = ptrtoint ptr %priv4.i507 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %priv4.i507, align 4
  %tobool5.not.i508 = icmp eq ptr %82, null
  br i1 %tobool5.not.i508, label %land.lhs.true.i509.cond.false9.i512_crit_edge, label %land.lhs.true.i509.do_tuner_callback.exit517_crit_edge

land.lhs.true.i509.do_tuner_callback.exit517_crit_edge: ; preds = %land.lhs.true.i509
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_tuner_callback.exit517

land.lhs.true.i509.cond.false9.i512_crit_edge:    ; preds = %land.lhs.true.i509
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i512

cond.false9.i512:                                 ; preds = %land.lhs.true.i509.cond.false9.i512_crit_edge, %cond.false.i506.cond.false9.i512_crit_edge
  %adap.i510 = getelementptr inbounds %struct.xc2028_data, ptr %76, i32 0, i32 1, i32 1
  %83 = ptrtoint ptr %adap.i510 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %adap.i510, align 4
  %algo_data.i511 = getelementptr inbounds %struct.i2c_adapter, ptr %84, i32 0, i32 3
  %85 = ptrtoint ptr %algo_data.i511 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %algo_data.i511, align 4
  br label %do_tuner_callback.exit517

do_tuner_callback.exit517:                        ; preds = %cond.false9.i512, %land.lhs.true.i509.do_tuner_callback.exit517_crit_edge
  %cond.i513 = phi ptr [ %86, %cond.false9.i512 ], [ %82, %land.lhs.true.i509.do_tuner_callback.exit517_crit_edge ]
  %call.i514 = call i32 %78(ptr noundef %cond.i513, i32 noundef 0, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i514)
  %cmp142 = icmp slt i32 %call.i514, 0
  br i1 %cmp142, label %do_tuner_callback.exit517.do.end149_crit_edge, label %do_tuner_callback.exit517.cleanup372_crit_edge

do_tuner_callback.exit517.cleanup372_crit_edge:   ; preds = %do_tuner_callback.exit517
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup372

do_tuner_callback.exit517.do.end149_crit_edge:    ; preds = %do_tuner_callback.exit517
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end149

do.end149:                                        ; preds = %do_tuner_callback.exit517.do.end149_crit_edge, %sw.bb.do.end149_crit_edge
  %87 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %name29, align 4
  %89 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %adap31, align 4
  %tobool155.not = icmp eq ptr %90, null
  br i1 %tobool155.not, label %do.end149.cond.end161_crit_edge, label %cond.true156

do.end149.cond.end161_crit_edge:                  ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end161

cond.true156:                                     ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i518 = getelementptr inbounds %struct.i2c_adapter, ptr %90, i32 0, i32 11
  %91 = ptrtoint ptr %nr.i518 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %nr.i518, align 4
  br label %cond.end161

cond.end161:                                      ; preds = %cond.true156, %do.end149.cond.end161_crit_edge
  %cond162 = phi i32 [ %92, %cond.true156 ], [ -1, %do.end149.cond.end161_crit_edge ]
  %93 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %i2c_props28, align 8
  %conv165 = zext i8 %94 to i32
  %95 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %add.ptr64, align 1
  %97 = and i8 %96, 127
  %and167 = zext i8 %97 to i32
  %call168 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.215, ptr noundef %88, i32 noundef %cond162, i32 noundef %conv165, i32 noundef %and167) #13
  br label %cleanup376

do.end178:                                        ; preds = %if.then139
  %98 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %name29, align 4
  %100 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %adap31, align 4
  %tobool184.not = icmp eq ptr %101, null
  br i1 %tobool184.not, label %do.end178.cond.end190_crit_edge, label %cond.true185

do.end178.cond.end190_crit_edge:                  ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end190

cond.true185:                                     ; preds = %do.end178
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i519 = getelementptr inbounds %struct.i2c_adapter, ptr %101, i32 0, i32 11
  %102 = ptrtoint ptr %nr.i519 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nr.i519, align 4
  br label %cond.end190

cond.end190:                                      ; preds = %cond.true185, %do.end178.cond.end190_crit_edge
  %cond191 = phi i32 [ %103, %cond.true185 ], [ -1, %do.end178.cond.end190_crit_edge ]
  %104 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %104)
  %105 = load i8, ptr %i2c_props28, align 8
  %conv194 = zext i8 %105 to i32
  %and196 = and i32 %conv96, 127
  %call197 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.220, ptr noundef %99, i32 noundef %cond191, i32 noundef %conv194, i32 noundef %and196) #13
  br label %cleanup376

if.end202:                                        ; preds = %if.end135
  %and204 = and i32 %conv96, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and204)
  %tobool205.not = icmp eq i32 %and204, 0
  br i1 %tobool205.not, label %if.end209, label %if.then206

if.then206:                                       ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #12
  %and208 = and i32 %conv96, 32767
  call void @msleep(i32 noundef %and208) #10
  br label %cleanup372

if.end209:                                        ; preds = %if.end202
  %add.ptr211 = getelementptr i8, ptr %add.ptr64, i32 %conv96
  %cmp212 = icmp ugt ptr %add.ptr211, %add.ptr
  br i1 %cmp212, label %do.end219, label %if.end242

do.end219:                                        ; preds = %if.end209
  %106 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %name29, align 4
  %108 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %adap31, align 4
  %tobool225.not = icmp eq ptr %109, null
  br i1 %tobool225.not, label %do.end219.cond.end231_crit_edge, label %cond.true226

do.end219.cond.end231_crit_edge:                  ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end231

cond.true226:                                     ; preds = %do.end219
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i520 = getelementptr inbounds %struct.i2c_adapter, ptr %109, i32 0, i32 11
  %110 = ptrtoint ptr %nr.i520 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %nr.i520, align 4
  br label %cond.end231

cond.end231:                                      ; preds = %cond.true226, %do.end219.cond.end231_crit_edge
  %cond232 = phi i32 [ %111, %cond.true226 ], [ -1, %do.end219.cond.end231_crit_edge ]
  %112 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %i2c_props28, align 8
  %conv235 = zext i8 %113 to i32
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr64 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call237 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.223, ptr noundef %107, i32 noundef %cond232, i32 noundef %conv235, i32 noundef %conv96, i32 noundef %sub.ptr.sub) #13
  br label %cleanup376

if.end242:                                        ; preds = %if.end209
  %114 = ptrtoint ptr %add.ptr64 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %add.ptr64, align 1
  %116 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %116)
  store i8 %115, ptr %buf, align 1
  %incdec.ptr = getelementptr i8, ptr %p.0573, i32 3
  %dec = add i16 %50, -1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %dec)
  %cmp246.not569 = icmp eq i16 %dec, 0
  br i1 %cmp246.not569, label %if.end242.while.end_crit_edge, label %if.end242.while.body248_crit_edge

if.end242.while.body248_crit_edge:                ; preds = %if.end242
  br label %while.body248

if.end242.while.end_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body248:                                    ; preds = %cleanup.while.body248_crit_edge, %if.end242.while.body248_crit_edge
  %p.1571 = phi ptr [ %add.ptr335, %cleanup.while.body248_crit_edge ], [ %incdec.ptr, %if.end242.while.body248_crit_edge ]
  %size63.0570 = phi i16 [ %conv338, %cleanup.while.body248_crit_edge ], [ %dec, %if.end242.while.body248_crit_edge ]
  %conv245 = zext i16 %size63.0570 to i32
  %117 = ptrtoint ptr %max_len to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %max_len, align 4
  %sub = add i32 %118, -1
  %119 = call i32 @llvm.smin.i32(i32 %sub, i32 %conv245)
  %120 = call ptr @memcpy(ptr %add.ptr262, ptr %p.1571, i32 %119)
  %add = add nsw i32 %119, 1
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %msg.i) #10
  %121 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %39, align 4
  %122 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %i2c_props28, align 4
  %conv.i = zext i8 %123 to i16
  %124 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %124)
  store i16 %conv.i, ptr %msg.i, align 4
  %125 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %125)
  store i16 0, ptr %flags.i, align 2
  %conv3.i = trunc i32 %add to i16
  store i16 %conv3.i, ptr %39, align 4
  %126 = ptrtoint ptr %buf4.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr %buf, ptr %buf4.i, align 4
  %127 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %adap31, align 4
  %call.i522 = call i32 @i2c_transfer(ptr noundef %128, ptr noundef nonnull %msg.i, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i522)
  %cmp.i = icmp eq i32 %call.i522, 1
  %len.call.i = select i1 %cmp.i, i32 %add, i32 %call.i522
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %len.call.i)
  %cmp267.not = icmp eq i32 %add, %len.call.i
  br i1 %cmp267.not, label %while.body248.if.end297_crit_edge, label %do.end274

while.body248.if.end297_crit_edge:                ; preds = %while.body248
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end297

do.end274:                                        ; preds = %while.body248
  %129 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %name29, align 4
  %131 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %adap31, align 4
  %tobool280.not = icmp eq ptr %132, null
  br i1 %tobool280.not, label %do.end274.cond.end286_crit_edge, label %cond.true281

do.end274.cond.end286_crit_edge:                  ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end286

cond.true281:                                     ; preds = %do.end274
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i523 = getelementptr inbounds %struct.i2c_adapter, ptr %132, i32 0, i32 11
  %133 = ptrtoint ptr %nr.i523 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %nr.i523, align 4
  br label %cond.end286

cond.end286:                                      ; preds = %cond.true281, %do.end274.cond.end286_crit_edge
  %cond287 = phi i32 [ %134, %cond.true281 ], [ -1, %do.end274.cond.end286_crit_edge ]
  %135 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %i2c_props28, align 8
  %conv290 = zext i8 %136 to i32
  %call292 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, ptr noundef %130, i32 noundef %cond287, i32 noundef %conv290, i32 noundef %len.call.i, i32 noundef %add) #13
  br label %if.end297

if.end297:                                        ; preds = %cond.end286, %while.body248.if.end297_crit_edge
  %137 = ptrtoint ptr %msleep to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %msleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %138)
  %tobool299.not = icmp eq i32 %138, 0
  br i1 %tobool299.not, label %if.end297.if.end303_crit_edge, label %if.then300

if.end297.if.end303_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end303

if.then300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef %138) #10
  br label %if.end303

if.end303:                                        ; preds = %if.then300, %if.end297.if.end303_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.call.i)
  %cmp305 = icmp slt i32 %len.call.i, 0
  br i1 %cmp305, label %do.end312, label %cleanup

do.end312:                                        ; preds = %if.end303
  %139 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %name29, align 4
  %141 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %adap31, align 4
  %tobool318.not = icmp eq ptr %142, null
  br i1 %tobool318.not, label %do.end312.cleanup.thread_crit_edge, label %cond.true319

do.end312.cleanup.thread_crit_edge:               ; preds = %do.end312
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cond.true319:                                     ; preds = %do.end312
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i524 = getelementptr inbounds %struct.i2c_adapter, ptr %142, i32 0, i32 11
  %143 = ptrtoint ptr %nr.i524 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nr.i524, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %cond.true319, %do.end312.cleanup.thread_crit_edge
  %cond325 = phi i32 [ %144, %cond.true319 ], [ -1, %do.end312.cleanup.thread_crit_edge ]
  %145 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %i2c_props28, align 8
  %conv328 = zext i8 %146 to i32
  %call329 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.228, ptr noundef %140, i32 noundef %cond325, i32 noundef %conv328, i32 noundef %len.call.i) #13
  br label %cleanup376

cleanup:                                          ; preds = %if.end303
  %add.ptr335 = getelementptr i8, ptr %p.1571, i32 %119
  %147 = trunc i32 %119 to i16
  %conv338 = sub i16 %size63.0570, %147
  %cmp246.not = icmp eq i16 %conv338, 0
  br i1 %cmp246.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body248_crit_edge

cleanup.while.body248_crit_edge:                  ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body248

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end242.while.end_crit_edge
  %p.1.lcssa = phi ptr [ %incdec.ptr, %if.end242.while.end_crit_edge ], [ %add.ptr335, %cleanup.while.end_crit_edge ]
  %148 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %tuner_priv, align 4
  %150 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %callback.i, align 4
  %tobool.not.i527 = icmp eq ptr %151, null
  br i1 %tobool.not.i527, label %while.end.cleanup372_crit_edge, label %cond.false.i530

while.end.cleanup372_crit_edge:                   ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup372

cond.false.i530:                                  ; preds = %while.end
  %152 = ptrtoint ptr %dvb.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dvb.i, align 4
  %tobool2.not.i529 = icmp eq ptr %153, null
  br i1 %tobool2.not.i529, label %cond.false.i530.cond.false9.i536_crit_edge, label %land.lhs.true.i533

cond.false.i530.cond.false9.i536_crit_edge:       ; preds = %cond.false.i530
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i536

land.lhs.true.i533:                               ; preds = %cond.false.i530
  %priv4.i531 = getelementptr inbounds %struct.dvb_adapter, ptr %153, i32 0, i32 5
  %154 = ptrtoint ptr %priv4.i531 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv4.i531, align 4
  %tobool5.not.i532 = icmp eq ptr %155, null
  br i1 %tobool5.not.i532, label %land.lhs.true.i533.cond.false9.i536_crit_edge, label %land.lhs.true.i533.do_tuner_callback.exit541_crit_edge

land.lhs.true.i533.do_tuner_callback.exit541_crit_edge: ; preds = %land.lhs.true.i533
  call void @__sanitizer_cov_trace_pc() #12
  br label %do_tuner_callback.exit541

land.lhs.true.i533.cond.false9.i536_crit_edge:    ; preds = %land.lhs.true.i533
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.false9.i536

cond.false9.i536:                                 ; preds = %land.lhs.true.i533.cond.false9.i536_crit_edge, %cond.false.i530.cond.false9.i536_crit_edge
  %adap.i534 = getelementptr inbounds %struct.xc2028_data, ptr %149, i32 0, i32 1, i32 1
  %156 = ptrtoint ptr %adap.i534 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %adap.i534, align 4
  %algo_data.i535 = getelementptr inbounds %struct.i2c_adapter, ptr %157, i32 0, i32 3
  %158 = ptrtoint ptr %algo_data.i535 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %algo_data.i535, align 4
  br label %do_tuner_callback.exit541

do_tuner_callback.exit541:                        ; preds = %cond.false9.i536, %land.lhs.true.i533.do_tuner_callback.exit541_crit_edge
  %cond.i537 = phi ptr [ %159, %cond.false9.i536 ], [ %155, %land.lhs.true.i533.do_tuner_callback.exit541_crit_edge ]
  %call.i538 = call i32 %151(ptr noundef %cond.i537, i32 noundef 0, i32 noundef 2, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i538)
  %cmp340 = icmp sgt i32 %call.i538, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -22, i32 %call.i538)
  %cmp342.not = icmp eq i32 %call.i538, -22
  %or.cond = or i1 %cmp340, %cmp342.not
  br i1 %or.cond, label %do_tuner_callback.exit541.cleanup372_crit_edge, label %do.end349

do_tuner_callback.exit541.cleanup372_crit_edge:   ; preds = %do_tuner_callback.exit541
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup372

do.end349:                                        ; preds = %do_tuner_callback.exit541
  %160 = ptrtoint ptr %name29 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %name29, align 4
  %162 = ptrtoint ptr %adap31 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %adap31, align 4
  %tobool355.not = icmp eq ptr %163, null
  br i1 %tobool355.not, label %do.end349.cond.end361_crit_edge, label %cond.true356

do.end349.cond.end361_crit_edge:                  ; preds = %do.end349
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end361

cond.true356:                                     ; preds = %do.end349
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i542 = getelementptr inbounds %struct.i2c_adapter, ptr %163, i32 0, i32 11
  %164 = ptrtoint ptr %nr.i542 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %nr.i542, align 4
  br label %cond.end361

cond.end361:                                      ; preds = %cond.true356, %do.end349.cond.end361_crit_edge
  %cond362 = phi i32 [ %165, %cond.true356 ], [ -1, %do.end349.cond.end361_crit_edge ]
  %166 = ptrtoint ptr %i2c_props28 to i32
  call void @__asan_load1_noabort(i32 %166)
  %167 = load i8, ptr %i2c_props28, align 8
  %conv365 = zext i8 %167 to i32
  %call366 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.231, ptr noundef %161, i32 noundef %cond362, i32 noundef %conv365, i32 noundef %call.i538) #13
  br label %cleanup376

cleanup372:                                       ; preds = %do_tuner_callback.exit541.cleanup372_crit_edge, %while.end.cleanup372_crit_edge, %if.then206, %do_tuner_callback.exit517.cleanup372_crit_edge, %do_tuner_callback.exit.cleanup372_crit_edge
  %p.3 = phi ptr [ %add.ptr64, %if.then206 ], [ %add.ptr64, %do_tuner_callback.exit.cleanup372_crit_edge ], [ %add.ptr64, %do_tuner_callback.exit517.cleanup372_crit_edge ], [ %p.1.lcssa, %do_tuner_callback.exit541.cleanup372_crit_edge ], [ %p.1.lcssa, %while.end.cleanup372_crit_edge ]
  %cmp61 = icmp ult ptr %p.3, %add.ptr
  br i1 %cmp61, label %cleanup372.while.body_crit_edge, label %cleanup372.cleanup376_crit_edge

cleanup372.cleanup376_crit_edge:                  ; preds = %cleanup372
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup376

cleanup372.while.body_crit_edge:                  ; preds = %cleanup372
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup376:                                       ; preds = %cleanup372.cleanup376_crit_edge, %cond.end361, %cleanup.thread, %cond.end231, %cond.end190, %cond.end161, %cond.end123, %if.end94.cleanup376_crit_edge, %cond.end84, %cond.end38.cleanup376_crit_edge, %do.end16.cleanup376_crit_edge
  %retval.4 = phi i32 [ %call17, %do.end16.cleanup376_crit_edge ], [ -22, %cleanup.thread ], [ -22, %cond.end123 ], [ %call.i538, %cond.end361 ], [ -22, %cond.end231 ], [ -22, %cond.end190 ], [ -22, %cond.end161 ], [ -22, %cond.end84 ], [ 0, %cond.end38.cleanup376_crit_edge ], [ 0, %if.end94.cleanup376_crit_edge ], [ 0, %cleanup372.cleanup376_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %buf) #10
  ret i32 %retval.4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xc2028_get_reg(ptr nocapture noundef readonly %priv, i16 noundef zeroext %reg, ptr nocapture noundef writeonly %val) unnamed_addr #0 align 64 {
entry:
  %msg.i = alloca [2 x %struct.i2c_msg], align 4
  %buf = alloca [2 x i8], align 1
  %ibuf = alloca [2 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %buf) #10
  %0 = getelementptr inbounds [2 x i8], ptr %buf, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %ibuf) #10
  %1 = ptrtoint ptr %ibuf to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %ibuf, align 1, !annotation !581
  %2 = getelementptr inbounds [2 x i8], ptr %ibuf, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 -1, ptr %2, align 1, !annotation !581
  %4 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.do.end13_crit_edge, label %do.end

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %8, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %8, i32 0, i32 11
  %9 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %10, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %11 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %12 to i32
  %conv8 = zext i16 %reg to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.269, ptr noundef %6, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.270, i32 noundef %conv8) #13
  br label %do.end13

do.end13:                                         ; preds = %cond.end, %entry.do.end13_crit_edge
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %buf, align 1
  %conv16 = trunc i16 %reg to i8
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv16, ptr %0, align 1
  %i2c_props18 = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %msg.i) #10
  %15 = getelementptr inbounds i8, ptr %msg.i, i32 4
  %16 = call ptr @memset(ptr %15, i32 255, i32 16)
  %17 = ptrtoint ptr %i2c_props18 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_props18, align 4
  %conv.i = zext i8 %18 to i16
  %19 = ptrtoint ptr %msg.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv.i, ptr %msg.i, align 4
  %flags.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 1
  %20 = ptrtoint ptr %flags.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags.i, align 2
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 2, ptr %15, align 4
  %buf.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 0, i32 3
  %22 = ptrtoint ptr %buf.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %buf, ptr %buf.i, align 4
  %arrayinit.element.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1
  %23 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %arrayinit.element.i, align 4
  %flags6.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 1
  %24 = ptrtoint ptr %flags6.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 1, ptr %flags6.i, align 2
  %len7.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 2
  %25 = ptrtoint ptr %len7.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 2, ptr %len7.i, align 4
  %buf9.i = getelementptr inbounds %struct.i2c_msg, ptr %msg.i, i32 1, i32 3
  %26 = ptrtoint ptr %buf9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %ibuf, ptr %buf9.i, align 4
  %adap.i = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %adap.i, align 4
  %call.i = call i32 @i2c_transfer(ptr noundef %28, ptr noundef nonnull %msg.i, i32 noundef 2) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %msg.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 2
  br i1 %cmp.not, label %do.end13.if.end49_crit_edge, label %do.end27

do.end13.if.end49_crit_edge:                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

do.end27:                                         ; preds = %do.end13
  %name30 = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %name30, align 4
  %31 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %adap.i, align 4
  %tobool33.not = icmp eq ptr %32, null
  br i1 %tobool33.not, label %do.end27.cond.end39_crit_edge, label %cond.true34

do.end27.cond.end39_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end39

cond.true34:                                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i82 = getelementptr inbounds %struct.i2c_adapter, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %nr.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr.i82, align 4
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true34, %do.end27.cond.end39_crit_edge
  %cond40 = phi i32 [ %34, %cond.true34 ], [ -1, %do.end27.cond.end39_crit_edge ]
  %35 = ptrtoint ptr %i2c_props18 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %i2c_props18, align 8
  %conv43 = zext i8 %36 to i32
  %call44 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.272, ptr noundef %30, i32 noundef %cond40, i32 noundef %conv43, i32 noundef %call.i, i32 noundef 2) #13
  br label %if.end49

if.end49:                                         ; preds = %cond.end39, %do.end13.if.end49_crit_edge
  %msleep = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 10, i32 2
  %37 = ptrtoint ptr %msleep to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %msleep, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool50.not = icmp eq i32 %38, 0
  br i1 %tobool50.not, label %if.end49.if.end54_crit_edge, label %if.then51

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @msleep(i32 noundef %38) #10
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end49.if.end54_crit_edge
  br i1 %cmp.not, label %if.end59, label %if.end54.cleanup_crit_edge

if.end54.cleanup_crit_edge:                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end59:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 1
  %conv61 = zext i8 %40 to i16
  %41 = ptrtoint ptr %ibuf to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %ibuf, align 1
  %conv63 = zext i8 %42 to i16
  %shl = shl nuw i16 %conv63, 8
  %or = or i16 %shl, %conv61
  %43 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %or, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %if.end54.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end59 ], [ -5, %if.end54.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %ibuf) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %buf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @free_firmware(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.do.end12_crit_edge, label %do.end

entry.do.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1, i32 3
  %1 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %4, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %4, i32 0, i32 11
  %5 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %6, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %7 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %8 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %2, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.274) #13
  br label %do.end12

do.end12:                                         ; preds = %cond.end, %entry.do.end12_crit_edge
  %fname = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 4
  %9 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fname, align 8
  %cmp.not = icmp eq ptr %10, @firmware_name
  br i1 %cmp.not, label %do.end12.if.end16_crit_edge, label %if.then14

do.end12.if.end16_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef %10) #10
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %do.end12.if.end16_crit_edge
  %11 = ptrtoint ptr %fname to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %fname, align 8
  %state = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %state, align 4
  %cur_fw = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 11
  %13 = call ptr @memset(ptr %cur_fw, i32 0, i32 40)
  %firm = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 5
  %14 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %firm, align 4
  %tobool18.not = icmp eq ptr %15, null
  br i1 %tobool18.not, label %if.end16.cleanup_crit_edge, label %for.cond.preheader

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end16
  %firm_size = getelementptr inbounds %struct.xc2028_data, ptr %priv, i32 0, i32 6
  %16 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %firm_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp2144 = icmp sgt i32 %17, 0
  br i1 %cmp2144, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.045 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %18 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %firm, align 4
  %ptr = getelementptr %struct.firmware_description, ptr %19, i32 %i.045, i32 3
  %20 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ptr, align 4
  tail call void @kfree(ptr noundef %21) #10
  %inc = add nuw nsw i32 %i.045, 1
  %22 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %firm_size, align 8
  %cmp21 = icmp slt i32 %inc, %23
  br i1 %cmp21, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %24 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %firm, align 4
  tail call void @kfree(ptr noundef %25) #10
  %26 = ptrtoint ptr %firm to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %firm, align 4
  %27 = ptrtoint ptr %firm_size to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %firm_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end16.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @seek_firmware(ptr nocapture noundef readonly %fe, i32 noundef %type, ptr nocapture noundef %id) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %fe, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.if.end20_crit_edge, label %do.end

entry.if.end20_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.do.end12_crit_edge, label %cond.true

do.end.do.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end12

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %do.end12

do.end12:                                         ; preds = %cond.true, %do.end.do.end12_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.do.end12_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %10 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.233, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull @.str.234) #13
  %.pr = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool13.not = icmp eq i32 %.pr, 0
  br i1 %tobool13.not, label %do.end12.if.end20_crit_edge, label %if.then14

do.end12.if.end20_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.then14:                                        ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %type, i16 noundef zeroext 0)
  %11 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %id, align 8
  %call19 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %type, i64 noundef %12) #13
  br label %if.end20

if.end20:                                         ; preds = %if.then14, %do.end12.if.end20_crit_edge, %entry.if.end20_crit_edge
  %firm = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 5
  %13 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %firm, align 4
  %tobool21.not = icmp eq ptr %14, null
  br i1 %tobool21.not, label %do.end27, label %if.end49

do.end27:                                         ; preds = %if.end20
  %i2c_props29 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name30 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %name30 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name30, align 4
  %adap32 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %adap32 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %adap32, align 4
  %tobool33.not = icmp eq ptr %18, null
  br i1 %tobool33.not, label %do.end27.cond.end39_crit_edge, label %cond.true34

do.end27.cond.end39_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end39

cond.true34:                                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i892 = getelementptr inbounds %struct.i2c_adapter, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %nr.i892 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr.i892, align 4
  br label %cond.end39

cond.end39:                                       ; preds = %cond.true34, %do.end27.cond.end39_crit_edge
  %cond40 = phi i32 [ %20, %cond.true34 ], [ -1, %do.end27.cond.end39_crit_edge ]
  %21 = ptrtoint ptr %i2c_props29 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %i2c_props29, align 8
  %conv43 = zext i8 %22 to i32
  %call44 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.238, ptr noundef %16, i32 noundef %cond40, i32 noundef %conv43) #13
  br label %cleanup751

if.end49:                                         ; preds = %if.end20
  %and = and i32 %type, -536870913
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %land.lhs.true, label %if.end49.if.end54_crit_edge

if.end49.if.end54_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true:                                    ; preds = %if.end49
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %id, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %24)
  %cmp51 = icmp eq i64 %24, 0
  br i1 %cmp51, label %if.then53, label %land.lhs.true.if.end54_crit_edge

land.lhs.true.if.end54_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then53:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 255, ptr %id, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %land.lhs.true.if.end54_crit_edge, %if.end49.if.end54_crit_edge
  %and55 = and i32 %type, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55)
  %tobool56.not = icmp eq i32 %and55, 0
  br i1 %tobool56.not, label %if.else, label %if.end54.if.end73_crit_edge

if.end54.if.end73_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.else:                                          ; preds = %if.end54
  %and58 = and i32 %type, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %if.else62, label %if.then60

if.then60:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %and61 = and i32 %type, 536870916
  br label %if.end73

if.else62:                                        ; preds = %if.else
  %and63 = and i32 %type, 66552
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and63)
  %tobool64.not = icmp eq i32 %and63, 0
  br i1 %tobool64.not, label %if.else66, label %if.else62.if.end73_crit_edge

if.else62.if.end73_crit_edge:                     ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end73

if.else66:                                        ; preds = %if.else62
  call void @__sanitizer_cov_trace_pc() #12
  %and67 = and i32 %type, 13316
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %spec.select = select i1 %tobool68.not, i32 0, i32 13316
  br label %if.end73

if.end73:                                         ; preds = %if.else66, %if.else62.if.end73_crit_edge, %if.then60, %if.end54.if.end73_crit_edge
  %type_mask.0 = phi i32 [ 536870916, %if.then60 ], [ 268454919, %if.end54.if.end73_crit_edge ], [ 66552, %if.else62.if.end73_crit_edge ], [ %spec.select, %if.else66 ]
  %type.addr.0 = phi i32 [ %and61, %if.then60 ], [ %type, %if.end54.if.end73_crit_edge ], [ %type, %if.else62.if.end73_crit_edge ], [ %type, %if.else66 ]
  %and74 = and i32 %type.addr.0, %type_mask.0
  %and75 = and i32 %and74, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  %spec.select889 = select i1 %tobool76.not, i32 -1, i32 %type_mask.0
  %firm_size = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 6
  %26 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %firm_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp79909 = icmp sgt i32 %27, 0
  br i1 %cmp79909, label %for.body.lr.ph, label %if.end73.do.body711_crit_edge

if.end73.do.body711_crit_edge:                    ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body711

for.body.lr.ph:                                   ; preds = %if.end73
  %28 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %firm, align 4
  br label %for.body

for.cond94.preheader:                             ; preds = %for.inc
  %30 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pr921 = load i32, ptr %firm_size, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr921)
  %cmp96912 = icmp sgt i32 %.pr921, 0
  br i1 %cmp96912, label %for.cond94.preheader.for.body98_crit_edge, label %for.cond94.preheader.do.body711_crit_edge

for.cond94.preheader.do.body711_crit_edge:        ; preds = %for.cond94.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body711

for.cond94.preheader.for.body98_crit_edge:        ; preds = %for.cond94.preheader
  br label %for.body98

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0910 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.firmware_description, ptr %29, i32 %i.0910
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx, align 8
  %and83 = and i32 %32, %spec.select889
  call void @__sanitizer_cov_trace_cmp4(i32 %and74, i32 %and83)
  %cmp84 = icmp eq i32 %and74, %and83
  br i1 %cmp84, label %land.lhs.true86, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true86:                                  ; preds = %for.body
  %33 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %id, align 8
  %id89 = getelementptr %struct.firmware_description, ptr %29, i32 %i.0910, i32 1
  %35 = ptrtoint ptr %id89 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %id89, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %34, i64 %36)
  %cmp90 = icmp eq i64 %34, %36
  br i1 %cmp90, label %land.lhs.true86.found_crit_edge, label %land.lhs.true86.for.inc_crit_edge

land.lhs.true86.for.inc_crit_edge:                ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

land.lhs.true86.found_crit_edge:                  ; preds = %land.lhs.true86
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

for.inc:                                          ; preds = %land.lhs.true86.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0910, 1
  %exitcond.not = icmp eq i32 %inc, %27
  br i1 %exitcond.not, label %for.cond94.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body98:                                       ; preds = %for.inc667.for.body98_crit_edge, %for.cond94.preheader.for.body98_crit_edge
  %i.1915 = phi i32 [ %inc668, %for.inc667.for.body98_crit_edge ], [ 0, %for.cond94.preheader.for.body98_crit_edge ]
  %best_i.0914 = phi i32 [ %best_i.2.ph, %for.inc667.for.body98_crit_edge ], [ -1, %for.cond94.preheader.for.body98_crit_edge ]
  %best_nr_matches.0913 = phi i32 [ %best_nr_matches.2.ph, %for.inc667.for.body98_crit_edge ], [ 0, %for.cond94.preheader.for.body98_crit_edge ]
  %37 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %firm, align 4
  %arrayidx100 = getelementptr %struct.firmware_description, ptr %38, i32 %i.1915
  %39 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx100, align 8
  %and102 = and i32 %40, %spec.select889
  call void @__sanitizer_cov_trace_cmp4(i32 %and74, i32 %and102)
  %cmp103.not = icmp eq i32 %and74, %and102
  br i1 %cmp103.not, label %if.end106, label %for.body98.for.inc667_crit_edge

for.body98.for.inc667_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc667

if.end106:                                        ; preds = %for.body98
  %41 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %id, align 8
  %id109 = getelementptr %struct.firmware_description, ptr %38, i32 %i.1915, i32 1
  %43 = ptrtoint ptr %id109 to i32
  call void @__asan_load8_noabort(i32 %43)
  %44 = load i64, ptr %id109, align 8
  %and110 = and i64 %44, %42
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and110)
  %tobool111.not = icmp eq i64 %and110, 0
  br i1 %tobool111.not, label %if.end106.for.inc667_crit_edge, label %if.end113

if.end106.for.inc667_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc667

if.end113:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_cmp8(i64 %and110, i64 %42)
  %cmp115 = icmp eq i64 %and110, %42
  br i1 %cmp115, label %if.end113.found_crit_edge, label %cond.false658

if.end113.found_crit_edge:                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  br label %found

cond.false658:                                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 @__sw_hweight64(i64 noundef %and110) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %best_nr_matches.0913)
  %cmp662 = icmp sgt i32 %call.i, %best_nr_matches.0913
  %45 = tail call i32 @llvm.smax.i32(i32 %call.i, i32 %best_nr_matches.0913)
  %spec.select891 = select i1 %cmp662, i32 %i.1915, i32 %best_i.0914
  br label %for.inc667

for.inc667:                                       ; preds = %cond.false658, %if.end106.for.inc667_crit_edge, %for.body98.for.inc667_crit_edge
  %best_nr_matches.2.ph = phi i32 [ %best_nr_matches.0913, %if.end106.for.inc667_crit_edge ], [ %best_nr_matches.0913, %for.body98.for.inc667_crit_edge ], [ %45, %cond.false658 ]
  %best_i.2.ph = phi i32 [ %best_i.0914, %if.end106.for.inc667_crit_edge ], [ %best_i.0914, %for.body98.for.inc667_crit_edge ], [ %spec.select891, %cond.false658 ]
  %inc668 = add nuw nsw i32 %i.1915, 1
  %46 = ptrtoint ptr %firm_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %firm_size, align 8
  %cmp96 = icmp slt i32 %inc668, %47
  br i1 %cmp96, label %for.inc667.for.body98_crit_edge, label %for.end669

for.inc667.for.body98_crit_edge:                  ; preds = %for.inc667
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body98

for.end669:                                       ; preds = %for.inc667
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_nr_matches.2.ph)
  %cmp670 = icmp sgt i32 %best_nr_matches.2.ph, 0
  br i1 %cmp670, label %do.body673, label %for.end669.do.body711_crit_edge

for.end669.do.body711_crit_edge:                  ; preds = %for.end669
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body711

do.body673:                                       ; preds = %for.end669
  %48 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool674.not = icmp eq i32 %48, 0
  br i1 %tobool674.not, label %do.body673.do.end701_crit_edge, label %do.end679

do.body673.do.end701_crit_edge:                   ; preds = %do.body673
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end701

do.end679:                                        ; preds = %do.body673
  %i2c_props681 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name682 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %49 = ptrtoint ptr %name682 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %name682, align 4
  %adap684 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %adap684 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %adap684, align 4
  %tobool685.not = icmp eq ptr %52, null
  br i1 %tobool685.not, label %do.end679.cond.end691_crit_edge, label %cond.true686

do.end679.cond.end691_crit_edge:                  ; preds = %do.end679
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end691

cond.true686:                                     ; preds = %do.end679
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i893 = getelementptr inbounds %struct.i2c_adapter, ptr %52, i32 0, i32 11
  %53 = ptrtoint ptr %nr.i893 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %nr.i893, align 4
  br label %cond.end691

cond.end691:                                      ; preds = %cond.true686, %do.end679.cond.end691_crit_edge
  %cond692 = phi i32 [ %54, %cond.true686 ], [ -1, %do.end679.cond.end691_crit_edge ]
  %55 = ptrtoint ptr %i2c_props681 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %i2c_props681, align 8
  %conv695 = zext i8 %56 to i32
  %call696 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.241, ptr noundef %50, i32 noundef %cond692, i32 noundef %conv695, i32 noundef %best_nr_matches.2.ph) #13
  br label %do.end701

do.end701:                                        ; preds = %cond.end691, %do.body673.do.end701_crit_edge
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %and74, i16 noundef zeroext 0)
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %id, align 8
  %call706 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.244, i32 noundef %and74, i64 noundef %58) #13
  br label %found

found:                                            ; preds = %do.end701, %if.end113.found_crit_edge, %land.lhs.true86.found_crit_edge
  %i.2 = phi i32 [ %best_i.2.ph, %do.end701 ], [ %i.1915, %if.end113.found_crit_edge ], [ %i.0910, %land.lhs.true86.found_crit_edge ]
  %59 = ptrtoint ptr %firm to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %firm, align 4
  %id710 = getelementptr %struct.firmware_description, ptr %60, i32 %i.2, i32 1
  %61 = ptrtoint ptr %id710 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %id710, align 8
  %63 = ptrtoint ptr %id to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %62, ptr %id, align 8
  br label %do.body711

do.body711:                                       ; preds = %found, %for.end669.do.body711_crit_edge, %for.cond94.preheader.do.body711_crit_edge, %if.end73.do.body711_crit_edge
  %i.3 = phi i32 [ %i.2, %found ], [ -2, %for.end669.do.body711_crit_edge ], [ -2, %for.cond94.preheader.do.body711_crit_edge ], [ -2, %if.end73.do.body711_crit_edge ]
  %64 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool712.not = icmp eq i32 %64, 0
  br i1 %tobool712.not, label %do.body711.cleanup751_crit_edge, label %do.end717

do.body711.cleanup751_crit_edge:                  ; preds = %do.body711
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup751

do.end717:                                        ; preds = %do.body711
  %i2c_props719 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name720 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %name720 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %name720, align 4
  %adap722 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %67 = ptrtoint ptr %adap722 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %adap722, align 4
  %tobool723.not = icmp eq ptr %68, null
  br i1 %tobool723.not, label %do.end717.do.end742_crit_edge, label %cond.true724

do.end717.do.end742_crit_edge:                    ; preds = %do.end717
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end742

cond.true724:                                     ; preds = %do.end717
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i894 = getelementptr inbounds %struct.i2c_adapter, ptr %68, i32 0, i32 11
  %69 = ptrtoint ptr %nr.i894 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr.i894, align 4
  br label %do.end742

do.end742:                                        ; preds = %cond.true724, %do.end717.do.end742_crit_edge
  %cond730 = phi i32 [ %70, %cond.true724 ], [ -1, %do.end717.do.end742_crit_edge ]
  %71 = ptrtoint ptr %i2c_props719 to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %i2c_props719, align 8
  %conv733 = zext i8 %72 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.3)
  %cmp734 = icmp slt i32 %i.3, 0
  %cond736 = select i1 %cmp734, ptr @.str.249, ptr @.str.250
  %call737 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.247, ptr noundef %66, i32 noundef %cond730, i32 noundef %conv733, ptr noundef nonnull %cond736) #13
  %.pr901 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr901)
  %tobool743.not = icmp eq i32 %.pr901, 0
  br i1 %tobool743.not, label %do.end742.cleanup751_crit_edge, label %if.then744

do.end742.cleanup751_crit_edge:                   ; preds = %do.end742
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup751

if.then744:                                       ; preds = %do.end742
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @dump_firm_type_and_int_freq(i32 noundef %and74, i16 noundef zeroext 0)
  %73 = ptrtoint ptr %id to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %id, align 8
  %call749 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.209, i32 noundef %and74, i64 noundef %74) #13
  br label %cleanup751

cleanup751:                                       ; preds = %if.then744, %do.end742.cleanup751_crit_edge, %do.body711.cleanup751_crit_edge, %cond.end39
  %retval.0 = phi i32 [ -22, %cond.end39 ], [ %i.3, %if.then744 ], [ %i.3, %do.end742.cleanup751_crit_edge ], [ %i.3, %do.body711.cleanup751_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__sw_hweight64(i64 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_firmware_nowait(ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @load_firmware_cb(ptr noundef %fw, ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  %name.i = alloca [33 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tuner_priv = getelementptr inbounds %struct.dvb_frontend, ptr %context, i32 0, i32 4
  %0 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tuner_priv, align 4
  %2 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.do.end14_crit_edge, label %do.end

entry.do.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end14

do.end:                                           ; preds = %entry
  %i2c_props = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %adap = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %adap to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adap, align 4
  %tobool4.not = icmp eq ptr %6, null
  br i1 %tobool4.not, label %do.end.cond.end_crit_edge, label %cond.true

do.end.cond.end_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i = getelementptr inbounds %struct.i2c_adapter, ptr %6, i32 0, i32 11
  %7 = ptrtoint ptr %nr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr.i, align 4
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end.cond.end_crit_edge
  %cond = phi i32 [ %8, %cond.true ], [ -1, %do.end.cond.end_crit_edge ]
  %9 = ptrtoint ptr %i2c_props to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %i2c_props, align 8
  %conv = zext i8 %10 to i32
  %tobool8.not = icmp eq ptr %fw, null
  %cond9 = select i1 %tobool8.not, ptr @.str.296, ptr @.str.295
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.293, ptr noundef %4, i32 noundef %cond, i32 noundef %conv, ptr noundef nonnull %cond9) #13
  br label %do.end14

do.end14:                                         ; preds = %cond.end, %entry.do.end14_crit_edge
  %tobool15.not = icmp eq ptr %fw, null
  br i1 %tobool15.not, label %do.end21, label %if.end43

do.end21:                                         ; preds = %do.end14
  %i2c_props23 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1
  %name24 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %name24 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name24, align 4
  %adap26 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 1, i32 1
  %13 = ptrtoint ptr %adap26 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adap26, align 4
  %tobool27.not = icmp eq ptr %14, null
  br i1 %tobool27.not, label %do.end21.cond.end33_crit_edge, label %cond.true28

do.end21.cond.end33_crit_edge:                    ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end33

cond.true28:                                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i66 = getelementptr inbounds %struct.i2c_adapter, ptr %14, i32 0, i32 11
  %15 = ptrtoint ptr %nr.i66 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr.i66, align 4
  br label %cond.end33

cond.end33:                                       ; preds = %cond.true28, %do.end21.cond.end33_crit_edge
  %cond34 = phi i32 [ %16, %cond.true28 ], [ -1, %do.end21.cond.end33_crit_edge ]
  %17 = ptrtoint ptr %i2c_props23 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %i2c_props23, align 8
  %conv37 = zext i8 %18 to i32
  %fname = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 4
  %19 = ptrtoint ptr %fname to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fname, align 8
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.298, ptr noundef %12, i32 noundef %cond34, i32 noundef %conv37, ptr noundef %20) #13
  %state = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 3
  %21 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 4, ptr %state, align 4
  br label %cleanup

if.end43:                                         ; preds = %do.end14
  %22 = ptrtoint ptr %tuner_priv to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tuner_priv, align 4
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %name.i) #10
  %24 = call ptr @memset(ptr %name.i, i32 255, i32 33)
  %25 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool.not.i = icmp eq i32 %25, 0
  br i1 %tobool.not.i, label %if.end43.do.end13.i_crit_edge, label %do.end.i

if.end43.do.end13.i_crit_edge:                    ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end13.i

do.end.i:                                         ; preds = %if.end43
  %i2c_props.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1
  %name3.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %name3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %name3.i, align 4
  %adap.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %adap.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %adap.i, align 4
  %tobool5.not.i = icmp eq ptr %29, null
  br i1 %tobool5.not.i, label %do.end.i.cond.end.i_crit_edge, label %cond.true.i

do.end.i.cond.end.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end.i

cond.true.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %29, i32 0, i32 11
  %30 = ptrtoint ptr %nr.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr.i.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %do.end.i.cond.end.i_crit_edge
  %cond.i = phi i32 [ %31, %cond.true.i ], [ -1, %do.end.i.cond.end.i_crit_edge ]
  %32 = ptrtoint ptr %i2c_props.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %i2c_props.i, align 8
  %conv.i = zext i8 %33 to i32
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %27, i32 noundef %cond.i, i32 noundef %conv.i, ptr noundef nonnull @.str.300) #13
  br label %do.end13.i

do.end13.i:                                       ; preds = %cond.end.i, %if.end43.do.end13.i_crit_edge
  %data.i = getelementptr inbounds %struct.firmware, ptr %fw, i32 0, i32 1
  %34 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i, align 4
  %36 = ptrtoint ptr %fw to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %fw, align 4
  %add.ptr.i = getelementptr i8, ptr %35, i32 %37
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %37)
  %cmp.i = icmp ult i32 %37, 36
  br i1 %cmp.i, label %do.end21.i, label %if.end43.i

do.end21.i:                                       ; preds = %do.end13.i
  %i2c_props23.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1
  %name24.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 3
  %38 = ptrtoint ptr %name24.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %name24.i, align 4
  %adap26.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 1
  %40 = ptrtoint ptr %adap26.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %adap26.i, align 4
  %tobool27.not.i = icmp eq ptr %41, null
  br i1 %tobool27.not.i, label %do.end21.i.cond.end33.i_crit_edge, label %cond.true28.i

do.end21.i.cond.end33.i_crit_edge:                ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end33.i

cond.true28.i:                                    ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i583.i = getelementptr inbounds %struct.i2c_adapter, ptr %41, i32 0, i32 11
  %42 = ptrtoint ptr %nr.i583.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr.i583.i, align 4
  br label %cond.end33.i

cond.end33.i:                                     ; preds = %cond.true28.i, %do.end21.i.cond.end33.i_crit_edge
  %cond34.i = phi i32 [ %43, %cond.true28.i ], [ -1, %do.end21.i.cond.end33.i_crit_edge ]
  %44 = ptrtoint ptr %i2c_props23.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %i2c_props23.i, align 8
  %conv37.i = zext i8 %45 to i32
  %fname.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 4
  %46 = ptrtoint ptr %fname.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fname.i, align 8
  %call38.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.302, ptr noundef %39, i32 noundef %cond34.i, i32 noundef %conv37.i, ptr noundef %47) #13
  br label %corrupt.i

if.end43.i:                                       ; preds = %do.end13.i
  %48 = call ptr @memcpy(ptr %name.i, ptr %35, i32 32)
  %arrayidx.i = getelementptr inbounds [33 x i8], ptr %name.i, i32 0, i32 32
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 0, ptr %arrayidx.i, align 1
  %add.ptr44.i = getelementptr i8, ptr %35, i32 32
  %50 = ptrtoint ptr %add.ptr44.i to i32
  call void @__asan_loadN_noabort(i32 %50, i32 2)
  %51 = load i16, ptr %add.ptr44.i, align 1
  %52 = tail call i16 @llvm.bswap.i16(i16 %51) #10
  %firm_version.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 7
  %53 = ptrtoint ptr %firm_version.i to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %firm_version.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %35, i32 34
  %54 = ptrtoint ptr %add.ptr46.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 2)
  %55 = load i16, ptr %add.ptr46.i, align 1
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #10
  %conv48.i = zext i16 %56 to i32
  %add.ptr49.i = getelementptr i8, ptr %35, i32 36
  %i2c_props56.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1
  %name57.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 3
  %57 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %name57.i, align 4
  %adap59.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 1
  %59 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %adap59.i, align 4
  %tobool60.not.i = icmp eq ptr %60, null
  br i1 %tobool60.not.i, label %if.end43.i.cond.end66.i_crit_edge, label %cond.true61.i

if.end43.i.cond.end66.i_crit_edge:                ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end66.i

cond.true61.i:                                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i584.i = getelementptr inbounds %struct.i2c_adapter, ptr %60, i32 0, i32 11
  %61 = ptrtoint ptr %nr.i584.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %nr.i584.i, align 4
  br label %cond.end66.i

cond.end66.i:                                     ; preds = %cond.true61.i, %if.end43.i.cond.end66.i_crit_edge
  %cond67.i = phi i32 [ %62, %cond.true61.i ], [ -1, %if.end43.i.cond.end66.i_crit_edge ]
  %63 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %i2c_props56.i, align 8
  %conv70.i = zext i8 %64 to i32
  %fname71.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 4
  %65 = ptrtoint ptr %fname71.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fname71.i, align 8
  %conv74.i = zext i16 %52 to i32
  %67 = lshr i32 %conv74.i, 8
  %and.i = and i32 %conv74.i, 255
  %call77.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.305, ptr noundef %58, i32 noundef %cond67.i, i32 noundef %conv70.i, i32 noundef %conv48.i, ptr noundef %66, ptr noundef nonnull %name.i, i32 noundef %67, i32 noundef %and.i) #13
  %68 = shl nuw nsw i32 %conv48.i, 5
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %68, i32 noundef 3520) #16
  %firm.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 5
  %69 = ptrtoint ptr %firm.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call8.i.i.i, ptr %firm.i, align 4
  %cmp84.i = icmp eq ptr %call8.i.i.i, null
  br i1 %cmp84.i, label %do.end91.i, label %if.end113.i

do.end91.i:                                       ; preds = %cond.end66.i
  %70 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %name57.i, align 4
  %72 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %adap59.i, align 4
  %tobool97.not.i = icmp eq ptr %73, null
  br i1 %tobool97.not.i, label %do.end91.i.cond.end103.i_crit_edge, label %cond.true98.i

do.end91.i.cond.end103.i_crit_edge:               ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end103.i

cond.true98.i:                                    ; preds = %do.end91.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i585.i = getelementptr inbounds %struct.i2c_adapter, ptr %73, i32 0, i32 11
  %74 = ptrtoint ptr %nr.i585.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nr.i585.i, align 4
  br label %cond.end103.i

cond.end103.i:                                    ; preds = %cond.true98.i, %do.end91.i.cond.end103.i_crit_edge
  %cond104.i = phi i32 [ %75, %cond.true98.i ], [ -1, %do.end91.i.cond.end103.i_crit_edge ]
  %76 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %i2c_props56.i, align 8
  %conv107.i = zext i8 %77 to i32
  %call108.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef %71, i32 noundef %cond104.i, i32 noundef %conv107.i) #13
  br label %do.end388.i

if.end113.i:                                      ; preds = %cond.end66.i
  %firm_size.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 6
  %78 = ptrtoint ptr %firm_size.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %conv48.i, ptr %firm_size.i, align 8
  %cmp114630.i = icmp ult ptr %add.ptr49.i, %add.ptr.i
  br i1 %cmp114630.i, label %while.body.lr.ph.i, label %if.end113.i.while.end.i_crit_edge

if.end113.i.while.end.i_crit_edge:                ; preds = %if.end113.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

while.body.lr.ph.i:                               ; preds = %if.end113.i
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i to i32
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %p.0632.i = phi ptr [ %add.ptr49.i, %while.body.lr.ph.i ], [ %add.ptr297.i, %cleanup.i.while.body.i_crit_edge ]
  %n.0631.i = phi i32 [ 0, %while.body.lr.ph.i ], [ %phi.bo.i, %cleanup.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0631.i, i32 %conv48.i)
  %exitcond.not.i = icmp eq i32 %n.0631.i, %conv48.i
  br i1 %exitcond.not.i, label %do.end124.i, label %if.end146.i

do.end124.i:                                      ; preds = %while.body.i
  %79 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %name57.i, align 4
  %81 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %adap59.i, align 4
  %tobool130.not.i = icmp eq ptr %82, null
  br i1 %tobool130.not.i, label %do.end124.i.cond.end136.i_crit_edge, label %cond.true131.i

do.end124.i.cond.end136.i_crit_edge:              ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end136.i

cond.true131.i:                                   ; preds = %do.end124.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i586.i = getelementptr inbounds %struct.i2c_adapter, ptr %82, i32 0, i32 11
  %83 = ptrtoint ptr %nr.i586.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nr.i586.i, align 4
  br label %cond.end136.i

cond.end136.i:                                    ; preds = %cond.true131.i, %do.end124.i.cond.end136.i_crit_edge
  %cond137.i = phi i32 [ %84, %cond.true131.i ], [ -1, %do.end124.i.cond.end136.i_crit_edge ]
  %85 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %i2c_props56.i, align 8
  %conv140.i = zext i8 %86 to i32
  %call141.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.311, ptr noundef %80, i32 noundef %cond137.i, i32 noundef %conv140.i) #13
  br label %corrupt.i

if.end146.i:                                      ; preds = %while.body.i
  %sub.ptr.rhs.cast.i = ptrtoint ptr %p.0632.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub.ptr.sub.i)
  %cmp147.i = icmp ult i32 %sub.ptr.sub.i, 16
  br i1 %cmp147.i, label %if.end146.i.do.end336.i_crit_edge, label %if.end150.i

if.end146.i.do.end336.i_crit_edge:                ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end336.i

if.end150.i:                                      ; preds = %if.end146.i
  %87 = ptrtoint ptr %p.0632.i to i32
  call void @__asan_loadN_noabort(i32 %87, i32 4)
  %88 = load i32, ptr %p.0632.i, align 1
  %89 = call i32 @llvm.bswap.i32(i32 %88) #10
  %add.ptr152.i = getelementptr i8, ptr %p.0632.i, i32 4
  %90 = ptrtoint ptr %add.ptr152.i to i32
  call void @__asan_loadN_noabort(i32 %90, i32 8)
  %91 = load i64, ptr %add.ptr152.i, align 1
  %92 = call i64 @llvm.bswap.i64(i64 %91) #10
  %add.ptr154.i = getelementptr i8, ptr %p.0632.i, i32 12
  %and155.i = and i32 %89, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and155.i)
  %tobool156.not.i = icmp eq i32 %and155.i, 0
  br i1 %tobool156.not.i, label %if.end150.i.if.end167.i_crit_edge, label %if.then157.i

if.end150.i.if.end167.i_crit_edge:                ; preds = %if.end150.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167.i

if.then157.i:                                     ; preds = %if.end150.i
  %93 = ptrtoint ptr %add.ptr154.i to i32
  call void @__asan_loadN_noabort(i32 %93, i32 2)
  %94 = load i16, ptr %add.ptr154.i, align 1
  %95 = call i16 @llvm.bswap.i16(i16 %94) #10
  %add.ptr159.i = getelementptr i8, ptr %p.0632.i, i32 14
  %sub.ptr.rhs.cast161.i = ptrtoint ptr %add.ptr159.i to i32
  %sub.ptr.sub162.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast161.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub162.i)
  %cmp163.i = icmp ult i32 %sub.ptr.sub162.i, 4
  br i1 %cmp163.i, label %if.then157.i.do.end336.i_crit_edge, label %if.then157.i.if.end167.i_crit_edge

if.then157.i.if.end167.i_crit_edge:               ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167.i

if.then157.i.do.end336.i_crit_edge:               ; preds = %if.then157.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end336.i

if.end167.i:                                      ; preds = %if.then157.i.if.end167.i_crit_edge, %if.end150.i.if.end167.i_crit_edge
  %int_freq.0.i = phi i16 [ %95, %if.then157.i.if.end167.i_crit_edge ], [ 0, %if.end150.i.if.end167.i_crit_edge ]
  %p.1.i = phi ptr [ %add.ptr159.i, %if.then157.i.if.end167.i_crit_edge ], [ %add.ptr154.i, %if.end150.i.if.end167.i_crit_edge ]
  %96 = ptrtoint ptr %p.1.i to i32
  call void @__asan_loadN_noabort(i32 %96, i32 4)
  %97 = load i32, ptr %p.1.i, align 1
  %98 = call i32 @llvm.bswap.i32(i32 %97) #10
  %add.ptr169.i = getelementptr i8, ptr %p.1.i, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %97)
  %tobool170.not.i = icmp eq i32 %97, 0
  %sub.ptr.rhs.cast172.i = ptrtoint ptr %add.ptr169.i to i32
  %sub.ptr.sub173.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast172.i
  call void @__sanitizer_cov_trace_cmp4(i32 %98, i32 %sub.ptr.sub173.i)
  %cmp174.i = icmp ugt i32 %98, %sub.ptr.sub173.i
  %or.cond.i = select i1 %tobool170.not.i, i1 true, i1 %cmp174.i
  br i1 %or.cond.i, label %do.end181.i, label %if.end211.i

do.end181.i:                                      ; preds = %if.end167.i
  %99 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %name57.i, align 4
  %101 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %adap59.i, align 4
  %tobool187.not.i = icmp eq ptr %102, null
  br i1 %tobool187.not.i, label %do.end181.i.cond.end193.i_crit_edge, label %cond.true188.i

do.end181.i.cond.end193.i_crit_edge:              ; preds = %do.end181.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end193.i

cond.true188.i:                                   ; preds = %do.end181.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i587.i = getelementptr inbounds %struct.i2c_adapter, ptr %102, i32 0, i32 11
  %103 = ptrtoint ptr %nr.i587.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %nr.i587.i, align 4
  br label %cond.end193.i

cond.end193.i:                                    ; preds = %cond.true188.i, %do.end181.i.cond.end193.i_crit_edge
  %cond194.i = phi i32 [ %104, %cond.true188.i ], [ -1, %do.end181.i.cond.end193.i_crit_edge ]
  %105 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %i2c_props56.i, align 8
  %conv197.i = zext i8 %106 to i32
  %call198.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.314, ptr noundef %100, i32 noundef %cond194.i, i32 noundef %conv197.i) #13
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %89, i16 noundef zeroext 0) #10
  %call210.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.317, i32 noundef %89, i64 noundef %92, i32 noundef %sub.ptr.sub173.i, i32 noundef %98) #13
  br label %corrupt.i

if.end211.i:                                      ; preds = %if.end167.i
  %call212.i = call ptr @kmemdup(ptr noundef %add.ptr169.i, i32 noundef %98, i32 noundef 3264) #10
  %107 = ptrtoint ptr %firm.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %firm.i, align 4
  %ptr.i = getelementptr %struct.firmware_description, ptr %108, i32 %n.0631.i, i32 3
  %109 = ptrtoint ptr %ptr.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %call212.i, ptr %ptr.i, align 4
  %110 = load ptr, ptr %firm.i, align 4
  %ptr217.i = getelementptr %struct.firmware_description, ptr %110, i32 %n.0631.i, i32 3
  %111 = ptrtoint ptr %ptr217.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %ptr217.i, align 4
  %cmp218.i = icmp eq ptr %112, null
  br i1 %cmp218.i, label %do.end225.i, label %do.body248.i

do.end225.i:                                      ; preds = %if.end211.i
  %113 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %name57.i, align 4
  %115 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %adap59.i, align 4
  %tobool231.not.i = icmp eq ptr %116, null
  br i1 %tobool231.not.i, label %do.end225.i.cleanup.thread612.i_crit_edge, label %cond.true232.i

do.end225.i.cleanup.thread612.i_crit_edge:        ; preds = %do.end225.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread612.i

cond.true232.i:                                   ; preds = %do.end225.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i588.i = getelementptr inbounds %struct.i2c_adapter, ptr %116, i32 0, i32 11
  %117 = ptrtoint ptr %nr.i588.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %nr.i588.i, align 4
  br label %cleanup.thread612.i

cleanup.thread612.i:                              ; preds = %cond.true232.i, %do.end225.i.cleanup.thread612.i_crit_edge
  %cond238.i = phi i32 [ %118, %cond.true232.i ], [ -1, %do.end225.i.cleanup.thread612.i_crit_edge ]
  %119 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %119)
  %120 = load i8, ptr %i2c_props56.i, align 8
  %conv241.i = zext i8 %120 to i32
  %call242.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.308, ptr noundef %114, i32 noundef %cond238.i, i32 noundef %conv241.i) #13
  br label %do.end388.i

do.body248.i:                                     ; preds = %if.end211.i
  %121 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool249.not.i = icmp eq i32 %121, 0
  br i1 %tobool249.not.i, label %do.body248.i.cleanup.i_crit_edge, label %do.end254.i

do.body248.i.cleanup.i_crit_edge:                 ; preds = %do.body248.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

do.end254.i:                                      ; preds = %do.body248.i
  %122 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %name57.i, align 4
  %124 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %adap59.i, align 4
  %tobool260.not.i = icmp eq ptr %125, null
  br i1 %tobool260.not.i, label %do.end254.i.do.end276.i_crit_edge, label %cond.true261.i

do.end254.i.do.end276.i_crit_edge:                ; preds = %do.end254.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end276.i

cond.true261.i:                                   ; preds = %do.end254.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i589.i = getelementptr inbounds %struct.i2c_adapter, ptr %125, i32 0, i32 11
  %126 = ptrtoint ptr %nr.i589.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %nr.i589.i, align 4
  br label %do.end276.i

do.end276.i:                                      ; preds = %cond.true261.i, %do.end254.i.do.end276.i_crit_edge
  %cond267.i = phi i32 [ %127, %cond.true261.i ], [ -1, %do.end254.i.do.end276.i_crit_edge ]
  %128 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %i2c_props56.i, align 8
  %conv270.i = zext i8 %129 to i32
  %call271.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.322, ptr noundef %123, i32 noundef %cond267.i, i32 noundef %conv270.i) #13
  %.pr.i = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool277.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool277.not.i, label %do.end276.i.cleanup.i_crit_edge, label %if.then278.i

do.end276.i.cleanup.i_crit_edge:                  ; preds = %do.end276.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.then278.i:                                     ; preds = %do.end276.i
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @dump_firm_type_and_int_freq(i32 noundef %89, i16 noundef zeroext %int_freq.0.i) #10
  %call283.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.325, i32 noundef %89, i64 noundef %92, i32 noundef %98) #13
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then278.i, %do.end276.i.cleanup.i_crit_edge, %do.body248.i.cleanup.i_crit_edge
  %130 = ptrtoint ptr %firm.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %firm.i, align 4
  %arrayidx286.i = getelementptr %struct.firmware_description, ptr %131, i32 %n.0631.i
  %132 = ptrtoint ptr %arrayidx286.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %89, ptr %arrayidx286.i, align 8
  %133 = load ptr, ptr %firm.i, align 4
  %id290.i = getelementptr %struct.firmware_description, ptr %133, i32 %n.0631.i, i32 1
  %134 = ptrtoint ptr %id290.i to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %92, ptr %id290.i, align 8
  %135 = load ptr, ptr %firm.i, align 4
  %size293.i = getelementptr %struct.firmware_description, ptr %135, i32 %n.0631.i, i32 4
  %136 = ptrtoint ptr %size293.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %98, ptr %size293.i, align 8
  %137 = load ptr, ptr %firm.i, align 4
  %int_freq296.i = getelementptr %struct.firmware_description, ptr %137, i32 %n.0631.i, i32 2
  %138 = ptrtoint ptr %int_freq296.i to i32
  call void @__asan_store2_noabort(i32 %138)
  store i16 %int_freq.0.i, ptr %int_freq296.i, align 8
  %add.ptr297.i = getelementptr i8, ptr %add.ptr169.i, i32 %98
  %phi.bo.i = add nuw nsw i32 %n.0631.i, 1
  %cmp114.i = icmp ult ptr %add.ptr297.i, %add.ptr.i
  br i1 %cmp114.i, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.while.end.i_crit_edge

cleanup.i.while.end.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end.i

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.end.i:                                      ; preds = %cleanup.i.while.end.i_crit_edge, %if.end113.i.while.end.i_crit_edge
  %n.0.lcssa.i = phi i32 [ 0, %if.end113.i.while.end.i_crit_edge ], [ %phi.bo.i, %cleanup.i.while.end.i_crit_edge ]
  %139 = ptrtoint ptr %firm_size.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %firm_size.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %n.0.lcssa.i, i32 %140)
  %cmp302.not.i = icmp eq i32 %n.0.lcssa.i, %140
  br i1 %cmp302.not.i, label %do.body413.i, label %do.end309.i

do.end309.i:                                      ; preds = %while.end.i
  %141 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %name57.i, align 4
  %143 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %adap59.i, align 4
  %tobool315.not.i = icmp eq ptr %144, null
  br i1 %tobool315.not.i, label %do.end309.i.cond.end321.i_crit_edge, label %cond.true316.i

do.end309.i.cond.end321.i_crit_edge:              ; preds = %do.end309.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end321.i

cond.true316.i:                                   ; preds = %do.end309.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i590.i = getelementptr inbounds %struct.i2c_adapter, ptr %144, i32 0, i32 11
  %145 = ptrtoint ptr %nr.i590.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %nr.i590.i, align 4
  br label %cond.end321.i

cond.end321.i:                                    ; preds = %cond.true316.i, %do.end309.i.cond.end321.i_crit_edge
  %cond322.i = phi i32 [ %146, %cond.true316.i ], [ -1, %do.end309.i.cond.end321.i_crit_edge ]
  %147 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %147)
  %148 = load i8, ptr %i2c_props56.i, align 8
  %conv325.i = zext i8 %148 to i32
  %call326.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.328, ptr noundef %142, i32 noundef %cond322.i, i32 noundef %conv325.i) #13
  br label %corrupt.i

do.end336.i:                                      ; preds = %if.then157.i.do.end336.i_crit_edge, %if.end146.i.do.end336.i_crit_edge
  %149 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %name57.i, align 4
  %151 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %adap59.i, align 4
  %tobool342.not.i = icmp eq ptr %152, null
  br i1 %tobool342.not.i, label %do.end336.i.cond.end348.i_crit_edge, label %cond.true343.i

do.end336.i.cond.end348.i_crit_edge:              ; preds = %do.end336.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end348.i

cond.true343.i:                                   ; preds = %do.end336.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i591.i = getelementptr inbounds %struct.i2c_adapter, ptr %152, i32 0, i32 11
  %153 = ptrtoint ptr %nr.i591.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %nr.i591.i, align 4
  br label %cond.end348.i

cond.end348.i:                                    ; preds = %cond.true343.i, %do.end336.i.cond.end348.i_crit_edge
  %cond349.i = phi i32 [ %154, %cond.true343.i ], [ -1, %do.end336.i.cond.end348.i_crit_edge ]
  %155 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %i2c_props56.i, align 8
  %conv352.i = zext i8 %156 to i32
  %call353.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.331, ptr noundef %150, i32 noundef %cond349.i, i32 noundef %conv352.i) #13
  br label %corrupt.i

corrupt.i:                                        ; preds = %cond.end348.i, %cond.end321.i, %cond.end193.i, %cond.end136.i, %cond.end33.i
  %i2c_props364.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1
  %name365.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 3
  %157 = ptrtoint ptr %name365.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %name365.i, align 4
  %adap367.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 1
  %159 = ptrtoint ptr %adap367.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %adap367.i, align 4
  %tobool368.not.i = icmp eq ptr %160, null
  br i1 %tobool368.not.i, label %corrupt.i.cond.end374.i_crit_edge, label %cond.true369.i

corrupt.i.cond.end374.i_crit_edge:                ; preds = %corrupt.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end374.i

cond.true369.i:                                   ; preds = %corrupt.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i592.i = getelementptr inbounds %struct.i2c_adapter, ptr %160, i32 0, i32 11
  %161 = ptrtoint ptr %nr.i592.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %nr.i592.i, align 4
  br label %cond.end374.i

cond.end374.i:                                    ; preds = %cond.true369.i, %corrupt.i.cond.end374.i_crit_edge
  %cond375.i = phi i32 [ %162, %cond.true369.i ], [ -1, %corrupt.i.cond.end374.i_crit_edge ]
  %163 = ptrtoint ptr %i2c_props364.i to i32
  call void @__asan_load1_noabort(i32 %163)
  %164 = load i8, ptr %i2c_props364.i, align 8
  %conv378.i = zext i8 %164 to i32
  %call379.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.334, ptr noundef %158, i32 noundef %cond375.i, i32 noundef %conv378.i) #13
  br label %do.end388.i

do.end388.i:                                      ; preds = %cond.end374.i, %cleanup.thread612.i, %cond.end103.i
  %i2c_props390.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1
  %name391.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 3
  %165 = ptrtoint ptr %name391.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %name391.i, align 4
  %adap393.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 1, i32 1
  %167 = ptrtoint ptr %adap393.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %adap393.i, align 4
  %tobool394.not.i = icmp eq ptr %168, null
  br i1 %tobool394.not.i, label %do.end388.i.load_all_firmwares.exit_crit_edge, label %cond.true395.i

do.end388.i.load_all_firmwares.exit_crit_edge:    ; preds = %do.end388.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %load_all_firmwares.exit

cond.true395.i:                                   ; preds = %do.end388.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i593.i = getelementptr inbounds %struct.i2c_adapter, ptr %168, i32 0, i32 11
  %169 = ptrtoint ptr %nr.i593.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %nr.i593.i, align 4
  br label %load_all_firmwares.exit

do.body413.i:                                     ; preds = %while.end.i
  %171 = load i32, ptr @debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool414.not.i = icmp eq i32 %171, 0
  br i1 %tobool414.not.i, label %do.body413.i.if.end47_crit_edge, label %do.end419.i

do.body413.i.if.end47_crit_edge:                  ; preds = %do.body413.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

do.end419.i:                                      ; preds = %do.body413.i
  %172 = ptrtoint ptr %name57.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %name57.i, align 4
  %174 = ptrtoint ptr %adap59.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %adap59.i, align 4
  %tobool425.not.i = icmp eq ptr %175, null
  br i1 %tobool425.not.i, label %do.end419.i.cond.end431.i_crit_edge, label %cond.true426.i

do.end419.i.cond.end431.i_crit_edge:              ; preds = %do.end419.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end431.i

cond.true426.i:                                   ; preds = %do.end419.i
  call void @__sanitizer_cov_trace_pc() #12
  %nr.i594.i = getelementptr inbounds %struct.i2c_adapter, ptr %175, i32 0, i32 11
  %176 = ptrtoint ptr %nr.i594.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nr.i594.i, align 4
  br label %cond.end431.i

cond.end431.i:                                    ; preds = %cond.true426.i, %do.end419.i.cond.end431.i_crit_edge
  %cond432.i = phi i32 [ %177, %cond.true426.i ], [ -1, %do.end419.i.cond.end431.i_crit_edge ]
  %178 = ptrtoint ptr %i2c_props56.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %i2c_props56.i, align 8
  %conv435.i = zext i8 %179 to i32
  %call436.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.340, ptr noundef %173, i32 noundef %cond432.i, i32 noundef %conv435.i) #13
  br label %if.end47

load_all_firmwares.exit:                          ; preds = %cond.true395.i, %do.end388.i.load_all_firmwares.exit_crit_edge
  %cond401.i = phi i32 [ %170, %cond.true395.i ], [ -1, %do.end388.i.load_all_firmwares.exit_crit_edge ]
  %180 = ptrtoint ptr %i2c_props390.i to i32
  call void @__asan_load1_noabort(i32 %180)
  %181 = load i8, ptr %i2c_props390.i, align 8
  %conv404.i = zext i8 %181 to i32
  %call405.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.337, ptr noundef %166, i32 noundef %cond401.i, i32 noundef %conv404.i) #13
  call fastcc void @free_firmware(ptr noundef %23) #10
  %state.i = getelementptr inbounds %struct.xc2028_data, ptr %23, i32 0, i32 3
  %182 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 4, ptr %state.i, align 4
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %name.i) #10
  call void @release_firmware(ptr noundef nonnull %fw) #10
  br label %cleanup

if.end47:                                         ; preds = %cond.end431.i, %do.body413.i.if.end47_crit_edge
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %name.i) #10
  call void @release_firmware(ptr noundef nonnull %fw) #10
  %state48 = getelementptr inbounds %struct.xc2028_data, ptr %1, i32 0, i32 3
  %183 = ptrtoint ptr %state48 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 2, ptr %state48, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %load_all_firmwares.exit, %cond.end33
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @release_firmware(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 272)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 272)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !35, !36, !37, !38, !40, !41, !43, !44, !45, !46, !48, !50, !52, !54, !56, !57, !59, !61, !63, !65, !66, !67, !68, !69, !71, !72, !73, !75, !77, !78, !79, !81, !83, !85, !86, !87, !88, !90, !91, !92, !94, !95, !96, !97, !99, !100, !101, !103, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !118, !120, !121, !122, !124, !125, !126, !128, !129, !130, !132, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !180, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !194, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !212, !213, !214, !216, !217, !218, !220, !221, !222, !223, !225, !226, !227, !229, !230, !231, !233, !234, !235, !237, !238, !239, !241, !242, !243, !245, !246, !247, !249, !250, !251, !253, !254, !255, !257, !258, !259, !261, !262, !263, !265, !266, !267, !269, !270, !271, !273, !274, !275, !277, !278, !279, !281, !282, !283, !285, !286, !287, !289, !290, !291, !293, !294, !295, !297, !298, !299, !301, !302, !303, !305, !306, !307, !309, !310, !311, !313, !314, !315, !317, !318, !319, !321, !322, !323, !325, !326, !327, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !342, !343, !345, !346, !347, !349, !350, !351, !353, !354, !355, !357, !358, !359, !361, !362, !363, !365, !366, !368, !369, !370, !372, !373, !374, !376, !377, !379, !380, !381, !383, !384, !385, !387, !388, !389, !390, !392, !393, !395, !396, !397, !399, !400, !401, !403, !404, !405, !407, !408, !409, !410, !411, !413, !414, !416, !417, !418, !420, !421, !422, !424, !425, !427, !428, !429, !431, !432, !433, !435, !436, !438, !439, !440, !442, !443, !444, !445, !447, !448, !449, !451, !452, !453, !455, !456, !457, !459, !461, !463, !465, !467, !469, !471, !472, !473, !475, !476, !477, !479, !480, !481, !483, !484, !485, !486, !488, !489, !490, !492, !493, !494, !496, !497, !498, !499, !500, !501, !503, !504, !505, !507, !508, !509, !511, !512, !513, !515, !516, !517, !519, !520, !521, !523, !524, !525, !527, !528, !529, !531, !532, !533, !535, !536, !538, !539, !540, !542, !543, !544, !546, !547, !548, !550, !551, !552, !554, !555, !556, !558, !559, !560, !562, !563, !564, !566, !567, !568, !570, !571}
!llvm.module.flags = !{!572, !573, !574, !575, !576, !577, !578, !579}
!llvm.ident = !{!580}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 45, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype292, !1, !"__UNIQUE_ID_debugtype292", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug293, !4, !"__UNIQUE_ID_debug293", i1 false, i1 false}
!4 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 46, i32 1}
!5 = !{ptr @__param_no_poweroff, !6, !"__param_no_poweroff", i1 false, i1 false}
!6 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 49, i32 1}
!7 = !{ptr @__UNIQUE_ID_no_powerofftype294, !6, !"__UNIQUE_ID_no_powerofftype294", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_no_poweroff295, !9, !"__UNIQUE_ID_no_poweroff295", i1 false, i1 false}
!9 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 50, i32 1}
!10 = !{ptr @__param_audio_std, !11, !"__param_audio_std", i1 false, i1 false}
!11 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 55, i32 1}
!12 = !{ptr @__UNIQUE_ID_audio_stdtype296, !11, !"__UNIQUE_ID_audio_stdtype296", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_audio_std297, !14, !"__UNIQUE_ID_audio_std297", i1 false, i1 false}
!14 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 56, i32 1}
!15 = !{ptr @__param_firmware_name, !16, !"__param_firmware_name", i1 false, i1 false}
!16 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 68, i32 1}
!17 = !{ptr @__UNIQUE_ID_firmware_nametype298, !16, !"__UNIQUE_ID_firmware_nametype298", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_firmware_name299, !19, !"__UNIQUE_ID_firmware_name299", i1 false, i1 false}
!19 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 69, i32 1}
!20 = !{ptr @.str, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1463, i32 3}
!22 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xc2028_attach._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @xc2028_attach._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1469, i32 3}
!28 = !{ptr @xc2028_attach._entry.3, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @xc2028_attach._entry_ptr.5, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1475, i32 13}
!32 = !{ptr @xc2028_attach._entry.6, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @xc2028_attach._entry_ptr.8, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @xc2028_attach._entry.10, !31, !"_entry", i1 false, i1 false}
!37 = !{ptr @xc2028_attach._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @xc2028_attach.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1487, i32 3}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1500, i32 2}
!43 = !{ptr @xc2028_attach._entry.14, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @xc2028_attach._entry_ptr.16, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @__ksymtab_xc2028_attach, !47, !"__ksymtab_xc2028_attach", i1 false, i1 false}
!47 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1515, i32 1}
!48 = !{ptr @__UNIQUE_ID_description300, !49, !"__UNIQUE_ID_description300", i1 false, i1 false}
!49 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1517, i32 1}
!50 = !{ptr @__UNIQUE_ID_author301, !51, !"__UNIQUE_ID_author301", i1 false, i1 false}
!51 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1518, i32 1}
!52 = !{ptr @__UNIQUE_ID_author302, !53, !"__UNIQUE_ID_author302", i1 false, i1 false}
!53 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1519, i32 1}
!54 = !{ptr @__UNIQUE_ID_file303, !55, !"__UNIQUE_ID_file303", i1 false, i1 false}
!55 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1520, i32 1}
!56 = !{ptr @__UNIQUE_ID_license304, !55, !"__UNIQUE_ID_license304", i1 false, i1 false}
!57 = !{ptr @__UNIQUE_ID_firmware305, !58, !"__UNIQUE_ID_firmware305", i1 false, i1 false}
!58 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1521, i32 1}
!59 = !{ptr @__UNIQUE_ID_firmware306, !60, !"__UNIQUE_ID_firmware306", i1 false, i1 false}
!60 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1522, i32 1}
!61 = !{ptr @debug, !62, !"debug", i1 false, i1 false}
!62 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 44, i32 12}
!63 = !{ptr @no_poweroff, !64, !"no_poweroff", i1 false, i1 false}
!64 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 48, i32 12}
!65 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!66 = !{ptr @__param_str_no_poweroff, !6, !"__param_str_no_poweroff", i1 false, i1 false}
!67 = !{ptr @__param_str_audio_std, !11, !"__param_str_audio_std", i1 false, i1 false}
!68 = !{ptr @__param_string_audio_std, !11, !"__param_string_audio_std", i1 false, i1 false}
!69 = !{ptr @audio_std, !70, !"audio_std", i1 false, i1 false}
!70 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 54, i32 13}
!71 = !{ptr @__param_str_firmware_name, !16, !"__param_str_firmware_name", i1 false, i1 false}
!72 = !{ptr @__param_string_firmware_name, !16, !"__param_string_firmware_name", i1 false, i1 false}
!73 = !{ptr @firmware_name, !74, !"firmware_name", i1 false, i1 false}
!74 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 67, i32 13}
!75 = !{ptr @.str.18, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 73, i32 8}
!77 = !{ptr @.str.19, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @xc2028_list_mutex, !76, !"xc2028_list_mutex", i1 false, i1 false}
!79 = !{ptr @hybrid_tuner_instance_list, !80, !"hybrid_tuner_instance_list", i1 false, i1 false}
!80 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 72, i32 8}
!81 = !{ptr @xc2028_dvb_tuner_ops, !82, !"xc2028_dvb_tuner_ops", i1 false, i1 false}
!82 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1438, i32 35}
!83 = !{ptr @.str.20, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1303, i32 2}
!85 = !{ptr @.str.21, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @xc2028_sleep._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @xc2028_sleep._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1305, i32 3}
!90 = !{ptr @xc2028_sleep._entry.22, !89, !"_entry", i1 false, i1 false}
!91 = !{ptr @xc2028_sleep._entry_ptr.24, !89, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @xc2028_sleep._val, !93, !"_val", i1 false, i1 false}
!93 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1312, i32 8}
!94 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @xc2028_sleep._entry.25, !93, !"_entry", i1 false, i1 false}
!96 = !{ptr @xc2028_sleep._entry_ptr.27, !93, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @xc2028_sleep._val.28, !98, !"_val", i1 false, i1 false}
!98 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1314, i32 8}
!99 = !{ptr @xc2028_sleep._entry.29, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @xc2028_sleep._entry_ptr.30, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1198, i32 2}
!103 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @xc2028_set_params._entry, !102, !"_entry", i1 false, i1 false}
!105 = !{ptr @xc2028_set_params._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.33, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1019, i32 2}
!108 = !{ptr @generic_set_freq._entry, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @generic_set_freq._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.35, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1023, i32 2}
!112 = !{ptr @generic_set_freq._entry.34, !111, !"_entry", i1 false, i1 false}
!113 = !{ptr @generic_set_freq._entry_ptr.36, !111, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @generic_set_freq._val, !115, !"_val", i1 false, i1 false}
!115 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1037, i32 8}
!116 = !{ptr @generic_set_freq._entry.37, !115, !"_entry", i1 false, i1 false}
!117 = !{ptr @generic_set_freq._entry_ptr.38, !115, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @.str.40, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1110, i32 3}
!120 = !{ptr @generic_set_freq._entry.39, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @generic_set_freq._entry_ptr.41, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @generic_set_freq._val.42, !123, !"_val", i1 false, i1 false}
!123 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1118, i32 8}
!124 = !{ptr @generic_set_freq._entry.43, !123, !"_entry", i1 false, i1 false}
!125 = !{ptr @generic_set_freq._entry_ptr.44, !123, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @generic_set_freq._val.45, !127, !"_val", i1 false, i1 false}
!127 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1120, i32 8}
!128 = !{ptr @generic_set_freq._entry.46, !127, !"_entry", i1 false, i1 false}
!129 = !{ptr @generic_set_freq._entry_ptr.47, !127, !"_entry_ptr", i1 false, i1 false}
!130 = !{ptr @.str.49, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1139, i32 7}
!132 = !{ptr @generic_set_freq._entry.48, !131, !"_entry", i1 false, i1 false}
!133 = !{ptr @generic_set_freq._entry_ptr.50, !131, !"_entry_ptr", i1 false, i1 false}
!134 = !{ptr @.str.52, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1146, i32 2}
!136 = !{ptr @generic_set_freq._entry.51, !135, !"_entry", i1 false, i1 false}
!137 = !{ptr @generic_set_freq._entry_ptr.53, !135, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @.str.54, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 726, i32 2}
!140 = !{ptr @check_firmware._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @check_firmware._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.56, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 743, i32 2}
!144 = !{ptr @check_firmware._entry.55, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @check_firmware._entry_ptr.57, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.59, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 746, i32 3}
!148 = !{ptr @check_firmware._entry.58, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @check_firmware._entry_ptr.60, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @.str.62, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 749, i32 4}
!152 = !{ptr @check_firmware._entry.61, !151, !"_entry", i1 false, i1 false}
!153 = !{ptr @check_firmware._entry_ptr.63, !151, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.65, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 751, i32 4}
!156 = !{ptr @check_firmware._entry.64, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @check_firmware._entry_ptr.66, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 753, i32 4}
!160 = !{ptr @check_firmware._entry.67, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @check_firmware._entry_ptr.69, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.71, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 754, i32 3}
!164 = !{ptr @check_firmware._entry.70, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @check_firmware._entry_ptr.72, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.74, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 764, i32 3}
!168 = !{ptr @check_firmware._entry.73, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @check_firmware._entry_ptr.75, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.77, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 780, i32 3}
!172 = !{ptr @check_firmware._entry.76, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @check_firmware._entry_ptr.78, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.80, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 786, i32 2}
!176 = !{ptr @check_firmware._entry.79, !175, !"_entry", i1 false, i1 false}
!177 = !{ptr @check_firmware._entry_ptr.81, !175, !"_entry_ptr", i1 false, i1 false}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 793, i32 3}
!180 = !{ptr @check_firmware._entry.82, !179, !"_entry", i1 false, i1 false}
!181 = !{ptr @check_firmware._entry_ptr.84, !179, !"_entry_ptr", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 805, i32 3}
!184 = !{ptr @check_firmware._entry.85, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @check_firmware._entry_ptr.87, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.89, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 822, i32 3}
!188 = !{ptr @check_firmware._entry.88, !187, !"_entry", i1 false, i1 false}
!189 = !{ptr @check_firmware._entry_ptr.90, !187, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.92, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 830, i32 2}
!192 = !{ptr @check_firmware._entry.91, !191, !"_entry", i1 false, i1 false}
!193 = !{ptr @check_firmware._entry_ptr.93, !191, !"_entry_ptr", i1 false, i1 false}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 838, i32 3}
!196 = !{ptr @check_firmware._entry.94, !195, !"_entry", i1 false, i1 false}
!197 = !{ptr @check_firmware._entry_ptr.96, !195, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.98, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 842, i32 2}
!200 = !{ptr @check_firmware._entry.97, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @check_firmware._entry_ptr.99, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.101, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 853, i32 4}
!204 = !{ptr @check_firmware._entry.100, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @check_firmware._entry_ptr.102, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.104, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 856, i32 4}
!208 = !{ptr @check_firmware._entry.103, !207, !"_entry", i1 false, i1 false}
!209 = !{ptr @check_firmware._entry_ptr.105, !207, !"_entry_ptr", i1 false, i1 false}
!210 = !{ptr @.str.107, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 867, i32 3}
!212 = !{ptr @check_firmware._entry.106, !211, !"_entry", i1 false, i1 false}
!213 = !{ptr @check_firmware._entry_ptr.108, !211, !"_entry_ptr", i1 false, i1 false}
!214 = !{ptr @.str.110, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 891, i32 3}
!216 = !{ptr @check_firmware._entry.109, !215, !"_entry", i1 false, i1 false}
!217 = !{ptr @check_firmware._entry_ptr.111, !215, !"_entry_ptr", i1 false, i1 false}
!218 = !{ptr @.str.112, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 179, i32 3}
!220 = !{ptr @.str.113, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @dump_firm_type_and_int_freq._entry, !219, !"_entry", i1 false, i1 false}
!222 = !{ptr @dump_firm_type_and_int_freq._entry_ptr, !219, !"_entry_ptr", i1 false, i1 false}
!223 = !{ptr @.str.115, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 181, i32 3}
!225 = !{ptr @dump_firm_type_and_int_freq._entry.114, !224, !"_entry", i1 false, i1 false}
!226 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.116, !224, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.118, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 183, i32 3}
!229 = !{ptr @dump_firm_type_and_int_freq._entry.117, !228, !"_entry", i1 false, i1 false}
!230 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.119, !228, !"_entry_ptr", i1 false, i1 false}
!231 = !{ptr @.str.121, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 185, i32 3}
!233 = !{ptr @dump_firm_type_and_int_freq._entry.120, !232, !"_entry", i1 false, i1 false}
!234 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.122, !232, !"_entry_ptr", i1 false, i1 false}
!235 = !{ptr @.str.124, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 187, i32 3}
!237 = !{ptr @dump_firm_type_and_int_freq._entry.123, !236, !"_entry", i1 false, i1 false}
!238 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.125, !236, !"_entry_ptr", i1 false, i1 false}
!239 = !{ptr @.str.127, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 189, i32 3}
!241 = !{ptr @dump_firm_type_and_int_freq._entry.126, !240, !"_entry", i1 false, i1 false}
!242 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.128, !240, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @.str.130, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 191, i32 3}
!245 = !{ptr @dump_firm_type_and_int_freq._entry.129, !244, !"_entry", i1 false, i1 false}
!246 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.131, !244, !"_entry_ptr", i1 false, i1 false}
!247 = !{ptr @.str.133, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 193, i32 3}
!249 = !{ptr @dump_firm_type_and_int_freq._entry.132, !248, !"_entry", i1 false, i1 false}
!250 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.134, !248, !"_entry_ptr", i1 false, i1 false}
!251 = !{ptr @.str.136, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 195, i32 3}
!253 = !{ptr @dump_firm_type_and_int_freq._entry.135, !252, !"_entry", i1 false, i1 false}
!254 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.137, !252, !"_entry_ptr", i1 false, i1 false}
!255 = !{ptr @.str.139, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 197, i32 3}
!257 = !{ptr @dump_firm_type_and_int_freq._entry.138, !256, !"_entry", i1 false, i1 false}
!258 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.140, !256, !"_entry_ptr", i1 false, i1 false}
!259 = !{ptr @.str.142, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 199, i32 3}
!261 = !{ptr @dump_firm_type_and_int_freq._entry.141, !260, !"_entry", i1 false, i1 false}
!262 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.143, !260, !"_entry_ptr", i1 false, i1 false}
!263 = !{ptr @.str.145, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 201, i32 3}
!265 = !{ptr @dump_firm_type_and_int_freq._entry.144, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.146, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.148, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 203, i32 3}
!269 = !{ptr @dump_firm_type_and_int_freq._entry.147, !268, !"_entry", i1 false, i1 false}
!270 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.149, !268, !"_entry_ptr", i1 false, i1 false}
!271 = !{ptr @.str.151, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 205, i32 3}
!273 = !{ptr @dump_firm_type_and_int_freq._entry.150, !272, !"_entry", i1 false, i1 false}
!274 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.152, !272, !"_entry_ptr", i1 false, i1 false}
!275 = !{ptr @.str.154, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 207, i32 3}
!277 = !{ptr @dump_firm_type_and_int_freq._entry.153, !276, !"_entry", i1 false, i1 false}
!278 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.155, !276, !"_entry_ptr", i1 false, i1 false}
!279 = !{ptr @.str.157, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 209, i32 3}
!281 = !{ptr @dump_firm_type_and_int_freq._entry.156, !280, !"_entry", i1 false, i1 false}
!282 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.158, !280, !"_entry_ptr", i1 false, i1 false}
!283 = !{ptr @.str.160, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 211, i32 3}
!285 = !{ptr @dump_firm_type_and_int_freq._entry.159, !284, !"_entry", i1 false, i1 false}
!286 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.161, !284, !"_entry_ptr", i1 false, i1 false}
!287 = !{ptr @.str.163, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 213, i32 3}
!289 = !{ptr @dump_firm_type_and_int_freq._entry.162, !288, !"_entry", i1 false, i1 false}
!290 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.164, !288, !"_entry_ptr", i1 false, i1 false}
!291 = !{ptr @.str.166, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 215, i32 3}
!293 = !{ptr @dump_firm_type_and_int_freq._entry.165, !292, !"_entry", i1 false, i1 false}
!294 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.167, !292, !"_entry_ptr", i1 false, i1 false}
!295 = !{ptr @.str.169, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 217, i32 3}
!297 = !{ptr @dump_firm_type_and_int_freq._entry.168, !296, !"_entry", i1 false, i1 false}
!298 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.170, !296, !"_entry_ptr", i1 false, i1 false}
!299 = !{ptr @.str.172, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 219, i32 3}
!301 = !{ptr @dump_firm_type_and_int_freq._entry.171, !300, !"_entry", i1 false, i1 false}
!302 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.173, !300, !"_entry_ptr", i1 false, i1 false}
!303 = !{ptr @.str.175, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 221, i32 3}
!305 = !{ptr @dump_firm_type_and_int_freq._entry.174, !304, !"_entry", i1 false, i1 false}
!306 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.176, !304, !"_entry_ptr", i1 false, i1 false}
!307 = !{ptr @.str.178, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 223, i32 3}
!309 = !{ptr @dump_firm_type_and_int_freq._entry.177, !308, !"_entry", i1 false, i1 false}
!310 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.179, !308, !"_entry_ptr", i1 false, i1 false}
!311 = !{ptr @.str.181, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 225, i32 3}
!313 = !{ptr @dump_firm_type_and_int_freq._entry.180, !312, !"_entry", i1 false, i1 false}
!314 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.182, !312, !"_entry_ptr", i1 false, i1 false}
!315 = !{ptr @.str.184, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 227, i32 3}
!317 = !{ptr @dump_firm_type_and_int_freq._entry.183, !316, !"_entry", i1 false, i1 false}
!318 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.185, !316, !"_entry_ptr", i1 false, i1 false}
!319 = !{ptr @.str.187, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 229, i32 3}
!321 = !{ptr @dump_firm_type_and_int_freq._entry.186, !320, !"_entry", i1 false, i1 false}
!322 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.188, !320, !"_entry_ptr", i1 false, i1 false}
!323 = !{ptr @.str.190, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 231, i32 3}
!325 = !{ptr @dump_firm_type_and_int_freq._entry.189, !324, !"_entry", i1 false, i1 false}
!326 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.191, !324, !"_entry_ptr", i1 false, i1 false}
!327 = !{ptr @.str.193, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 233, i32 3}
!329 = !{ptr @dump_firm_type_and_int_freq._entry.192, !328, !"_entry", i1 false, i1 false}
!330 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.194, !328, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.196, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 235, i32 3}
!333 = !{ptr @dump_firm_type_and_int_freq._entry.195, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.197, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.199, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 237, i32 3}
!337 = !{ptr @dump_firm_type_and_int_freq._entry.198, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.200, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @.str.202, !340, !"<string literal>", i1 false, i1 false}
!340 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 239, i32 3}
!341 = !{ptr @dump_firm_type_and_int_freq._entry.201, !340, !"_entry", i1 false, i1 false}
!342 = !{ptr @dump_firm_type_and_int_freq._entry_ptr.203, !340, !"_entry_ptr", i1 false, i1 false}
!343 = !{ptr @.str.204, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 552, i32 2}
!345 = !{ptr @load_firmware._entry, !344, !"_entry", i1 false, i1 false}
!346 = !{ptr @load_firmware._entry_ptr, !344, !"_entry_ptr", i1 false, i1 false}
!347 = !{ptr @.str.206, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 558, i32 2}
!349 = !{ptr @load_firmware._entry.205, !348, !"_entry", i1 false, i1 false}
!350 = !{ptr @load_firmware._entry_ptr.207, !348, !"_entry_ptr", i1 false, i1 false}
!351 = !{ptr @.str.209, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 560, i32 2}
!353 = !{ptr @load_firmware._entry.208, !352, !"_entry", i1 false, i1 false}
!354 = !{ptr @load_firmware._entry_ptr.210, !352, !"_entry_ptr", i1 false, i1 false}
!355 = !{ptr @.str.212, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 571, i32 4}
!357 = !{ptr @load_firmware._entry.211, !356, !"_entry", i1 false, i1 false}
!358 = !{ptr @load_firmware._entry_ptr.213, !356, !"_entry_ptr", i1 false, i1 false}
!359 = !{ptr @.str.215, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 585, i32 5}
!361 = !{ptr @load_firmware._entry.214, !360, !"_entry", i1 false, i1 false}
!362 = !{ptr @load_firmware._entry_ptr.216, !360, !"_entry_ptr", i1 false, i1 false}
!363 = !{ptr @load_firmware._entry.217, !364, !"_entry", i1 false, i1 false}
!364 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 596, i32 6}
!365 = !{ptr @load_firmware._entry_ptr.218, !364, !"_entry_ptr", i1 false, i1 false}
!366 = !{ptr @.str.220, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 602, i32 5}
!368 = !{ptr @load_firmware._entry.219, !367, !"_entry", i1 false, i1 false}
!369 = !{ptr @load_firmware._entry_ptr.221, !367, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.223, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 617, i32 4}
!372 = !{ptr @load_firmware._entry.222, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @load_firmware._entry_ptr.224, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @load_firmware._entry.225, !375, !"_entry", i1 false, i1 false}
!375 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 633, i32 9}
!376 = !{ptr @load_firmware._entry_ptr.226, !375, !"_entry_ptr", i1 false, i1 false}
!377 = !{ptr @.str.228, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 635, i32 5}
!379 = !{ptr @load_firmware._entry.227, !378, !"_entry", i1 false, i1 false}
!380 = !{ptr @load_firmware._entry_ptr.229, !378, !"_entry_ptr", i1 false, i1 false}
!381 = !{ptr @.str.231, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 646, i32 4}
!383 = !{ptr @load_firmware._entry.230, !382, !"_entry", i1 false, i1 false}
!384 = !{ptr @load_firmware._entry_ptr.232, !382, !"_entry_ptr", i1 false, i1 false}
!385 = !{ptr @.str.233, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 438, i32 2}
!387 = !{ptr @.str.234, !386, !"<string literal>", i1 false, i1 false}
!388 = !{ptr @seek_firmware._entry, !386, !"_entry", i1 false, i1 false}
!389 = !{ptr @seek_firmware._entry_ptr, !386, !"_entry_ptr", i1 false, i1 false}
!390 = !{ptr @seek_firmware._entry.235, !391, !"_entry", i1 false, i1 false}
!391 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 441, i32 3}
!392 = !{ptr @seek_firmware._entry_ptr.236, !391, !"_entry_ptr", i1 false, i1 false}
!393 = !{ptr @.str.238, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 446, i32 3}
!395 = !{ptr @seek_firmware._entry.237, !394, !"_entry", i1 false, i1 false}
!396 = !{ptr @seek_firmware._entry_ptr.239, !394, !"_entry_ptr", i1 false, i1 false}
!397 = !{ptr @.str.241, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 498, i32 3}
!399 = !{ptr @seek_firmware._entry.240, !398, !"_entry", i1 false, i1 false}
!400 = !{ptr @seek_firmware._entry_ptr.242, !398, !"_entry_ptr", i1 false, i1 false}
!401 = !{ptr @.str.244, !402, !"<string literal>", i1 false, i1 false}
!402 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 501, i32 3}
!403 = !{ptr @seek_firmware._entry.243, !402, !"_entry", i1 false, i1 false}
!404 = !{ptr @seek_firmware._entry_ptr.245, !402, !"_entry_ptr", i1 false, i1 false}
!405 = !{ptr @.str.247, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 516, i32 2}
!407 = !{ptr @seek_firmware._entry.246, !406, !"_entry", i1 false, i1 false}
!408 = !{ptr @seek_firmware._entry_ptr.248, !406, !"_entry_ptr", i1 false, i1 false}
!409 = !{ptr @.str.249, !406, !"<string literal>", i1 false, i1 false}
!410 = !{ptr @.str.250, !406, !"<string literal>", i1 false, i1 false}
!411 = !{ptr @seek_firmware._entry.251, !412, !"_entry", i1 false, i1 false}
!412 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 519, i32 3}
!413 = !{ptr @seek_firmware._entry_ptr.252, !412, !"_entry_ptr", i1 false, i1 false}
!414 = !{ptr @.str.253, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 660, i32 2}
!416 = !{ptr @load_scode._entry, !415, !"_entry", i1 false, i1 false}
!417 = !{ptr @load_scode._entry_ptr, !415, !"_entry_ptr", i1 false, i1 false}
!418 = !{ptr @.str.255, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 691, i32 2}
!420 = !{ptr @load_scode._entry.254, !419, !"_entry", i1 false, i1 false}
!421 = !{ptr @load_scode._entry_ptr.256, !419, !"_entry_ptr", i1 false, i1 false}
!422 = !{ptr @load_scode._entry.257, !423, !"_entry", i1 false, i1 false}
!423 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 694, i32 2}
!424 = !{ptr @load_scode._entry_ptr.258, !423, !"_entry_ptr", i1 false, i1 false}
!425 = !{ptr @load_scode._val, !426, !"_val", i1 false, i1 false}
!426 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 698, i32 8}
!427 = !{ptr @load_scode._entry.259, !426, !"_entry", i1 false, i1 false}
!428 = !{ptr @load_scode._entry_ptr.260, !426, !"_entry_ptr", i1 false, i1 false}
!429 = !{ptr @load_scode._val.261, !430, !"_val", i1 false, i1 false}
!430 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 700, i32 8}
!431 = !{ptr @load_scode._entry.262, !430, !"_entry", i1 false, i1 false}
!432 = !{ptr @load_scode._entry_ptr.263, !430, !"_entry_ptr", i1 false, i1 false}
!433 = !{ptr @load_scode._entry.264, !434, !"_entry", i1 false, i1 false}
!434 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 704, i32 7}
!435 = !{ptr @load_scode._entry_ptr.265, !434, !"_entry_ptr", i1 false, i1 false}
!436 = !{ptr @load_scode._val.266, !437, !"_val", i1 false, i1 false}
!437 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 708, i32 7}
!438 = !{ptr @load_scode._entry.267, !437, !"_entry", i1 false, i1 false}
!439 = !{ptr @load_scode._entry_ptr.268, !437, !"_entry_ptr", i1 false, i1 false}
!440 = !{ptr @.str.269, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 163, i32 2}
!442 = !{ptr @.str.270, !441, !"<string literal>", i1 false, i1 false}
!443 = !{ptr @xc2028_get_reg._entry, !441, !"_entry", i1 false, i1 false}
!444 = !{ptr @xc2028_get_reg._entry_ptr, !441, !"_entry_ptr", i1 false, i1 false}
!445 = !{ptr @.str.272, !446, !"<string literal>", i1 false, i1 false}
!446 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 168, i32 6}
!447 = !{ptr @xc2028_get_reg._entry.271, !446, !"_entry", i1 false, i1 false}
!448 = !{ptr @xc2028_get_reg._entry_ptr.273, !446, !"_entry_ptr", i1 false, i1 false}
!449 = !{ptr @.str.274, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 279, i32 2}
!451 = !{ptr @free_firmware._entry, !450, !"_entry", i1 false, i1 false}
!452 = !{ptr @free_firmware._entry_ptr, !450, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.275, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1163, i32 2}
!455 = !{ptr @xc2028_set_analog_freq._entry, !454, !"_entry", i1 false, i1 false}
!456 = !{ptr @xc2028_set_analog_freq._entry_ptr, !454, !"_entry_ptr", i1 false, i1 false}
!457 = !{ptr @.str.276, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 244, i32 28}
!459 = !{ptr @.str.277, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 246, i32 28}
!461 = !{ptr @.str.278, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 248, i32 28}
!463 = !{ptr @.str.279, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 250, i32 28}
!465 = !{ptr @.str.280, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 252, i32 28}
!467 = !{ptr @.str.281, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 254, i32 28}
!469 = !{ptr @.str.282, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1349, i32 2}
!471 = !{ptr @xc2028_get_frequency._entry, !470, !"_entry", i1 false, i1 false}
!472 = !{ptr @xc2028_get_frequency._entry_ptr, !470, !"_entry_ptr", i1 false, i1 false}
!473 = !{ptr @.str.283, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 909, i32 2}
!475 = !{ptr @xc2028_signal._entry, !474, !"_entry", i1 false, i1 false}
!476 = !{ptr @xc2028_signal._entry_ptr, !474, !"_entry_ptr", i1 false, i1 false}
!477 = !{ptr @.str.285, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 952, i32 2}
!479 = !{ptr @xc2028_signal._entry.284, !478, !"_entry", i1 false, i1 false}
!480 = !{ptr @xc2028_signal._entry_ptr.286, !478, !"_entry_ptr", i1 false, i1 false}
!481 = !{ptr @.str.287, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 998, i32 2}
!483 = !{ptr @.str.288, !482, !"<string literal>", i1 false, i1 false}
!484 = !{ptr @xc2028_get_afc._entry, !482, !"_entry", i1 false, i1 false}
!485 = !{ptr @xc2028_get_afc._entry_ptr, !482, !"_entry_ptr", i1 false, i1 false}
!486 = !{ptr @.str.289, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1389, i32 2}
!488 = !{ptr @xc2028_set_config._entry, !487, !"_entry", i1 false, i1 false}
!489 = !{ptr @xc2028_set_config._entry_ptr, !487, !"_entry_ptr", i1 false, i1 false}
!490 = !{ptr @.str.291, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1426, i32 4}
!492 = !{ptr @xc2028_set_config._entry.290, !491, !"_entry", i1 false, i1 false}
!493 = !{ptr @xc2028_set_config._entry_ptr.292, !491, !"_entry_ptr", i1 false, i1 false}
!494 = !{ptr @.str.293, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1367, i32 2}
!496 = !{ptr @.str.294, !495, !"<string literal>", i1 false, i1 false}
!497 = !{ptr @load_firmware_cb._entry, !495, !"_entry", i1 false, i1 false}
!498 = !{ptr @load_firmware_cb._entry_ptr, !495, !"_entry_ptr", i1 false, i1 false}
!499 = !{ptr @.str.295, !495, !"<string literal>", i1 false, i1 false}
!500 = !{ptr @.str.296, !495, !"<string literal>", i1 false, i1 false}
!501 = !{ptr @.str.298, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1369, i32 3}
!503 = !{ptr @load_firmware_cb._entry.297, !502, !"_entry", i1 false, i1 false}
!504 = !{ptr @load_firmware_cb._entry_ptr.299, !502, !"_entry_ptr", i1 false, i1 false}
!505 = !{ptr @.str.300, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 310, i32 2}
!507 = !{ptr @load_all_firmwares._entry, !506, !"_entry", i1 false, i1 false}
!508 = !{ptr @load_all_firmwares._entry_ptr, !506, !"_entry_ptr", i1 false, i1 false}
!509 = !{ptr @.str.302, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 316, i32 3}
!511 = !{ptr @load_all_firmwares._entry.301, !510, !"_entry", i1 false, i1 false}
!512 = !{ptr @load_all_firmwares._entry_ptr.303, !510, !"_entry_ptr", i1 false, i1 false}
!513 = !{ptr @.str.305, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 331, i32 2}
!515 = !{ptr @load_all_firmwares._entry.304, !514, !"_entry", i1 false, i1 false}
!516 = !{ptr @load_all_firmwares._entry_ptr.306, !514, !"_entry_ptr", i1 false, i1 false}
!517 = !{ptr @.str.308, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 337, i32 3}
!519 = !{ptr @load_all_firmwares._entry.307, !518, !"_entry", i1 false, i1 false}
!520 = !{ptr @load_all_firmwares._entry_ptr.309, !518, !"_entry_ptr", i1 false, i1 false}
!521 = !{ptr @.str.311, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 351, i32 4}
!523 = !{ptr @load_all_firmwares._entry.310, !522, !"_entry", i1 false, i1 false}
!524 = !{ptr @load_all_firmwares._entry_ptr.312, !522, !"_entry_ptr", i1 false, i1 false}
!525 = !{ptr @.str.314, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 376, i32 4}
!527 = !{ptr @load_all_firmwares._entry.313, !526, !"_entry", i1 false, i1 false}
!528 = !{ptr @load_all_firmwares._entry_ptr.315, !526, !"_entry_ptr", i1 false, i1 false}
!529 = !{ptr @.str.317, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 378, i32 4}
!531 = !{ptr @load_all_firmwares._entry.316, !530, !"_entry", i1 false, i1 false}
!532 = !{ptr @load_all_firmwares._entry_ptr.318, !530, !"_entry_ptr", i1 false, i1 false}
!533 = !{ptr @load_all_firmwares._entry.319, !534, !"_entry", i1 false, i1 false}
!534 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 386, i32 4}
!535 = !{ptr @load_all_firmwares._entry_ptr.320, !534, !"_entry_ptr", i1 false, i1 false}
!536 = !{ptr @.str.322, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 390, i32 3}
!538 = !{ptr @load_all_firmwares._entry.321, !537, !"_entry", i1 false, i1 false}
!539 = !{ptr @load_all_firmwares._entry_ptr.323, !537, !"_entry_ptr", i1 false, i1 false}
!540 = !{ptr @.str.325, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 393, i32 4}
!542 = !{ptr @load_all_firmwares._entry.324, !541, !"_entry", i1 false, i1 false}
!543 = !{ptr @load_all_firmwares._entry_ptr.326, !541, !"_entry_ptr", i1 false, i1 false}
!544 = !{ptr @.str.328, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 406, i32 3}
!546 = !{ptr @load_all_firmwares._entry.327, !545, !"_entry", i1 false, i1 false}
!547 = !{ptr @load_all_firmwares._entry_ptr.329, !545, !"_entry_ptr", i1 false, i1 false}
!548 = !{ptr @.str.331, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 413, i32 2}
!550 = !{ptr @load_all_firmwares._entry.330, !549, !"_entry", i1 false, i1 false}
!551 = !{ptr @load_all_firmwares._entry_ptr.332, !549, !"_entry_ptr", i1 false, i1 false}
!552 = !{ptr @.str.334, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 416, i32 2}
!554 = !{ptr @load_all_firmwares._entry.333, !553, !"_entry", i1 false, i1 false}
!555 = !{ptr @load_all_firmwares._entry_ptr.335, !553, !"_entry_ptr", i1 false, i1 false}
!556 = !{ptr @.str.337, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 419, i32 2}
!558 = !{ptr @load_all_firmwares._entry.336, !557, !"_entry", i1 false, i1 false}
!559 = !{ptr @load_all_firmwares._entry_ptr.338, !557, !"_entry_ptr", i1 false, i1 false}
!560 = !{ptr @.str.340, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 424, i32 3}
!562 = !{ptr @load_all_firmwares._entry.339, !561, !"_entry", i1 false, i1 false}
!563 = !{ptr @load_all_firmwares._entry_ptr.341, !561, !"_entry_ptr", i1 false, i1 false}
!564 = !{ptr @.str.342, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1328, i32 2}
!566 = !{ptr @xc2028_dvb_release._entry, !565, !"_entry", i1 false, i1 false}
!567 = !{ptr @xc2028_dvb_release._entry_ptr, !565, !"_entry_ptr", i1 false, i1 false}
!568 = !{ptr @.str.344, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/media/tuners/tuner-xc2028.c", i32 1337, i32 3}
!570 = !{ptr @xc2028_dvb_release._entry.343, !569, !"_entry", i1 false, i1 false}
!571 = !{ptr @xc2028_dvb_release._entry_ptr.345, !569, !"_entry_ptr", i1 false, i1 false}
!572 = !{i32 1, !"wchar_size", i32 2}
!573 = !{i32 1, !"min_enum_size", i32 4}
!574 = !{i32 8, !"branch-target-enforcement", i32 0}
!575 = !{i32 8, !"sign-return-address", i32 0}
!576 = !{i32 8, !"sign-return-address-all", i32 0}
!577 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!578 = !{i32 7, !"uwtable", i32 1}
!579 = !{i32 7, !"frame-pointer", i32 2}
!580 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!581 = !{!"auto-init"}
