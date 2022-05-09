; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/ldusb.c_pt.bc'
source_filename = "../drivers/usb/misc/ldusb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.62 }
%union.anon.62 = type { ptr }
%struct.usb_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.usb_dynids, %struct.usbdrv_wrap, i8 }
%struct.usb_dynids = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.usbdrv_wrap = type { %struct.device_driver, i32 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_device_id = type { i16, i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.usb_class_driver = type { ptr, ptr, ptr, i32 }
%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.usb_interface = type { ptr, ptr, i32, ptr, i32, i32, i8, %struct.device, ptr, %struct.work_struct }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.ld_usb = type { %struct.mutex, ptr, i8, i32, ptr, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i32, i32, i32 }
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.64, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.65, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.66, ptr, %struct.address_space, %struct.list_head, %union.anon.67, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.64 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.65 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.66 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.67 = type { ptr }

@__UNIQUE_ID_author232 = internal constant [49 x i8] c"ldusb.author=Michael Hund <mhund@ld-didactic.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description233 = internal constant [32 x i8] c"ldusb.description=LD USB Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file234 = internal constant [34 x i8] c"ldusb.file=drivers/usb/misc/ldusb\00", section ".modinfo", align 1
@__UNIQUE_ID_license235 = internal constant [18 x i8] c"ldusb.license=GPL\00", section ".modinfo", align 1
@__param_str_ring_buffer_size = internal constant [23 x i8] c"ldusb.ring_buffer_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@ring_buffer_size = internal global { i32, [28 x i8] } { i32 128, [28 x i8] zeroinitializer }, align 32
@__param_ring_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_ring_buffer_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @ring_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_ring_buffer_sizetype236 = internal constant [36 x i8] c"ldusb.parmtype=ring_buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_ring_buffer_size237 = internal constant [61 x i8] c"ldusb.parm=ring_buffer_size:Read ring buffer size in reports\00", section ".modinfo", align 1
@__param_str_write_buffer_size = internal constant [24 x i8] c"ldusb.write_buffer_size\00", align 1
@write_buffer_size = internal global { i32, [28 x i8] } { i32 10, [28 x i8] zeroinitializer }, align 32
@__param_write_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_write_buffer_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @write_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_write_buffer_sizetype238 = internal constant [37 x i8] c"ldusb.parmtype=write_buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_write_buffer_size239 = internal constant [58 x i8] c"ldusb.parm=write_buffer_size:Write buffer size in reports\00", section ".modinfo", align 1
@__param_str_min_interrupt_in_interval = internal constant [32 x i8] c"ldusb.min_interrupt_in_interval\00", align 1
@min_interrupt_in_interval = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_min_interrupt_in_interval = internal constant %struct.kernel_param { ptr @__param_str_min_interrupt_in_interval, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @min_interrupt_in_interval } }, section "__param", align 4
@__UNIQUE_ID_min_interrupt_in_intervaltype240 = internal constant [45 x i8] c"ldusb.parmtype=min_interrupt_in_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_min_interrupt_in_interval241 = internal constant [73 x i8] c"ldusb.parm=min_interrupt_in_interval:Minimum interrupt in interval in ms\00", section ".modinfo", align 1
@__param_str_min_interrupt_out_interval = internal constant [33 x i8] c"ldusb.min_interrupt_out_interval\00", align 1
@min_interrupt_out_interval = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_min_interrupt_out_interval = internal constant %struct.kernel_param { ptr @__param_str_min_interrupt_out_interval, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @min_interrupt_out_interval } }, section "__param", align 4
@__UNIQUE_ID_min_interrupt_out_intervaltype242 = internal constant [46 x i8] c"ldusb.parmtype=min_interrupt_out_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_min_interrupt_out_interval243 = internal constant [75 x i8] c"ldusb.parm=min_interrupt_out_interval:Minimum interrupt out interval in ms\00", section ".modinfo", align 1
@__initcall__kmod_ldusb__252_794_ld_usb_driver_init6 = internal global ptr @ld_usb_driver_init, section ".initcall6.init", align 4
@ld_usb_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @ld_usb_probe, ptr @ld_usb_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ld_usb_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_ld_usb_driver_exit = internal global ptr @ld_usb_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ldusb\00", [26 x i8] zeroinitializer }, align 32
@ld_usb_table = internal constant { [36 x %struct.usb_device_id], [192 x i8] } { [36 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 3857, i16 4096, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4097, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4112, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4113, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4128, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4129, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4145, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4146, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4147, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4149, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4152, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4160, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4162, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4163, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4225, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4353, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4608, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 4624, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8192, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8208, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8224, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8240, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8256, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8272, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8273, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8288, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8304, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8320, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8336, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id { i16 3, i16 3857, i16 8352, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [192 x i8] zeroinitializer }, align 32
@ld_usb_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&dev->mutex\00", [20 x i8] zeroinitializer }, align 32
@ld_usb_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->rbsl\00", [21 x i8] zeroinitializer }, align 32
@ld_usb_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->read_wait\00", [16 x i8] zeroinitializer }, align 32
@ld_usb_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->write_wait\00", [47 x i8] zeroinitializer }, align 32
@ld_usb_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 687, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Interrupt in endpoint not found\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ld_usb_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/usb/misc/ldusb.c\00", [39 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ld_usb_probe._entry_ptr = internal global ptr @ld_usb_probe._entry, section ".printk_index", align 4
@ld_usb_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 695, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"Interrupt out endpoint not found (using control endpoint instead)\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@ld_usb_probe._entry_ptr.16 = internal global ptr @ld_usb_probe._entry.13, section ".printk_index", align 4
@ld_usb_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.24, ptr null, ptr @ld_usb_fops, i32 0 }, [16 x i8] zeroinitializer }, align 32
@ld_usb_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.9, ptr @.str.10, i32 729, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not able to get a minor for this device.\0A\00", [54 x i8] zeroinitializer }, align 32
@ld_usb_probe._entry_ptr.19 = internal global ptr @ld_usb_probe._entry.17, section ".printk_index", align 4
@ld_usb_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.10, i32 736, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"LD USB Device #%d now attached to major %d minor %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ld_usb_probe._entry_ptr.23 = internal global ptr @ld_usb_probe._entry.20, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ldusb%d\00", [24 x i8] zeroinitializer }, align 32
@ld_usb_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @ld_usb_read, ptr @ld_usb_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ld_usb_poll, ptr null, ptr null, ptr null, i32 0, ptr @ld_usb_open, ptr null, ptr @ld_usb_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@ld_usb_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 460, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013ldusb: No device or device unplugged %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ld_usb_read\00", [20 x i8] zeroinitializer }, align 32
@ld_usb_read._entry_ptr = internal global ptr @ld_usb_read._entry, section ".printk_index", align 4
@ld_usb_read._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.10, i32 490, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Read buffer overflow, %zu bytes dropped\0A\00", [55 x i8] zeroinitializer }, align 32
@ld_usb_read._entry_ptr.29 = internal global ptr @ld_usb_read._entry.27, section ".printk_index", align 4
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ld_usb_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.33, ptr @.str.10, i32 545, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ld_usb_write\00", [19 x i8] zeroinitializer }, align 32
@ld_usb_write._entry_ptr = internal global ptr @ld_usb_write._entry, section ".printk_index", align 4
@ld_usb_write._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.10, i32 565, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Write buffer overflow, %zu bytes dropped\0A\00", [54 x i8] zeroinitializer }, align 32
@ld_usb_write._entry_ptr.36 = internal global ptr @ld_usb_write._entry.34, section ".printk_index", align 4
@ld_usb_write.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.10, ptr @.str.37, i8 0, i8 -115, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: count = %zu, bytes_to_write = %zu\0A\00", [57 x i8] zeroinitializer }, align 32
@ld_usb_write._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.33, ptr @.str.10, i32 587, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Couldn't submit HID_REQ_SET_REPORT %d\0A\00", [57 x i8] zeroinitializer }, align 32
@ld_usb_write._entry_ptr.40 = internal global ptr @ld_usb_write._entry.38, section ".printk_index", align 4
@ld_usb_write._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.33, ptr @.str.10, i32 609, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't submit interrupt_out_urb %d\0A\00", [58 x i8] zeroinitializer }, align 32
@ld_usb_write._entry_ptr.43 = internal global ptr @ld_usb_write._entry.41, section ".printk_index", align 4
@ld_usb_interrupt_out_callback.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.44, ptr @.str.10, ptr @.str.45, i8 0, i8 72, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ld_usb_interrupt_out_callback\00", [34 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s - nonzero write interrupt status received: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@ld_usb_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.10, i32 313, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s - error, can't find device for minor %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ld_usb_open\00", [20 x i8] zeroinitializer }, align 32
@ld_usb_open._entry_ptr = internal global ptr @ld_usb_open._entry, section ".printk_index", align 4
@ld_usb_open._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.47, ptr @.str.10, i32 352, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't submit interrupt_in_urb %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ld_usb_open._entry_ptr.50 = internal global ptr @ld_usb_open._entry.48, section ".printk_index", align 4
@ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.10, ptr @.str.52, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ld_usb_interrupt_in_callback\00", [35 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: nonzero status received: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.10, ptr @.str.53, i8 0, i8 62, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: received %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@ld_usb_interrupt_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.51, ptr @.str.10, i32 255, ptr @.str.15, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Ring buffer overflow, %d bytes dropped\0A\00", [56 x i8] zeroinitializer }, align 32
@ld_usb_interrupt_in_callback._entry_ptr = internal global ptr @ld_usb_interrupt_in_callback._entry, section ".printk_index", align 4
@ld_usb_interrupt_in_callback._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.51, ptr @.str.10, i32 266, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"usb_submit_urb failed (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@ld_usb_interrupt_in_callback._entry_ptr.57 = internal global ptr @ld_usb_interrupt_in_callback._entry.55, section ".printk_index", align 4
@ld_usb_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.10, i32 783, ptr @.str.22, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"LD USB Device #%d now disconnected\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ld_usb_disconnect\00", [46 x i8] zeroinitializer }, align 32
@ld_usb_disconnect._entry_ptr = internal global ptr @ld_usb_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 32]
@__sancov_gen_cov_switch_values.60 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.61 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"ring_buffer_size\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 124, i32 12 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"write_buffer_size\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 130, i32 12 }
@___asan_gen_.68 = private unnamed_addr constant [26 x i8] c"min_interrupt_in_interval\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 143, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [27 x i8] c"min_interrupt_out_interval\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 147, i32 12 }
@___asan_gen_.74 = private unnamed_addr constant [14 x i8] c"ld_usb_driver\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 787, i32 26 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 794, i32 1 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"ld_usb_table\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 78, i32 35 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 663, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 664, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 666, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 667, i32 2 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 687, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 695, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [13 x i8] c"ld_usb_class\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 637, i32 32 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 729, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 735, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 638, i32 11 }
@___asan_gen_.155 = private unnamed_addr constant [12 x i8] c"ld_usb_fops\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 623, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 460, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 489, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 230, i32 6 }
@___asan_gen_.177 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 214, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.180, i32 174, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 545, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 564, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 566, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 585, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 608, i32 3 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 288, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 312, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 352, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 233, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 250, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 253, i32 4 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 265, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.257 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.258 = private constant [28 x i8] c"../drivers/usb/misc/ldusb.c\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.258, i32 782, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_author232, ptr @__UNIQUE_ID_description233, ptr @__UNIQUE_ID_file234, ptr @__UNIQUE_ID_license235, ptr @__UNIQUE_ID_min_interrupt_in_interval241, ptr @__UNIQUE_ID_min_interrupt_in_intervaltype240, ptr @__UNIQUE_ID_min_interrupt_out_interval243, ptr @__UNIQUE_ID_min_interrupt_out_intervaltype242, ptr @__UNIQUE_ID_ring_buffer_size237, ptr @__UNIQUE_ID_ring_buffer_sizetype236, ptr @__UNIQUE_ID_write_buffer_size239, ptr @__UNIQUE_ID_write_buffer_sizetype238, ptr @__exitcall_ld_usb_driver_exit, ptr @__initcall__kmod_ldusb__252_794_ld_usb_driver_init6, ptr @__param_min_interrupt_in_interval, ptr @__param_min_interrupt_out_interval, ptr @__param_ring_buffer_size, ptr @__param_write_buffer_size, ptr @ld_usb_disconnect._entry, ptr @ld_usb_disconnect._entry_ptr, ptr @ld_usb_driver_exit, ptr @ld_usb_interrupt_in_callback._entry, ptr @ld_usb_interrupt_in_callback._entry.55, ptr @ld_usb_interrupt_in_callback._entry_ptr, ptr @ld_usb_interrupt_in_callback._entry_ptr.57, ptr @ld_usb_open._entry, ptr @ld_usb_open._entry.48, ptr @ld_usb_open._entry_ptr, ptr @ld_usb_open._entry_ptr.50, ptr @ld_usb_probe._entry, ptr @ld_usb_probe._entry.13, ptr @ld_usb_probe._entry.17, ptr @ld_usb_probe._entry.20, ptr @ld_usb_probe._entry_ptr, ptr @ld_usb_probe._entry_ptr.16, ptr @ld_usb_probe._entry_ptr.19, ptr @ld_usb_probe._entry_ptr.23, ptr @ld_usb_read._entry, ptr @ld_usb_read._entry.27, ptr @ld_usb_read._entry_ptr, ptr @ld_usb_read._entry_ptr.29, ptr @ld_usb_write._entry, ptr @ld_usb_write._entry.34, ptr @ld_usb_write._entry.38, ptr @ld_usb_write._entry.41, ptr @ld_usb_write._entry_ptr, ptr @ld_usb_write._entry_ptr.36, ptr @ld_usb_write._entry_ptr.40, ptr @ld_usb_write._entry_ptr.43, ptr @ring_buffer_size, ptr @write_buffer_size, ptr @min_interrupt_in_interval, ptr @min_interrupt_out_interval, ptr @ld_usb_driver, ptr @.str, ptr @ld_usb_table, ptr @ld_usb_probe.__key, ptr @.str.1, ptr @ld_usb_probe.__key.2, ptr @.str.3, ptr @ld_usb_probe.__key.4, ptr @.str.5, ptr @ld_usb_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @ld_usb_class, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @ld_usb_fops, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.49, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59], section "llvm.metadata"
@0 = internal global [66 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_interrupt_in_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @min_interrupt_out_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_table to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_read._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_write._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_write._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_write._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_open._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_interrupt_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_interrupt_in_callback._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ld_usb_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ld_usb_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @ld_usb_driver, ptr noundef null, ptr noundef nonnull @.str) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ld_usb_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @usb_deregister(ptr noundef nonnull @ld_usb_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld_usb_probe(ptr noundef %intf, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 320) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @ld_usb_probe.__key) #9
  %rbsl = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 17
  tail call void @__raw_spin_lock_init(ptr noundef %rbsl, ptr noundef nonnull @.str.3, ptr noundef nonnull @ld_usb_probe.__key.2, i16 noundef signext 3) #9
  %intf7 = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %intf7 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %intf, ptr %intf7, align 4
  %read_wait = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %read_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @ld_usb_probe.__key.4) #9
  %write_wait = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @ld_usb_probe.__key.6) #9
  %idVendor = getelementptr i8, ptr %1, i32 936
  %4 = ptrtoint ptr %idVendor to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %idVendor, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4367, i16 %5)
  %cmp = icmp eq i16 %5, 4367
  br i1 %cmp, label %land.lhs.true, label %do.body.if.end35_crit_edge

do.body.if.end35_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true:                                    ; preds = %do.body
  %idProduct = getelementptr i8, ptr %1, i32 938
  %6 = ptrtoint ptr %idProduct to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %idProduct, align 2
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i16 %7, label %land.lhs.true.if.end35_crit_edge [
    i16 16, label %land.lhs.true.land.lhs.true24_crit_edge
    i16 32, label %land.lhs.true.land.lhs.true24_crit_edge224
  ]

land.lhs.true.land.lhs.true24_crit_edge224:       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true24

land.lhs.true.land.lhs.true24_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true24

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

land.lhs.true24:                                  ; preds = %land.lhs.true.land.lhs.true24_crit_edge, %land.lhs.true.land.lhs.true24_crit_edge224
  %bcdDevice = getelementptr i8, ptr %1, i32 940
  %9 = ptrtoint ptr %bcdDevice to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %bcdDevice, align 4
  %11 = tail call i16 @llvm.bswap.i16(i16 %10)
  call void @__sanitizer_cov_trace_const_cmp2(i16 260, i16 %11)
  %cmp27 = icmp ult i16 %11, 260
  br i1 %cmp27, label %if.then29, label %land.lhs.true24.if.end35_crit_edge

land.lhs.true24.if.end35_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.then29:                                        ; preds = %land.lhs.true24
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3264, i32 noundef 256) #12
  %tobool31.not = icmp eq ptr %call7.i, null
  br i1 %tobool31.not, label %if.then29.error_crit_edge, label %if.end33

if.then29.error_crit_edge:                        ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #11
  %call34 = tail call i32 @usb_string(ptr noundef %add.ptr.i, i32 noundef 255, ptr noundef nonnull %call7.i, i32 noundef 256) #9
  tail call void @kfree(ptr noundef nonnull %call7.i) #9
  br label %if.end35

if.end35:                                         ; preds = %if.end33, %land.lhs.true24.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %do.body.if.end35_crit_edge
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 1
  %13 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cur_altsetting, align 4
  %interrupt_in_endpoint = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 10
  %call.i = tail call i32 @usb_find_common_endpoints_reverse(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef %interrupt_in_endpoint, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool37.not = icmp eq i32 %call.i, 0
  br i1 %tobool37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  %dev42 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev42, ptr noundef nonnull @.str.8) #13
  br label %error

if.end43:                                         ; preds = %if.end35
  %interrupt_out_endpoint = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 19
  %call.i194 = tail call i32 @usb_find_common_endpoints_reverse(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %interrupt_out_endpoint) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool45.not = icmp eq i32 %call.i194, 0
  br i1 %tobool45.not, label %if.end43.if.end51_crit_edge, label %do.end49

if.end43.if.end51_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

do.end49:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  %dev50 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev50, ptr noundef nonnull @.str.14) #13
  br label %if.end51

if.end51:                                         ; preds = %do.end49, %if.end43.if.end51_crit_edge
  %15 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %interrupt_in_endpoint, align 8
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %16, i32 0, i32 4
  %17 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %17, i32 2)
  %18 = load i16, ptr %wMaxPacketSize.i, align 1
  %19 = and i16 %18, -249
  %20 = tail call i16 @llvm.bswap.i16(i16 %19) #9
  %and.i = zext i16 %20 to i32
  %interrupt_in_endpoint_size = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 13
  %21 = ptrtoint ptr %interrupt_in_endpoint_size to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %and.i, ptr %interrupt_in_endpoint_size, align 4
  %22 = load i32, ptr @ring_buffer_size, align 4
  %add = add nuw nsw i32 %and.i, 4
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %22, i32 %add) #9
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !165

kcalloc.exit.thread:                              ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %ring_buffer208 = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %ring_buffer208 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %ring_buffer208, align 8
  br label %error

if.end7.i.i:                                      ; preds = %if.end51
  %26 = extractvalue { i32, i1 } %23, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %26, i32 noundef 3520) #14
  %ring_buffer = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 4
  %27 = ptrtoint ptr %ring_buffer to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call8.i.i, ptr %ring_buffer, align 8
  %tobool57.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool57.not, label %if.end7.i.i.error_crit_edge, label %if.end8.i

if.end7.i.i.error_crit_edge:                      ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end8.i:                                        ; preds = %if.end7.i.i
  %28 = ptrtoint ptr %interrupt_in_endpoint_size to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %interrupt_in_endpoint_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %29, i32 noundef 3264) #14
  %interrupt_in_buffer = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 9
  %30 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i, ptr %interrupt_in_buffer, align 4
  %tobool63.not = icmp eq ptr %call9.i, null
  br i1 %tobool63.not, label %if.end8.i.error_crit_edge, label %if.end65

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end65:                                         ; preds = %if.end8.i
  %call66 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %interrupt_in_urb = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 11
  %31 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call66, ptr %interrupt_in_urb, align 4
  %tobool68.not = icmp eq ptr %call66, null
  br i1 %tobool68.not, label %if.end65.error_crit_edge, label %if.end70

if.end65.error_crit_edge:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end70:                                         ; preds = %if.end65
  %32 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %interrupt_out_endpoint, align 4
  %tobool72.not = icmp eq ptr %33, null
  br i1 %tobool72.not, label %cond.false, label %cond.true

cond.true:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %wMaxPacketSize.i196 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %wMaxPacketSize.i196 to i32
  call void @__asan_loadN_noabort(i32 %34, i32 2)
  %35 = load i16, ptr %wMaxPacketSize.i196, align 1
  %36 = and i16 %35, -249
  %37 = tail call i16 @llvm.bswap.i16(i16 %36) #9
  %and.i197 = zext i16 %37 to i32
  br label %cond.end

cond.false:                                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %bMaxPacketSize0 = getelementptr i8, ptr %1, i32 935
  %38 = ptrtoint ptr %bMaxPacketSize0 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %bMaxPacketSize0, align 1
  %conv76 = zext i8 %39 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %and.i197, %cond.true ], [ %conv76, %cond.false ]
  %interrupt_out_endpoint_size = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 22
  %40 = ptrtoint ptr %interrupt_out_endpoint_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %cond, ptr %interrupt_out_endpoint_size, align 8
  %41 = load i32, ptr @write_buffer_size, align 4
  %42 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %41, i32 %cond) #9
  %43 = extractvalue { i32, i1 } %42, 1
  br i1 %43, label %kmalloc_array.exit.thread, label %if.end7.i, !prof !165

kmalloc_array.exit.thread:                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  %interrupt_out_buffer218 = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 18
  %44 = ptrtoint ptr %interrupt_out_buffer218 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %interrupt_out_buffer218, align 8
  br label %error

if.end7.i:                                        ; preds = %cond.end
  %45 = extractvalue { i32, i1 } %42, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %45, i32 noundef 3264) #14
  %interrupt_out_buffer = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 18
  %46 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call8.i, ptr %interrupt_out_buffer, align 8
  %tobool80.not = icmp eq ptr %call8.i, null
  br i1 %tobool80.not, label %if.end7.i.error_crit_edge, label %if.end82

if.end7.i.error_crit_edge:                        ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end82:                                         ; preds = %if.end7.i
  %call83 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #9
  %interrupt_out_urb = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 20
  %47 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call83, ptr %interrupt_out_urb, align 8
  %tobool85.not = icmp eq ptr %call83, null
  br i1 %tobool85.not, label %if.end82.error_crit_edge, label %if.end87

if.end82.error_crit_edge:                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %error

if.end87:                                         ; preds = %if.end82
  %48 = load i32, ptr @min_interrupt_in_interval, align 4
  %49 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %interrupt_in_endpoint, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %50, i32 0, i32 5
  %51 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %bInterval, align 1
  %conv89 = zext i8 %52 to i32
  %53 = tail call i32 @llvm.smax.i32(i32 %48, i32 %conv89)
  %interrupt_in_interval = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 12
  %54 = ptrtoint ptr %interrupt_in_interval to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %interrupt_in_interval, align 8
  %55 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %interrupt_out_endpoint, align 4
  %tobool100.not = icmp eq ptr %56, null
  br i1 %tobool100.not, label %if.end87.if.end114_crit_edge, label %if.then101

if.end87.if.end114_crit_edge:                     ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end114

if.then101:                                       ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #11
  %57 = load i32, ptr @min_interrupt_out_interval, align 4
  %bInterval103 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %56, i32 0, i32 5
  %58 = ptrtoint ptr %bInterval103 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bInterval103, align 1
  %conv104 = zext i8 %59 to i32
  %60 = tail call i32 @llvm.smax.i32(i32 %57, i32 %conv104)
  %interrupt_out_interval = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 21
  %61 = ptrtoint ptr %interrupt_out_interval to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %interrupt_out_interval, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.then101, %if.end87.if.end114_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %62 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call115 = tail call i32 @usb_register_dev(ptr noundef %intf, ptr noundef nonnull @ld_usb_class) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  %dev126 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  br i1 %tobool116.not, label %do.end125, label %do.end120

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev126, ptr noundef nonnull @.str.18) #13
  %63 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %driver_data.i.i, align 4
  br label %error

do.end125:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #11
  %minor = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %64 = ptrtoint ptr %minor to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %minor, align 8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev126, ptr noundef nonnull @.str.21, i32 noundef %65, i32 noundef 180, i32 noundef %65) #13
  br label %cleanup

error:                                            ; preds = %do.end120, %if.end82.error_crit_edge, %if.end7.i.error_crit_edge, %kmalloc_array.exit.thread, %if.end65.error_crit_edge, %if.end8.i.error_crit_edge, %if.end7.i.i.error_crit_edge, %kcalloc.exit.thread, %do.end41, %if.then29.error_crit_edge
  %retval1.1 = phi i32 [ %call.i, %do.end41 ], [ %call115, %do.end120 ], [ -12, %if.end82.error_crit_edge ], [ -12, %if.end7.i.error_crit_edge ], [ -12, %if.end65.error_crit_edge ], [ -12, %if.end8.i.error_crit_edge ], [ -12, %if.end7.i.i.error_crit_edge ], [ -12, %if.then29.error_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %kmalloc_array.exit.thread ]
  %interrupt_in_urb.i = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 11
  %66 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %67) #9
  %interrupt_out_urb.i = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 20
  %68 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %interrupt_out_urb.i, align 8
  tail call void @usb_free_urb(ptr noundef %69) #9
  %ring_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 4
  %70 = ptrtoint ptr %ring_buffer.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ring_buffer.i, align 8
  tail call void @kfree(ptr noundef %71) #9
  %interrupt_in_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 9
  %72 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %interrupt_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %73) #9
  %interrupt_out_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %call7.i.i, i32 0, i32 18
  %74 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %interrupt_out_buffer.i, align 8
  tail call void @kfree(ptr noundef %75) #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %error, %do.end125, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval1.1, %error ], [ 0, %do.end125 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ld_usb_disconnect(ptr noundef %intf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  store ptr null, ptr %driver_data.i.i, align 4
  %minor1 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 4
  %2 = ptrtoint ptr %minor1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %minor1, align 8
  tail call void @usb_deregister_dev(ptr noundef %intf, ptr noundef nonnull @ld_usb_class) #9
  %interrupt_in_urb = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_poison_urb(ptr noundef %5) #9
  %interrupt_out_urb = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_poison_urb(ptr noundef %7) #9
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #9
  %open_count = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef %1) #9
  %10 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #9
  %12 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #9
  %ring_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %ring_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_buffer.i, align 4
  tail call void @kfree(ptr noundef %15) #9
  %interrupt_in_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 9
  %16 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %17) #9
  %interrupt_out_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_out_buffer.i, align 4
  tail call void @kfree(ptr noundef %19) #9
  tail call void @kfree(ptr noundef %1) #9
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %disconnected = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 2
  %20 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load = load i8, ptr %disconnected, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disconnected, align 4
  %read_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  %write_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  tail call void @mutex_unlock(ptr noundef %1) #9
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %intf, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.58, i32 noundef %3) #13
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_string(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints_reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld_usb_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end3:                                          ; preds = %if.end
  %disconnected = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef -19) #13
  br label %unlock_exit

if.end7:                                          ; preds = %if.end3
  %rbsl = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_lock_irq(ptr noundef %rbsl) #9
  %ring_head = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 5
  %ring_tail = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %ring_head to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %ring_head, align 4
  %5 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ring_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp8142 = icmp eq i32 %4, %6
  br i1 %cmp8142, label %while.body.lr.ph, label %if.end7.while.end_crit_edge

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end7
  %interrupt_in_done = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 15
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %read_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 7
  br label %while.body

while.body:                                       ; preds = %if.end37.while.body_crit_edge, %while.body.lr.ph
  %7 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %interrupt_in_done, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %rbsl) #9
  %8 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f_flags, align 4
  %and = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %while.body.unlock_exit_crit_edge

while.body.unlock_exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end12:                                         ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 473) #9
  %10 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interrupt_in_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool20.not = icmp eq i32 %11, 0
  br i1 %tobool20.not, label %if.then21, label %if.end12.if.end37_crit_edge

if.end12.if.end37_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then21:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %12 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %call23139 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %13 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %interrupt_in_done, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool25.not140 = icmp eq i32 %14, 0
  br i1 %tobool25.not140, label %if.then21.if.end27_crit_edge, label %if.then21.if.end33.thread131_crit_edge

if.then21.if.end33.thread131_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.thread131

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  br label %if.end27

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %if.then21.if.end27_crit_edge
  %call23141 = phi i32 [ %call23, %cleanup.if.end27_crit_edge ], [ %call23139, %if.then21.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23141)
  %tobool28.not = icmp eq i32 %call23141, 0
  br i1 %tobool28.not, label %cleanup, label %if.end33

cleanup:                                          ; preds = %if.end27
  call void @schedule() #9
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %15 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interrupt_in_done, align 4
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %cleanup.if.end27_crit_edge, label %cleanup.if.end33.thread131_crit_edge

cleanup.if.end33.thread131_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.thread131

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.end33.thread131:                               ; preds = %cleanup.if.end33.thread131_crit_edge, %if.then21.if.end33.thread131_crit_edge
  call void @finish_wait(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end37

if.end33:                                         ; preds = %if.end27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23141)
  %cmp35 = icmp slt i32 %call23141, 0
  br i1 %cmp35, label %if.end33.unlock_exit_crit_edge, label %if.end33.if.end37_crit_edge

if.end33.if.end37_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.end33.unlock_exit_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end37:                                         ; preds = %if.end33.if.end37_crit_edge, %if.end33.thread131, %if.end12.if.end37_crit_edge
  call void @_raw_spin_lock_irq(ptr noundef %rbsl) #9
  %17 = ptrtoint ptr %ring_head to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %ring_head, align 4
  %19 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ring_tail, align 4
  %cmp8 = icmp eq i32 %18, %20
  br i1 %cmp8, label %if.end37.while.body_crit_edge, label %if.end37.while.end_crit_edge

if.end37.while.end_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end37.while.body_crit_edge:                    ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %if.end37.while.end_crit_edge, %if.end7.while.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %rbsl) #9
  %ring_buffer = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 4
  %21 = ptrtoint ptr %ring_buffer to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ring_buffer, align 4
  %23 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ring_tail, align 4
  %interrupt_in_endpoint_size = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 13
  %25 = ptrtoint ptr %interrupt_in_endpoint_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %interrupt_in_endpoint_size, align 4
  %add = add i32 %26, 4
  %mul = mul i32 %add, %24
  %add.ptr = getelementptr i8, ptr %22, i32 %mul
  %27 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %26)
  %cmp42 = icmp ugt i32 %28, %26
  br i1 %cmp42, label %while.end.unlock_exit_crit_edge, label %if.end44

while.end.unlock_exit_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end44:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %count)
  %cmp46 = icmp ugt i32 %28, %count
  %29 = call i32 @llvm.umin.i32(i32 %28, i32 %count)
  br i1 %cmp46, label %do.end51, label %if.end44.if.end53_crit_edge

if.end44.if.end53_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

do.end51:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %intf, align 4
  %dev52 = getelementptr inbounds %struct.usb_interface, ptr %31, i32 0, i32 7
  %sub = sub i32 %28, %29
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev52, ptr noundef nonnull @.str.28, i32 noundef %sub) #13
  br label %if.end53

if.end53:                                         ; preds = %do.end51, %if.end44.if.end53_crit_edge
  %add.ptr54 = getelementptr i32, ptr %add.ptr, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp9.i.i = icmp slt i32 %29, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end53
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.unlock_exit_crit_edge, label %if.then27.i.i, !prof !166

land.rhs16.i.i.unlock_exit_crit_edge:             ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %unlock_exit

if.then.i.i.i:                                    ; preds = %if.end53
  call void @__check_object_size(ptr noundef %add.ptr54, i32 noundef %29, i1 noundef zeroext true) #9
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %32 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %29, i32 -1226833920) #15, !srcloc !167
  %asmresult.i.i = extractvalue { i32, i32 } %32, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %add.ptr54, i32 noundef %29) #9
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %add.ptr54, i32 noundef %29) #9
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %29, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %29, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool56.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool56.not, label %if.end58, label %copy_to_user.exit.unlock_exit_crit_edge

copy_to_user.exit.unlock_exit_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end58:                                         ; preds = %copy_to_user.exit
  call void @_raw_spin_lock_irq(ptr noundef %rbsl) #9
  %33 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ring_tail, align 4
  %add61 = add i32 %34, 1
  %35 = load i32, ptr @ring_buffer_size, align 4
  %rem = urem i32 %add61, %35
  store i32 %rem, ptr %ring_tail, align 4
  %buffer_overflow = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 16
  %36 = ptrtoint ptr %buffer_overflow to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %buffer_overflow, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool63.not = icmp eq i32 %37, 0
  br i1 %tobool63.not, label %if.else, label %if.then64

if.then64:                                        ; preds = %if.end58
  %38 = ptrtoint ptr %buffer_overflow to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %buffer_overflow, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %rbsl) #9
  %interrupt_in_urb = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 11
  %39 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %interrupt_in_urb, align 4
  %call67 = call i32 @usb_submit_urb(ptr noundef %40, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %cmp68 = icmp slt i32 %call67, 0
  br i1 %cmp68, label %if.then69, label %if.then64.unlock_exit_crit_edge

if.then64.unlock_exit_crit_edge:                  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.then69:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #11
  %41 = ptrtoint ptr %buffer_overflow to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %buffer_overflow, align 4
  br label %unlock_exit

if.else:                                          ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irq(ptr noundef %rbsl) #9
  br label %unlock_exit

unlock_exit:                                      ; preds = %if.else, %if.then69, %if.then64.unlock_exit_crit_edge, %copy_to_user.exit.unlock_exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.unlock_exit_crit_edge, %while.end.unlock_exit_crit_edge, %if.end33.unlock_exit_crit_edge, %while.body.unlock_exit_crit_edge, %if.then5
  %retval1.0 = phi i32 [ -19, %if.then5 ], [ %29, %if.then69 ], [ %29, %if.then64.unlock_exit_crit_edge ], [ %29, %if.else ], [ -5, %while.end.unlock_exit_crit_edge ], [ -14, %copy_to_user.exit.unlock_exit_crit_edge ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.unlock_exit_crit_edge ], [ -11, %while.body.unlock_exit_crit_edge ], [ %call23141, %if.end33.unlock_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #9
  br label %exit

exit:                                             ; preds = %unlock_exit, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %retval1.1 = phi i32 [ 0, %entry.exit_crit_edge ], [ %retval1.0, %unlock_exit ], [ -512, %if.end.exit_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld_usb_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end3, label %if.end.exit_crit_edge

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end3:                                          ; preds = %if.end
  %disconnected = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool4.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.25, i32 noundef -19) #13
  br label %unlock_exit

if.end7:                                          ; preds = %if.end3
  %interrupt_out_busy = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 23
  %3 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool8.not = icmp eq i32 %4, 0
  br i1 %tobool8.not, label %if.end7.if.end38_crit_edge, label %if.then9

if.end7.if.end38_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then9:                                         ; preds = %if.end7
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %5 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %f_flags, align 4
  %and = and i32 %6, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %if.end12, label %if.then9.unlock_exit_crit_edge

if.then9.unlock_exit_crit_edge:                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end12:                                         ; preds = %if.then9
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 555) #9
  %7 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool20.not = icmp eq i32 %8, 0
  br i1 %tobool20.not, label %if.end12.if.end38_crit_edge, label %if.then21

if.end12.if.end38_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then21:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %9 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %write_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 8
  %call23184 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %10 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool25.not185 = icmp eq i32 %11, 0
  br i1 %tobool25.not185, label %if.then21.if.end33.thread176_crit_edge, label %if.then21.if.end27_crit_edge

if.then21.if.end27_crit_edge:                     ; preds = %if.then21
  br label %if.end27

if.then21.if.end33.thread176_crit_edge:           ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.thread176

if.end27:                                         ; preds = %cleanup.if.end27_crit_edge, %if.then21.if.end27_crit_edge
  %call23186 = phi i32 [ %call23, %cleanup.if.end27_crit_edge ], [ %call23184, %if.then21.if.end27_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23186)
  %tobool28.not = icmp eq i32 %call23186, 0
  br i1 %tobool28.not, label %cleanup, label %if.end33

cleanup:                                          ; preds = %if.end27
  call void @schedule() #9
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %12 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interrupt_out_busy, align 4
  %tobool25.not = icmp eq i32 %13, 0
  br i1 %tobool25.not, label %cleanup.if.end33.thread176_crit_edge, label %cleanup.if.end27_crit_edge

cleanup.if.end27_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

cleanup.if.end33.thread176_crit_edge:             ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end33.thread176

if.end33.thread176:                               ; preds = %cleanup.if.end33.thread176_crit_edge, %if.then21.if.end33.thread176_crit_edge
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end38

if.end33:                                         ; preds = %if.end27
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23186)
  %cmp35 = icmp slt i32 %call23186, 0
  br i1 %cmp35, label %if.end33.unlock_exit_crit_edge, label %if.end33.if.end38_crit_edge

if.end33.if.end38_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.end33.unlock_exit_crit_edge:                   ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end38:                                         ; preds = %if.end33.if.end38_crit_edge, %if.end33.thread176, %if.end12.if.end38_crit_edge, %if.end7.if.end38_crit_edge
  %14 = load i32, ptr @write_buffer_size, align 4
  %interrupt_out_endpoint_size = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %interrupt_out_endpoint_size to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interrupt_out_endpoint_size, align 4
  %mul = mul i32 %16, %14
  %17 = call i32 @llvm.umin.i32(i32 %mul, i32 %count)
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %count)
  %cmp41 = icmp ult i32 %mul, %count
  br i1 %cmp41, label %do.end45, label %if.end38.do.body48_crit_edge

if.end38.do.body48_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body48

do.end45:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %intf, align 4
  %dev46 = getelementptr inbounds %struct.usb_interface, ptr %19, i32 0, i32 7
  %sub = sub i32 %count, %17
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev46, ptr noundef nonnull @.str.35, i32 noundef %sub) #13
  br label %do.body48

do.body48:                                        ; preds = %do.end45, %if.end38.do.body48_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ld_usb_write.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ld_usb_write, %if.then54)) #9
          to label %do.end59 [label %if.then54], !srcloc !168

if.then54:                                        ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #11
  %intf55 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %intf55 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %intf55, align 4
  %dev56 = getelementptr inbounds %struct.usb_interface, ptr %21, i32 0, i32 7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ld_usb_write.__UNIQUE_ID_ddebug251, ptr noundef %dev56, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.33, i32 noundef %count, i32 noundef %17) #9
  br label %do.end59

do.end59:                                         ; preds = %if.then54, %do.body48
  %interrupt_out_buffer = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 18
  %22 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interrupt_out_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.i.i = icmp slt i32 %17, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %do.end59
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.unlock_exit_crit_edge, label %if.then27.i.i, !prof !166

land.rhs16.i.i.unlock_exit_crit_edge:             ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #9
  br label %unlock_exit

if.then.i.i.i:                                    ; preds = %do.end59
  call void @__check_object_size(ptr noundef %23, i32 noundef %17, i1 noundef zeroext false) #9
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #9
  %call.i.i = call zeroext i1 @should_fail_usercopy() #9
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %24 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %17, i32 -1226833920) #15, !srcloc !169
  %asmresult.i.i = extractvalue { i32, i32 } %24, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !166

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %23, i32 noundef %17) #9
  %25 = call i32 @llvm.read_register.i32(metadata !155) #9
  %and.i.i.i.i.i.i = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 4
  %27 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #8, !srcloc !170
  %and.i.i.i.i = and i32 %27, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %23, ptr noundef %buffer, i32 noundef %17) #9
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %27) #9, !srcloc !171
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #9, !srcloc !172
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %17, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %17, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end63, label %if.then11.i.i, !prof !166

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %sub.i.i = sub i32 %17, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %23, i32 %sub.i.i
  %28 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %unlock_exit

if.end63:                                         ; preds = %if.end.i.i
  %interrupt_out_endpoint = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 19
  %29 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_out_endpoint, align 4
  %cmp64 = icmp eq ptr %30, null
  br i1 %cmp64, label %if.then65, label %if.end82

if.then65:                                        ; preds = %if.end63
  %intf66 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %intf66 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %intf66, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %32, i32 0, i32 7, i32 1
  %33 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %34, i32 -128
  %35 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %36, 8
  %or = or i32 %shl.i, -2147483648
  %37 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %interrupt_out_buffer, align 4
  %conv = trunc i32 %17 to i16
  %call72 = call i32 @usb_control_msg(ptr noundef %add.ptr.i, i32 noundef %or, i8 noundef zeroext 9, i8 noundef zeroext 33, i16 noundef zeroext 256, i16 noundef zeroext 0, ptr noundef %38, i16 noundef zeroext %conv, i32 noundef 5000) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %cmp73 = icmp slt i32 %call72, 0
  br i1 %cmp73, label %do.end78, label %if.then65.unlock_exit_crit_edge

if.then65.unlock_exit_crit_edge:                  ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

do.end78:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %intf66 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %intf66, align 4
  %dev80 = getelementptr inbounds %struct.usb_interface, ptr %40, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev80, ptr noundef nonnull @.str.39, i32 noundef %call72) #13
  br label %unlock_exit

if.end82:                                         ; preds = %if.end63
  %interrupt_out_urb = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 20
  %41 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %interrupt_out_urb, align 4
  %intf83 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %43 = ptrtoint ptr %intf83 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %intf83, align 4
  %parent.i160 = getelementptr inbounds %struct.usb_interface, ptr %44, i32 0, i32 7, i32 1
  %45 = ptrtoint ptr %parent.i160 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %parent.i160, align 8
  %add.ptr.i161 = getelementptr i8, ptr %46, i32 -128
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %30, i32 0, i32 2
  %47 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %bEndpointAddress, align 1
  %conv88 = zext i8 %48 to i32
  %49 = ptrtoint ptr %add.ptr.i161 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr.i161, align 8
  %shl.i164 = shl i32 %50, 8
  %shl1.i = shl nuw nsw i32 %conv88, 15
  %or.i = or i32 %shl1.i, %shl.i164
  %or90 = or i32 %or.i, 1073741824
  %51 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %interrupt_out_buffer, align 4
  %interrupt_out_interval = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 21
  %53 = ptrtoint ptr %interrupt_out_interval to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %interrupt_out_interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 8
  %55 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %add.ptr.i161, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 10
  %56 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or90, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 14
  %57 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %52, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 19
  %58 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %17, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 28
  %59 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @ld_usb_interrupt_out_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 27
  %60 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %1, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %46, i32 -100
  %61 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %62)
  %cmp.i = icmp eq i32 %62, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %62)
  %cmp6.i = icmp ugt i32 %62, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i166, label %if.end82.usb_fill_int_urb.exit_crit_edge

if.end82.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i166:                                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #11
  %63 = call i32 @llvm.smax.i32(i32 %54, i32 1) #9
  %64 = call i32 @llvm.umin.i32(i32 %63, i32 16) #9
  %sub.i = add nsw i32 %64, -1
  %shl.i165 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i166, %if.end82.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i165, %if.then.i166 ], [ %54, %if.end82.usb_fill_int_urb.exit_crit_edge ]
  %65 = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 25
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %interval.sink.i, ptr %65, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %42, i32 0, i32 23
  %67 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %start_frame.i, align 4
  %68 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %interrupt_out_busy, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !173
  call void @arm_heavy_mb() #9
  %69 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %interrupt_out_urb, align 4
  %call97 = call i32 @usb_submit_urb(ptr noundef %70, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %usb_fill_int_urb.exit.unlock_exit_crit_edge, label %if.then99

usb_fill_int_urb.exit.unlock_exit_crit_edge:      ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.then99:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %71 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 0, ptr %interrupt_out_busy, align 4
  %72 = ptrtoint ptr %intf83 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %intf83, align 4
  %dev105 = getelementptr inbounds %struct.usb_interface, ptr %73, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev105, ptr noundef nonnull @.str.42, i32 noundef %call97) #13
  br label %unlock_exit

unlock_exit:                                      ; preds = %if.then99, %usb_fill_int_urb.exit.unlock_exit_crit_edge, %do.end78, %if.then65.unlock_exit_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.unlock_exit_crit_edge, %if.end33.unlock_exit_crit_edge, %if.then9.unlock_exit_crit_edge, %if.then5
  %retval1.0 = phi i32 [ -19, %if.then5 ], [ %call23186, %if.end33.unlock_exit_crit_edge ], [ %call72, %do.end78 ], [ %call72, %if.then65.unlock_exit_crit_edge ], [ %call97, %if.then99 ], [ -11, %if.then9.unlock_exit_crit_edge ], [ %17, %usb_fill_int_urb.exit.unlock_exit_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.unlock_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #9
  br label %exit

exit:                                             ; preds = %unlock_exit, %if.end.exit_crit_edge, %entry.exit_crit_edge
  %retval1.1 = phi i32 [ 0, %entry.exit_crit_edge ], [ %retval1.0, %unlock_exit ], [ -512, %if.end.exit_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld_usb_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disconnected = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 7
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit24_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit24_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit24

land.lhs.true.i:                                  ; preds = %if.end
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wait, align 4
  %tobool1.not.i = icmp eq ptr %4, null
  %tobool3.not.i = icmp eq ptr %read_wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.land.lhs.true.i22_crit_edge, label %if.then.i

land.lhs.true.i.land.lhs.true.i22_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i22

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %4(ptr noundef %file, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #9
  br label %land.lhs.true.i22

land.lhs.true.i22:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i22_crit_edge
  %write_wait25 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i19 = icmp eq ptr %6, null
  %tobool3.not.i20 = icmp eq ptr %write_wait25, null
  %or.cond.i21 = or i1 %tobool3.not.i20, %tobool1.not.i19
  br i1 %or.cond.i21, label %land.lhs.true.i22.poll_wait.exit24_crit_edge, label %if.then.i23

land.lhs.true.i22.poll_wait.exit24_crit_edge:     ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %poll_wait.exit24

if.then.i23:                                      ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %6(ptr noundef %file, ptr noundef nonnull %write_wait25, ptr noundef nonnull %wait) #9
  br label %poll_wait.exit24

poll_wait.exit24:                                 ; preds = %if.then.i23, %land.lhs.true.i22.poll_wait.exit24_crit_edge, %if.end.poll_wait.exit24_crit_edge
  %ring_head = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %ring_head to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ring_head, align 4
  %ring_tail = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp.not = icmp eq i32 %8, %10
  %spec.select = select i1 %cmp.not, i32 0, i32 65
  %interrupt_out_busy = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 23
  %11 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool3.not = icmp eq i32 %12, 0
  %or5 = or i32 %spec.select, 260
  %mask.1 = select i1 %tobool3.not, i32 %or5, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %poll_wait.exit24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask.1, %poll_wait.exit24 ], [ 24, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld_usb_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stream_open(ptr noundef %inode, ptr noundef %file) #9
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %1, 1048575
  %call3 = tail call ptr @usb_find_interface(ptr noundef nonnull @ld_usb_driver, i32 noundef %and.i) #9
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, i32 noundef %and.i) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call3, i32 0, i32 7, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool6.not = icmp eq ptr %3, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull %3, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %open_count = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool13.not = icmp eq i32 %5, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.unlock_exit_crit_edge

if.end12.unlock_exit_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end15:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %open_count, align 4
  %ring_head = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 5
  %7 = ptrtoint ptr %ring_head to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ring_head, align 4
  %ring_tail = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 6
  %8 = ptrtoint ptr %ring_tail to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %ring_tail, align 4
  %buffer_overflow = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 16
  %9 = ptrtoint ptr %buffer_overflow to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %buffer_overflow, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 11
  %10 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_in_urb, align 4
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %call3, i32 0, i32 7, i32 1
  %12 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %13, i32 -128
  %interrupt_in_endpoint = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %interrupt_in_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %17 to i32
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 8
  %shl.i = shl i32 %19, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or20 = or i32 %or.i, 1073741952
  %interrupt_in_buffer = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt_in_buffer, align 4
  %interrupt_in_endpoint_size = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 13
  %22 = ptrtoint ptr %interrupt_in_endpoint_size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interrupt_in_endpoint_size, align 4
  %interrupt_in_interval = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 12
  %24 = ptrtoint ptr %interrupt_in_interval to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %interrupt_in_interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 8
  %26 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr.i, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 10
  %27 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or20, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 14
  %28 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %21, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 19
  %29 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %23, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 28
  %30 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @ld_usb_interrupt_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 27
  %31 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %context4.i, align 4
  %speed.i = getelementptr i8, ptr %13, i32 -100
  %32 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %33)
  %cmp.i = icmp eq i32 %33, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %33)
  %cmp6.i = icmp ugt i32 %33, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end15.usb_fill_int_urb.exit_crit_edge

if.end15.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %34 = tail call i32 @llvm.smax.i32(i32 %25, i32 1) #9
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 16) #9
  %sub.i = add nsw i32 %35, -1
  %shl.i66 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end15.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i66, %if.then.i ], [ %25, %if.end15.usb_fill_int_urb.exit_crit_edge ]
  %36 = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 25
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %interval.sink.i, ptr %36, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %11, i32 0, i32 23
  %38 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %start_frame.i, align 4
  %interrupt_in_running = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 14
  %39 = ptrtoint ptr %interrupt_in_running to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %interrupt_in_running, align 4
  %interrupt_in_done = getelementptr inbounds %struct.ld_usb, ptr %3, i32 0, i32 15
  %40 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %interrupt_in_done, align 4
  %41 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %interrupt_in_urb, align 4
  %call22 = tail call i32 @usb_submit_urb(ptr noundef %42, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end31, label %do.end27

do.end27:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %dev28 = getelementptr inbounds %struct.usb_interface, ptr %call3, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.49, i32 noundef %call22) #13
  %43 = ptrtoint ptr %interrupt_in_running to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %interrupt_in_running, align 4
  %44 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %open_count, align 4
  br label %unlock_exit

if.end31:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #11
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %45 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %3, ptr %private_data, align 4
  br label %unlock_exit

unlock_exit:                                      ; preds = %if.end31, %do.end27, %if.end12.unlock_exit_crit_edge
  %retval1.0 = phi i32 [ %call22, %do.end27 ], [ 0, %if.end31 ], [ -16, %if.end12.unlock_exit_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull %3) #9
  br label %cleanup

cleanup:                                          ; preds = %unlock_exit, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval1.0, %unlock_exit ], [ -19, %do.end ], [ -19, %if.end.cleanup_crit_edge ], [ -512, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ld_usb_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 0) #9
  %open_count = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp2.not = icmp eq i32 %3, 1
  br i1 %cmp2.not, label %if.end4, label %if.end.unlock_exit_crit_edge

if.end.unlock_exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %unlock_exit

if.end4:                                          ; preds = %if.end
  %disconnected = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @mutex_unlock(ptr noundef nonnull %1) #9
  %interrupt_in_urb.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 11
  %5 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %6) #9
  %interrupt_out_urb.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 20
  %7 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %interrupt_out_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %8) #9
  %ring_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %ring_buffer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring_buffer.i, align 4
  tail call void @kfree(ptr noundef %10) #9
  %interrupt_in_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 9
  %11 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interrupt_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %12) #9
  %interrupt_out_buffer.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 18
  %13 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interrupt_out_buffer.i, align 4
  tail call void @kfree(ptr noundef %14) #9
  tail call void @kfree(ptr noundef nonnull %1) #9
  br label %exit

if.end7:                                          ; preds = %if.end4
  %interrupt_out_busy = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 23
  %15 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool8.not = icmp eq i32 %16, 0
  br i1 %tobool8.not, label %if.end7.if.end53_crit_edge, label %if.then9

if.end7.if.end53_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then9:                                         ; preds = %if.end7
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 398) #9
  %17 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool14.not = icmp eq i32 %18, 0
  br i1 %tobool14.not, label %if.then9.if.end53_crit_edge, label %if.then23

if.then9.if.end53_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end53

if.then23:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #9
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #9
  %write_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 8
  %call88 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %20 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool27.not89 = icmp eq i32 %21, 0
  br i1 %tobool27.not89, label %if.then23.for.end_crit_edge, label %if.then23.if.end44_crit_edge

if.then23.if.end44_crit_edge:                     ; preds = %if.then23
  br label %if.end44

if.then23.for.end_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end44:                                         ; preds = %cleanup.if.end44_crit_edge, %if.then23.if.end44_crit_edge
  %__ret24.191 = phi i32 [ %__ret24.1, %cleanup.if.end44_crit_edge ], [ 200, %if.then23.if.end44_crit_edge ]
  %call90 = phi i32 [ %call, %cleanup.if.end44_crit_edge ], [ %call88, %if.then23.if.end44_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool45.not = icmp eq i32 %call90, 0
  br i1 %tobool45.not, label %cleanup, label %if.end44.__out_crit_edge

if.end44.__out_crit_edge:                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %__out

cleanup:                                          ; preds = %if.end44
  %call48 = call i32 @schedule_timeout(i32 noundef %__ret24.191) #9
  %call = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #9
  %22 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool27.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool32.not = icmp eq i32 %call48, 0
  %24 = select i1 %tobool27.not, i1 %tobool32.not, i1 false
  %__ret24.1 = select i1 %24, i32 1, i32 %call48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret24.1)
  %tobool38.not = icmp eq i32 %__ret24.1, 0
  %25 = select i1 %tobool27.not, i1 true, i1 %tobool38.not
  br i1 %25, label %cleanup.for.end_crit_edge, label %cleanup.if.end44_crit_edge

cleanup.if.end44_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then23.for.end_crit_edge
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #9
  br label %__out

__out:                                            ; preds = %for.end, %if.end44.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #9
  br label %if.end53

if.end53:                                         ; preds = %__out, %if.then9.if.end53_crit_edge, %if.end7.if.end53_crit_edge
  %interrupt_in_running.i = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 14
  %26 = ptrtoint ptr %interrupt_in_running.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interrupt_in_running.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i = icmp eq i32 %27, 0
  br i1 %tobool.not.i, label %if.end53.if.end.i_crit_edge, label %if.then.i

if.end53.if.end.i_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %interrupt_in_running.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %interrupt_in_running.i, align 4
  %interrupt_in_urb.i80 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 11
  %29 = ptrtoint ptr %interrupt_in_urb.i80 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %interrupt_in_urb.i80, align 4
  call void @usb_kill_urb(ptr noundef %30) #9
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end53.if.end.i_crit_edge
  %31 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool2.not.i = icmp eq i32 %32, 0
  br i1 %tobool2.not.i, label %if.end.i.ld_usb_abort_transfers.exit_crit_edge, label %if.then3.i

if.end.i.ld_usb_abort_transfers.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %ld_usb_abort_transfers.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %interrupt_out_urb.i81 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 20
  %33 = ptrtoint ptr %interrupt_out_urb.i81 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %interrupt_out_urb.i81, align 4
  call void @usb_kill_urb(ptr noundef %34) #9
  br label %ld_usb_abort_transfers.exit

ld_usb_abort_transfers.exit:                      ; preds = %if.then3.i, %if.end.i.ld_usb_abort_transfers.exit_crit_edge
  %35 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %open_count, align 4
  br label %unlock_exit

unlock_exit:                                      ; preds = %ld_usb_abort_transfers.exit, %if.end.unlock_exit_crit_edge
  %retval1.0 = phi i32 [ 0, %ld_usb_abort_transfers.exit ], [ -19, %if.end.unlock_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull %1) #9
  br label %exit

exit:                                             ; preds = %unlock_exit, %if.then5, %entry.exit_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %unlock_exit ], [ 0, %if.then5 ], [ -19, %entry.exit_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg(ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ld_usb_interrupt_out_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %3, label %do.body [
    i32 0, label %entry.if.end10_crit_edge
    i32 -2, label %entry.if.end10_crit_edge19
    i32 -104, label %entry.if.end10_crit_edge20
    i32 -108, label %entry.if.end10_crit_edge21
  ]

entry.if.end10_crit_edge21:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

entry.if.end10_crit_edge20:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

entry.if.end10_crit_edge19:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ld_usb_interrupt_out_callback.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ld_usb_interrupt_out_callback, %if.then8)) #9
          to label %if.end10 [label %if.then8], !srcloc !168

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev9 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ld_usb_interrupt_out_callback.__UNIQUE_ID_ddebug246, ptr noundef %dev9, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.44, i32 noundef %3) #9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.body, %entry.if.end10_crit_edge, %entry.if.end10_crit_edge19, %entry.if.end10_crit_edge20, %entry.if.end10_crit_edge21
  %interrupt_out_busy = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 23
  %7 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %interrupt_out_busy, align 4
  %write_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stream_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ld_usb_interrupt_in_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.61)
  switch i32 %3, label %do.body [
    i32 0, label %do.body23
    i32 -2, label %entry.exit_crit_edge
    i32 -104, label %entry.exit_crit_edge131
    i32 -108, label %entry.exit_crit_edge132
  ]

entry.exit_crit_edge132:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

entry.exit_crit_edge131:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %exit

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ld_usb_interrupt_in_callback, %if.then9)) #9
          to label %do.body12 [label %if.then9], !srcloc !168

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %intf = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %intf to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %intf, align 4
  %dev10 = getelementptr inbounds %struct.usb_interface, ptr %6, i32 0, i32 7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug244, ptr noundef %dev10, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %3) #9
  br label %do.body12

do.body12:                                        ; preds = %if.then9, %do.body
  %rbsl = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 17
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rbsl) #9
  br label %resubmit

do.body23:                                        ; preds = %entry
  %rbsl29 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 17
  %call31 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %rbsl29) #9
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %7 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp36.not = icmp eq i32 %8, 0
  br i1 %cmp36.not, label %do.body23.resubmit_crit_edge, label %if.then38

do.body23.resubmit_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %resubmit

if.then38:                                        ; preds = %do.body23
  %ring_head = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %ring_head to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ring_head, align 4
  %add = add i32 %10, 1
  %11 = load i32, ptr @ring_buffer_size, align 4
  %rem = urem i32 %add, %11
  %ring_tail = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %ring_tail to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ring_tail, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %13)
  %cmp39.not = icmp eq i32 %rem, %13
  br i1 %cmp39.not, label %do.end70, label %if.then41

if.then41:                                        ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %ring_buffer = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %ring_buffer to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ring_buffer, align 4
  %interrupt_in_endpoint_size = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %interrupt_in_endpoint_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %interrupt_in_endpoint_size, align 4
  %add43 = add i32 %17, 4
  %mul = mul i32 %add43, %10
  %add.ptr = getelementptr i8, ptr %15, i32 %mul
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %8, ptr %add.ptr, align 4
  %add.ptr45 = getelementptr i32, ptr %add.ptr, i32 1
  %interrupt_in_buffer = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 9
  %19 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %interrupt_in_buffer, align 4
  %21 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %actual_length, align 4
  %23 = call ptr @memcpy(ptr %add.ptr45, ptr %20, i32 %22)
  %24 = ptrtoint ptr %ring_head to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %rem, ptr %ring_head, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ld_usb_interrupt_in_callback, %if.then60)) #9
          to label %resubmit [label %if.then60], !srcloc !168

if.then60:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #11
  %intf61 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %25 = ptrtoint ptr %intf61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intf61, align 4
  %dev62 = getelementptr inbounds %struct.usb_interface, ptr %26, i32 0, i32 7
  %27 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug245, ptr noundef %dev62, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.51, i32 noundef %28) #9
  br label %resubmit

do.end70:                                         ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #11
  %intf71 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %intf71 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %intf71, align 4
  %dev72 = getelementptr inbounds %struct.usb_interface, ptr %30, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev72, ptr noundef nonnull @.str.54, i32 noundef %8) #13
  %buffer_overflow = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 16
  %31 = ptrtoint ptr %buffer_overflow to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %buffer_overflow, align 4
  br label %resubmit

resubmit:                                         ; preds = %do.end70, %if.then60, %if.then41, %do.body23.resubmit_crit_edge, %do.body12
  %flags.0 = phi i32 [ %call16, %do.body12 ], [ %call31, %if.then60 ], [ %call31, %do.end70 ], [ %call31, %do.body23.resubmit_crit_edge ], [ %call31, %if.then41 ]
  %interrupt_in_running = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 14
  %32 = ptrtoint ptr %interrupt_in_running to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interrupt_in_running, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool76.not = icmp eq i32 %33, 0
  br i1 %tobool76.not, label %resubmit.if.end90_crit_edge, label %land.lhs.true

resubmit.if.end90_crit_edge:                      ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

land.lhs.true:                                    ; preds = %resubmit
  %buffer_overflow77 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 16
  %34 = ptrtoint ptr %buffer_overflow77 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %buffer_overflow77, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool78.not = icmp eq i32 %35, 0
  br i1 %tobool78.not, label %if.then79, label %land.lhs.true.if.end90_crit_edge

land.lhs.true.if.end90_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

if.then79:                                        ; preds = %land.lhs.true
  %interrupt_in_urb = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 11
  %36 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %interrupt_in_urb, align 4
  %call80 = tail call i32 @usb_submit_urb(ptr noundef %37, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %if.then79.if.end90_crit_edge, label %do.end85

if.then79.if.end90_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end90

do.end85:                                         ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #11
  %intf86 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 1
  %38 = ptrtoint ptr %intf86 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %intf86, align 4
  %dev87 = getelementptr inbounds %struct.usb_interface, ptr %39, i32 0, i32 7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev87, ptr noundef nonnull @.str.56, i32 noundef %call80) #13
  %40 = ptrtoint ptr %buffer_overflow77 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %buffer_overflow77, align 4
  br label %if.end90

if.end90:                                         ; preds = %do.end85, %if.then79.if.end90_crit_edge, %land.lhs.true.if.end90_crit_edge, %resubmit.if.end90_crit_edge
  %rbsl91 = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 17
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %rbsl91, i32 noundef %flags.0) #9
  br label %exit

exit:                                             ; preds = %if.end90, %entry.exit_crit_edge, %entry.exit_crit_edge131, %entry.exit_crit_edge132
  %interrupt_in_done = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 15
  %41 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %interrupt_in_done, align 4
  %read_wait = getelementptr inbounds %struct.ld_usb, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 66)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !15, !17, !19, !20, !22, !24, !25, !27, !29, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !47, !48, !50, !51, !53, !54, !56, !57, !59, !60, !61, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !78, !79, !81, !83, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !99, !101, !103, !104, !105, !107, !108, !109, !111, !112, !114, !115, !116, !118, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !142, !143, !144, !146, !147, !148, !150, !151, !152, !153}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__UNIQUE_ID_author232, !1, !"__UNIQUE_ID_author232", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/ldusb.c", i32 117, i32 1}
!2 = !{ptr @__UNIQUE_ID_description233, !3, !"__UNIQUE_ID_description233", i1 false, i1 false}
!3 = !{!"../drivers/usb/misc/ldusb.c", i32 118, i32 1}
!4 = !{ptr @__UNIQUE_ID_file234, !5, !"__UNIQUE_ID_file234", i1 false, i1 false}
!5 = !{!"../drivers/usb/misc/ldusb.c", i32 119, i32 1}
!6 = !{ptr @__UNIQUE_ID_license235, !5, !"__UNIQUE_ID_license235", i1 false, i1 false}
!7 = !{ptr @__param_ring_buffer_size, !8, !"__param_ring_buffer_size", i1 false, i1 false}
!8 = !{!"../drivers/usb/misc/ldusb.c", i32 125, i32 1}
!9 = !{ptr @__UNIQUE_ID_ring_buffer_sizetype236, !8, !"__UNIQUE_ID_ring_buffer_sizetype236", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_ring_buffer_size237, !11, !"__UNIQUE_ID_ring_buffer_size237", i1 false, i1 false}
!11 = !{!"../drivers/usb/misc/ldusb.c", i32 126, i32 1}
!12 = !{ptr @__param_write_buffer_size, !13, !"__param_write_buffer_size", i1 false, i1 false}
!13 = !{!"../drivers/usb/misc/ldusb.c", i32 131, i32 1}
!14 = !{ptr @__UNIQUE_ID_write_buffer_sizetype238, !13, !"__UNIQUE_ID_write_buffer_sizetype238", i1 false, i1 false}
!15 = !{ptr @__UNIQUE_ID_write_buffer_size239, !16, !"__UNIQUE_ID_write_buffer_size239", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/ldusb.c", i32 132, i32 1}
!17 = !{ptr @__param_min_interrupt_in_interval, !18, !"__param_min_interrupt_in_interval", i1 false, i1 false}
!18 = !{!"../drivers/usb/misc/ldusb.c", i32 144, i32 1}
!19 = !{ptr @__UNIQUE_ID_min_interrupt_in_intervaltype240, !18, !"__UNIQUE_ID_min_interrupt_in_intervaltype240", i1 false, i1 false}
!20 = !{ptr @__UNIQUE_ID_min_interrupt_in_interval241, !21, !"__UNIQUE_ID_min_interrupt_in_interval241", i1 false, i1 false}
!21 = !{!"../drivers/usb/misc/ldusb.c", i32 145, i32 1}
!22 = !{ptr @__param_min_interrupt_out_interval, !23, !"__param_min_interrupt_out_interval", i1 false, i1 false}
!23 = !{!"../drivers/usb/misc/ldusb.c", i32 148, i32 1}
!24 = !{ptr @__UNIQUE_ID_min_interrupt_out_intervaltype242, !23, !"__UNIQUE_ID_min_interrupt_out_intervaltype242", i1 false, i1 false}
!25 = !{ptr @__UNIQUE_ID_min_interrupt_out_interval243, !26, !"__UNIQUE_ID_min_interrupt_out_interval243", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/ldusb.c", i32 149, i32 1}
!27 = !{ptr @__initcall__kmod_ldusb__252_794_ld_usb_driver_init6, !28, !"__initcall__kmod_ldusb__252_794_ld_usb_driver_init6", i1 false, i1 false}
!28 = !{!"../drivers/usb/misc/ldusb.c", i32 794, i32 1}
!29 = !{ptr @__exitcall_ld_usb_driver_exit, !28, !"__exitcall_ld_usb_driver_exit", i1 false, i1 false}
!30 = !{ptr @__param_str_ring_buffer_size, !8, !"__param_str_ring_buffer_size", i1 false, i1 false}
!31 = !{ptr @ring_buffer_size, !32, !"ring_buffer_size", i1 false, i1 false}
!32 = !{!"../drivers/usb/misc/ldusb.c", i32 124, i32 12}
!33 = !{ptr @__param_str_write_buffer_size, !13, !"__param_str_write_buffer_size", i1 false, i1 false}
!34 = !{ptr @write_buffer_size, !35, !"write_buffer_size", i1 false, i1 false}
!35 = !{!"../drivers/usb/misc/ldusb.c", i32 130, i32 12}
!36 = !{ptr @__param_str_min_interrupt_in_interval, !18, !"__param_str_min_interrupt_in_interval", i1 false, i1 false}
!37 = !{ptr @min_interrupt_in_interval, !38, !"min_interrupt_in_interval", i1 false, i1 false}
!38 = !{!"../drivers/usb/misc/ldusb.c", i32 143, i32 12}
!39 = !{ptr @__param_str_min_interrupt_out_interval, !23, !"__param_str_min_interrupt_out_interval", i1 false, i1 false}
!40 = !{ptr @min_interrupt_out_interval, !41, !"min_interrupt_out_interval", i1 false, i1 false}
!41 = !{!"../drivers/usb/misc/ldusb.c", i32 147, i32 12}
!42 = !{ptr @.str, !28, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ld_usb_driver, !44, !"ld_usb_driver", i1 false, i1 false}
!44 = !{!"../drivers/usb/misc/ldusb.c", i32 787, i32 26}
!45 = !{ptr @ld_usb_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/usb/misc/ldusb.c", i32 663, i32 2}
!47 = !{ptr @.str.1, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @ld_usb_probe.__key.2, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/usb/misc/ldusb.c", i32 664, i32 2}
!50 = !{ptr @.str.3, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ld_usb_probe.__key.4, !52, !"__key", i1 false, i1 false}
!52 = !{!"../drivers/usb/misc/ldusb.c", i32 666, i32 2}
!53 = !{ptr @.str.5, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @ld_usb_probe.__key.6, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/usb/misc/ldusb.c", i32 667, i32 2}
!56 = !{ptr @.str.7, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.8, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/misc/ldusb.c", i32 687, i32 3}
!59 = !{ptr @.str.9, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.11, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ld_usb_probe._entry, !58, !"_entry", i1 false, i1 false}
!64 = !{ptr @ld_usb_probe._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/usb/misc/ldusb.c", i32 695, i32 3}
!67 = !{ptr @.str.15, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @ld_usb_probe._entry.13, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @ld_usb_probe._entry_ptr.16, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.18, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/misc/ldusb.c", i32 729, i32 3}
!72 = !{ptr @ld_usb_probe._entry.17, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @ld_usb_probe._entry_ptr.19, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/misc/ldusb.c", i32 735, i32 2}
!76 = !{ptr @.str.22, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @ld_usb_probe._entry.20, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @ld_usb_probe._entry_ptr.23, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.24, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/usb/misc/ldusb.c", i32 638, i32 11}
!81 = !{ptr @ld_usb_class, !82, !"ld_usb_class", i1 false, i1 false}
!82 = !{!"../drivers/usb/misc/ldusb.c", i32 637, i32 32}
!83 = !{ptr @ld_usb_fops, !84, !"ld_usb_fops", i1 false, i1 false}
!84 = !{!"../drivers/usb/misc/ldusb.c", i32 623, i32 37}
!85 = !{ptr @.str.25, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/misc/ldusb.c", i32 460, i32 3}
!87 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @ld_usb_read._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @ld_usb_read._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.28, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/misc/ldusb.c", i32 489, i32 3}
!92 = !{ptr @ld_usb_read._entry.27, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @ld_usb_read._entry_ptr.29, !91, !"_entry_ptr", i1 false, i1 false}
!94 = distinct !{null, !95, !"__already_done", i1 false, i1 false}
!95 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!96 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.31, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!99 = !{ptr @.str.32, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!101 = !{ptr @.str.33, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/usb/misc/ldusb.c", i32 545, i32 3}
!103 = !{ptr @ld_usb_write._entry, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @ld_usb_write._entry_ptr, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.35, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/usb/misc/ldusb.c", i32 564, i32 3}
!107 = !{ptr @ld_usb_write._entry.34, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @ld_usb_write._entry_ptr.36, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.37, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/usb/misc/ldusb.c", i32 566, i32 2}
!111 = !{ptr @ld_usb_write.__UNIQUE_ID_ddebug251, !110, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!112 = !{ptr @.str.39, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/misc/ldusb.c", i32 585, i32 4}
!114 = !{ptr @ld_usb_write._entry.38, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @ld_usb_write._entry_ptr.40, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @.str.42, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/misc/ldusb.c", i32 608, i32 3}
!118 = !{ptr @ld_usb_write._entry.41, !117, !"_entry", i1 false, i1 false}
!119 = !{ptr @ld_usb_write._entry_ptr.43, !117, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.44, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/misc/ldusb.c", i32 288, i32 3}
!122 = !{ptr @.str.45, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @ld_usb_interrupt_out_callback.__UNIQUE_ID_ddebug246, !121, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!124 = !{ptr @.str.46, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/misc/ldusb.c", i32 312, i32 3}
!126 = !{ptr @.str.47, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @ld_usb_open._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @ld_usb_open._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/usb/misc/ldusb.c", i32 352, i32 3}
!131 = !{ptr @ld_usb_open._entry.48, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @ld_usb_open._entry_ptr.50, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/misc/ldusb.c", i32 233, i32 4}
!135 = !{ptr @.str.52, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug244, !134, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/misc/ldusb.c", i32 250, i32 4}
!139 = !{ptr @ld_usb_interrupt_in_callback.__UNIQUE_ID_ddebug245, !138, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!140 = !{ptr @.str.54, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/misc/ldusb.c", i32 253, i32 4}
!142 = !{ptr @ld_usb_interrupt_in_callback._entry, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @ld_usb_interrupt_in_callback._entry_ptr, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.56, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/misc/ldusb.c", i32 265, i32 4}
!146 = !{ptr @ld_usb_interrupt_in_callback._entry.55, !145, !"_entry", i1 false, i1 false}
!147 = !{ptr @ld_usb_interrupt_in_callback._entry_ptr.57, !145, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.58, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/misc/ldusb.c", i32 782, i32 2}
!150 = !{ptr @.str.59, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @ld_usb_disconnect._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @ld_usb_disconnect._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @ld_usb_table, !154, !"ld_usb_table", i1 false, i1 false}
!154 = !{!"../drivers/usb/misc/ldusb.c", i32 78, i32 35}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{!"branch_weights", i32 2000, i32 1}
!167 = !{i64 2152486379, i64 2152486404}
!168 = !{i64 2148714554, i64 2148714559, i64 2148714572, i64 2148714616, i64 2148714650, i64 2148714671}
!169 = !{i64 2152485698, i64 2152485723}
!170 = !{i64 4981253}
!171 = !{i64 4981450}
!172 = !{i64 2152466683}
!173 = !{i64 2154079403}
