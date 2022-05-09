; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dvb-usb-remote.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dvb-usb-remote.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_usb_nec_rc_key_to_event\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usb_nec_rc_key_to_event\09\09\09\09"
module asm "\09.long\09__crc_dvb_usb_nec_rc_key_to_event\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usb_nec_rc_key_to_event:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usb_nec_rc_key_to_event\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usb_nec_rc_key_to_event:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dvb_usb_device_properties = type { i32, i32, ptr, ptr, i32, i32, ptr, ptr, i32, [2 x %struct.dvb_usb_adapter_properties], ptr, ptr, ptr, %struct.anon.113, ptr, i32, i32, i32, [12 x %struct.dvb_usb_device_description] }
%struct.dvb_usb_adapter_properties = type { i32, ptr, i32, [3 x %struct.dvb_usb_adapter_fe_properties] }
%struct.dvb_usb_adapter_fe_properties = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.usb_data_stream_properties, i32 }
%struct.usb_data_stream_properties = type { i32, i32, i32, %union.anon.110 }
%union.anon.110 = type { %struct.anon.112 }
%struct.anon.112 = type { i32, i32, i32 }
%struct.anon.113 = type { i32, %struct.dvb_rc_legacy, %struct.dvb_rc }
%struct.dvb_rc_legacy = type { ptr, i32, ptr, i32 }
%struct.dvb_rc = type { ptr, i64, i64, i32, ptr, ptr, ptr, i32, i8, i32 }
%struct.dvb_usb_device_description = type { ptr, [15 x ptr], [15 x ptr] }
%struct.dvb_usb_device = type { %struct.dvb_usb_device_properties, ptr, ptr, i32, i32, %struct.mutex, %struct.mutex, %struct.mutex, %struct.i2c_adapter, i32, [2 x %struct.dvb_usb_adapter], ptr, ptr, [64 x i8], %struct.delayed_work, i32, i32, ptr, ptr }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.rc_map_table = type { i64, i32 }
%struct.rc_dev = type { %struct.device, i8, [5 x ptr], ptr, ptr, %struct.input_id, ptr, ptr, %struct.rc_map, %struct.mutex, i32, ptr, ptr, i32, i8, i8, i64, i64, i64, i32, %struct.rc_scancode_filter, %struct.rc_scancode_filter, i32, i32, ptr, %struct.spinlock, i8, i32, %struct.timer_list, %struct.timer_list, i32, i32, i64, i8, i32, i32, i32, i32, i32, %struct.device, %struct.cdev, i64, i64, i8, %struct.spinlock, %struct.list_head, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rc_map = type { ptr, i32, i32, i32, i32, ptr, %struct.spinlock }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.input_keymap_entry = type { i8, i8, i16, i32, [32 x i8] }

@dvb_usb_disable_rc_polling = external dso_local local_unnamed_addr global i32, align 4
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"/ir0\00", [27 x i8] zeroinitializer }, align 32
@dvb_usb_debug = external dso_local local_unnamed_addr global i32, align 4
@dvb_usb_nec_rc_key_to_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 375, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"remote control checksum failed.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_usb_nec_rc_key_to_event\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/media/usb/dvb-usb/dvb-usb-remote.c\00", [53 x i8] zeroinitializer }, align 32
@dvb_usb_nec_rc_key_to_event._entry_ptr = internal global ptr @dvb_usb_nec_rc_key_to_event._entry, section ".printk_index", align 4
@dvb_usb_nec_rc_key_to_event._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 386, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"key mapping failed - no appropriate key found in keymapping\0A\00", [35 x i8] zeroinitializer }, align 32
@dvb_usb_nec_rc_key_to_event._entry_ptr.6 = internal global ptr @dvb_usb_nec_rc_key_to_event._entry.4, section ".printk_index", align 4
@dvb_usb_nec_rc_key_to_event._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 392, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unknown type of remote status: %d\0A\00", [61 x i8] zeroinitializer }, align 32
@dvb_usb_nec_rc_key_to_event._entry_ptr.9 = internal global ptr @dvb_usb_nec_rc_key_to_event._entry.7, section ".printk_index", align 4
@__kstrtab_dvb_usb_nec_rc_key_to_event = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usb_nec_rc_key_to_event = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usb_nec_rc_key_to_event = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usb_nec_rc_key_to_event to i32), ptr @__kstrtab_dvb_usb_nec_rc_key_to_event, ptr @__kstrtabns_dvb_usb_nec_rc_key_to_event }, section "___ksymtab+dvb_usb_nec_rc_key_to_event", align 4
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb-%s-%s\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"IR-receiver inside an USB DVB receiver\00", [57 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_remote_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"key map size: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"legacy_dvb_usb_remote_init\00", [37 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_remote_init._entry_ptr = internal global ptr @legacy_dvb_usb_remote_init._entry, section ".printk_index", align 4
@legacy_dvb_usb_remote_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.13, ptr @.str.3, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"setting bit for event %d item %d\0A\00", [62 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_remote_init._entry_ptr.16 = internal global ptr @legacy_dvb_usb_remote_init._entry.14, section ".printk_index", align 4
@legacy_dvb_usb_remote_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"(work_completion)(&(&d->rc_query_work)->work)\00", [50 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_remote_init.__key.18 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"&(&d->rc_query_work)->timer\00", [36 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_remote_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.13, ptr @.str.3, i32 232, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\016dvb-usb: schedule remote query interval to %d msecs.\0A\00", [40 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_remote_init._entry_ptr.22 = internal global ptr @legacy_dvb_usb_remote_init._entry.20, section ".printk_index", align 4
@legacy_dvb_usb_read_remote_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.3, i32 124, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013dvb-usb: error while querying for an remote control event.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"legacy_dvb_usb_read_remote_control\00", [61 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_read_remote_control._entry_ptr = internal global ptr @legacy_dvb_usb_read_remote_control._entry, section ".printk_index", align 4
@legacy_dvb_usb_read_remote_control._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.24, ptr @.str.3, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"key pressed\0A\00", [19 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_read_remote_control._entry_ptr.27 = internal global ptr @legacy_dvb_usb_read_remote_control._entry.25, section ".printk_index", align 4
@legacy_dvb_usb_read_remote_control._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.24, ptr @.str.3, i32 141, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key repeated\0A\00", [18 x i8] zeroinitializer }, align 32
@legacy_dvb_usb_read_remote_control._entry_ptr.30 = internal global ptr @legacy_dvb_usb_read_remote_control._entry.28, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@rc_core_dvb_usb_remote_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rc_core_dvb_usb_remote_init.__key.31 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@rc_core_dvb_usb_remote_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.32, ptr @.str.3, i32 306, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"rc_core_dvb_usb_remote_init\00", [36 x i8] zeroinitializer }, align 32
@rc_core_dvb_usb_remote_init._entry_ptr = internal global ptr @rc_core_dvb_usb_remote_init._entry, section ".printk_index", align 4
@dvb_usb_read_remote_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 263, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013dvb-usb: error %d while querying for an remote control event.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dvb_usb_read_remote_control\00", [36 x i8] zeroinitializer }, align 32
@dvb_usb_read_remote_control._entry_ptr = internal global ptr @dvb_usb_read_remote_control._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 240]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 240]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 328, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 375, i32 5 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 386, i32 4 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 392, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"../include/linux/usb.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 912, i32 31 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 200, i32 20 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 211, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 213, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 230, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 232, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 124, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 133, i32 4 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 141, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 302, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 306, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [46 x i8] c"../drivers/media/usb/dvb-usb/dvb-usb-remote.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 263, i32 3 }
@llvm.compiler.used = appending global [48 x ptr] [ptr @__ksymtab_dvb_usb_nec_rc_key_to_event, ptr @dvb_usb_nec_rc_key_to_event._entry, ptr @dvb_usb_nec_rc_key_to_event._entry.4, ptr @dvb_usb_nec_rc_key_to_event._entry.7, ptr @dvb_usb_nec_rc_key_to_event._entry_ptr, ptr @dvb_usb_nec_rc_key_to_event._entry_ptr.6, ptr @dvb_usb_nec_rc_key_to_event._entry_ptr.9, ptr @dvb_usb_read_remote_control._entry, ptr @dvb_usb_read_remote_control._entry_ptr, ptr @legacy_dvb_usb_read_remote_control._entry, ptr @legacy_dvb_usb_read_remote_control._entry.25, ptr @legacy_dvb_usb_read_remote_control._entry.28, ptr @legacy_dvb_usb_read_remote_control._entry_ptr, ptr @legacy_dvb_usb_read_remote_control._entry_ptr.27, ptr @legacy_dvb_usb_read_remote_control._entry_ptr.30, ptr @legacy_dvb_usb_remote_init._entry, ptr @legacy_dvb_usb_remote_init._entry.14, ptr @legacy_dvb_usb_remote_init._entry.20, ptr @legacy_dvb_usb_remote_init._entry_ptr, ptr @legacy_dvb_usb_remote_init._entry_ptr.16, ptr @legacy_dvb_usb_remote_init._entry_ptr.22, ptr @rc_core_dvb_usb_remote_init._entry, ptr @rc_core_dvb_usb_remote_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @legacy_dvb_usb_remote_init.__key, ptr @.str.17, ptr @legacy_dvb_usb_remote_init.__key.18, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.29, ptr @rc_core_dvb_usb_remote_init.__key, ptr @rc_core_dvb_usb_remote_init.__key.31, ptr @.str.32, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_nec_rc_key_to_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_nec_rc_key_to_event._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_nec_rc_key_to_event._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_remote_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_remote_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_remote_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_remote_init.__key.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_remote_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_read_remote_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_read_remote_control._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @legacy_dvb_usb_read_remote_control._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_core_dvb_usb_remote_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_core_dvb_usb_remote_init.__key.31 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc_core_dvb_usb_remote_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_read_remote_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_remote_init(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_disable_rc_polling to i32))
  %0 = load i32, ptr @dvb_usb_disable_rc_polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rc = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13
  %legacy = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1
  %1 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %legacy, align 4
  %tobool1.not = icmp eq ptr %2, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %rc_query = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1, i32 2
  %3 = ptrtoint ptr %rc_query to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc_query, align 4
  %tobool5.not = icmp eq ptr %4, null
  br i1 %tobool5.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end18_crit_edge

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %core = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2
  %5 = ptrtoint ptr %core to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %core, align 8
  %tobool11.not = icmp eq ptr %6, null
  br i1 %tobool11.not, label %if.else.cleanup_crit_edge, label %if.else.if.end18_crit_edge

if.else.if.end18_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %if.else.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge
  %storemerge = phi i32 [ 0, %land.lhs.true.if.end18_crit_edge ], [ 1, %if.else.if.end18_crit_edge ]
  %7 = ptrtoint ptr %rc to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %storemerge, ptr %rc, align 8
  %udev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %udev, align 4
  %rc_phys = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 13
  %bus.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 12
  %10 = ptrtoint ptr %bus.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %bus.i, align 8
  %bus_name.i = getelementptr inbounds %struct.usb_bus, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %bus_name.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %bus_name.i, align 4
  %devpath.i = getelementptr inbounds %struct.usb_device, ptr %9, i32 0, i32 1
  %call.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %rc_phys, i32 noundef 64, ptr noundef nonnull @.str.10, ptr noundef %13, ptr noundef %devpath.i) #7
  %call21 = tail call i32 @strlcat(ptr noundef %rc_phys, ptr noundef nonnull @.str, i32 noundef 64) #7
  %rc_interval = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1, i32 3
  %14 = ptrtoint ptr %rc_interval to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %rc_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %15)
  %cmp = icmp slt i32 %15, 40
  br i1 %cmp, label %if.then25, label %if.end18.if.end30_crit_edge

if.end18.if.end30_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %rc_interval to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 100, ptr %rc_interval, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then25, %if.end18.if.end30_crit_edge
  %17 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp34 = icmp eq i32 %18, 0
  br i1 %cmp34, label %if.then35, label %if.else37

if.then35:                                        ; preds = %if.end30
  %call.i57 = tail call ptr @input_allocate_device() #7
  %tobool.not.i = icmp eq ptr %call.i57, null
  br i1 %tobool.not.i, label %if.then35.cleanup_crit_edge, label %if.end.i

if.then35.cleanup_crit_edge:                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.then35
  %evbit.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 5
  %19 = ptrtoint ptr %evbit.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 2, ptr %evbit.i, align 8
  %20 = ptrtoint ptr %call.i57 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.11, ptr %call.i57, align 8
  %phys.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 1
  %21 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %rc_phys, ptr %phys.i, align 4
  %22 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %udev, align 4
  %id.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3
  %24 = ptrtoint ptr %id.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 3, ptr %id.i, align 2
  %idVendor.i.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 16, i32 7
  %25 = ptrtoint ptr %idVendor.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %idVendor.i.i, align 8
  %27 = tail call i16 @llvm.bswap.i16(i16 %26) #7
  %vendor.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %vendor.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %27, ptr %vendor.i.i, align 2
  %idProduct.i.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 16, i32 8
  %29 = ptrtoint ptr %idProduct.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %idProduct.i.i, align 2
  %31 = tail call i16 @llvm.bswap.i16(i16 %30) #7
  %product.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %product.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %31, ptr %product.i.i, align 2
  %bcdDevice.i.i = getelementptr inbounds %struct.usb_device, ptr %23, i32 0, i32 16, i32 9
  %33 = ptrtoint ptr %bcdDevice.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %bcdDevice.i.i, align 4
  %35 = tail call i16 @llvm.bswap.i16(i16 %34) #7
  %version.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 3, i32 3
  %36 = ptrtoint ptr %version.i.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %version.i.i, align 2
  %37 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev, align 4
  %dev.i = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 40, i32 1
  %39 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dev.i, ptr %parent.i, align 8
  %input_dev3.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %40 = ptrtoint ptr %input_dev3.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i57, ptr %input_dev3.i, align 4
  %rc_dev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %41 = ptrtoint ptr %rc_dev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %rc_dev.i, align 8
  %getkeycode.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 19
  %42 = ptrtoint ptr %getkeycode.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @legacy_dvb_usb_getkeycode, ptr %getkeycode.i, align 4
  %setkeycode.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 18
  %43 = ptrtoint ptr %setkeycode.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @legacy_dvb_usb_setkeycode, ptr %setkeycode.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %44 = load i32, ptr @dvb_usb_debug, align 4
  %and.i = and i32 %44, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool4.not.i, label %if.end.i.do.end10.i_crit_edge, label %do.end.i

if.end.i.do.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end10.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %rc_map_size.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1, i32 1
  %45 = ptrtoint ptr %rc_map_size.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rc_map_size.i, align 4
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %46) #10
  br label %do.end10.i

do.end10.i:                                       ; preds = %do.end.i, %if.end.i.do.end10.i_crit_edge
  %rc_map_size14.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1, i32 1
  %47 = ptrtoint ptr %rc_map_size14.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rc_map_size14.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp127.i = icmp sgt i32 %48, 0
  br i1 %cmp127.i, label %do.body15.lr.ph.i, label %do.end10.i.for.end.i_crit_edge

do.end10.i.for.end.i_crit_edge:                   ; preds = %do.end10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.body15.lr.ph.i:                                ; preds = %do.end10.i
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 6
  br label %do.body15.i

do.body15.i:                                      ; preds = %do.end30.i.do.body15.i_crit_edge, %do.body15.lr.ph.i
  %i.0128.i = phi i32 [ 0, %do.body15.lr.ph.i ], [ %inc.i, %do.end30.i.do.body15.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %49 = load i32, ptr @dvb_usb_debug, align 4
  %and16.i = and i32 %49, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %do.body15.i.do.end30.i_crit_edge, label %do.end21.i

do.body15.i.do.end30.i_crit_edge:                 ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30.i

do.end21.i:                                       ; preds = %do.body15.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %legacy, align 4
  %keycode.i = getelementptr %struct.rc_map_table, ptr %51, i32 %i.0128.i, i32 1
  %52 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %keycode.i, align 8
  %call27.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, i32 noundef %53, i32 noundef %i.0128.i) #10
  br label %do.end30.i

do.end30.i:                                       ; preds = %do.end21.i, %do.body15.i.do.end30.i_crit_edge
  %54 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %legacy, align 4
  %keycode36.i = getelementptr %struct.rc_map_table, ptr %55, i32 %i.0128.i, i32 1
  %56 = ptrtoint ptr %keycode36.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %keycode36.i, align 8
  tail call void @_set_bit(i32 noundef %57, ptr noundef %keybit.i) #7
  %inc.i = add nuw nsw i32 %i.0128.i, 1
  %58 = ptrtoint ptr %rc_map_size14.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rc_map_size14.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %59
  br i1 %cmp.i, label %do.end30.i.do.body15.i_crit_edge, label %do.end30.i.for.end.i_crit_edge

do.end30.i.for.end.i_crit_edge:                   ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

do.end30.i.do.body15.i_crit_edge:                 ; preds = %do.end30.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body15.i

for.end.i:                                        ; preds = %do.end30.i.for.end.i_crit_edge, %do.end10.i.for.end.i_crit_edge
  %60 = ptrtoint ptr %rc_interval to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %rc_interval, align 4
  %rep.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 24
  %arrayidx42.i = getelementptr %struct.input_dev, ptr %call.i57, i32 0, i32 24, i32 1
  %62 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %arrayidx42.i, align 4
  %63 = load i32, ptr %rc_interval, align 4
  %add.i = add i32 %63, 150
  %64 = ptrtoint ptr %rep.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add.i, ptr %rep.i, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %call.i57, i32 0, i32 40, i32 8
  %65 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %d, ptr %driver_data.i.i.i, align 4
  %call49.i = tail call i32 @input_register_device(ptr noundef nonnull %call.i57) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49.i)
  %tobool50.not.i = icmp eq i32 %call49.i, 0
  br i1 %tobool50.not.i, label %for.end.i.if.end52.i_crit_edge, label %if.then51.i

for.end.i.if.end52.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end52.i

if.then51.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @input_free_device(ptr noundef nonnull %call.i57) #7
  br label %if.end52.i

if.end52.i:                                       ; preds = %if.then51.i, %for.end.i.if.end52.i_crit_edge
  %66 = ptrtoint ptr %rc_interval to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rc_interval, align 4
  %rc_query_work.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14
  tail call void @__init_work(ptr noundef %rc_query_work.i, i32 noundef 0) #7
  %68 = ptrtoint ptr %rc_query_work.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -64, ptr %rc_query_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @legacy_dvb_usb_remote_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry65.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 1
  %69 = ptrtoint ptr %entry65.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %entry65.i, ptr %entry65.i, align 4
  %prev.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %entry65.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 2
  %71 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @legacy_dvb_usb_read_remote_control, ptr %func.i, align 4
  %timer.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @legacy_dvb_usb_remote_init.__key.18) #7
  %call80.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %67) #10
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %67) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %72 = load ptr, ptr @system_wq, align 4
  %call.i.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %72, ptr noundef %rc_query_work.i, i32 noundef %call2.i.i) #7
  %state.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 3
  %73 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %state.i, align 8
  %or.i = or i32 %74, 4
  store i32 %or.i, ptr %state.i, align 8
  br i1 %tobool50.not.i, label %if.end52.i.if.end42_crit_edge, label %if.end52.i.cleanup_crit_edge

if.end52.i.cleanup_crit_edge:                     ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52.i.if.end42_crit_edge:                    ; preds = %if.end52.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

if.else37:                                        ; preds = %if.end30
  %driver_type.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 3
  %75 = ptrtoint ptr %driver_type.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %driver_type.i, align 8
  %call.i58 = tail call ptr @rc_allocate_device(i32 noundef %76) #7
  %tobool.not.i59 = icmp eq ptr %call.i58, null
  br i1 %tobool.not.i59, label %if.else37.cleanup_crit_edge, label %if.end.i70

if.else37.cleanup_crit_edge:                      ; preds = %if.else37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i70:                                       ; preds = %if.else37
  %core.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2
  %module_name.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 5
  %77 = ptrtoint ptr %module_name.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %module_name.i, align 8
  %driver_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 6
  %79 = ptrtoint ptr %driver_name.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %driver_name.i, align 8
  %80 = ptrtoint ptr %core.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %core.i, align 8
  %map_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 7
  %82 = ptrtoint ptr %map_name.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %map_name.i, align 4
  %change_protocol.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 4
  %83 = ptrtoint ptr %change_protocol.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %change_protocol.i, align 4
  %change_protocol10.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 47
  %85 = ptrtoint ptr %change_protocol10.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %change_protocol10.i, align 4
  %allowed_protos.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 2
  %86 = ptrtoint ptr %allowed_protos.i to i32
  call void @__asan_load8_noabort(i32 %86)
  %87 = load i64, ptr %allowed_protos.i, align 8
  %allowed_protocols.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 16
  %88 = ptrtoint ptr %allowed_protocols.i to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %87, ptr %allowed_protocols.i, align 8
  %89 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %udev, align 4
  %input_id.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 5
  %91 = ptrtoint ptr %input_id.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 3, ptr %input_id.i, align 2
  %idVendor.i.i61 = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 16, i32 7
  %92 = ptrtoint ptr %idVendor.i.i61 to i32
  call void @__asan_load2_noabort(i32 %92)
  %93 = load i16, ptr %idVendor.i.i61, align 8
  %94 = tail call i16 @llvm.bswap.i16(i16 %93) #7
  %vendor.i.i62 = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 5, i32 1
  %95 = ptrtoint ptr %vendor.i.i62 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %94, ptr %vendor.i.i62, align 2
  %idProduct.i.i63 = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 16, i32 8
  %96 = ptrtoint ptr %idProduct.i.i63 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %idProduct.i.i63, align 2
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #7
  %product.i.i64 = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 5, i32 2
  %99 = ptrtoint ptr %product.i.i64 to i32
  call void @__asan_store2_noabort(i32 %99)
  store i16 %98, ptr %product.i.i64, align 2
  %bcdDevice.i.i65 = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 16, i32 9
  %100 = ptrtoint ptr %bcdDevice.i.i65 to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %bcdDevice.i.i65, align 4
  %102 = tail call i16 @llvm.bswap.i16(i16 %101) #7
  %version.i.i66 = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 5, i32 3
  %103 = ptrtoint ptr %version.i.i66 to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %version.i.i66, align 2
  %desc.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 1
  %104 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %desc.i, align 8
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %device_name.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 3
  %108 = ptrtoint ptr %device_name.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %107, ptr %device_name.i, align 8
  %input_phys.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 4
  %109 = ptrtoint ptr %input_phys.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %rc_phys, ptr %input_phys.i, align 4
  %110 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %udev, align 4
  %dev15.i = getelementptr inbounds %struct.usb_device, ptr %111, i32 0, i32 15
  %parent.i68 = getelementptr inbounds %struct.device, ptr %call.i58, i32 0, i32 1
  %112 = ptrtoint ptr %parent.i68 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %dev15.i, ptr %parent.i68, align 8
  %priv.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 24
  %113 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %d, ptr %priv.i, align 4
  %scancode_mask.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 9
  %114 = ptrtoint ptr %scancode_mask.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %scancode_mask.i, align 8
  %scancode_mask20.i = getelementptr inbounds %struct.rc_dev, ptr %call.i58, i32 0, i32 22
  %116 = ptrtoint ptr %scancode_mask20.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %scancode_mask20.i, align 4
  %call21.i = tail call i32 @rc_register_device(ptr noundef nonnull %call.i58) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp.i69 = icmp slt i32 %call21.i, 0
  br i1 %cmp.i69, label %if.then22.i, label %if.end23.i

if.then22.i:                                      ; preds = %if.end.i70
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @rc_free_device(ptr noundef nonnull %call.i58) #7
  br label %cleanup

if.end23.i:                                       ; preds = %if.end.i70
  %input_dev.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %117 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr null, ptr %input_dev.i, align 4
  %rc_dev.i71 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %118 = ptrtoint ptr %rc_dev.i71 to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call.i58, ptr %rc_dev.i71, align 8
  %rc_query.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 6
  %119 = ptrtoint ptr %rc_query.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %rc_query.i, align 4
  %tobool27.not.i = icmp eq ptr %120, null
  br i1 %tobool27.not.i, label %if.end23.i.if.end42_crit_edge, label %lor.lhs.false.i

if.end23.i.if.end42_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

lor.lhs.false.i:                                  ; preds = %if.end23.i
  %bulk_mode.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 8
  %121 = ptrtoint ptr %bulk_mode.i to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %bulk_mode.i, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %122)
  %tobool31.not.i = icmp eq i8 %122, 0
  br i1 %tobool31.not.i, label %do.body34.i, label %lor.lhs.false.i.if.end42_crit_edge

lor.lhs.false.i.if.end42_crit_edge:               ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42

do.body34.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  %rc_query_work.i72 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14
  tail call void @__init_work(ptr noundef %rc_query_work.i72, i32 noundef 0) #7
  %123 = ptrtoint ptr %rc_query_work.i72 to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 -64, ptr %rc_query_work.i72, align 8
  %lockdep_map.i73 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i73, ptr noundef nonnull @.str.17, ptr noundef nonnull @rc_core_dvb_usb_remote_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry41.i = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 1
  %124 = ptrtoint ptr %entry41.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store volatile ptr %entry41.i, ptr %entry41.i, align 4
  %prev.i.i74 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 1, i32 1
  %125 = ptrtoint ptr %prev.i.i74 to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr %entry41.i, ptr %prev.i.i74, align 4
  %func.i75 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 0, i32 2
  %126 = ptrtoint ptr %func.i75 to i32
  call void @__asan_store4_noabort(i32 %126)
  store ptr @dvb_usb_read_remote_control, ptr %func.i75, align 4
  %timer.i76 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i76, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.19, ptr noundef nonnull @rc_core_dvb_usb_remote_init.__key.31) #7
  %rc_interval53.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 2, i32 7
  %127 = ptrtoint ptr %rc_interval53.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %rc_interval53.i, align 8
  %call57.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %128) #10
  %call2.i.i82 = tail call i32 @__msecs_to_jiffies(i32 noundef %128) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %129 = load ptr, ptr @system_wq, align 4
  %call.i.i.i85 = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %129, ptr noundef %rc_query_work.i72, i32 noundef %call2.i.i82) #7
  br label %if.end42

if.end42:                                         ; preds = %do.body34.i, %lor.lhs.false.i.if.end42_crit_edge, %if.end23.i.if.end42_crit_edge, %if.end52.i.if.end42_crit_edge
  %state = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 3
  %130 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %state, align 8
  %or = or i32 %131, 4
  store i32 %or, ptr %state, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.then22.i, %if.else37.cleanup_crit_edge, %if.end52.i.cleanup_crit_edge, %if.then35.cleanup_crit_edge, %if.else.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge ], [ %call49.i, %if.end52.i.cleanup_crit_edge ], [ -12, %if.else37.cleanup_crit_edge ], [ %call21.i, %if.then22.i ], [ -12, %if.then35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcat(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_remote_exit(ptr noundef %d) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %state = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %state, align 8
  %and = and i32 %1, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end2_crit_edge, label %if.then

entry.if.end2_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end2

if.then:                                          ; preds = %entry
  %rc_query_work = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 14
  %call = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %rc_query_work) #7
  %rc = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13
  %2 = ptrtoint ptr %rc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %rc, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp = icmp eq i32 %3, 0
  br i1 %cmp, label %if.then1, label %if.else

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %input_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 12
  %4 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %input_dev, align 4
  tail call void @input_unregister_device(ptr noundef %5) #7
  br label %if.end2

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %rc_dev = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 11
  %6 = ptrtoint ptr %rc_dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rc_dev, align 8
  tail call void @rc_unregister_device(ptr noundef %7) #7
  br label %if.end2

if.end2:                                          ; preds = %if.else, %if.then1, %entry.if.end2_crit_edge
  %8 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %state, align 8
  %and4 = and i32 %9, -5
  store i32 %and4, ptr %state, align 8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_unregister_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_nec_rc_key_to_event(ptr nocapture noundef readonly %d, ptr nocapture noundef readonly %keybuf, ptr nocapture noundef writeonly %event, ptr nocapture noundef writeonly %state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %legacy = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1
  %0 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %legacy, align 4
  %2 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %event, align 4
  %3 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %state, align 4
  %4 = ptrtoint ptr %keybuf to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %keybuf, align 1
  %conv = zext i8 %5 to i32
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %do.body57 [
    i8 0, label %entry.cleanup_crit_edge
    i8 1, label %sw.bb
    i8 2, label %sw.bb56
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx1 = getelementptr i8, ptr %keybuf, i32 1
  %7 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx1, align 1
  %neg = xor i8 %8, -1
  %arrayidx5 = getelementptr i8, ptr %keybuf, i32 2
  %9 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx5, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %neg)
  %cmp.not = icmp eq i8 %10, %neg
  br i1 %cmp.not, label %lor.lhs.false, label %sw.bb.do.body_crit_edge

sw.bb.do.body_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

lor.lhs.false:                                    ; preds = %sw.bb
  %arrayidx8 = getelementptr i8, ptr %keybuf, i32 3
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx8, align 1
  %neg10 = xor i8 %12, -1
  %arrayidx13 = getelementptr i8, ptr %keybuf, i32 4
  %13 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx13, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %neg10)
  %cmp15.not = icmp eq i8 %14, %neg10
  br i1 %cmp15.not, label %for.cond.preheader, label %lor.lhs.false.do.body_crit_edge

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond.preheader:                               ; preds = %lor.lhs.false
  %rc_map_size = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 13, i32 1, i32 1
  %15 = ptrtoint ptr %rc_map_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %rc_map_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp2591 = icmp sgt i32 %16, 0
  br i1 %cmp2591, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body44_crit_edge

for.cond.preheader.do.body44_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %sw.bb.do.body_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %17 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %17, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.092 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx27 = getelementptr %struct.rc_map_table, ptr %1, i32 %i.092
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %arrayidx27, align 8
  %shr.i = lshr i64 %19, 8
  %conv.i = trunc i64 %shr.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %conv.i)
  %cmp32 = icmp eq i8 %8, %conv.i
  %conv.i89 = trunc i64 %19 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %conv.i89)
  %cmp39 = icmp eq i8 %12, %conv.i89
  %or.cond = select i1 %cmp32, i1 %cmp39, i1 false
  br i1 %or.cond, label %if.then41, label %for.inc

if.then41:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %keycode = getelementptr %struct.rc_map_table, ptr %1, i32 %i.092, i32 1
  %20 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %keycode, align 8
  %22 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %event, align 4
  %23 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %state, align 4
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.092, 1
  %exitcond.not = icmp eq i32 %inc, %16
  br i1 %exitcond.not, label %for.inc.do.body44_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.body44_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body44

do.body44:                                        ; preds = %for.inc.do.body44_crit_edge, %for.cond.preheader.do.body44_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %24 = load i32, ptr @dvb_usb_debug, align 4
  %and45 = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  br i1 %tobool46.not, label %do.body44.cleanup_crit_edge, label %do.end50

do.body44.cleanup_crit_edge:                      ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end50:                                         ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #9
  %call52 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %cleanup

sw.bb56:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2, ptr %state, align 4
  br label %cleanup

do.body57:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %26 = load i32, ptr @dvb_usb_debug, align 4
  %and58 = and i32 %26, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58)
  %tobool59.not = icmp eq i32 %and58, 0
  br i1 %tobool59.not, label %do.body57.cleanup_crit_edge, label %do.end63

do.body57.cleanup_crit_edge:                      ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end63:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #9
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, i32 noundef %conv) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end63, %do.body57.cleanup_crit_edge, %sw.bb56, %do.end50, %do.body44.cleanup_crit_edge, %if.then41, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @legacy_dvb_usb_getkeycode(ptr nocapture noundef readonly %dev, ptr noundef %ke) #0 align 64 {
entry:
  %scancode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %legacy = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %legacy, align 4
  %rc_map_size = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 13, i32 1, i32 1
  %4 = ptrtoint ptr %rc_map_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rc_map_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode.i) #7
  %6 = ptrtoint ptr %scancode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %scancode.i, align 4, !annotation !75
  %7 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ke, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %index1.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %10 = ptrtoint ptr %index1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index1.i, align 2
  %conv2.i = zext i16 %11 to i32
  br label %legacy_dvb_usb_get_keymap_index.exit

if.else.i:                                        ; preds = %entry
  %call.i = call i32 @input_scancode_to_scalar(ptr noundef %ke, ptr noundef nonnull %scancode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %if.else.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge

if.else.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit.thread

for.cond.preheader.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp51.not.i = icmp eq i32 %5, 0
  br i1 %cmp51.not.i, label %for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %12 = ptrtoint ptr %scancode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scancode.i, align 4
  %conv7.i = zext i32 %13 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.052.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rc_map_table, ptr %3, i32 %index.052.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv7.i)
  %cmp8.i = icmp eq i64 %15, %conv7.i
  br i1 %cmp8.i, label %for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, label %for.inc.i

for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %index.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.for.body18.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.body18.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc28.i.for.body18.i_crit_edge, %for.inc.i.for.body18.i_crit_edge
  %index.154.i = phi i32 [ %inc29.i, %for.inc28.i.for.body18.i_crit_edge ], [ 0, %for.inc.i.for.body18.i_crit_edge ]
  %keycode.i = getelementptr %struct.rc_map_table, ptr %3, i32 %index.154.i, i32 1
  %16 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keycode.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %17, label %for.inc28.i [
    i32 0, label %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge
    i32 240, label %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge52
  ]

for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge52: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.inc28.i:                                      ; preds = %for.body18.i
  %inc29.i = add nuw i32 %index.154.i, 1
  %exitcond60.not.i = icmp eq i32 %inc29.i, %5
  br i1 %exitcond60.not.i, label %for.inc28.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge, label %for.inc28.i.for.body18.i_crit_edge

for.inc28.i.for.body18.i_crit_edge:               ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.inc28.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge: ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit.thread

legacy_dvb_usb_get_keymap_index.exit.thread:      ; preds = %for.inc28.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge, %if.else.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #7
  br label %cleanup

legacy_dvb_usb_get_keymap_index.exit:             ; preds = %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge52, %for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, %for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 0, %for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge ], [ %index.154.i, %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge ], [ %index.154.i, %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge52 ], [ %index.052.i, %for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %5)
  %cmp.not = icmp ult i32 %retval.0.i, %5
  br i1 %cmp.not, label %if.end, label %legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge

legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge: ; preds = %legacy_dvb_usb_get_keymap_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %legacy_dvb_usb_get_keymap_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.rc_map_table, ptr %3, i32 %retval.0.i
  %keycode = getelementptr %struct.rc_map_table, ptr %3, i32 %retval.0.i, i32 1
  %19 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keycode, align 8
  %keycode5 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 240, i32 %20)
  %cmp7 = icmp eq i32 %20, 240
  %spec.select = select i1 %cmp7, i32 0, i32 %20
  %21 = ptrtoint ptr %keycode5 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %spec.select, ptr %keycode5, align 4
  %len = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 8, ptr %len, align 1
  %scancode = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %arrayidx, align 8
  %25 = ptrtoint ptr %scancode to i32
  call void @__asan_storeN_noabort(i32 %25, i32 8)
  store i64 %24, ptr %scancode, align 4
  %conv14 = trunc i32 %retval.0.i to i16
  %index15 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %26 = ptrtoint ptr %index15 to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv14, ptr %index15, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge, %legacy_dvb_usb_get_keymap_index.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge ], [ -22, %legacy_dvb_usb_get_keymap_index.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @legacy_dvb_usb_setkeycode(ptr nocapture noundef %dev, ptr noundef %ke, ptr nocapture noundef %old_keycode) #0 align 64 {
entry:
  %scancode.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %legacy = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 13, i32 1
  %2 = ptrtoint ptr %legacy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %legacy, align 4
  %rc_map_size = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 13, i32 1, i32 1
  %4 = ptrtoint ptr %rc_map_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %rc_map_size, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %scancode.i) #7
  %6 = ptrtoint ptr %scancode.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %scancode.i, align 4, !annotation !75
  %7 = ptrtoint ptr %ke to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ke, align 4
  %9 = and i8 %8, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %index1.i = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 2
  %10 = ptrtoint ptr %index1.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %index1.i, align 2
  %conv2.i = zext i16 %11 to i32
  br label %legacy_dvb_usb_get_keymap_index.exit

if.else.i:                                        ; preds = %entry
  %call.i = call i32 @input_scancode_to_scalar(ptr noundef %ke, ptr noundef nonnull %scancode.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool3.not.i, label %for.cond.preheader.i, label %if.else.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge

if.else.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit.thread

for.cond.preheader.i:                             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp51.not.i = icmp eq i32 %5, 0
  br i1 %cmp51.not.i, label %for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %12 = ptrtoint ptr %scancode.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %scancode.i, align 4
  %conv7.i = zext i32 %13 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %index.052.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.rc_map_table, ptr %3, i32 %index.052.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %arrayidx.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %15, i64 %conv7.i)
  %cmp8.i = icmp eq i64 %15, %conv7.i
  br i1 %cmp8.i, label %for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, label %for.inc.i

for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %index.052.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %for.inc.i.for.body18.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.for.body18.i_crit_edge:                 ; preds = %for.inc.i
  br label %for.body18.i

for.body18.i:                                     ; preds = %for.inc28.i.for.body18.i_crit_edge, %for.inc.i.for.body18.i_crit_edge
  %index.154.i = phi i32 [ %inc29.i, %for.inc28.i.for.body18.i_crit_edge ], [ 0, %for.inc.i.for.body18.i_crit_edge ]
  %keycode.i = getelementptr %struct.rc_map_table, ptr %3, i32 %index.154.i, i32 1
  %16 = ptrtoint ptr %keycode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keycode.i, align 8
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %17, label %for.inc28.i [
    i32 0, label %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge
    i32 240, label %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge75
  ]

for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge75: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge: ; preds = %for.body18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit

for.inc28.i:                                      ; preds = %for.body18.i
  %inc29.i = add nuw i32 %index.154.i, 1
  %exitcond60.not.i = icmp eq i32 %inc29.i, %5
  br i1 %exitcond60.not.i, label %for.inc28.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge, label %for.inc28.i.for.body18.i_crit_edge

for.inc28.i.for.body18.i_crit_edge:               ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body18.i

for.inc28.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge: ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %legacy_dvb_usb_get_keymap_index.exit.thread

legacy_dvb_usb_get_keymap_index.exit.thread:      ; preds = %for.inc28.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge, %if.else.i.legacy_dvb_usb_get_keymap_index.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #7
  br label %cleanup

legacy_dvb_usb_get_keymap_index.exit:             ; preds = %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge75, %for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, %for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge, %if.then.i
  %retval.0.i = phi i32 [ %conv2.i, %if.then.i ], [ 0, %for.cond.preheader.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge ], [ %index.154.i, %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge ], [ %index.154.i, %for.body18.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge75 ], [ %index.052.i, %for.body.i.legacy_dvb_usb_get_keymap_index.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %scancode.i) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %5)
  %cmp.not = icmp ult i32 %retval.0.i, %5
  br i1 %cmp.not, label %if.end, label %legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge

legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge: ; preds = %legacy_dvb_usb_get_keymap_index.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %legacy_dvb_usb_get_keymap_index.exit
  %keycode = getelementptr %struct.rc_map_table, ptr %3, i32 %retval.0.i, i32 1
  %19 = ptrtoint ptr %keycode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %keycode, align 8
  %21 = ptrtoint ptr %old_keycode to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %old_keycode, align 4
  %keycode5 = getelementptr inbounds %struct.input_keymap_entry, ptr %ke, i32 0, i32 3
  %22 = ptrtoint ptr %keycode5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keycode5, align 4
  %keycode6 = getelementptr inbounds %struct.rc_map_table, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %keycode6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %keycode6, align 8
  %25 = load i32, ptr %keycode5, align 4
  %keybit = getelementptr inbounds %struct.input_dev, ptr %dev, i32 0, i32 6
  %rem.i = and i32 %25, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %25, 5
  %add.ptr.i = getelementptr i32, ptr %keybit, i32 %div2.i
  %26 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %27
  store i32 %or.i, ptr %add.ptr.i, align 4
  %28 = load i32, ptr %old_keycode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp8.not = icmp eq i32 %28, 0
  br i1 %cmp8.not, label %if.end.cleanup_crit_edge, label %for.body.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %if.end
  %rem.i45 = and i32 %28, 31
  %shl.i46 = shl nuw i32 1, %rem.i45
  %div2.i47 = lshr i32 %28, 5
  %add.ptr.i48 = getelementptr i32, ptr %keybit, i32 %div2.i47
  %neg.i = xor i32 %shl.i46, -1
  %29 = ptrtoint ptr %add.ptr.i48 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i48, align 4
  %and.i = and i32 %30, %neg.i
  store i32 %and.i, ptr %add.ptr.i48, align 4
  %31 = ptrtoint ptr %old_keycode to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %old_keycode, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw i32 %index.060, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %index.060 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %keycode14 = getelementptr %struct.rc_map_table, ptr %3, i32 %index.060, i32 1
  %33 = ptrtoint ptr %keycode14 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %keycode14, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %32)
  %cmp15 = icmp eq i32 %34, %32
  br i1 %cmp15, label %if.then16, label %for.cond

if.then16:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %rem.i49 = and i32 %32, 31
  %shl.i50 = shl nuw i32 1, %rem.i49
  %div2.i51 = lshr i32 %32, 5
  %add.ptr.i52 = getelementptr i32, ptr %keybit, i32 %div2.i51
  %35 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i52, align 4
  %or.i53 = or i32 %36, %shl.i50
  store i32 %or.i53, ptr %add.ptr.i52, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then16, %for.cond.cleanup_crit_edge, %if.end.cleanup_crit_edge, %legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge, %legacy_dvb_usb_get_keymap_index.exit.thread
  %retval.0 = phi i32 [ -22, %legacy_dvb_usb_get_keymap_index.exit.cleanup_crit_edge ], [ 0, %if.then16 ], [ 0, %if.end.cleanup_crit_edge ], [ -22, %legacy_dvb_usb_get_keymap_index.exit.thread ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @legacy_dvb_usb_read_remote_control(ptr noundef %work) #0 align 64 {
entry:
  %event = alloca i32, align 4
  %state = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %event) #7
  %0 = ptrtoint ptr %event to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %event, align 4, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %state) #7
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %state, align 4, !annotation !75
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_disable_rc_polling to i32))
  %2 = load i32, ptr @dvb_usb_disable_rc_polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %work, i32 -9472
  %rc_query = getelementptr i8, ptr %work, i32 -9052
  %3 = ptrtoint ptr %rc_query to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc_query, align 4
  %call = call i32 %4(ptr noundef %add.ptr, ptr noundef nonnull %event, ptr noundef nonnull %state) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.23) #10
  br label %if.else.i

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %state, align 4
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %6, label %if.end5.if.else.i_crit_edge [
    i32 2, label %do.body22
    i32 1, label %do.body6
  ]

if.end5.if.else.i_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.body6:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %8 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %8, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body6.do.end16_crit_edge, label %do.end11

do.body6.do.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end11:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #10
  br label %do.end16

do.end16:                                         ; preds = %do.end11, %do.body6.do.end16_crit_edge
  %9 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %event, align 4
  %last_event = getelementptr i8, ptr %work, i32 100
  %11 = ptrtoint ptr %last_event to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %last_event, align 4
  %input_dev = getelementptr i8, ptr %work, i32 -68
  %12 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %13, i32 noundef 1, i32 noundef %10, i32 noundef 1) #7
  %14 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %15, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %16 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev, align 4
  %18 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %last_event, align 4
  call void @input_event(ptr noundef %17, i32 noundef 1, i32 noundef %19, i32 noundef 0) #7
  %20 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %input_dev, align 4
  call void @input_event(ptr noundef %21, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.else.i

do.body22:                                        ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_debug to i32))
  %22 = load i32, ptr @dvb_usb_debug, align 4
  %and23 = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23)
  %tobool24.not = icmp eq i32 %and23, 0
  br i1 %tobool24.not, label %do.body22.do.end33_crit_edge, label %do.end28

do.body22.do.end33_crit_edge:                     ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end28:                                         ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %do.end33

do.end33:                                         ; preds = %do.end28, %do.body22.do.end33_crit_edge
  %input_dev34 = getelementptr i8, ptr %work, i32 -68
  %23 = ptrtoint ptr %input_dev34 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %input_dev34, align 4
  %25 = ptrtoint ptr %event to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %event, align 4
  call void @input_event(ptr noundef %24, i32 noundef 1, i32 noundef %26, i32 noundef 1) #7
  %27 = ptrtoint ptr %input_dev34 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input_dev34, align 4
  call void @input_event(ptr noundef %28, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  %29 = ptrtoint ptr %input_dev34 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %input_dev34, align 4
  %last_event37 = getelementptr i8, ptr %work, i32 100
  %31 = ptrtoint ptr %last_event37 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %last_event37, align 4
  call void @input_event(ptr noundef %30, i32 noundef 1, i32 noundef %32, i32 noundef 0) #7
  %33 = ptrtoint ptr %input_dev34 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %input_dev34, align 4
  call void @input_event(ptr noundef %34, i32 noundef 0, i32 noundef 0, i32 noundef 0) #7
  br label %if.else.i

if.else.i:                                        ; preds = %do.end33, %do.end16, %if.end5.if.else.i_crit_edge, %do.end
  %rc_interval = getelementptr i8, ptr %work, i32 -9048
  %35 = ptrtoint ptr %rc_interval to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rc_interval, align 4
  %call2.i = call i32 @__msecs_to_jiffies(i32 noundef %36) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %37 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %37, ptr noundef %work, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %state) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %event) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_scancode_to_scalar(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @rc_allocate_device(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rc_register_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @rc_free_device(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dvb_usb_read_remote_control(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -9472
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @dvb_usb_disable_rc_polling to i32))
  %0 = load i32, ptr @dvb_usb_disable_rc_polling, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %bulk_mode = getelementptr i8, ptr %work, i32 -8996
  %1 = ptrtoint ptr %bulk_mode to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %bulk_mode, align 4, !range !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool1.not = icmp eq i8 %2, 0
  br i1 %tobool1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %rc_query = getelementptr i8, ptr %work, i32 -9004
  %3 = ptrtoint ptr %rc_query to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %rc_query, align 4
  %call = tail call i32 %4(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool5.not = icmp eq i32 %call, 0
  br i1 %tobool5.not, label %if.end.if.else.i_crit_edge, label %do.end

if.end.if.else.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.33, i32 noundef %call) #10
  br label %if.else.i

if.else.i:                                        ; preds = %do.end, %if.end.if.else.i_crit_edge
  %rc_interval = getelementptr i8, ptr %work, i32 -9000
  %5 = ptrtoint ptr %rc_interval to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %rc_interval, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %6) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %7 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %7, ptr noundef %work, i32 noundef %call2.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !33, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 328, i32 22}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 375, i32 5}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @dvb_usb_nec_rc_key_to_event._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @dvb_usb_nec_rc_key_to_event._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 386, i32 4}
!10 = !{ptr @dvb_usb_nec_rc_key_to_event._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @dvb_usb_nec_rc_key_to_event._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 392, i32 4}
!14 = !{ptr @dvb_usb_nec_rc_key_to_event._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @dvb_usb_nec_rc_key_to_event._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @__ksymtab_dvb_usb_nec_rc_key_to_event, !17, !"__ksymtab_dvb_usb_nec_rc_key_to_event", i1 false, i1 false}
!17 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 397, i32 1}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/usb.h", i32 912, i32 31}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 200, i32 20}
!22 = !{ptr @.str.12, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 211, i32 2}
!24 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @legacy_dvb_usb_remote_init._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @legacy_dvb_usb_remote_init._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 213, i32 3}
!29 = !{ptr @legacy_dvb_usb_remote_init._entry.14, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @legacy_dvb_usb_remote_init._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @legacy_dvb_usb_remote_init.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 230, i32 2}
!33 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @legacy_dvb_usb_remote_init.__key.18, !32, !"__key", i1 false, i1 false}
!35 = !{ptr @.str.19, !32, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 232, i32 2}
!38 = !{ptr @legacy_dvb_usb_remote_init._entry.20, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @legacy_dvb_usb_remote_init._entry_ptr.22, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 124, i32 3}
!42 = !{ptr @.str.24, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @legacy_dvb_usb_read_remote_control._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @legacy_dvb_usb_read_remote_control._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.26, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 133, i32 4}
!47 = !{ptr @legacy_dvb_usb_read_remote_control._entry.25, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @legacy_dvb_usb_read_remote_control._entry_ptr.27, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 141, i32 4}
!51 = !{ptr @legacy_dvb_usb_read_remote_control._entry.28, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @legacy_dvb_usb_read_remote_control._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @rc_core_dvb_usb_remote_init.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 302, i32 2}
!55 = !{ptr @rc_core_dvb_usb_remote_init.__key.31, !54, !"__key", i1 false, i1 false}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 306, i32 2}
!58 = !{ptr @rc_core_dvb_usb_remote_init._entry, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @rc_core_dvb_usb_remote_init._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-remote.c", i32 263, i32 3}
!62 = !{ptr @.str.34, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @dvb_usb_read_remote_control._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @dvb_usb_read_remote_control._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i8 0, i8 2}
!75 = !{!"auto-init"}
