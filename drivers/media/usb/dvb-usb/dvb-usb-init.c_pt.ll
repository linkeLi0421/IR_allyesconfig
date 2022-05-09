; ModuleID = '/llk/IR_all_yes/drivers/media/usb/dvb-usb/dvb-usb-init.c_pt.bc'
source_filename = "../drivers/media/usb/dvb-usb/dvb-usb-init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+dvb_usb_device_init\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usb_device_init\09\09\09\09"
module asm "\09.long\09__crc_dvb_usb_device_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usb_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usb_device_init\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usb_device_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+dvb_usb_device_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_dvb_usb_device_exit\09\09\09\09"
module asm "\09.long\09__crc_dvb_usb_device_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dvb_usb_device_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22dvb_usb_device_exit\22\09\09\09\09\09"
module asm "__kstrtabns_dvb_usb_device_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.101 }
%union.anon.101 = type { ptr }
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
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }

@__param_str_debug = internal constant [14 x i8] c"dvb_usb.debug\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@dvb_usb_debug = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_debug = internal constant %struct.kernel_param { ptr @__param_str_debug, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_debug } }, section "__param", align 4
@__UNIQUE_ID_debugtype386 = internal constant [27 x i8] c"dvb_usb.parmtype=debug:int\00", section ".modinfo", align 1
@__UNIQUE_ID_debug387 = internal constant [115 x i8] c"dvb_usb.parm=debug:set debugging level (1=info,xfer=2,pll=4,ts=8,err=16,rc=32,fw=64,mem=128,uxfer=256  (or-able)).\00", section ".modinfo", align 1
@__param_str_disable_rc_polling = internal constant [27 x i8] c"dvb_usb.disable_rc_polling\00", align 1
@dvb_usb_disable_rc_polling = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__param_disable_rc_polling = internal constant %struct.kernel_param { ptr @__param_str_disable_rc_polling, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_disable_rc_polling } }, section "__param", align 4
@__UNIQUE_ID_disable_rc_pollingtype388 = internal constant [40 x i8] c"dvb_usb.parmtype=disable_rc_polling:int\00", section ".modinfo", align 1
@__UNIQUE_ID_disable_rc_polling389 = internal constant [77 x i8] c"dvb_usb.parm=disable_rc_polling:disable remote control polling (default: 0).\00", section ".modinfo", align 1
@__param_str_force_pid_filter_usage = internal constant [31 x i8] c"dvb_usb.force_pid_filter_usage\00", align 1
@dvb_usb_force_pid_filter_usage = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__param_force_pid_filter_usage = internal constant %struct.kernel_param { ptr @__param_str_force_pid_filter_usage, ptr null, ptr @param_ops_int, i16 292, i8 -1, i8 0, %union.anon.101 { ptr @dvb_usb_force_pid_filter_usage } }, section "__param", align 4
@__UNIQUE_ID_force_pid_filter_usagetype390 = internal constant [44 x i8] c"dvb_usb.parmtype=force_pid_filter_usage:int\00", section ".modinfo", align 1
@__UNIQUE_ID_force_pid_filter_usage391 = internal constant [104 x i8] c"dvb_usb.parm=force_pid_filter_usage:force all dvb-usb-devices to use a PID filter, if any (default: 0).\00", section ".modinfo", align 1
@dvb_usb_device_power_ctrl._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 255, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"power control: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dvb_usb_device_power_ctrl\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/media/usb/dvb-usb/dvb-usb-init.c\00", [55 x i8] zeroinitializer }, align 32
@dvb_usb_device_power_ctrl._entry_ptr = internal global ptr @dvb_usb_device_power_ctrl._entry, section ".printk_index", align 4
@dvb_usb_device_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 281, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013dvb-usb: no memory for 'struct dvb_usb_device'\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_usb_device_init\00", [44 x i8] zeroinitializer }, align 32
@dvb_usb_device_init._entry_ptr = internal global ptr @dvb_usb_device_init._entry, section ".printk_index", align 4
@dvb_usb_device_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.4, ptr @.str.2, i32 289, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [101 x i8], [59 x i8] } { [101 x i8] c"something went very wrong, device was not found in current device list - let's see what comes next.\0A\00", [59 x i8] zeroinitializer }, align 32
@dvb_usb_device_init._entry_ptr.7 = internal global ptr @dvb_usb_device_init._entry.5, section ".printk_index", align 4
@dvb_usb_device_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.2, i32 295, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016dvb-usb: found a '%s' in cold state, will try to load a firmware\0A\00", [60 x i8] zeroinitializer }, align 32
@dvb_usb_device_init._entry_ptr.10 = internal global ptr @dvb_usb_device_init._entry.8, section ".printk_index", align 4
@dvb_usb_device_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\016dvb-usb: found a '%s' in warm state.\0A\00", [56 x i8] zeroinitializer }, align 32
@dvb_usb_device_init._entry_ptr.13 = internal global ptr @dvb_usb_device_init._entry.11, section ".printk_index", align 4
@dvb_usb_device_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.2, i32 310, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\016dvb-usb: %s error while loading driver (%d)\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_usb_device_init._entry_ptr.16 = internal global ptr @dvb_usb_device_init._entry.14, section ".printk_index", align 4
@dvb_usb_device_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.4, ptr @.str.2, i32 317, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\016dvb-usb: %s successfully initialized and connected.\0A\00", [41 x i8] zeroinitializer }, align 32
@dvb_usb_device_init._entry_ptr.19 = internal global ptr @dvb_usb_device_init._entry.17, section ".printk_index", align 4
@__kstrtab_dvb_usb_device_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usb_device_init = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usb_device_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usb_device_init to i32), ptr @__kstrtab_dvb_usb_device_init, ptr @__kstrtabns_dvb_usb_device_init }, section "___ksymtab+dvb_usb_device_init", align 4
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"generic DVB-USB module\00", [41 x i8] zeroinitializer }, align 32
@dvb_usb_device_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016dvb-usb: %s successfully deinitialized and disconnected.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_usb_device_exit\00", [44 x i8] zeroinitializer }, align 32
@dvb_usb_device_exit._entry_ptr = internal global ptr @dvb_usb_device_exit._entry, section ".printk_index", align 4
@__kstrtab_dvb_usb_device_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_dvb_usb_device_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_dvb_usb_device_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dvb_usb_device_exit to i32), ptr @__kstrtab_dvb_usb_device_exit, ptr @__kstrtabns_dvb_usb_device_exit }, section "___ksymtab+dvb_usb_device_exit", align 4
@__UNIQUE_ID_version392 = internal constant [20 x i8] c"dvb_usb.version=1.0\00", section ".modinfo", align 1
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dvb_usb\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1.0\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.23, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.24, ptr @.str.25 }, section "__modver", align 4
@__UNIQUE_ID_author393 = internal constant [63 x i8] c"dvb_usb.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [99 x i8] c"dvb_usb.description=A library module containing commonly used USB and DVB function USB DVB devices\00", section ".modinfo", align 1
@__UNIQUE_ID_file395 = internal constant [47 x i8] c"dvb_usb.file=drivers/media/usb/dvb-usb/dvb-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license396 = internal constant [20 x i8] c"dvb_usb.license=GPL\00", section ".modinfo", align 1
@dvb_usb_find_device._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 218, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"check for cold %x %x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dvb_usb_find_device\00", [44 x i8] zeroinitializer }, align 32
@dvb_usb_find_device._entry_ptr = internal global ptr @dvb_usb_find_device._entry, section ".printk_index", align 4
@dvb_usb_find_device._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 231, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"check for warm %x %x\0A\00", [42 x i8] zeroinitializer }, align 32
@dvb_usb_find_device._entry_ptr.30 = internal global ptr @dvb_usb_find_device._entry.28, section ".printk_index", align 4
@dvb_usb_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&d->data_mutex\00", [17 x i8] zeroinitializer }, align 32
@dvb_usb_init.__key.32 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&d->usb_mutex\00", [18 x i8] zeroinitializer }, align 32
@dvb_usb_init.__key.34 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&d->i2c_mutex\00", [18 x i8] zeroinitializer }, align 32
@dvb_usb_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 167, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\013dvb-usb: no memory for priv in 'struct dvb_usb_device'\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_usb_init\00", [19 x i8] zeroinitializer }, align 32
@dvb_usb_init._entry_ptr = internal global ptr @dvb_usb_init._entry, section ".printk_index", align 4
@dvb_usb_init._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 189, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013dvb-usb: could not initialize remote control.\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_usb_init._entry_ptr.40 = internal global ptr @dvb_usb_init._entry.38, section ".printk_index", align 4
@dvb_usb_adapter_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.2, i32 42, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [96 x i8], [32 x i8] } { [96 x i8] c"\013dvb-usb: This USB2.0 device cannot be run on a USB1.1 port. (it lacks a hardware PID filter)\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dvb_usb_adapter_init\00", [43 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_init._entry_ptr = internal global ptr @dvb_usb_adapter_init._entry, section ".printk_index", align 4
@dvb_usb_adapter_init._entry.43 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.42, ptr @.str.2, i32 48, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"\016dvb-usb: will use the device's hardware PID filter (table count: %d).\0A\00", [55 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_init._entry_ptr.45 = internal global ptr @dvb_usb_adapter_init._entry.43, section ".printk_index", align 4
@dvb_usb_adapter_init._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 52, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\016dvb-usb: will pass the complete MPEG2 transport stream to the software demuxer.\0A\00", [45 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_init._entry_ptr.48 = internal global ptr @dvb_usb_adapter_init._entry.46, section ".printk_index", align 4
@dvb_usb_adapter_init._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.42, ptr @.str.2, i32 60, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016dvb-usb: pid filter enabled by module option.\0A\00", [47 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_init._entry_ptr.51 = internal global ptr @dvb_usb_adapter_init._entry.49, section ".printk_index", align 4
@dvb_usb_adapter_init._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.42, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013dvb-usb: no memory for priv for adapter %d fe %d.\0A\00", [43 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_init._entry_ptr.54 = internal global ptr @dvb_usb_adapter_init._entry.52, section ".printk_index", align 4
@dvb_usb_adapter_init._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.42, ptr @.str.2, i32 77, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013dvb-usb: no memory for priv for adapter %d.\0A\00", [49 x i8] zeroinitializer }, align 32
@dvb_usb_adapter_init._entry_ptr.57 = internal global ptr @dvb_usb_adapter_init._entry.55, section ".printk_index", align 4
@dvb_usb_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"state before exiting everything: %x\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dvb_usb_exit\00", [19 x i8] zeroinitializer }, align 32
@dvb_usb_exit._entry_ptr = internal global ptr @dvb_usb_exit._entry, section ".printk_index", align 4
@dvb_usb_exit._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.2, i32 143, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"state should be zero now: %x\0A\00", [34 x i8] zeroinitializer }, align 32
@dvb_usb_exit._entry_ptr.62 = internal global ptr @dvb_usb_exit._entry.60, section ".printk_index", align 4
@___asan_gen_.63 = private unnamed_addr constant [14 x i8] c"dvb_usb_debug\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 14, i32 5 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"dvb_usb_disable_rc_polling\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 18, i32 5 }
@___asan_gen_.69 = private unnamed_addr constant [31 x i8] c"dvb_usb_force_pid_filter_usage\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 22, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 255, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 281, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 289, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 295, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 301, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 310, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 317, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 330, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 340, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 345, i32 1 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 218, i32 4 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 231, i32 4 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 158, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 159, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 160, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 167, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 189, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 42, i32 5 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 48, i32 5 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 52, i32 5 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 60, i32 5 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 68, i32 6 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 77, i32 5 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 139, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.243 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.244 = private constant [44 x i8] c"../drivers/media/usb/dvb-usb/dvb-usb-init.c\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.244, i32 143, i32 2 }
@llvm.compiler.used = appending global [98 x ptr] [ptr @__UNIQUE_ID_author393, ptr @__UNIQUE_ID_debug387, ptr @__UNIQUE_ID_debugtype386, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_disable_rc_polling389, ptr @__UNIQUE_ID_disable_rc_pollingtype388, ptr @__UNIQUE_ID_file395, ptr @__UNIQUE_ID_force_pid_filter_usage391, ptr @__UNIQUE_ID_force_pid_filter_usagetype390, ptr @__UNIQUE_ID_license396, ptr @__UNIQUE_ID_version392, ptr @__ksymtab_dvb_usb_device_exit, ptr @__ksymtab_dvb_usb_device_init, ptr @__modver_attr, ptr @__param_debug, ptr @__param_disable_rc_polling, ptr @__param_force_pid_filter_usage, ptr @dvb_usb_adapter_init._entry, ptr @dvb_usb_adapter_init._entry.43, ptr @dvb_usb_adapter_init._entry.46, ptr @dvb_usb_adapter_init._entry.49, ptr @dvb_usb_adapter_init._entry.52, ptr @dvb_usb_adapter_init._entry.55, ptr @dvb_usb_adapter_init._entry_ptr, ptr @dvb_usb_adapter_init._entry_ptr.45, ptr @dvb_usb_adapter_init._entry_ptr.48, ptr @dvb_usb_adapter_init._entry_ptr.51, ptr @dvb_usb_adapter_init._entry_ptr.54, ptr @dvb_usb_adapter_init._entry_ptr.57, ptr @dvb_usb_device_exit._entry, ptr @dvb_usb_device_exit._entry_ptr, ptr @dvb_usb_device_init._entry, ptr @dvb_usb_device_init._entry.11, ptr @dvb_usb_device_init._entry.14, ptr @dvb_usb_device_init._entry.17, ptr @dvb_usb_device_init._entry.5, ptr @dvb_usb_device_init._entry.8, ptr @dvb_usb_device_init._entry_ptr, ptr @dvb_usb_device_init._entry_ptr.10, ptr @dvb_usb_device_init._entry_ptr.13, ptr @dvb_usb_device_init._entry_ptr.16, ptr @dvb_usb_device_init._entry_ptr.19, ptr @dvb_usb_device_init._entry_ptr.7, ptr @dvb_usb_device_power_ctrl._entry, ptr @dvb_usb_device_power_ctrl._entry_ptr, ptr @dvb_usb_exit._entry, ptr @dvb_usb_exit._entry.60, ptr @dvb_usb_exit._entry_ptr, ptr @dvb_usb_exit._entry_ptr.62, ptr @dvb_usb_find_device._entry, ptr @dvb_usb_find_device._entry.28, ptr @dvb_usb_find_device._entry_ptr, ptr @dvb_usb_find_device._entry_ptr.30, ptr @dvb_usb_init._entry, ptr @dvb_usb_init._entry.38, ptr @dvb_usb_init._entry_ptr, ptr @dvb_usb_init._entry_ptr.40, ptr @dvb_usb_debug, ptr @dvb_usb_disable_rc_polling, ptr @dvb_usb_force_pid_filter_usage, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @dvb_usb_init.__key, ptr @.str.31, ptr @dvb_usb_init.__key.32, ptr @.str.33, ptr @dvb_usb_init.__key.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.41, ptr @.str.42, ptr @.str.44, ptr @.str.47, ptr @.str.50, ptr @.str.53, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.61], section "llvm.metadata"
@0 = internal global [61 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_debug to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_disable_rc_polling to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_force_pid_filter_usage to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_power_ctrl._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 101, i32 160, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_device_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_find_device._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_find_device._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_init.__key.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_init.__key.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_init._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_init._entry.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_init._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_init._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_init._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_adapter_init._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dvb_usb_exit._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_device_power_ctrl(ptr noundef %d, i32 noundef %onoff) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %onoff)
  %tobool.not = icmp eq i32 %onoff, 0
  %powered1 = getelementptr inbounds %struct.dvb_usb_device, ptr %d, i32 0, i32 4
  %0 = ptrtoint ptr %powered1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %powered1, align 4
  %. = select i1 %tobool.not, i32 -1, i32 1
  %dec = add i32 %1, %.
  store i32 %dec, ptr %powered1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %entry.do.body_crit_edge, label %lor.lhs.false

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

lor.lhs.false:                                    ; preds = %entry
  %tobool.not.not = xor i1 %tobool.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp5 = icmp eq i32 %dec, 1
  %or.cond = select i1 %tobool.not.not, i1 %cmp5, i1 false
  br i1 %or.cond, label %lor.lhs.false.do.body_crit_edge, label %lor.lhs.false.return_crit_edge

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %entry.do.body_crit_edge
  %2 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool7.not = icmp eq i32 %and, 0
  br i1 %tobool7.not, label %do.body.do.end11_crit_edge, label %do.end

do.body.do.end11_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %onoff) #9
  br label %do.end11

do.end11:                                         ; preds = %do.end, %do.body.do.end11_crit_edge
  %power_ctrl = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %d, i32 0, i32 10
  %3 = ptrtoint ptr %power_ctrl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %power_ctrl, align 4
  %tobool12.not = icmp eq ptr %4, null
  br i1 %tobool12.not, label %do.end11.return_crit_edge, label %if.then13

do.end11.return_crit_edge:                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then13:                                        ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #8
  %call16 = tail call i32 %4(ptr noundef %d, i32 noundef %onoff) #6
  br label %return

return:                                           ; preds = %if.then13, %do.end11.return_crit_edge, %lor.lhs.false.return_crit_edge
  %retval.0 = phi i32 [ %call16, %if.then13 ], [ 0, %do.end11.return_crit_edge ], [ 0, %lor.lhs.false.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dvb_usb_device_init(ptr nocapture noundef %intf, ptr noundef %props, ptr noundef %owner, ptr noundef writeonly %du, ptr noundef %adapter_nums) #0 align 64 {
entry:
  %desc.i = alloca ptr, align 4
  %cold = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cold) #6
  %cmp.not = icmp eq ptr %du, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %du to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %du, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call1.i.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 9592, i32 noundef 3520, i32 noundef 2) #10
  %tobool.not = icmp eq ptr %call1.i.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end4

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = call ptr @memcpy(ptr %call1.i.i.i, ptr %props, i32 1992)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %desc.i) #6
  %4 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %desc.i, align 4
  %5 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %cold, align 4
  %num_device_descs.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 17
  %6 = ptrtoint ptr %num_device_descs.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_device_descs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp176.i = icmp sgt i32 %7, 0
  br i1 %cmp176.i, label %for.cond1.preheader.lr.ph.i, label %if.end4.dvb_usb_find_device.exit.thread_crit_edge

if.end4.dvb_usb_find_device.exit.thread_crit_edge: ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_find_device.exit.thread

for.cond1.preheader.lr.ph.i:                      ; preds = %if.end4
  %idVendor24.i = getelementptr i8, ptr %1, i32 936
  %idProduct35.i = getelementptr i8, ptr %1, i32 938
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc112.i.for.cond1.preheader.i_crit_edge, %for.cond1.preheader.lr.ph.i
  %i.0177.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i ], [ %inc113.i, %for.inc112.i.for.cond1.preheader.i_crit_edge ]
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %for.cond1.preheader.i
  %j.0174.i = phi i32 [ 0, %for.cond1.preheader.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %arrayidx3.i = getelementptr %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 18, i32 %i.0177.i, i32 1, i32 %j.0174.i
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 4
  %cmp4.not.i = icmp eq ptr %9, null
  br i1 %cmp4.not.i, label %land.rhs.i.for.endthread-pre-split.i_crit_edge, label %do.body.i

land.rhs.i.for.endthread-pre-split.i_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.endthread-pre-split.i

do.body.i:                                        ; preds = %land.rhs.i
  %10 = load i32, ptr @dvb_usb_debug, align 4
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.do.end17.i_crit_edge, label %do.end.i

do.body.i.do.end17.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17.i

do.end.i:                                         ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %idVendor.i = getelementptr inbounds %struct.usb_device_id, ptr %9, i32 0, i32 1
  %11 = ptrtoint ptr %idVendor.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %idVendor.i, align 2
  %conv.i = zext i16 %12 to i32
  %idProduct.i = getelementptr inbounds %struct.usb_device_id, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %idProduct.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %idProduct.i, align 4
  %conv15.i = zext i16 %14 to i32
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26, i32 noundef %conv.i, i32 noundef %conv15.i) #9
  br label %do.end17.i

do.end17.i:                                       ; preds = %do.end.i, %do.body.i.do.end17.i_crit_edge
  %15 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.i, align 4
  %idVendor22.i = getelementptr inbounds %struct.usb_device_id, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %idVendor22.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %idVendor22.i, align 2
  %19 = ptrtoint ptr %idVendor24.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %idVendor24.i, align 8
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %18, i16 %21)
  %cmp26.i = icmp eq i16 %18, %21
  br i1 %cmp26.i, label %land.lhs.true.i, label %do.end17.i.for.inc.i_crit_edge

do.end17.i.for.inc.i_crit_edge:                   ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %do.end17.i
  %idProduct32.i = getelementptr inbounds %struct.usb_device_id, ptr %16, i32 0, i32 2
  %22 = ptrtoint ptr %idProduct32.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %idProduct32.i, align 4
  %24 = ptrtoint ptr %idProduct35.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %idProduct35.i, align 2
  %26 = tail call i16 @llvm.bswap.i16(i16 %25) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %23, i16 %26)
  %cmp37.i = icmp eq i16 %23, %26
  br i1 %cmp37.i, label %if.then39.i, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i

if.then39.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx.le.i = getelementptr %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 18, i32 %i.0177.i
  %27 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 1, ptr %cold, align 4
  %28 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %arrayidx.le.i, ptr %desc.i, align 4
  br label %for.end.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %do.end17.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %j.0174.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 15
  br i1 %exitcond.not.i, label %for.inc.i.for.endthread-pre-split.i_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs.i

for.inc.i.for.endthread-pre-split.i_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.endthread-pre-split.i

for.endthread-pre-split.i:                        ; preds = %for.inc.i.for.endthread-pre-split.i_crit_edge, %land.rhs.i.for.endthread-pre-split.i_crit_edge
  %29 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr.i = load ptr, ptr %desc.i, align 4
  br label %for.end.i

for.end.i:                                        ; preds = %for.endthread-pre-split.i, %if.then39.i
  %30 = phi ptr [ %.pr.i, %for.endthread-pre-split.i ], [ %arrayidx.le.i, %if.then39.i ]
  %cmp43.not.i = icmp eq ptr %30, null
  br i1 %cmp43.not.i, label %for.end.i.land.rhs50.i_crit_edge, label %for.end.i.for.end114.i_crit_edge

for.end.i.for.end114.i_crit_edge:                 ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114.i

for.end.i.land.rhs50.i_crit_edge:                 ; preds = %for.end.i
  br label %land.rhs50.i

land.rhs50.i:                                     ; preds = %for.inc109.i.land.rhs50.i_crit_edge, %for.end.i.land.rhs50.i_crit_edge
  %j.1175.i = phi i32 [ %inc110.i, %for.inc109.i.land.rhs50.i_crit_edge ], [ 0, %for.end.i.land.rhs50.i_crit_edge ]
  %arrayidx53.i = getelementptr %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 18, i32 %i.0177.i, i32 2, i32 %j.1175.i
  %31 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx53.i, align 4
  %cmp54.not.i = icmp eq ptr %32, null
  br i1 %cmp54.not.i, label %land.rhs50.i.for.inc112.i_crit_edge, label %do.body58.i

land.rhs50.i.for.inc112.i_crit_edge:              ; preds = %land.rhs50.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc112.i

do.body58.i:                                      ; preds = %land.rhs50.i
  %33 = load i32, ptr @dvb_usb_debug, align 4
  %and59.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and59.i)
  %tobool60.not.i = icmp eq i32 %and59.i, 0
  br i1 %tobool60.not.i, label %do.body58.i.do.end81.i_crit_edge, label %do.end64.i

do.body58.i.do.end81.i_crit_edge:                 ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end81.i

do.end64.i:                                       ; preds = %do.body58.i
  call void @__sanitizer_cov_trace_pc() #8
  %idVendor70.i = getelementptr inbounds %struct.usb_device_id, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %idVendor70.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %idVendor70.i, align 2
  %conv71.i = zext i16 %35 to i32
  %idProduct76.i = getelementptr inbounds %struct.usb_device_id, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %idProduct76.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %idProduct76.i, align 4
  %conv77.i = zext i16 %37 to i32
  %call78.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29, i32 noundef %conv71.i, i32 noundef %conv77.i) #9
  br label %do.end81.i

do.end81.i:                                       ; preds = %do.end64.i, %do.body58.i.do.end81.i_crit_edge
  %38 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx53.i, align 4
  %idVendor86.i = getelementptr inbounds %struct.usb_device_id, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %idVendor86.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %idVendor86.i, align 2
  %42 = ptrtoint ptr %idVendor24.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %idVendor24.i, align 8
  %44 = tail call i16 @llvm.bswap.i16(i16 %43) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %41, i16 %44)
  %cmp91.i = icmp eq i16 %41, %44
  br i1 %cmp91.i, label %land.lhs.true93.i, label %do.end81.i.for.inc109.i_crit_edge

do.end81.i.for.inc109.i_crit_edge:                ; preds = %do.end81.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc109.i

land.lhs.true93.i:                                ; preds = %do.end81.i
  %idProduct98.i = getelementptr inbounds %struct.usb_device_id, ptr %39, i32 0, i32 2
  %45 = ptrtoint ptr %idProduct98.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %idProduct98.i, align 4
  %47 = ptrtoint ptr %idProduct35.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %idProduct35.i, align 2
  %49 = tail call i16 @llvm.bswap.i16(i16 %48) #6
  call void @__sanitizer_cov_trace_cmp2(i16 %46, i16 %49)
  %cmp103.i = icmp eq i16 %46, %49
  br i1 %cmp103.i, label %if.then105.i, label %land.lhs.true93.i.for.inc109.i_crit_edge

land.lhs.true93.i.for.inc109.i_crit_edge:         ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc109.i

if.then105.i:                                     ; preds = %land.lhs.true93.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx52.le.i = getelementptr %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 18, i32 %i.0177.i
  %50 = ptrtoint ptr %cold to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 0, ptr %cold, align 4
  %51 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %arrayidx52.le.i, ptr %desc.i, align 4
  br label %for.inc112.i

for.inc109.i:                                     ; preds = %land.lhs.true93.i.for.inc109.i_crit_edge, %do.end81.i.for.inc109.i_crit_edge
  %inc110.i = add nuw nsw i32 %j.1175.i, 1
  %exitcond180.not.i = icmp eq i32 %inc110.i, 15
  br i1 %exitcond180.not.i, label %for.inc109.i.for.inc112.i_crit_edge, label %for.inc109.i.land.rhs50.i_crit_edge

for.inc109.i.land.rhs50.i_crit_edge:              ; preds = %for.inc109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.rhs50.i

for.inc109.i.for.inc112.i_crit_edge:              ; preds = %for.inc109.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc112.i

for.inc112.i:                                     ; preds = %for.inc109.i.for.inc112.i_crit_edge, %if.then105.i, %land.rhs50.i.for.inc112.i_crit_edge
  %inc113.i = add nuw nsw i32 %i.0177.i, 1
  %52 = ptrtoint ptr %num_device_descs.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %num_device_descs.i, align 4
  %cmp.i = icmp slt i32 %inc113.i, %53
  br i1 %cmp.i, label %for.inc112.i.for.cond1.preheader.i_crit_edge, label %for.inc112.i.for.end114.i_crit_edge

for.inc112.i.for.end114.i_crit_edge:              ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end114.i

for.inc112.i.for.cond1.preheader.i_crit_edge:     ; preds = %for.inc112.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i

for.end114.i:                                     ; preds = %for.inc112.i.for.end114.i_crit_edge, %for.end.i.for.end114.i_crit_edge
  %54 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr181.i = load ptr, ptr %desc.i, align 4
  %cmp115.not.i = icmp eq ptr %.pr181.i, null
  br i1 %cmp115.not.i, label %for.end114.i.dvb_usb_find_device.exit.thread_crit_edge, label %land.lhs.true117.i

for.end114.i.dvb_usb_find_device.exit.thread_crit_edge: ; preds = %for.end114.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_find_device.exit.thread

land.lhs.true117.i:                               ; preds = %for.end114.i
  %identify_state.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 12
  %55 = ptrtoint ptr %identify_state.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %identify_state.i, align 4
  %cmp118.not.i = icmp eq ptr %56, null
  br i1 %cmp118.not.i, label %land.lhs.true117.i.dvb_usb_find_device.exit_crit_edge, label %if.then120.i

land.lhs.true117.i.dvb_usb_find_device.exit_crit_edge: ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_find_device.exit

if.then120.i:                                     ; preds = %land.lhs.true117.i
  call void @__sanitizer_cov_trace_pc() #8
  %call122.i = call i32 %56(ptr noundef %add.ptr.i, ptr noundef %call1.i.i.i, ptr noundef nonnull %desc.i, ptr noundef nonnull %cold) #6
  br label %dvb_usb_find_device.exit

dvb_usb_find_device.exit.thread:                  ; preds = %for.end114.i.dvb_usb_find_device.exit.thread_crit_edge, %if.end4.dvb_usb_find_device.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #6
  br label %do.body10

dvb_usb_find_device.exit:                         ; preds = %if.then120.i, %land.lhs.true117.i.dvb_usb_find_device.exit_crit_edge
  %57 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %.pr = load ptr, ptr %desc.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %desc.i) #6
  %tobool8.not = icmp eq ptr %.pr, null
  br i1 %tobool8.not, label %dvb_usb_find_device.exit.do.body10_crit_edge, label %if.end21

dvb_usb_find_device.exit.do.body10_crit_edge:     ; preds = %dvb_usb_find_device.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body10

do.body10:                                        ; preds = %dvb_usb_find_device.exit.do.body10_crit_edge, %dvb_usb_find_device.exit.thread
  %58 = load i32, ptr @dvb_usb_debug, align 4
  %and = and i32 %58, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool11.not = icmp eq i32 %and, 0
  br i1 %tobool11.not, label %do.body10.error_crit_edge, label %do.end15

do.body10.error_crit_edge:                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end15:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #8
  %call17 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %error

if.end21:                                         ; preds = %dvb_usb_find_device.exit
  %59 = ptrtoint ptr %cold to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cold, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool22.not = icmp eq i32 %60, 0
  br i1 %tobool22.not, label %if.end21.do.end37_crit_edge, label %do.end26

if.end21.do.end37_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

do.end26:                                         ; preds = %if.end21
  %61 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.pr, align 4
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %62) #9
  %call29 = call i32 @dvb_usb_download_firmware(ptr noundef %add.ptr.i, ptr noundef %props) #6
  %no_reconnect = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %props, i32 0, i32 4
  %63 = ptrtoint ptr %no_reconnect to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %no_reconnect, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool30.not = icmp ne i32 %64, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp31.not = icmp eq i32 %call29, 0
  %or.cond = select i1 %tobool30.not, i1 %cmp31.not, i1 false
  br i1 %or.cond, label %do.end26.do.end37_crit_edge, label %do.end26.error_crit_edge

do.end26.error_crit_edge:                         ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %error

do.end26.do.end37_crit_edge:                      ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end37

do.end37:                                         ; preds = %do.end26.do.end37_crit_edge, %if.end21.do.end37_crit_edge
  %65 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %.pr, align 4
  %call40 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %66) #9
  %udev41 = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 2
  %67 = ptrtoint ptr %udev41 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %add.ptr.i, ptr %udev41, align 4
  %desc42 = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 1
  %68 = ptrtoint ptr %desc42 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %.pr, ptr %desc42, align 8
  %owner43 = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 17
  %69 = ptrtoint ptr %owner43 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %owner, ptr %owner43, align 4
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %70 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call1.i.i.i, ptr %driver_data.i.i, align 4
  %data_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %data_mutex.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @dvb_usb_init.__key) #6
  %usb_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %usb_mutex.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @dvb_usb_init.__key.32) #6
  %i2c_mutex.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 7
  call void @__mutex_init(ptr noundef %i2c_mutex.i, ptr noundef nonnull @.str.35, ptr noundef nonnull @dvb_usb_init.__key.34) #6
  %state.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 3
  %71 = ptrtoint ptr %state.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %state.i, align 16
  %size_of_priv.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 5
  %72 = ptrtoint ptr %size_of_priv.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %size_of_priv.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %cmp.i93 = icmp sgt i32 %73, 0
  br i1 %cmp.i93, label %if.end8.i.i.i, label %do.end37.if.end26.i_crit_edge

do.end37.if.end26.i_crit_edge:                    ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end8.i.i.i:                                    ; preds = %do.end37
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %73, i32 noundef 3520) #10
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 18
  %74 = ptrtoint ptr %priv.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call9.i.i.i, ptr %priv.i, align 16
  %cmp10.i = icmp eq ptr %call9.i.i.i, null
  br i1 %cmp10.i, label %dvb_usb_init.exit.thread100, label %if.end.i

dvb_usb_init.exit.thread100:                      ; preds = %if.end8.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call15.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #9
  br label %do.end49

if.end.i:                                         ; preds = %if.end8.i.i.i
  %priv_init.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 6
  %75 = ptrtoint ptr %priv_init.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %priv_init.i, align 8
  %cmp17.not.i = icmp eq ptr %76, null
  br i1 %cmp17.not.i, label %if.end.i.if.end26.i_crit_edge, label %if.then18.i

if.end.i.if.end26.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.then18.i:                                      ; preds = %if.end.i
  %call21.i = call i32 %76(ptr noundef %call1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp22.not.i = icmp eq i32 %call21.i, 0
  br i1 %cmp22.not.i, label %if.then18.i.if.end26.i_crit_edge, label %if.then18.i.dvb_usb_init.exit_crit_edge

if.then18.i.dvb_usb_init.exit_crit_edge:          ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_init.exit

if.then18.i.if.end26.i_crit_edge:                 ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then18.i.if.end26.i_crit_edge, %if.end.i.if.end26.i_crit_edge, %do.end37.if.end26.i_crit_edge
  %powered1.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 4
  %77 = ptrtoint ptr %powered1.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %powered1.i.i, align 4
  %dec.i.i = add i32 %78, 1
  store i32 %dec.i.i, ptr %powered1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dec.i.i)
  %switch.i = icmp ult i32 %dec.i.i, 2
  br i1 %switch.i, label %do.body.i.i, label %if.end26.i.dvb_usb_device_power_ctrl.exit.i_crit_edge

if.end26.i.dvb_usb_device_power_ctrl.exit.i_crit_edge: ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_device_power_ctrl.exit.i

do.body.i.i:                                      ; preds = %if.end26.i
  %79 = load i32, ptr @dvb_usb_debug, align 4
  %and.i.i = and i32 %79, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool7.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool7.not.i.i, label %do.body.i.i.do.end11.i.i_crit_edge, label %do.end.i.i

do.body.i.i.do.end11.i.i_crit_edge:               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i.i

do.end.i.i:                                       ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 1) #9
  br label %do.end11.i.i

do.end11.i.i:                                     ; preds = %do.end.i.i, %do.body.i.i.do.end11.i.i_crit_edge
  %power_ctrl.i.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 10
  %80 = ptrtoint ptr %power_ctrl.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %power_ctrl.i.i, align 4
  %tobool12.not.i.i = icmp eq ptr %81, null
  br i1 %tobool12.not.i.i, label %do.end11.i.i.dvb_usb_device_power_ctrl.exit.i_crit_edge, label %if.then13.i.i

do.end11.i.i.dvb_usb_device_power_ctrl.exit.i_crit_edge: ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_device_power_ctrl.exit.i

if.then13.i.i:                                    ; preds = %do.end11.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i.i = call i32 %81(ptr noundef %call1.i.i.i, i32 noundef 1) #6
  br label %dvb_usb_device_power_ctrl.exit.i

dvb_usb_device_power_ctrl.exit.i:                 ; preds = %if.then13.i.i, %do.end11.i.i.dvb_usb_device_power_ctrl.exit.i_crit_edge, %if.end26.i.dvb_usb_device_power_ctrl.exit.i_crit_edge
  %call28.i = call i32 @dvb_usb_i2c_init(ptr noundef %call1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool.not.i94 = icmp eq i32 %call28.i, 0
  br i1 %tobool.not.i94, label %if.end30.i, label %dvb_usb_device_power_ctrl.exit.i.err_i2c_init.i_crit_edge

dvb_usb_device_power_ctrl.exit.i.err_i2c_init.i_crit_edge: ; preds = %dvb_usb_device_power_ctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_i2c_init.i

if.end30.i:                                       ; preds = %dvb_usb_device_power_ctrl.exit.i
  %num_adapters.i.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 8
  %82 = ptrtoint ptr %num_adapters.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %num_adapters.i.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %cmp283.i.i = icmp sgt i32 %83, 0
  br i1 %cmp283.i.i, label %for.body.lr.ph.i.i, label %if.end30.i.for.end133.i.i_crit_edge

if.end30.i.for.end133.i.i_crit_edge:              ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end133.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end30.i
  %num_adapters_initialized.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 9
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end129.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %n.0284.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %inc132.i.i, %if.end129.i.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i
  %84 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %call1.i.i.i, ptr %arrayidx.i.i, align 8
  %conv.i.i = trunc i32 %n.0284.i.i to i8
  %id.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 3
  %85 = ptrtoint ptr %id.i.i to i32
  call void @__asan_store1_noabort(i32 %85)
  store i8 %conv.i.i, ptr %id.i.i, align 4
  %props1.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 1
  %arrayidx4.i.i = getelementptr %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 9, i32 %n.0284.i.i
  %86 = call ptr @memcpy(ptr %props1.i.i, ptr %arrayidx4.i.i, i32 180)
  %num_frontends.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 1, i32 2
  %87 = ptrtoint ptr %num_frontends.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_frontends.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %cmp7280.i.i = icmp sgt i32 %88, 0
  br i1 %cmp7280.i.i, label %for.body.i.i.for.body9.i.i_crit_edge, label %for.body.i.i.for.end.i.i_crit_edge

for.body.i.i.for.end.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.body.i.i.for.body9.i.i_crit_edge:             ; preds = %for.body.i.i
  br label %for.body9.i.i

for.body9.i.i:                                    ; preds = %for.inc.i.i.for.body9.i.i_crit_edge, %for.body.i.i.for.body9.i.i_crit_edge
  %o.0281.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body9.i.i_crit_edge ], [ 0, %for.body.i.i.for.body9.i.i_crit_edge ]
  %arrayidx12.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 1, i32 3, i32 %o.0281.i.i
  %89 = ptrtoint ptr %udev41 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %udev41, align 4
  %speed.i.i = getelementptr inbounds %struct.usb_device, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %speed.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %speed.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %92)
  %cmp13.i.i = icmp eq i32 %92, 2
  %93 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx12.i.i, align 8
  br i1 %cmp13.i.i, label %land.lhs.true.i.i, label %lor.lhs.false.i88.i

land.lhs.true.i.i:                                ; preds = %for.body9.i.i
  %and.i85.i = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i85.i)
  %tobool.not.i.i = icmp eq i32 %and.i85.i, 0
  br i1 %tobool.not.i.i, label %do.end.i87.i, label %land.lhs.true.i.i.do.end29.i.i_crit_edge

land.lhs.true.i.i.do.end29.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i.i

do.end.i87.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i86.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41) #9
  br label %err_adapter_init.i

lor.lhs.false.i88.i:                              ; preds = %for.body9.i.i
  %and24.i.i = and i32 %94, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i.i)
  %tobool25.not.i.i = icmp eq i32 %and24.i.i, 0
  br i1 %tobool25.not.i.i, label %do.end38.i.i, label %lor.lhs.false.i88.i.do.end29.i.i_crit_edge

lor.lhs.false.i88.i.do.end29.i.i_crit_edge:       ; preds = %lor.lhs.false.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end29.i.i

do.end29.i.i:                                     ; preds = %lor.lhs.false.i88.i.do.end29.i.i_crit_edge, %land.lhs.true.i.i.do.end29.i.i_crit_edge
  %pid_filter_count.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 1, i32 3, i32 %o.0281.i.i, i32 1
  %95 = ptrtoint ptr %pid_filter_count.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %pid_filter_count.i.i, align 4
  %call31.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %96) #9
  %pid_filtering.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 9, i32 %o.0281.i.i, i32 4
  %97 = ptrtoint ptr %pid_filtering.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 1, ptr %pid_filtering.i.i, align 4
  %98 = ptrtoint ptr %pid_filter_count.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %pid_filter_count.i.i, align 4
  br label %if.end47.i.i

do.end38.i.i:                                     ; preds = %lor.lhs.false.i88.i
  call void @__sanitizer_cov_trace_pc() #8
  %call40.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.47) #9
  %pid_filtering43.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 9, i32 %o.0281.i.i, i32 4
  %100 = ptrtoint ptr %pid_filtering43.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %pid_filtering43.i.i, align 4
  br label %if.end47.i.i

if.end47.i.i:                                     ; preds = %do.end38.i.i, %do.end29.i.i
  %.sink.i.i = phi i32 [ 255, %do.end38.i.i ], [ %99, %do.end29.i.i ]
  %max_feed_count46.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 9, i32 %o.0281.i.i, i32 5
  %101 = ptrtoint ptr %max_feed_count46.i.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %.sink.i.i, ptr %max_feed_count46.i.i, align 8
  %pid_filtering50.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 9, i32 %o.0281.i.i, i32 4
  %102 = ptrtoint ptr %pid_filtering50.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %pid_filtering50.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool51.not.i.i = icmp eq i32 %103, 0
  br i1 %tobool51.not.i.i, label %land.lhs.true52.i.i, label %if.end47.i.i.if.end71.i.i_crit_edge

if.end47.i.i.if.end71.i.i_crit_edge:              ; preds = %if.end47.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i.i

land.lhs.true52.i.i:                              ; preds = %if.end47.i.i
  %104 = load i32, ptr @dvb_usb_force_pid_filter_usage, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool53.not.i.i = icmp eq i32 %104, 0
  br i1 %tobool53.not.i.i, label %land.lhs.true52.i.i.if.end71.i.i_crit_edge, label %land.lhs.true54.i.i

land.lhs.true52.i.i.if.end71.i.i_crit_edge:       ; preds = %land.lhs.true52.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i.i

land.lhs.true54.i.i:                              ; preds = %land.lhs.true52.i.i
  %105 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %arrayidx12.i.i, align 8
  %and56.i.i = and i32 %106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56.i.i)
  %tobool57.not.i.i = icmp eq i32 %and56.i.i, 0
  br i1 %tobool57.not.i.i, label %land.lhs.true54.i.i.if.end71.i.i_crit_edge, label %do.end61.i.i

land.lhs.true54.i.i.if.end71.i.i_crit_edge:       ; preds = %land.lhs.true54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end71.i.i

do.end61.i.i:                                     ; preds = %land.lhs.true54.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call63.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50) #9
  %107 = ptrtoint ptr %pid_filtering50.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 1, ptr %pid_filtering50.i.i, align 4
  %pid_filter_count67.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 1, i32 3, i32 %o.0281.i.i, i32 1
  %108 = ptrtoint ptr %pid_filter_count67.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %pid_filter_count67.i.i, align 4
  %110 = ptrtoint ptr %max_feed_count46.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %109, ptr %max_feed_count46.i.i, align 8
  br label %if.end71.i.i

if.end71.i.i:                                     ; preds = %do.end61.i.i, %land.lhs.true54.i.i.if.end71.i.i_crit_edge, %land.lhs.true52.i.i.if.end71.i.i_crit_edge, %if.end47.i.i.if.end71.i.i_crit_edge
  %size_of_priv.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 1, i32 3, i32 %o.0281.i.i, i32 8
  %111 = ptrtoint ptr %size_of_priv.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %size_of_priv.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %112)
  %cmp72.i.i = icmp sgt i32 %112, 0
  br i1 %cmp72.i.i, label %if.end8.i.i.i.i, label %if.end71.i.i.for.inc.i.i_crit_edge

if.end71.i.i.for.inc.i.i_crit_edge:               ; preds = %if.end71.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

if.end8.i.i.i.i:                                  ; preds = %if.end71.i.i
  %call9.i.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %112, i32 noundef 3520) #10
  %priv.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 9, i32 %o.0281.i.i, i32 6
  %113 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr %call9.i.i.i.i, ptr %priv.i.i, align 4
  %cmp82.i.i = icmp eq ptr %call9.i.i.i.i, null
  br i1 %cmp82.i.i, label %do.end87.i.i, label %if.end8.i.i.i.i.for.inc.i.i_crit_edge

if.end8.i.i.i.i.for.inc.i.i_crit_edge:            ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.i.i

do.end87.i.i:                                     ; preds = %if.end8.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call89.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53, i32 noundef %n.0284.i.i, i32 noundef %o.0281.i.i) #9
  br label %err_adapter_init.i

for.inc.i.i:                                      ; preds = %if.end8.i.i.i.i.for.inc.i.i_crit_edge, %if.end71.i.i.for.inc.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %o.0281.i.i, 1
  %114 = ptrtoint ptr %num_frontends.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %num_frontends.i.i, align 4
  %cmp7.i.i = icmp slt i32 %inc.i.i, %115
  br i1 %cmp7.i.i, label %for.inc.i.i.for.body9.i.i_crit_edge, label %for.inc.i.i.for.end.i.i_crit_edge

for.inc.i.i.for.end.i.i_crit_edge:                ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i.i

for.inc.i.i.for.body9.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9.i.i

for.end.i.i:                                      ; preds = %for.inc.i.i.for.end.i.i_crit_edge, %for.body.i.i.for.end.i.i_crit_edge
  %116 = ptrtoint ptr %props1.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %props1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp94.i.i = icmp sgt i32 %117, 0
  br i1 %cmp94.i.i, label %if.end8.i.i254.i.i, label %for.end.i.i.if.end111.i.i_crit_edge

for.end.i.i.if.end111.i.i_crit_edge:              ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i.i

if.end8.i.i254.i.i:                               ; preds = %for.end.i.i
  %call9.i.i253.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %117, i32 noundef 3520) #10
  %priv100.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 12
  %118 = ptrtoint ptr %priv100.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call9.i.i253.i.i, ptr %priv100.i.i, align 8
  %cmp102.i.i = icmp eq ptr %call9.i.i253.i.i, null
  br i1 %cmp102.i.i, label %do.end107.i.i, label %if.end8.i.i254.i.i.if.end111.i.i_crit_edge

if.end8.i.i254.i.i.if.end111.i.i_crit_edge:       ; preds = %if.end8.i.i254.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end111.i.i

do.end107.i.i:                                    ; preds = %if.end8.i.i254.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call109.i.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56, i32 noundef %n.0284.i.i) #9
  br label %err_adapter_init.i

if.end111.i.i:                                    ; preds = %if.end8.i.i254.i.i.if.end111.i.i_crit_edge, %for.end.i.i.if.end111.i.i_crit_edge
  %call112.i.i = call i32 @dvb_usb_adapter_stream_init(ptr noundef %arrayidx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i.i)
  %tobool113.not.i.i = icmp eq i32 %call112.i.i, 0
  br i1 %tobool113.not.i.i, label %if.end115.i.i, label %if.end111.i.i.err_adapter_init.i_crit_edge

if.end111.i.i.err_adapter_init.i_crit_edge:       ; preds = %if.end111.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_adapter_init.i

if.end115.i.i:                                    ; preds = %if.end111.i.i
  %call116.i.i = call i32 @dvb_usb_adapter_dvb_init(ptr noundef %arrayidx.i.i, ptr noundef %adapter_nums) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116.i.i)
  %tobool117.not.i.i = icmp eq i32 %call116.i.i, 0
  br i1 %tobool117.not.i.i, label %if.end119.i.i, label %if.end115.i.i.dvb_init_err.i.i_crit_edge

if.end115.i.i.dvb_init_err.i.i_crit_edge:         ; preds = %if.end115.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_init_err.i.i

if.end119.i.i:                                    ; preds = %if.end115.i.i
  %call120.i.i = call i32 @dvb_usb_adapter_frontend_init(ptr noundef %arrayidx.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120.i.i)
  %tobool121.not.i.i = icmp eq i32 %call120.i.i, 0
  br i1 %tobool121.not.i.i, label %if.end123.i.i, label %frontend_init_err.i.i

if.end123.i.i:                                    ; preds = %if.end119.i.i
  %arrayidx125.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 9, i32 1
  %119 = ptrtoint ptr %arrayidx125.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %arrayidx125.i.i, align 8
  %tobool127.not.i.i = icmp eq ptr %120, null
  br i1 %tobool127.not.i.i, label %if.end123.i.i.if.end129.i.i_crit_edge, label %if.then128.i.i

if.end123.i.i.if.end129.i.i_crit_edge:            ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end129.i.i

if.then128.i.i:                                   ; preds = %if.end123.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %mfe_shared.i.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.0284.i.i, i32 5, i32 8
  %121 = ptrtoint ptr %mfe_shared.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %mfe_shared.i.i, align 8
  br label %if.end129.i.i

if.end129.i.i:                                    ; preds = %if.then128.i.i, %if.end123.i.i.if.end129.i.i_crit_edge
  %122 = ptrtoint ptr %num_adapters_initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %num_adapters_initialized.i.i, align 64
  %inc130.i.i = add i32 %123, 1
  store i32 %inc130.i.i, ptr %num_adapters_initialized.i.i, align 64
  %124 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %state.i, align 16
  %or.i.i = or i32 %125, 2
  store i32 %or.i.i, ptr %state.i, align 16
  %inc132.i.i = add nuw nsw i32 %n.0284.i.i, 1
  %126 = ptrtoint ptr %num_adapters.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %num_adapters.i.i, align 32
  %cmp.i91.i = icmp slt i32 %inc132.i.i, %127
  br i1 %cmp.i91.i, label %if.end129.i.i.for.body.i.i_crit_edge, label %if.end129.i.i.for.end133.i.i_crit_edge

if.end129.i.i.for.end133.i.i_crit_edge:           ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end133.i.i

if.end129.i.i.for.body.i.i_crit_edge:             ; preds = %if.end129.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

for.end133.i.i:                                   ; preds = %if.end129.i.i.for.end133.i.i_crit_edge, %if.end30.i.for.end133.i.i_crit_edge
  %generic_bulk_ctrl_endpoint.i.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 15
  %128 = ptrtoint ptr %generic_bulk_ctrl_endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %generic_bulk_ctrl_endpoint.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %cmp135.not.i.i = icmp eq i32 %129, 0
  br i1 %cmp135.not.i.i, label %for.end133.i.i.if.end34.i_crit_edge, label %if.then137.i.i

for.end133.i.i.if.end34.i_crit_edge:              ; preds = %for.end133.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end34.i

if.then137.i.i:                                   ; preds = %for.end133.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %130 = ptrtoint ptr %udev41 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %udev41, align 4
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %131, align 8
  %shl.i.i.i = shl i32 %133, 8
  %shl1.i.i.i = shl i32 %129, 15
  %or.i.i.i = or i32 %shl1.i.i.i, %shl.i.i.i
  %or143.i.i = or i32 %or.i.i.i, -1073741824
  %call144.i.i = call i32 @usb_clear_halt(ptr noundef %131, i32 noundef %or143.i.i) #6
  %134 = ptrtoint ptr %udev41 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %udev41, align 4
  %136 = ptrtoint ptr %generic_bulk_ctrl_endpoint.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %generic_bulk_ctrl_endpoint.i.i, align 4
  %138 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %135, align 8
  %shl.i257.i.i = shl i32 %139, 8
  %shl1.i258.i.i = shl i32 %137, 15
  %or.i259.i.i = or i32 %shl1.i258.i.i, %shl.i257.i.i
  %or151.i.i = or i32 %or.i259.i.i, -1073741696
  %call152.i.i = call i32 @usb_clear_halt(ptr noundef %135, i32 noundef %or151.i.i) #6
  br label %if.end34.i

frontend_init_err.i.i:                            ; preds = %if.end119.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call154.i.i = call i32 @dvb_usb_adapter_dvb_exit(ptr noundef %arrayidx.i.i) #6
  br label %dvb_init_err.i.i

dvb_init_err.i.i:                                 ; preds = %frontend_init_err.i.i, %if.end115.i.i.dvb_init_err.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call120.i.i, %frontend_init_err.i.i ], [ %call116.i.i, %if.end115.i.i.dvb_init_err.i.i_crit_edge ]
  %call155.i.i = call i32 @dvb_usb_adapter_stream_exit(ptr noundef %arrayidx.i.i) #6
  br label %err_adapter_init.i

if.end34.i:                                       ; preds = %if.then137.i.i, %for.end133.i.i.if.end34.i_crit_edge
  %call35.i = call i32 @dvb_usb_remote_init(ptr noundef %call1.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i)
  %tobool36.not.i = icmp eq i32 %call35.i, 0
  br i1 %tobool36.not.i, label %if.end34.i.if.end43.i_crit_edge, label %do.end40.i

if.end34.i.if.end43.i_crit_edge:                  ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end43.i

do.end40.i:                                       ; preds = %if.end34.i
  call void @__sanitizer_cov_trace_pc() #8
  %call42.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39) #9
  br label %if.end43.i

if.end43.i:                                       ; preds = %do.end40.i, %if.end34.i.if.end43.i_crit_edge
  %140 = ptrtoint ptr %powered1.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %powered1.i.i, align 4
  %dec.i93.i = add i32 %141, -1
  store i32 %dec.i93.i, ptr %powered1.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i93.i)
  %cmp.i94.i = icmp eq i32 %dec.i93.i, 0
  br i1 %cmp.i94.i, label %do.body.i99.i, label %if.end43.i.if.end53_crit_edge

if.end43.i.if.end53_crit_edge:                    ; preds = %if.end43.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.body.i99.i:                                    ; preds = %if.end43.i
  %142 = load i32, ptr @dvb_usb_debug, align 4
  %and.i97.i = and i32 %142, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i97.i)
  %tobool7.not.i98.i = icmp eq i32 %and.i97.i, 0
  br i1 %tobool7.not.i98.i, label %do.body.i99.i.do.end11.i104.i_crit_edge, label %do.end.i101.i

do.body.i99.i.do.end11.i104.i_crit_edge:          ; preds = %do.body.i99.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end11.i104.i

do.end.i101.i:                                    ; preds = %do.body.i99.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i100.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef 0) #9
  br label %do.end11.i104.i

do.end11.i104.i:                                  ; preds = %do.end.i101.i, %do.body.i99.i.do.end11.i104.i_crit_edge
  %power_ctrl.i102.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 10
  %143 = ptrtoint ptr %power_ctrl.i102.i to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %power_ctrl.i102.i, align 4
  %tobool12.not.i103.i = icmp eq ptr %144, null
  br i1 %tobool12.not.i103.i, label %do.end11.i104.i.if.end53_crit_edge, label %if.then13.i106.i

do.end11.i104.i.if.end53_crit_edge:               ; preds = %do.end11.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.then13.i106.i:                                 ; preds = %do.end11.i104.i
  call void @__sanitizer_cov_trace_pc() #8
  %call16.i105.i = call i32 %144(ptr noundef %call1.i.i.i, i32 noundef 0) #6
  br label %if.end53

err_adapter_init.i:                               ; preds = %dvb_init_err.i.i, %if.end111.i.i.err_adapter_init.i_crit_edge, %do.end107.i.i, %do.end87.i.i, %do.end.i87.i
  %retval.3.i.ph.i = phi i32 [ -19, %do.end.i87.i ], [ -12, %do.end87.i.i ], [ %ret.0.i.i, %dvb_init_err.i.i ], [ -12, %do.end107.i.i ], [ %call112.i.i, %if.end111.i.i.err_adapter_init.i_crit_edge ]
  %145 = ptrtoint ptr %num_adapters_initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_adapters_initialized.i.i, align 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %cmp1.i.i = icmp sgt i32 %146, 0
  br i1 %cmp1.i.i, label %err_adapter_init.i.for.body.i115.i_crit_edge, label %err_adapter_init.i.dvb_usb_adapter_exit.exit.i_crit_edge

err_adapter_init.i.dvb_usb_adapter_exit.exit.i_crit_edge: ; preds = %err_adapter_init.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_adapter_exit.exit.i

err_adapter_init.i.for.body.i115.i_crit_edge:     ; preds = %err_adapter_init.i
  br label %for.body.i115.i

for.body.i115.i:                                  ; preds = %for.body.i115.i.for.body.i115.i_crit_edge, %err_adapter_init.i.for.body.i115.i_crit_edge
  %n.02.i.i = phi i32 [ %inc.i113.i, %for.body.i115.i.for.body.i115.i_crit_edge ], [ 0, %err_adapter_init.i.for.body.i115.i_crit_edge ]
  %arrayidx.i110.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.02.i.i
  %call.i111.i = call i32 @dvb_usb_adapter_frontend_exit(ptr noundef %arrayidx.i110.i) #6
  %call3.i.i = call i32 @dvb_usb_adapter_dvb_exit(ptr noundef %arrayidx.i110.i) #6
  %call6.i.i = call i32 @dvb_usb_adapter_stream_exit(ptr noundef %arrayidx.i110.i) #6
  %priv.i112.i = getelementptr %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 10, i32 %n.02.i.i, i32 12
  %147 = ptrtoint ptr %priv.i112.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %priv.i112.i, align 8
  call void @kfree(ptr noundef %148) #6
  %inc.i113.i = add nuw nsw i32 %n.02.i.i, 1
  %149 = ptrtoint ptr %num_adapters_initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %num_adapters_initialized.i.i, align 64
  %cmp.i114.i = icmp slt i32 %inc.i113.i, %150
  br i1 %cmp.i114.i, label %for.body.i115.i.for.body.i115.i_crit_edge, label %for.body.i115.i.dvb_usb_adapter_exit.exit.i_crit_edge

for.body.i115.i.dvb_usb_adapter_exit.exit.i_crit_edge: ; preds = %for.body.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_adapter_exit.exit.i

for.body.i115.i.for.body.i115.i_crit_edge:        ; preds = %for.body.i115.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i115.i

dvb_usb_adapter_exit.exit.i:                      ; preds = %for.body.i115.i.dvb_usb_adapter_exit.exit.i_crit_edge, %err_adapter_init.i.dvb_usb_adapter_exit.exit.i_crit_edge
  %151 = ptrtoint ptr %num_adapters_initialized.i.i to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 0, ptr %num_adapters_initialized.i.i, align 64
  %152 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %state.i, align 16
  %and.i117.i = and i32 %153, -3
  store i32 %and.i117.i, ptr %state.i, align 16
  %call46.i = call i32 @dvb_usb_i2c_exit(ptr noundef %call1.i.i.i) #6
  br label %err_i2c_init.i

err_i2c_init.i:                                   ; preds = %dvb_usb_adapter_exit.exit.i, %dvb_usb_device_power_ctrl.exit.i.err_i2c_init.i_crit_edge
  %ret.0.i = phi i32 [ %call28.i, %dvb_usb_device_power_ctrl.exit.i.err_i2c_init.i_crit_edge ], [ %retval.3.i.ph.i, %dvb_usb_adapter_exit.exit.i ]
  %priv47.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 18
  %154 = ptrtoint ptr %priv47.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %priv47.i, align 16
  %tobool48.not.i = icmp eq ptr %155, null
  br i1 %tobool48.not.i, label %err_i2c_init.i.dvb_usb_init.exit_crit_edge, label %land.lhs.true.i95

err_i2c_init.i.dvb_usb_init.exit_crit_edge:       ; preds = %err_i2c_init.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_init.exit

land.lhs.true.i95:                                ; preds = %err_i2c_init.i
  %priv_destroy.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %call1.i.i.i, i32 0, i32 7
  %156 = ptrtoint ptr %priv_destroy.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %priv_destroy.i, align 4
  %tobool50.not.i = icmp eq ptr %157, null
  br i1 %tobool50.not.i, label %land.lhs.true.i95.dvb_usb_init.exit_crit_edge, label %if.then51.i

land.lhs.true.i95.dvb_usb_init.exit_crit_edge:    ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_init.exit

if.then51.i:                                      ; preds = %land.lhs.true.i95
  call void @__sanitizer_cov_trace_pc() #8
  call void %157(ptr noundef %call1.i.i.i) #6
  br label %dvb_usb_init.exit

dvb_usb_init.exit:                                ; preds = %if.then51.i, %land.lhs.true.i95.dvb_usb_init.exit_crit_edge, %err_i2c_init.i.dvb_usb_init.exit_crit_edge, %if.then18.i.dvb_usb_init.exit_crit_edge
  %ret.1.i = phi i32 [ %call21.i, %if.then18.i.dvb_usb_init.exit_crit_edge ], [ %ret.0.i, %if.then51.i ], [ %ret.0.i, %land.lhs.true.i95.dvb_usb_init.exit_crit_edge ], [ %ret.0.i, %err_i2c_init.i.dvb_usb_init.exit_crit_edge ]
  %priv55.i = getelementptr inbounds %struct.dvb_usb_device, ptr %call1.i.i.i, i32 0, i32 18
  %158 = ptrtoint ptr %priv55.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %priv55.i, align 16
  call void @kfree(ptr noundef %159) #6
  %160 = ptrtoint ptr %priv55.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store ptr null, ptr %priv55.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1.i)
  %tobool45.not = icmp eq i32 %ret.1.i, 0
  br i1 %tobool45.not, label %dvb_usb_init.exit.if.end53_crit_edge, label %dvb_usb_init.exit.do.end49_crit_edge

dvb_usb_init.exit.do.end49_crit_edge:             ; preds = %dvb_usb_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end49

dvb_usb_init.exit.if.end53_crit_edge:             ; preds = %dvb_usb_init.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

do.end49:                                         ; preds = %dvb_usb_init.exit.do.end49_crit_edge, %dvb_usb_init.exit.thread100
  %retval.0.i103 = phi i32 [ -12, %dvb_usb_init.exit.thread100 ], [ %ret.1.i, %dvb_usb_init.exit.do.end49_crit_edge ]
  %161 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %.pr, align 4
  %call52 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %162, i32 noundef %retval.0.i103) #9
  br label %error

if.end53:                                         ; preds = %dvb_usb_init.exit.if.end53_crit_edge, %if.then13.i106.i, %do.end11.i104.i.if.end53_crit_edge, %if.end43.i.if.end53_crit_edge
  br i1 %cmp.not, label %if.end53.do.end59_crit_edge, label %if.then55

if.end53.do.end59_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end59

if.then55:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %163 = ptrtoint ptr %du to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call1.i.i.i, ptr %du, align 4
  br label %do.end59

do.end59:                                         ; preds = %if.then55, %if.end53.do.end59_crit_edge
  %164 = ptrtoint ptr %.pr to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %.pr, align 4
  %call62 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %165) #9
  br label %cleanup

error:                                            ; preds = %do.end49, %do.end26.error_crit_edge, %do.end15, %do.body10.error_crit_edge
  %ret.0 = phi i32 [ %retval.0.i103, %do.end49 ], [ %call29, %do.end26.error_crit_edge ], [ -19, %do.end15 ], [ -19, %do.body10.error_crit_edge ]
  %driver_data.i.i96 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %166 = ptrtoint ptr %driver_data.i.i96 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %driver_data.i.i96, align 4
  call void @kfree(ptr noundef nonnull %call1.i.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end59, %do.end
  %retval.0 = phi i32 [ %ret.0, %error ], [ 0, %do.end59 ], [ -12, %do.end ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cold) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_download_firmware(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dvb_usb_device_exit(ptr nocapture noundef %intf) #0 align 64 {
entry:
  %name = alloca [40 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %name) #6
  %2 = call ptr @memset(ptr %name, i32 255, i32 40)
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %driver_data.i.i, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 8
  %cmp1.not = icmp eq ptr %5, null
  br i1 %cmp1.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %call4 = call i32 @strscpy(ptr noundef nonnull %name, ptr noundef %7, i32 noundef 40) #6
  %8 = load i32, ptr @dvb_usb_debug, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.do.end2.i_crit_edge, label %do.end.i

if.then.do.end2.i_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end2.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %state.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %state.i, align 8
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.58, i32 noundef %10) #9
  br label %do.end2.i

do.end2.i:                                        ; preds = %do.end.i, %if.then.do.end2.i_crit_edge
  %call3.i = call i32 @dvb_usb_remote_exit(ptr noundef nonnull %1) #6
  %num_adapters_initialized.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %num_adapters_initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_adapters_initialized.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp1.i.i = icmp sgt i32 %12, 0
  br i1 %cmp1.i.i, label %do.end2.i.for.body.i.i_crit_edge, label %do.end2.i.dvb_usb_adapter_exit.exit.i_crit_edge

do.end2.i.dvb_usb_adapter_exit.exit.i_crit_edge:  ; preds = %do.end2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_adapter_exit.exit.i

do.end2.i.for.body.i.i_crit_edge:                 ; preds = %do.end2.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %do.end2.i.for.body.i.i_crit_edge
  %n.02.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %do.end2.i.for.body.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 10, i32 %n.02.i.i
  %call.i.i = call i32 @dvb_usb_adapter_frontend_exit(ptr noundef %arrayidx.i.i) #6
  %call3.i.i = call i32 @dvb_usb_adapter_dvb_exit(ptr noundef %arrayidx.i.i) #6
  %call6.i.i = call i32 @dvb_usb_adapter_stream_exit(ptr noundef %arrayidx.i.i) #6
  %priv.i.i = getelementptr %struct.dvb_usb_device, ptr %1, i32 0, i32 10, i32 %n.02.i.i, i32 12
  %13 = ptrtoint ptr %priv.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv.i.i, align 8
  call void @kfree(ptr noundef %14) #6
  %inc.i.i = add nuw nsw i32 %n.02.i.i, 1
  %15 = ptrtoint ptr %num_adapters_initialized.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_adapters_initialized.i.i, align 8
  %cmp.i.i = icmp slt i32 %inc.i.i, %16
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.dvb_usb_adapter_exit.exit.i_crit_edge

for.body.i.i.dvb_usb_adapter_exit.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_adapter_exit.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i.i

dvb_usb_adapter_exit.exit.i:                      ; preds = %for.body.i.i.dvb_usb_adapter_exit.exit.i_crit_edge, %do.end2.i.dvb_usb_adapter_exit.exit.i_crit_edge
  %17 = ptrtoint ptr %num_adapters_initialized.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %num_adapters_initialized.i.i, align 8
  %state.i.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %state.i.i, align 8
  %and.i.i = and i32 %19, -3
  store i32 %and.i.i, ptr %state.i.i, align 8
  %call5.i = call i32 @dvb_usb_i2c_exit(ptr noundef nonnull %1) #6
  %20 = load i32, ptr @dvb_usb_debug, align 4
  %and7.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %dvb_usb_adapter_exit.exit.i.do.end16.i_crit_edge, label %do.end11.i

dvb_usb_adapter_exit.exit.i.do.end16.i_crit_edge: ; preds = %dvb_usb_adapter_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end16.i

do.end11.i:                                       ; preds = %dvb_usb_adapter_exit.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %state.i.i, align 8
  %call14.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %22) #9
  br label %do.end16.i

do.end16.i:                                       ; preds = %do.end11.i, %dvb_usb_adapter_exit.exit.i.do.end16.i_crit_edge
  %23 = ptrtoint ptr %state.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state.i.i, align 8
  %priv.i = getelementptr inbounds %struct.dvb_usb_device, ptr %1, i32 0, i32 18
  %24 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv.i, align 8
  %cmp.not.i = icmp eq ptr %25, null
  br i1 %cmp.not.i, label %do.end16.i.dvb_usb_exit.exit_crit_edge, label %land.lhs.true.i

do.end16.i.dvb_usb_exit.exit_crit_edge:           ; preds = %do.end16.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_exit.exit

land.lhs.true.i:                                  ; preds = %do.end16.i
  %priv_destroy.i = getelementptr inbounds %struct.dvb_usb_device_properties, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %priv_destroy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %priv_destroy.i, align 4
  %cmp18.not.i = icmp eq ptr %27, null
  br i1 %cmp18.not.i, label %land.lhs.true.i.dvb_usb_exit.exit_crit_edge, label %if.then19.i

land.lhs.true.i.dvb_usb_exit.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dvb_usb_exit.exit

if.then19.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  call void %27(ptr noundef nonnull %1) #6
  br label %dvb_usb_exit.exit

dvb_usb_exit.exit:                                ; preds = %if.then19.i, %land.lhs.true.i.dvb_usb_exit.exit_crit_edge, %do.end16.i.dvb_usb_exit.exit_crit_edge
  %28 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %priv.i, align 8
  call void @kfree(ptr noundef %29) #6
  call void @kfree(ptr noundef nonnull %1) #6
  br label %do.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %call7 = call i32 @strscpy(ptr noundef nonnull %name, ptr noundef nonnull @.str.20, i32 noundef 40) #6
  br label %do.end

do.end:                                           ; preds = %if.else, %dvb_usb_exit.exit
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull %name) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %name) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_i2c_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_remote_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_i2c_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_adapter_stream_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_adapter_dvb_init(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_adapter_frontend_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_clear_halt(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_adapter_dvb_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_adapter_stream_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_adapter_frontend_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dvb_usb_remote_exit(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 61)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !50, !52, !53, !54, !55, !57, !59, !60, !61, !62, !63, !65, !67, !69, !70, !72, !74, !76, !77, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !136, !138, !139}
!llvm.module.flags = !{!140, !141, !142, !143, !144, !145, !146, !147}
!llvm.ident = !{!148}

!0 = !{ptr @__param_debug, !1, !"__param_debug", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 15, i32 1}
!2 = !{ptr @__UNIQUE_ID_debugtype386, !1, !"__UNIQUE_ID_debugtype386", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_debug387, !4, !"__UNIQUE_ID_debug387", i1 false, i1 false}
!4 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 16, i32 1}
!5 = !{ptr @__param_disable_rc_polling, !6, !"__param_disable_rc_polling", i1 false, i1 false}
!6 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 19, i32 1}
!7 = !{ptr @__UNIQUE_ID_disable_rc_pollingtype388, !6, !"__UNIQUE_ID_disable_rc_pollingtype388", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_disable_rc_polling389, !9, !"__UNIQUE_ID_disable_rc_polling389", i1 false, i1 false}
!9 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 20, i32 1}
!10 = !{ptr @__param_force_pid_filter_usage, !11, !"__param_force_pid_filter_usage", i1 false, i1 false}
!11 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 23, i32 1}
!12 = !{ptr @__UNIQUE_ID_force_pid_filter_usagetype390, !11, !"__UNIQUE_ID_force_pid_filter_usagetype390", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_force_pid_filter_usage391, !14, !"__UNIQUE_ID_force_pid_filter_usage391", i1 false, i1 false}
!14 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 24, i32 1}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 255, i32 3}
!17 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @dvb_usb_device_power_ctrl._entry, !16, !"_entry", i1 false, i1 false}
!20 = !{ptr @dvb_usb_device_power_ctrl._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 281, i32 3}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @dvb_usb_device_init._entry, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @dvb_usb_device_init._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 289, i32 3}
!28 = !{ptr @dvb_usb_device_init._entry.5, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @dvb_usb_device_init._entry_ptr.7, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 295, i32 3}
!32 = !{ptr @dvb_usb_device_init._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @dvb_usb_device_init._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 301, i32 2}
!36 = !{ptr @dvb_usb_device_init._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @dvb_usb_device_init._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 310, i32 3}
!40 = !{ptr @dvb_usb_device_init._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @dvb_usb_device_init._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 317, i32 2}
!44 = !{ptr @dvb_usb_device_init._entry.17, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dvb_usb_device_init._entry_ptr.19, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @__ksymtab_dvb_usb_device_init, !47, !"__ksymtab_dvb_usb_device_init", i1 false, i1 false}
!47 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 325, i32 1}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 330, i32 29}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 340, i32 2}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dvb_usb_device_exit._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @dvb_usb_device_exit._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @__ksymtab_dvb_usb_device_exit, !56, !"__ksymtab_dvb_usb_device_exit", i1 false, i1 false}
!56 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 343, i32 1}
!57 = !{ptr @__UNIQUE_ID_version392, !58, !"__UNIQUE_ID_version392", i1 false, i1 false}
!58 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 345, i32 1}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @__modver_attr, !58, !"__modver_attr", i1 false, i1 false}
!63 = !{ptr @__UNIQUE_ID_author393, !64, !"__UNIQUE_ID_author393", i1 false, i1 false}
!64 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 346, i32 1}
!65 = !{ptr @__UNIQUE_ID_description394, !66, !"__UNIQUE_ID_description394", i1 false, i1 false}
!66 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 347, i32 1}
!67 = !{ptr @__UNIQUE_ID_file395, !68, !"__UNIQUE_ID_file395", i1 false, i1 false}
!68 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 348, i32 1}
!69 = !{ptr @__UNIQUE_ID_license396, !68, !"__UNIQUE_ID_license396", i1 false, i1 false}
!70 = !{ptr @dvb_usb_debug, !71, !"dvb_usb_debug", i1 false, i1 false}
!71 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 14, i32 5}
!72 = !{ptr @dvb_usb_disable_rc_polling, !73, !"dvb_usb_disable_rc_polling", i1 false, i1 false}
!73 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 18, i32 5}
!74 = !{ptr @dvb_usb_force_pid_filter_usage, !75, !"dvb_usb_force_pid_filter_usage", i1 false, i1 false}
!75 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 22, i32 12}
!76 = !{ptr @__param_str_debug, !1, !"__param_str_debug", i1 false, i1 false}
!77 = !{ptr @__param_str_disable_rc_polling, !6, !"__param_str_disable_rc_polling", i1 false, i1 false}
!78 = !{ptr @__param_str_force_pid_filter_usage, !11, !"__param_str_force_pid_filter_usage", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 218, i32 4}
!81 = !{ptr @.str.27, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @dvb_usb_find_device._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @dvb_usb_find_device._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.29, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 231, i32 4}
!86 = !{ptr @dvb_usb_find_device._entry.28, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @dvb_usb_find_device._entry_ptr.30, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @dvb_usb_init.__key, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 158, i32 2}
!90 = !{ptr @.str.31, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @dvb_usb_init.__key.32, !92, !"__key", i1 false, i1 false}
!92 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 159, i32 2}
!93 = !{ptr @.str.33, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @dvb_usb_init.__key.34, !95, !"__key", i1 false, i1 false}
!95 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 160, i32 2}
!96 = !{ptr @.str.35, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.36, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 167, i32 4}
!99 = !{ptr @.str.37, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @dvb_usb_init._entry, !98, !"_entry", i1 false, i1 false}
!101 = !{ptr @dvb_usb_init._entry_ptr, !98, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.39, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 189, i32 3}
!104 = !{ptr @dvb_usb_init._entry.38, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @dvb_usb_init._entry_ptr.40, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 42, i32 5}
!108 = !{ptr @.str.42, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @dvb_usb_adapter_init._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @dvb_usb_adapter_init._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.44, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 48, i32 5}
!113 = !{ptr @dvb_usb_adapter_init._entry.43, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @dvb_usb_adapter_init._entry_ptr.45, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.47, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 52, i32 5}
!117 = !{ptr @dvb_usb_adapter_init._entry.46, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @dvb_usb_adapter_init._entry_ptr.48, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 60, i32 5}
!121 = !{ptr @dvb_usb_adapter_init._entry.49, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @dvb_usb_adapter_init._entry_ptr.51, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 68, i32 6}
!125 = !{ptr @dvb_usb_adapter_init._entry.52, !124, !"_entry", i1 false, i1 false}
!126 = !{ptr @dvb_usb_adapter_init._entry_ptr.54, !124, !"_entry_ptr", i1 false, i1 false}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 77, i32 5}
!129 = !{ptr @dvb_usb_adapter_init._entry.55, !128, !"_entry", i1 false, i1 false}
!130 = !{ptr @dvb_usb_adapter_init._entry_ptr.57, !128, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 139, i32 2}
!133 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @dvb_usb_exit._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @dvb_usb_exit._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.61, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/media/usb/dvb-usb/dvb-usb-init.c", i32 143, i32 2}
!138 = !{ptr @dvb_usb_exit._entry.60, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @dvb_usb_exit._entry_ptr.62, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{i32 1, !"wchar_size", i32 2}
!141 = !{i32 1, !"min_enum_size", i32 4}
!142 = !{i32 8, !"branch-target-enforcement", i32 0}
!143 = !{i32 8, !"sign-return-address", i32 0}
!144 = !{i32 8, !"sign-return-address-all", i32 0}
!145 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!146 = !{i32 7, !"uwtable", i32 1}
!147 = !{i32 7, !"frame-pointer", i32 2}
!148 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
