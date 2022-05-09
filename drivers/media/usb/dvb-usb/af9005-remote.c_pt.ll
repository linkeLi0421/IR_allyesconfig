; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/af9005-remote.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/af9005-remote.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+rc_map_af9005_table\22, \22a\22\09"
module asm "\09.weak\09__crc_rc_map_af9005_table\09\09\09\09"
module asm "\09.long\09__crc_rc_map_af9005_table\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rc_map_af9005_table:\09\09\09\09\09"
module asm "\09.asciz \09\22rc_map_af9005_table\22\09\09\09\09\09"
module asm "__kstrtabns_rc_map_af9005_table:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+rc_map_af9005_table_size\22, \22a\22\09"
module asm "\09.weak\09__crc_rc_map_af9005_table_size\09\09\09\09"
module asm "\09.long\09__crc_rc_map_af9005_table_size\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_rc_map_af9005_table_size:\09\09\09\09\09"
module asm "\09.asciz \09\22rc_map_af9005_table_size\22\09\09\09\09\09"
module asm "__kstrtabns_rc_map_af9005_table_size:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+af9005_rc_decode\22, \22a\22\09"
module asm "\09.weak\09__crc_af9005_rc_decode\09\09\09\09"
module asm "\09.long\09__crc_af9005_rc_decode\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_af9005_rc_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22af9005_rc_decode\22\09\09\09\09\09"
module asm "__kstrtabns_af9005_rc_decode:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
%struct.rc_map_table = type { i64, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.134, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.131 }
%union.anon.131 = type { %struct.anon.133 }
%struct.anon.133 = type { i32, i32, i32 }
%struct.anon.134 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dvb_usb_adapter = type { ptr, %struct.dvb_usb_adapter_properties, i32, i8, i32, %struct.dvb_adapter, %struct.dmxdev, %struct.dvb_demux, %struct.dvb_net, [3 x %struct.dvb_usb_fe_adapter], i32, i32, ptr }
%struct.dvb_adapter = type { i32, %struct.list_head, %struct.list_head, ptr, [6 x i8], ptr, ptr, ptr, i32, ptr, %struct.mutex, %struct.mutex, ptr, ptr, ptr }
%struct.dmxdev = type { ptr, ptr, ptr, ptr, i32, i32, i8, ptr, %struct.dvb_ringbuffer, %struct.dvb_vb2_ctx, %struct.mutex, %struct.spinlock }
%struct.dvb_ringbuffer = type { ptr, i32, i32, i32, i32, %struct.wait_queue_head, %struct.spinlock }
%struct.dvb_vb2_ctx = type { %struct.vb2_queue, %struct.mutex, %struct.spinlock, %struct.list_head, ptr, i32, i32, i32, i32, i32, i32, i32, i32, [21 x i8] }
%struct.vb2_queue = type { i32, i32, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [8 x ptr], %struct.mutex, i32, i32, [32 x ptr], i32, %struct.list_head, i32, %struct.atomic_t, %struct.list_head, %struct.spinlock, %struct.wait_queue_head, i16, ptr, ptr, [32 x i8], i32, i32, i32, i32, i32 }
%struct.dvb_demux = type { %struct.dmx_demux, ptr, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, %struct.list_head, [20 x ptr], [20 x i16], %struct.list_head, [204 x i8], i32, %struct.mutex, %struct.spinlock, ptr, i64, i32, i32, i32 }
%struct.dmx_demux = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dvb_net = type { ptr, [10 x ptr], [10 x i32], i8, ptr, %struct.mutex }
%struct.dvb_usb_fe_adapter = type { ptr, ptr, ptr, %struct.usb_data_stream, i32, i32, ptr }
%struct.usb_data_stream = type { ptr, %struct.usb_data_stream_properties, i32, ptr, [10 x ptr], i32, i32, [10 x ptr], [10 x i32], i32, i32, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }

@__param_str_debug = internal constant [28 x i8] c"dvb_usb_af9005_remote.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_af9005_remote_debug = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_af9005_remote_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [41 x i8] c"dvb_usb_af9005_remote.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [75 x i8] c"dvb_usb_af9005_remote.parm=debug:enable (1) or disable (0) debug messages.\00", section ".modinfo", align 1
@rc_map_af9005_table = dso_local global { [36 x %struct.rc_map_table], [128 x i8] } { [36 x %struct.rc_map_table] [%struct.rc_map_table { i64 439, i32 116 }, %struct.rc_map_table { i64 423, i32 115 }, %struct.rc_map_table { i64 391, i32 402 }, %struct.rc_map_table { i64 383, i32 113 }, %struct.rc_map_table { i64 447, i32 114 }, %struct.rc_map_table { i64 319, i32 403 }, %struct.rc_map_table { i64 479, i32 2 }, %struct.rc_map_table { i64 351, i32 3 }, %struct.rc_map_table { i64 415, i32 4 }, %struct.rc_map_table { i64 287, i32 5 }, %struct.rc_map_table { i64 495, i32 6 }, %struct.rc_map_table { i64 367, i32 7 }, %struct.rc_map_table { i64 431, i32 8 }, %struct.rc_map_table { i64 295, i32 9 }, %struct.rc_map_table { i64 263, i32 10 }, %struct.rc_map_table { i64 463, i32 372 }, %struct.rc_map_table { i64 335, i32 11 }, %struct.rc_map_table { i64 399, i32 354 }, %struct.rc_map_table { i64 189, i32 116 }, %struct.rc_map_table { i64 125, i32 115 }, %struct.rc_map_table { i64 253, i32 402 }, %struct.rc_map_table { i64 157, i32 113 }, %struct.rc_map_table { i64 93, i32 114 }, %struct.rc_map_table { i64 221, i32 403 }, %struct.rc_map_table { i64 173, i32 2 }, %struct.rc_map_table { i64 109, i32 3 }, %struct.rc_map_table { i64 237, i32 4 }, %struct.rc_map_table { i64 141, i32 5 }, %struct.rc_map_table { i64 77, i32 6 }, %struct.rc_map_table { i64 205, i32 7 }, %struct.rc_map_table { i64 181, i32 8 }, %struct.rc_map_table { i64 117, i32 9 }, %struct.rc_map_table { i64 245, i32 10 }, %struct.rc_map_table { i64 149, i32 372 }, %struct.rc_map_table { i64 85, i32 11 }, %struct.rc_map_table { i64 213, i32 354 }], [128 x i8] zeroinitializer }, align 32
@rc_map_af9005_table_size = dso_local global { i32, [28 x i8] } { i32 36, [28 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 90, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"repeat key, event %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"af9005_rc_decode\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/media/usb/dvb-usb/af9005-remote.c\00", [54 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry_ptr = internal global ptr @af9005_rc_decode._entry, section ".printk_index", align 4
@af9005_rc_decode._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 94, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"repeated key ignored (non repeatable)\0A\00", [57 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry_ptr.5 = internal global ptr @af9005_rc_decode._entry.3, section ".printk_index", align 4
@af9005_rc_decode._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 107, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"key pressed, raw value %x\0A\00", [37 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry_ptr.8 = internal global ptr @af9005_rc_decode._entry.6, section ".printk_index", align 4
@af9005_rc_decode._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 110, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"doesn't start with 0xfe, ignored\0A\00", [62 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry_ptr.11 = internal global ptr @af9005_rc_decode._entry.9, section ".printk_index", align 4
@af9005_rc_decode._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.1, ptr @.str.2, i32 117, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"code != inverted code\0A\00", [41 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry_ptr.14 = internal global ptr @af9005_rc_decode._entry.12, section ".printk_index", align 4
@af9005_rc_decode._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 126, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"key pressed, event %x\0A\00", [41 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry_ptr.17 = internal global ptr @af9005_rc_decode._entry.15, section ".printk_index", align 4
@af9005_rc_decode._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.1, ptr @.str.2, i32 130, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"not found in table\0A\00", [44 x i8] zeroinitializer }, align 32
@af9005_rc_decode._entry_ptr.20 = internal global ptr @af9005_rc_decode._entry.18, section ".printk_index", align 4
@__kstrtab_rc_map_af9005_table = external dso_local constant [0 x i8], align 1
@__kstrtabns_rc_map_af9005_table = external dso_local constant [0 x i8], align 1
@__ksymtab_rc_map_af9005_table = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rc_map_af9005_table to i32), ptr @__kstrtab_rc_map_af9005_table, ptr @__kstrtabns_rc_map_af9005_table }, section "___ksymtab+rc_map_af9005_table", align 4
@__kstrtab_rc_map_af9005_table_size = external dso_local constant [0 x i8], align 1
@__kstrtabns_rc_map_af9005_table_size = external dso_local constant [0 x i8], align 1
@__ksymtab_rc_map_af9005_table_size = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @rc_map_af9005_table_size to i32), ptr @__kstrtab_rc_map_af9005_table_size, ptr @__kstrtabns_rc_map_af9005_table_size }, section "___ksymtab+rc_map_af9005_table_size", align 4
@__kstrtab_af9005_rc_decode = external dso_local constant [0 x i8], align 1
@__kstrtabns_af9005_rc_decode = external dso_local constant [0 x i8], align 1
@__ksymtab_af9005_rc_decode = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @af9005_rc_decode to i32), ptr @__kstrtab_af9005_rc_decode, ptr @__kstrtabns_af9005_rc_decode }, section "___ksymtab+af9005_rc_decode", align 4
@__UNIQUE_ID_author388 = internal constant [62 x i8] c"dvb_usb_af9005_remote.author=Luca Olivetti <luca@ventoso.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description389 = internal constant [102 x i8] c"dvb_usb_af9005_remote.description=Standard remote control decoder for Afatech 9005 DVB-T USB1.1 stick\00", section ".modinfo", align 1
@__UNIQUE_ID_version390 = internal constant [34 x i8] c"dvb_usb_af9005_remote.version=1.0\00", section ".modinfo", align 1
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dvb_usb_af9005_remote\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.21, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.22, ptr @.str.23 }, section "__modver", align 4
@__UNIQUE_ID_file391 = internal constant [75 x i8] c"dvb_usb_af9005_remote.file=drivers/media/usb/dvb-usb/dvb-usb-af9005-remote\00", section ".modinfo", align 1
@__UNIQUE_ID_license392 = internal constant [34 x i8] c"dvb_usb_af9005_remote.license=GPL\00", section ".modinfo", align 1
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 114, i64 115, i64 402, i64 403]
@___asan_gen_.24 = private unnamed_addr constant [28 x i8] c"dvb_usb_af9005_remote_debug\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 15, i32 12 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"rc_map_af9005_table\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 23, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant [25 x i8] c"rc_map_af9005_table_size\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 64, i32 5 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 89, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 94, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 107, i32 4 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 109, i32 5 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 117, i32 5 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 125, i32 6 }
@___asan_gen_.75 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 130, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [45 x i8] c"../drivers/media/usb/dvb-usb/af9005-remote.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 143, i32 1 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description389, ptr @__UNIQUE_ID_file391, ptr @__UNIQUE_ID_license392, ptr @__UNIQUE_ID_version390, ptr @__ksymtab_af9005_rc_decode, ptr @__ksymtab_rc_map_af9005_table, ptr @__ksymtab_rc_map_af9005_table_size, ptr @__modver_attr, ptr @__param_debug, ptr @af9005_rc_decode._entry, ptr @af9005_rc_decode._entry.12, ptr @af9005_rc_decode._entry.15, ptr @af9005_rc_decode._entry.18, ptr @af9005_rc_decode._entry.3, ptr @af9005_rc_decode._entry.6, ptr @af9005_rc_decode._entry.9, ptr @af9005_rc_decode._entry_ptr, ptr @af9005_rc_decode._entry_ptr.11, ptr @af9005_rc_decode._entry_ptr.14, ptr @af9005_rc_decode._entry_ptr.17, ptr @af9005_rc_decode._entry_ptr.20, ptr @af9005_rc_decode._entry_ptr.5, ptr @af9005_rc_decode._entry_ptr.8, ptr @dvb_usb_af9005_remote_debug, ptr @rc_map_af9005_table, ptr @rc_map_af9005_table_size, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_af9005_remote_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_af9005_table to i32), i32 576, i32 704, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_map_af9005_table_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_decode._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_decode._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_decode._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_decode._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_decode._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_decode._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @af9005_rc_decode._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @af9005_rc_decode(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %data, i32 noundef %len, ptr nocapture noundef %event, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len)
  %cmp = icmp sgt i32 %len, 5
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data, align 1
  %conv = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %conv, 8
  %arrayidx3 = getelementptr i8, ptr %data, i32 1
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx3, align 1
  %conv4 = zext i8 %3 to i32
  %add = or i32 %shl, %conv4
  %arrayidx6 = getelementptr i8, ptr %data, i32 2
  %4 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx6, align 1
  %conv7 = zext i8 %5 to i32
  %shl8 = shl nuw nsw i32 %conv7, 8
  %arrayidx11 = getelementptr i8, ptr %data, i32 3
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx11, align 1
  %conv12 = zext i8 %7 to i32
  %add13 = or i32 %shl8, %conv12
  %mul = mul nuw nsw i32 %add13, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %add)
  %cmp17 = icmp ult i32 %mul, %add
  br i1 %cmp17, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %if.then
  %last_event = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 15
  %8 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %last_event, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %for.cond.3 [
    i32 115, label %for.cond.preheader.if.then25_crit_edge
    i32 114, label %for.cond.preheader.if.then25_crit_edge249
    i32 402, label %for.cond.preheader.if.then25_crit_edge250
    i32 403, label %for.cond.preheader.if.then25_crit_edge251
  ]

for.cond.preheader.if.then25_crit_edge251:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

for.cond.preheader.if.then25_crit_edge250:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

for.cond.preheader.if.then25_crit_edge249:        ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

for.cond.preheader.if.then25_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then25

for.cond.3:                                       ; preds = %for.cond.preheader
  %11 = load i32, ptr @dvb_usb_af9005_remote_debug, align 4
  %and33 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %for.cond.3.cleanup_crit_edge, label %do.end38

for.cond.3.cleanup_crit_edge:                     ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then25:                                        ; preds = %for.cond.preheader.if.then25_crit_edge, %for.cond.preheader.if.then25_crit_edge249, %for.cond.preheader.if.then25_crit_edge250, %for.cond.preheader.if.then25_crit_edge251
  %12 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %state, align 4
  %13 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %last_event, align 4
  %15 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %event, align 4
  %16 = load i32, ptr @dvb_usb_af9005_remote_debug, align 4
  %and = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then25.cleanup_crit_edge, label %do.end

if.then25.cleanup_crit_edge:                      ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #5
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %14) #6
  br label %cleanup

do.end38:                                         ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #5
  %call40 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #6
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 131, i32 %len)
  %cmp44 = icmp ugt i32 %len, 131
  br i1 %cmp44, label %if.else.for.body50_crit_edge, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.else.for.body50_crit_edge:                     ; preds = %if.else
  br label %for.body50

for.body50:                                       ; preds = %for.body50.for.body50_crit_edge, %if.else.for.body50_crit_edge
  %result.0239 = phi i32 [ %spec.select, %for.body50.for.body50_crit_edge ], [ 0, %if.else.for.body50_crit_edge ]
  %i.1238 = phi i32 [ %add87, %for.body50.for.body50_crit_edge ], [ 4, %if.else.for.body50_crit_edge ]
  %shl51 = shl i32 %result.0239, 1
  %arrayidx52 = getelementptr i8, ptr %data, i32 %i.1238
  %17 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %18 to i32
  %shl54 = shl nuw nsw i32 %conv53, 8
  %add57 = or i32 %i.1238, 1
  %arrayidx58 = getelementptr i8, ptr %data, i32 %add57
  %19 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx58, align 1
  %21 = and i8 %20, -2
  %conv59.masked = zext i8 %21 to i32
  %22 = or i32 %shl54, %conv59.masked
  %add64 = or i32 %i.1238, 2
  %arrayidx65 = getelementptr i8, ptr %data, i32 %add64
  %23 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx65, align 1
  %conv66 = zext i8 %24 to i32
  %shl67 = shl nuw nsw i32 %conv66, 8
  %add70 = or i32 %i.1238, 3
  %arrayidx71 = getelementptr i8, ptr %data, i32 %add70
  %25 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx71, align 1
  %conv72 = zext i8 %26 to i32
  %add73 = or i32 %shl67, %conv72
  %27 = lshr i32 %add73, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %27)
  %cmp81 = icmp ugt i32 %22, %27
  %add84 = zext i1 %cmp81 to i32
  %spec.select = or i32 %shl51, %add84
  %add87 = add nuw nsw i32 %i.1238, 4
  %cmp48 = icmp ult i32 %i.1238, 128
  br i1 %cmp48, label %for.body50.for.body50_crit_edge, label %do.body89

for.body50.for.body50_crit_edge:                  ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body50

do.body89:                                        ; preds = %for.body50
  %28 = load i32, ptr @dvb_usb_af9005_remote_debug, align 4
  %and90 = and i32 %28, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and90)
  %tobool91.not = icmp eq i32 %and90, 0
  br i1 %tobool91.not, label %do.body89.do.end100_crit_edge, label %do.end95

do.body89.do.end100_crit_edge:                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.end100

do.end95:                                         ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #5
  %call97 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %spec.select) #6
  br label %do.end100

do.end100:                                        ; preds = %do.end95, %do.body89.do.end100_crit_edge
  %29 = and i32 %result.0239, 2139095040
  call void @__sanitizer_cov_trace_const_cmp4(i32 2130706432, i32 %29)
  %cmp102.not = icmp eq i32 %29, 2130706432
  br i1 %cmp102.not, label %if.end117, label %do.body105

do.body105:                                       ; preds = %do.end100
  %30 = load i32, ptr @dvb_usb_af9005_remote_debug, align 4
  %and106 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  br i1 %tobool107.not, label %do.body105.cleanup_crit_edge, label %do.end111

do.body105.cleanup_crit_edge:                     ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end111:                                        ; preds = %do.body105
  call void @__sanitizer_cov_trace_pc() #5
  %call113 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #6
  br label %cleanup

if.end117:                                        ; preds = %do.end100
  %shr118 = lshr i32 %shl51, 16
  %shr121 = lshr i32 %shl51, 8
  %conv126 = and i32 %shr121, 255
  %conv125 = and i32 %spec.select, 255
  %conv127 = xor i32 %conv125, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %conv126, i32 %conv127)
  %cmp128.not = icmp eq i32 %conv126, %conv127
  br i1 %cmp128.not, label %for.cond144.preheader, label %do.body131

for.cond144.preheader:                            ; preds = %if.end117
  %31 = load i32, ptr @rc_map_af9005_table_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp145240 = icmp sgt i32 %31, 0
  br i1 %cmp145240, label %for.body147.lr.ph, label %for.cond144.preheader.do.body178_crit_edge

for.cond144.preheader.do.body178_crit_edge:       ; preds = %for.cond144.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body178

for.body147.lr.ph:                                ; preds = %for.cond144.preheader
  %32 = trunc i32 %shr118 to i8
  %33 = trunc i32 %shr121 to i8
  br label %for.body147

do.body131:                                       ; preds = %if.end117
  %34 = load i32, ptr @dvb_usb_af9005_remote_debug, align 4
  %and132 = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and132)
  %tobool133.not = icmp eq i32 %and132, 0
  br i1 %tobool133.not, label %do.body131.cleanup_crit_edge, label %do.end137

do.body131.cleanup_crit_edge:                     ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end137:                                        ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #5
  %call139 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #6
  br label %cleanup

for.body147:                                      ; preds = %for.inc175.for.body147_crit_edge, %for.body147.lr.ph
  %i.2241 = phi i32 [ 0, %for.body147.lr.ph ], [ %inc176, %for.inc175.for.body147_crit_edge ]
  %arrayidx148 = getelementptr [36 x %struct.rc_map_table], ptr @rc_map_af9005_table, i32 0, i32 %i.2241
  %35 = ptrtoint ptr %arrayidx148 to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %arrayidx148, align 8
  %shr.i = lshr i64 %36, 8
  %conv.i = trunc i64 %shr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i, i8 %32)
  %cmp152 = icmp eq i8 %conv.i, %32
  %conv.i236 = trunc i64 %36 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %conv.i236, i8 %33)
  %cmp158 = icmp eq i8 %conv.i236, %33
  %or.cond = select i1 %cmp152, i1 %cmp158, i1 false
  br i1 %or.cond, label %if.then160, label %for.inc175

if.then160:                                       ; preds = %for.body147
  %keycode = getelementptr [36 x %struct.rc_map_table], ptr @rc_map_af9005_table, i32 0, i32 %i.2241, i32 1
  %37 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %keycode, align 8
  %39 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %event, align 4
  %40 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %state, align 4
  %41 = load i32, ptr @dvb_usb_af9005_remote_debug, align 4
  %and163 = and i32 %41, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and163)
  %tobool164.not = icmp eq i32 %and163, 0
  br i1 %tobool164.not, label %if.then160.cleanup_crit_edge, label %do.end168

if.then160.cleanup_crit_edge:                     ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end168:                                        ; preds = %if.then160
  call void @__sanitizer_cov_trace_pc() #5
  %42 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %event, align 4
  %call170 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %43) #6
  br label %cleanup

for.inc175:                                       ; preds = %for.body147
  %inc176 = add nuw nsw i32 %i.2241, 1
  %exitcond.not = icmp eq i32 %inc176, %31
  br i1 %exitcond.not, label %for.inc175.do.body178_crit_edge, label %for.inc175.for.body147_crit_edge

for.inc175.for.body147_crit_edge:                 ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body147

for.inc175.do.body178_crit_edge:                  ; preds = %for.inc175
  call void @__sanitizer_cov_trace_pc() #5
  br label %do.body178

do.body178:                                       ; preds = %for.inc175.do.body178_crit_edge, %for.cond144.preheader.do.body178_crit_edge
  %44 = load i32, ptr @dvb_usb_af9005_remote_debug, align 4
  %and179 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and179)
  %tobool180.not = icmp eq i32 %and179, 0
  br i1 %tobool180.not, label %do.body178.cleanup_crit_edge, label %do.end184

do.body178.cleanup_crit_edge:                     ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end184:                                        ; preds = %do.body178
  call void @__sanitizer_cov_trace_pc() #5
  %call186 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end184, %do.body178.cleanup_crit_edge, %do.end168, %if.then160.cleanup_crit_edge, %do.end137, %do.body131.cleanup_crit_edge, %do.end111, %do.body105.cleanup_crit_edge, %if.else.cleanup_crit_edge, %do.end38, %do.end, %if.then25.cleanup_crit_edge, %for.cond.3.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !34, !35, !37, !38, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54, !55, !57, !58, !60, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 17, i32 1}
!5 = !{ptr @rc_map_af9005_table, !6, !"rc_map_af9005_table", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 23, i32 21}
!7 = !{ptr @rc_map_af9005_table_size, !8, !"rc_map_af9005_table_size", i1 false, i1 false}
!8 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 64, i32 5}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 89, i32 6}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @af9005_rc_decode._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @af9005_rc_decode._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 94, i32 4}
!17 = !{ptr @af9005_rc_decode._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @af9005_rc_decode._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 107, i32 4}
!21 = !{ptr @af9005_rc_decode._entry.6, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @af9005_rc_decode._entry_ptr.8, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 109, i32 5}
!25 = !{ptr @af9005_rc_decode._entry.9, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @af9005_rc_decode._entry_ptr.11, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 117, i32 5}
!29 = !{ptr @af9005_rc_decode._entry.12, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @af9005_rc_decode._entry_ptr.14, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 125, i32 6}
!33 = !{ptr @af9005_rc_decode._entry.15, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @af9005_rc_decode._entry_ptr.17, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.19, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 130, i32 4}
!37 = !{ptr @af9005_rc_decode._entry.18, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @af9005_rc_decode._entry_ptr.20, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @__ksymtab_rc_map_af9005_table, !40, !"__ksymtab_rc_map_af9005_table", i1 false, i1 false}
!40 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 136, i32 1}
!41 = !{ptr @__ksymtab_rc_map_af9005_table_size, !42, !"__ksymtab_rc_map_af9005_table_size", i1 false, i1 false}
!42 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 137, i32 1}
!43 = !{ptr @__ksymtab_af9005_rc_decode, !44, !"__ksymtab_af9005_rc_decode", i1 false, i1 false}
!44 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 138, i32 1}
!45 = !{ptr @__UNIQUE_ID_author388, !46, !"__UNIQUE_ID_author388", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 140, i32 1}
!47 = !{ptr @__UNIQUE_ID_description389, !48, !"__UNIQUE_ID_description389", i1 false, i1 false}
!48 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 141, i32 1}
!49 = !{ptr @__UNIQUE_ID_version390, !50, !"__UNIQUE_ID_version390", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 143, i32 1}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @__modver_attr, !50, !"__modver_attr", i1 false, i1 false}
!55 = !{ptr @__UNIQUE_ID_file391, !56, !"__UNIQUE_ID_file391", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 144, i32 1}
!57 = !{ptr @__UNIQUE_ID_license392, !56, !"__UNIQUE_ID_license392", i1 false, i1 false}
!58 = !{ptr @dvb_usb_af9005_remote_debug, !59, !"dvb_usb_af9005_remote_debug", i1 false, i1 false}
!59 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 15, i32 12}
!60 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!61 = distinct !{null, !62, !"repeatable_keys", i1 false, i1 false}
!62 = !{!"../drivers/media/usb/dvb-usb/af9005-remote.c", i32 66, i32 12}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
