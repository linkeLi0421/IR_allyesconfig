; ModuleID = '/llk/IR_all_yes/drivers/usb/misc/legousbtower.c_pt.bc'
source_filename = "../drivers/usb/misc/legousbtower.c"
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
%struct.tower_get_version_reply = type { i16, i8, i8, i8, i8, i16 }
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
%struct.lego_usb_tower = type { %struct.mutex, ptr, i8, i32, i8, ptr, i32, i32, %struct.spinlock, i32, i32, %struct.wait_queue_head, %struct.wait_queue_head, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
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
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.urb = type { %struct.kref, i32, ptr, %struct.atomic_t, %struct.atomic_t, %struct.list_head, %struct.list_head, ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, [0 x %struct.usb_iso_packet_descriptor] }
%struct.usb_iso_packet_descriptor = type { i32, i32, i32, i32 }
%struct.tower_reset_reply = type { i16, i8, i8 }
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

@__param_str_read_buffer_size = internal constant [30 x i8] c"legousbtower.read_buffer_size\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@read_buffer_size = internal global { i32, [28 x i8] } { i32 480, [28 x i8] zeroinitializer }, align 32
@__param_read_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_read_buffer_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @read_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_read_buffer_sizetype232 = internal constant [43 x i8] c"legousbtower.parmtype=read_buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_read_buffer_size233 = internal constant [52 x i8] c"legousbtower.parm=read_buffer_size:Read buffer size\00", section ".modinfo", align 1
@__param_str_write_buffer_size = internal constant [31 x i8] c"legousbtower.write_buffer_size\00", align 1
@write_buffer_size = internal global { i32, [28 x i8] } { i32 480, [28 x i8] zeroinitializer }, align 32
@__param_write_buffer_size = internal constant %struct.kernel_param { ptr @__param_str_write_buffer_size, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @write_buffer_size } }, section "__param", align 4
@__UNIQUE_ID_write_buffer_sizetype234 = internal constant [44 x i8] c"legousbtower.parmtype=write_buffer_size:int\00", section ".modinfo", align 1
@__UNIQUE_ID_write_buffer_size235 = internal constant [54 x i8] c"legousbtower.parm=write_buffer_size:Write buffer size\00", section ".modinfo", align 1
@__param_str_packet_timeout = internal constant [28 x i8] c"legousbtower.packet_timeout\00", align 1
@packet_timeout = internal global { i32, [28 x i8] } { i32 50, [28 x i8] zeroinitializer }, align 32
@__param_packet_timeout = internal constant %struct.kernel_param { ptr @__param_str_packet_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @packet_timeout } }, section "__param", align 4
@__UNIQUE_ID_packet_timeouttype236 = internal constant [41 x i8] c"legousbtower.parmtype=packet_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_packet_timeout237 = internal constant [54 x i8] c"legousbtower.parm=packet_timeout:Packet timeout in ms\00", section ".modinfo", align 1
@__param_str_read_timeout = internal constant [26 x i8] c"legousbtower.read_timeout\00", align 1
@read_timeout = internal global { i32, [28 x i8] } { i32 200, [28 x i8] zeroinitializer }, align 32
@__param_read_timeout = internal constant %struct.kernel_param { ptr @__param_str_read_timeout, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @read_timeout } }, section "__param", align 4
@__UNIQUE_ID_read_timeouttype238 = internal constant [39 x i8] c"legousbtower.parmtype=read_timeout:int\00", section ".modinfo", align 1
@__UNIQUE_ID_read_timeout239 = internal constant [50 x i8] c"legousbtower.parm=read_timeout:Read timeout in ms\00", section ".modinfo", align 1
@__param_str_interrupt_in_interval = internal constant [35 x i8] c"legousbtower.interrupt_in_interval\00", align 1
@interrupt_in_interval = internal global { i32, [28 x i8] } { i32 2, [28 x i8] zeroinitializer }, align 32
@__param_interrupt_in_interval = internal constant %struct.kernel_param { ptr @__param_str_interrupt_in_interval, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @interrupt_in_interval } }, section "__param", align 4
@__UNIQUE_ID_interrupt_in_intervaltype240 = internal constant [48 x i8] c"legousbtower.parmtype=interrupt_in_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_interrupt_in_interval241 = internal constant [68 x i8] c"legousbtower.parm=interrupt_in_interval:Interrupt in interval in ms\00", section ".modinfo", align 1
@__param_str_interrupt_out_interval = internal constant [36 x i8] c"legousbtower.interrupt_out_interval\00", align 1
@interrupt_out_interval = internal global { i32, [28 x i8] } { i32 8, [28 x i8] zeroinitializer }, align 32
@__param_interrupt_out_interval = internal constant %struct.kernel_param { ptr @__param_str_interrupt_out_interval, ptr null, ptr @param_ops_int, i16 0, i8 -1, i8 0, %union.anon.62 { ptr @interrupt_out_interval } }, section "__param", align 4
@__UNIQUE_ID_interrupt_out_intervaltype242 = internal constant [49 x i8] c"legousbtower.parmtype=interrupt_out_interval:int\00", section ".modinfo", align 1
@__UNIQUE_ID_interrupt_out_interval243 = internal constant [70 x i8] c"legousbtower.parm=interrupt_out_interval:Interrupt out interval in ms\00", section ".modinfo", align 1
@__initcall__kmod_legousbtower__255_875_tower_driver_init6 = internal global ptr @tower_driver_init, section ".initcall6.init", align 4
@tower_driver = internal global { %struct.usb_driver, [44 x i8] } { %struct.usb_driver { ptr @.str, ptr @tower_probe, ptr @tower_disconnect, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tower_table, ptr null, %struct.usb_dynids zeroinitializer, %struct.usbdrv_wrap zeroinitializer, i8 0 }, [44 x i8] zeroinitializer }, align 32
@__exitcall_tower_driver_exit = internal global ptr @tower_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author256 = internal constant [62 x i8] c"legousbtower.author=Juergen Stuber <starblue@sourceforge.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description257 = internal constant [47 x i8] c"legousbtower.description=LEGO USB Tower Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file258 = internal constant [48 x i8] c"legousbtower.file=drivers/usb/misc/legousbtower\00", section ".modinfo", align 1
@__UNIQUE_ID_license259 = internal constant [25 x i8] c"legousbtower.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"legousbtower\00", [19 x i8] zeroinitializer }, align 32
@tower_table = internal constant { [2 x %struct.usb_device_id], [48 x i8] } { [2 x %struct.usb_device_id] [%struct.usb_device_id { i16 3, i16 1684, i16 1, i16 0, i16 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0 }, %struct.usb_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tower_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@tower_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&dev->read_buffer_lock\00", [41 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@tower_probe.__key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&dev->read_wait\00", [16 x i8] zeroinitializer }, align 32
@tower_probe.__key.6 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&dev->write_wait\00", [47 x i8] zeroinitializer }, align 32
@tower_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 768, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"interrupt endpoints not found\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tower_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/misc/legousbtower.c\00", [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tower_probe._entry_ptr = internal global ptr @tower_probe._entry, section ".printk_index", align 4
@tower_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 801, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"get version request failed: %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tower_probe._entry_ptr.15 = internal global ptr @tower_probe._entry.13, section ".printk_index", align 4
@tower_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 809, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"LEGO USB Tower firmware version is %d.%d build %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tower_probe._entry_ptr.19 = internal global ptr @tower_probe._entry.16, section ".printk_index", align 4
@tower_class = internal global { %struct.usb_class_driver, [16 x i8] } { %struct.usb_class_driver { ptr @.str.26, ptr @legousbtower_devnode, ptr @tower_fops, i32 160 }, [16 x i8] zeroinitializer }, align 32
@tower_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.9, ptr @.str.10, i32 817, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Not able to get a minor for this device.\0A\00", [54 x i8] zeroinitializer }, align 32
@tower_probe._entry_ptr.22 = internal global ptr @tower_probe._entry.20, section ".printk_index", align 4
@tower_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.9, ptr @.str.10, i32 825, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"LEGO USB Tower #%d now attached to major %d minor %d\0A\00", [42 x i8] zeroinitializer }, align 32
@tower_probe._entry_ptr.25 = internal global ptr @tower_probe._entry.23, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"legousbtower%d\00", [17 x i8] zeroinitializer }, align 32
@tower_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @tower_llseek, ptr @tower_read, ptr @tower_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tower_poll, ptr null, ptr null, ptr null, i32 0, ptr @tower_open, ptr null, ptr @tower_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb/%s\00", [25 x i8] zeroinitializer }, align 32
@tower_read.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.28, ptr @.str.10, ptr @.str.29, i8 0, i8 -127, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tower_read\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"read request of 0 bytes\0A\00", [39 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@tower_write.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.10, ptr @.str.34, i8 0, i8 -107, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tower_write\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"write request of 0 bytes\0A\00", [38 x i8] zeroinitializer }, align 32
@tower_write.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.10, ptr @.str.35, i8 0, i8 -102, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: count = %zd, bytes_to_write = %zd\0A\00", [57 x i8] zeroinitializer }, align 32
@tower_write._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.10, i32 641, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Couldn't submit interrupt_out_urb %d\0A\00", [58 x i8] zeroinitializer }, align 32
@tower_write._entry_ptr = internal global ptr @tower_write._entry, section ".printk_index", align 4
@__func__.tower_interrupt_out_callback = private unnamed_addr constant [29 x i8] c"tower_interrupt_out_callback\00", align 1
@tower_interrupt_out_callback.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.tower_interrupt_out_callback, ptr @.str.10, ptr @.str.37, i8 0, i8 -75, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: nonzero write bulk status received: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@lego_usb_tower_debug_data.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.10, ptr @.str.39, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lego_usb_tower_debug_data\00", [38 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s - length = %d, data = %*ph\0A\00", [33 x i8] zeroinitializer }, align 32
@tower_open._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.10, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013legousbtower: error, can't find device for minor %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tower_open\00", [21 x i8] zeroinitializer }, align 32
@tower_open._entry_ptr = internal global ptr @tower_open._entry, section ".printk_index", align 4
@tower_open._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.10, i32 352, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"LEGO USB Tower reset control request failed\0A\00", [51 x i8] zeroinitializer }, align 32
@tower_open._entry_ptr.44 = internal global ptr @tower_open._entry.42, section ".printk_index", align 4
@tower_open._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.10, i32 375, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Couldn't submit interrupt_in_urb %d\0A\00", [59 x i8] zeroinitializer }, align 32
@tower_open._entry_ptr.47 = internal global ptr @tower_open._entry.45, section ".printk_index", align 4
@__func__.tower_interrupt_in_callback = private unnamed_addr constant [28 x i8] c"tower_interrupt_in_callback\00", align 1
@tower_interrupt_in_callback.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.tower_interrupt_in_callback, ptr @.str.10, ptr @.str.48, i8 0, i8 -87, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: nonzero status received: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@tower_interrupt_in_callback.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @__func__.tower_interrupt_in_callback, ptr @.str.10, ptr @.str.49, i8 0, i8 -84, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: received %d bytes\0A\00", [41 x i8] zeroinitializer }, align 32
@tower_interrupt_in_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @__func__.tower_interrupt_in_callback, ptr @.str.10, i32 693, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\014legousbtower: read_buffer overflow, %d bytes dropped\0A\00", [40 x i8] zeroinitializer }, align 32
@tower_interrupt_in_callback._entry_ptr = internal global ptr @tower_interrupt_in_callback._entry, section ".printk_index", align 4
@tower_interrupt_in_callback._entry.51 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.52, ptr @__func__.tower_interrupt_in_callback, ptr @.str.10, i32 702, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"%s: usb_submit_urb failed (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@tower_interrupt_in_callback._entry_ptr.53 = internal global ptr @tower_interrupt_in_callback._entry.51, section ".printk_index", align 4
@tower_disconnect._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.55, ptr @.str.10, i32 872, ptr @.str.18, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"LEGO USB Tower #%d now disconnected\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tower_disconnect\00", [47 x i8] zeroinitializer }, align 32
@tower_disconnect._entry_ptr = internal global ptr @tower_disconnect._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@__sancov_gen_cov_switch_values.56 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 4294967188, i64 4294967192, i64 4294967294]
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"read_buffer_size\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 98, i32 12 }
@___asan_gen_.60 = private unnamed_addr constant [18 x i8] c"write_buffer_size\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 108, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"packet_timeout\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 122, i32 12 }
@___asan_gen_.66 = private unnamed_addr constant [13 x i8] c"read_timeout\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 130, i32 12 }
@___asan_gen_.69 = private unnamed_addr constant [22 x i8] c"interrupt_in_interval\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 143, i32 12 }
@___asan_gen_.72 = private unnamed_addr constant [23 x i8] c"interrupt_out_interval\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 147, i32 12 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"tower_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 266, i32 26 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 875, i32 1 }
@___asan_gen_.81 = private unnamed_addr constant [12 x i8] c"tower_table\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 176, i32 35 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 755, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 757, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 760, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 761, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 768, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 801, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 805, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant [12 x i8] c"tower_class\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 257, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 817, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 823, i32 2 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 258, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant [11 x i8] c"tower_fops\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 238, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 250, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 516, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 230, i32 6 }
@___asan_gen_.175 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 214, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.178, i32 174, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 598, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 616, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 640, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 725, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 281, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 319, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 351, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 374, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 674, i32 4 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 689, i32 4 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 692, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 701, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.249 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.250 = private constant [35 x i8] c"../drivers/usb/misc/legousbtower.c\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.250, i32 871, i32 2 }
@llvm.compiler.used = appending global [102 x ptr] [ptr @__UNIQUE_ID_author256, ptr @__UNIQUE_ID_description257, ptr @__UNIQUE_ID_file258, ptr @__UNIQUE_ID_interrupt_in_interval241, ptr @__UNIQUE_ID_interrupt_in_intervaltype240, ptr @__UNIQUE_ID_interrupt_out_interval243, ptr @__UNIQUE_ID_interrupt_out_intervaltype242, ptr @__UNIQUE_ID_license259, ptr @__UNIQUE_ID_packet_timeout237, ptr @__UNIQUE_ID_packet_timeouttype236, ptr @__UNIQUE_ID_read_buffer_size233, ptr @__UNIQUE_ID_read_buffer_sizetype232, ptr @__UNIQUE_ID_read_timeout239, ptr @__UNIQUE_ID_read_timeouttype238, ptr @__UNIQUE_ID_write_buffer_size235, ptr @__UNIQUE_ID_write_buffer_sizetype234, ptr @__exitcall_tower_driver_exit, ptr @__initcall__kmod_legousbtower__255_875_tower_driver_init6, ptr @__param_interrupt_in_interval, ptr @__param_interrupt_out_interval, ptr @__param_packet_timeout, ptr @__param_read_buffer_size, ptr @__param_read_timeout, ptr @__param_write_buffer_size, ptr @tower_disconnect._entry, ptr @tower_disconnect._entry_ptr, ptr @tower_driver_exit, ptr @tower_interrupt_in_callback._entry, ptr @tower_interrupt_in_callback._entry.51, ptr @tower_interrupt_in_callback._entry_ptr, ptr @tower_interrupt_in_callback._entry_ptr.53, ptr @tower_open._entry, ptr @tower_open._entry.42, ptr @tower_open._entry.45, ptr @tower_open._entry_ptr, ptr @tower_open._entry_ptr.44, ptr @tower_open._entry_ptr.47, ptr @tower_probe._entry, ptr @tower_probe._entry.13, ptr @tower_probe._entry.16, ptr @tower_probe._entry.20, ptr @tower_probe._entry.23, ptr @tower_probe._entry_ptr, ptr @tower_probe._entry_ptr.15, ptr @tower_probe._entry_ptr.19, ptr @tower_probe._entry_ptr.22, ptr @tower_probe._entry_ptr.25, ptr @tower_write._entry, ptr @tower_write._entry_ptr, ptr @read_buffer_size, ptr @write_buffer_size, ptr @packet_timeout, ptr @read_timeout, ptr @interrupt_in_interval, ptr @interrupt_out_interval, ptr @tower_driver, ptr @.str, ptr @tower_table, ptr @tower_probe.__key, ptr @.str.1, ptr @tower_probe.__key.2, ptr @.str.3, ptr @tower_probe.__key.4, ptr @.str.5, ptr @tower_probe.__key.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @tower_class, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @tower_fops, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.54, ptr @.str.55], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @write_buffer_size to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @packet_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @read_timeout to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_in_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @interrupt_out_interval to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_driver to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe.__key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe.__key.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_class to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_write._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_open._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_open._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_open._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_interrupt_in_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_interrupt_in_callback._entry.51 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tower_disconnect._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tower_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_register_driver(ptr noundef nonnull @tower_driver, ptr noundef null, ptr noundef nonnull @.str) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tower_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @usb_deregister(ptr noundef nonnull @tower_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_driver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tower_probe(ptr noundef %interface, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  %get_version_reply = alloca %struct.tower_get_version_reply, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %parent.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 1
  %0 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent.i, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 -128
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %get_version_reply) #10
  %2 = getelementptr inbounds %struct.tower_get_version_reply, ptr %get_version_reply, i32 0, i32 3
  %3 = getelementptr inbounds %struct.tower_get_version_reply, ptr %get_version_reply, i32 0, i32 4
  %4 = getelementptr inbounds %struct.tower_get_version_reply, ptr %get_version_reply, i32 0, i32 5
  %5 = ptrtoint ptr %get_version_reply to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %get_version_reply, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 316) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @tower_probe.__key) #10
  %call4 = tail call ptr @usb_get_dev(ptr noundef %add.ptr.i) #10
  %udev5 = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %udev5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call4, ptr %udev5, align 4
  %read_buffer_lock = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %read_buffer_lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @tower_probe.__key.2, i16 noundef signext 3) #10
  %8 = load i32, ptr @packet_timeout, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %8) #10
  %packet_timeout_jiffies = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 9
  %9 = ptrtoint ptr %packet_timeout_jiffies to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call2.i, ptr %packet_timeout_jiffies, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %10 = load volatile i32, ptr @jiffies, align 128
  %read_last_arrival = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 10
  %11 = ptrtoint ptr %read_last_arrival to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %read_last_arrival, align 8
  %read_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 11
  tail call void @__init_waitqueue_head(ptr noundef %read_wait, ptr noundef nonnull @.str.5, ptr noundef nonnull @tower_probe.__key.4) #10
  %write_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 12
  tail call void @__init_waitqueue_head(ptr noundef %write_wait, ptr noundef nonnull @.str.7, ptr noundef nonnull @tower_probe.__key.6) #10
  %cur_altsetting = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 1
  %12 = ptrtoint ptr %cur_altsetting to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cur_altsetting, align 4
  %interrupt_in_endpoint = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 14
  %interrupt_out_endpoint = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 19
  %call17 = tail call i32 @usb_find_common_endpoints_reverse(ptr noundef %13, ptr noundef null, ptr noundef null, ptr noundef %interrupt_in_endpoint, ptr noundef %interrupt_out_endpoint) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end8.i, label %do.end22

do.end22:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #14
  br label %error

if.end8.i:                                        ; preds = %do.body
  %14 = load i32, ptr @read_buffer_size, align 4
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %14, i32 noundef 3264) #15
  %read_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %read_buffer to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call9.i, ptr %read_buffer, align 4
  %tobool26.not = icmp eq ptr %call9.i, null
  br i1 %tobool26.not, label %if.end8.i.error_crit_edge, label %if.end8.i164

if.end8.i.error_crit_edge:                        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8.i164:                                     ; preds = %if.end8.i
  %16 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt_in_endpoint, align 8
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 2)
  %19 = load i16, ptr %wMaxPacketSize.i, align 1
  %20 = and i16 %19, -249
  %21 = tail call i16 @llvm.bswap.i16(i16 %20) #10
  %and.i = zext i16 %21 to i32
  %call9.i163 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %and.i, i32 noundef 3264) #15
  %interrupt_in_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 13
  %22 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i163, ptr %interrupt_in_buffer, align 4
  %tobool33.not = icmp eq ptr %call9.i163, null
  br i1 %tobool33.not, label %if.end8.i164.error_crit_edge, label %if.end35

if.end8.i164.error_crit_edge:                     ; preds = %if.end8.i164
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end35:                                         ; preds = %if.end8.i164
  %call36 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %interrupt_in_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 15
  %23 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call36, ptr %interrupt_in_urb, align 4
  %tobool38.not = icmp eq ptr %call36, null
  br i1 %tobool38.not, label %if.end35.error_crit_edge, label %if.end8.i193

if.end35.error_crit_edge:                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end8.i193:                                     ; preds = %if.end35
  %24 = load i32, ptr @write_buffer_size, align 4
  %call9.i192 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %24, i32 noundef 3264) #15
  %interrupt_out_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 18
  %25 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call9.i192, ptr %interrupt_out_buffer, align 8
  %tobool43.not = icmp eq ptr %call9.i192, null
  br i1 %tobool43.not, label %if.end8.i193.error_crit_edge, label %if.end45

if.end8.i193.error_crit_edge:                     ; preds = %if.end8.i193
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end45:                                         ; preds = %if.end8.i193
  %call46 = tail call ptr @usb_alloc_urb(i32 noundef 0, i32 noundef 3264) #10
  %interrupt_out_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 20
  %26 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call46, ptr %interrupt_out_urb, align 8
  %tobool48.not = icmp eq ptr %call46, null
  br i1 %tobool48.not, label %if.end45.error_crit_edge, label %if.end50

if.end45.error_crit_edge:                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %error

if.end50:                                         ; preds = %if.end45
  %27 = load i32, ptr @interrupt_in_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool51.not = icmp eq i32 %27, 0
  br i1 %tobool51.not, label %cond.false, label %if.end50.cond.end_crit_edge

if.end50.cond.end_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.false:                                       ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %interrupt_in_endpoint, align 8
  %bInterval = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %bInterval to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %bInterval, align 1
  %conv = zext i8 %31 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end50.cond.end_crit_edge
  %cond = phi i32 [ %conv, %cond.false ], [ %27, %if.end50.cond.end_crit_edge ]
  %interrupt_in_interval = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 16
  %32 = ptrtoint ptr %interrupt_in_interval to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %cond, ptr %interrupt_in_interval, align 8
  %33 = load i32, ptr @interrupt_out_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool53.not = icmp eq i32 %33, 0
  br i1 %tobool53.not, label %cond.false55, label %cond.end.cond.end59_crit_edge

cond.end.cond.end59_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end59

cond.false55:                                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %interrupt_out_endpoint, align 4
  %bInterval57 = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %bInterval57 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %bInterval57, align 1
  %conv58 = zext i8 %37 to i32
  br label %cond.end59

cond.end59:                                       ; preds = %cond.false55, %cond.end.cond.end59_crit_edge
  %cond60 = phi i32 [ %conv58, %cond.false55 ], [ %33, %cond.end.cond.end59_crit_edge ]
  %interrupt_out_interval = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 21
  %38 = ptrtoint ptr %interrupt_out_interval to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %cond60, ptr %interrupt_out_interval, align 4
  %call61 = call i32 @usb_control_msg_recv(ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext -3, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %get_version_reply, i16 noundef zeroext 8, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %do.end70, label %do.end66

do.end66:                                         ; preds = %cond.end59
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call61) #14
  br label %error

do.end70:                                         ; preds = %cond.end59
  %39 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %2, align 4
  %conv72 = zext i8 %40 to i32
  %41 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %3, align 1
  %conv73 = zext i8 %42 to i32
  %43 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %4, align 2
  %45 = call i16 @llvm.bswap.i16(i16 %44)
  %conv74 = zext i16 %45 to i32
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %conv72, i32 noundef %conv73, i32 noundef %conv74) #14
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %46 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i, ptr %driver_data.i.i, align 4
  %call75 = call i32 @usb_register_dev(ptr noundef %interface, ptr noundef nonnull @tower_class) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end81, label %do.end80

do.end80:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21) #14
  br label %error

if.end81:                                         ; preds = %do.end70
  call void @__sanitizer_cov_trace_pc() #12
  %minor82 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 4
  %47 = ptrtoint ptr %minor82 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %minor82, align 8
  %conv83 = trunc i32 %48 to i8
  %minor84 = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 2
  %49 = ptrtoint ptr %minor84 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv83, ptr %minor84, align 8
  %conv90 = and i32 %48, 255
  %sub = add nsw i32 %conv90, -160
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %sub, i32 noundef 180, i32 noundef %conv90) #14
  br label %cleanup

error:                                            ; preds = %do.end80, %do.end66, %if.end45.error_crit_edge, %if.end8.i193.error_crit_edge, %if.end35.error_crit_edge, %if.end8.i164.error_crit_edge, %if.end8.i.error_crit_edge, %do.end22
  %retval2.1 = phi i32 [ %call17, %do.end22 ], [ %call61, %do.end66 ], [ %call75, %do.end80 ], [ -12, %if.end45.error_crit_edge ], [ -12, %if.end8.i193.error_crit_edge ], [ -12, %if.end35.error_crit_edge ], [ -12, %if.end8.i164.error_crit_edge ], [ -12, %if.end8.i.error_crit_edge ]
  %interrupt_in_urb.i = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 15
  %50 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %interrupt_in_urb.i, align 4
  call void @usb_free_urb(ptr noundef %51) #10
  %interrupt_out_urb.i = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 20
  %52 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %interrupt_out_urb.i, align 8
  call void @usb_free_urb(ptr noundef %53) #10
  %read_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 5
  %54 = ptrtoint ptr %read_buffer.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %read_buffer.i, align 4
  call void @kfree(ptr noundef %55) #10
  %interrupt_in_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 13
  %56 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %interrupt_in_buffer.i, align 4
  call void @kfree(ptr noundef %57) #10
  %interrupt_out_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %call7.i.i, i32 0, i32 18
  %58 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %interrupt_out_buffer.i, align 8
  call void @kfree(ptr noundef %59) #10
  %60 = ptrtoint ptr %udev5 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %udev5, align 4
  call void @usb_put_dev(ptr noundef %61) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %error, %if.end81, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval2.1, %error ], [ 0, %if.end81 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %get_version_reply) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tower_disconnect(ptr noundef %interface) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %minor1 = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %minor1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %minor1, align 4
  tail call void @usb_deregister_dev(ptr noundef %interface, ptr noundef nonnull @tower_class) #10
  %interrupt_in_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_poison_urb(ptr noundef %5) #10
  %interrupt_out_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 20
  %6 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_poison_urb(ptr noundef %7) #10
  tail call void @mutex_lock_nested(ptr noundef %1, i32 noundef 0) #10
  %open_count = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %1) #10
  %10 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %interrupt_in_urb, align 4
  tail call void @usb_free_urb(ptr noundef %11) #10
  %12 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %interrupt_out_urb, align 4
  tail call void @usb_free_urb(ptr noundef %13) #10
  %read_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %read_buffer.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %read_buffer.i, align 4
  tail call void @kfree(ptr noundef %15) #10
  %interrupt_in_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 13
  %16 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %interrupt_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %17) #10
  %interrupt_out_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 18
  %18 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %interrupt_out_buffer.i, align 4
  tail call void @kfree(ptr noundef %19) #10
  %udev.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %udev.i, align 4
  tail call void @usb_put_dev(ptr noundef %21) #10
  tail call void @kfree(ptr noundef %1) #10
  br label %do.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %disconnected = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load = load i8, ptr %disconnected, align 4
  %bf.set = or i8 %bf.load, -128
  store i8 %bf.set, ptr %disconnected, align 4
  %read_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  %write_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 0, ptr noundef null) #10
  tail call void @mutex_unlock(ptr noundef %1) #10
  br label %do.end

do.end:                                           ; preds = %if.else, %if.then
  %conv = zext i8 %3 to i32
  %dev4 = getelementptr inbounds %struct.usb_interface, ptr %interface, i32 0, i32 7
  %sub = add nsw i32 %conv, -160
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev4, ptr noundef nonnull @.str.54, i32 noundef %sub) #14
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_get_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_find_common_endpoints_reverse(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_alloc_urb(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_control_msg_recv(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, ptr noundef, i16 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_register_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal noalias ptr @legousbtower_devnode(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %mode) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %init_name.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call1 = tail call noalias ptr (i32, ptr, ...) @kasprintf(i32 noundef 3264, ptr noundef nonnull @.str.27, ptr noundef %retval.0.i) #10
  ret ptr %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kasprintf(i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @tower_llseek(ptr nocapture noundef readnone %file, i64 noundef %off, i32 noundef %whence) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 -29
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tower_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.unlock_exit_crit_edge

if.end.unlock_exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body, label %if.end13

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tower_read.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_read, %if.then10)) #10
          to label %unlock_exit [label %if.then10], !srcloc !183

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tower_read.__UNIQUE_ID_ddebug245, ptr noundef %dev11, ptr noundef nonnull @.str.29) #10
  br label %unlock_exit

if.end13:                                         ; preds = %if.end4
  %5 = load i32, ptr @read_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool14.not = icmp eq i32 %5, 0
  br i1 %tobool14.not, label %if.end13.if.end17_crit_edge, label %if.then15

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %6 = load volatile i32, ptr @jiffies, align 128
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %5) #10
  %add = add i32 %call2.i, %6
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end13.if.end17_crit_edge
  %timeout.0 = phi i32 [ %add, %if.then15 ], [ 0, %if.end13.if.end17_crit_edge ]
  %read_buffer_lock.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %read_buffer_lock.i) #10
  %7 = load i32, ptr @packet_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.end17.if.then.i171_crit_edge, label %lor.lhs.false.i

if.end17.if.then.i171_crit_edge:                  ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i171

lor.lhs.false.i:                                  ; preds = %if.end17
  %read_last_arrival.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %read_last_arrival.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_last_arrival.i, align 4
  %packet_timeout_jiffies.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %packet_timeout_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packet_timeout_jiffies.i, align 4
  %add.i = add i32 %11, %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i170 = icmp slt i32 %sub.i, 0
  br i1 %cmp.i170, label %lor.lhs.false.i.if.then.i171_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.if.then.i171_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i171

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %read_buffer_length.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %read_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_buffer_length.i, align 4
  %15 = load i32, ptr @read_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp2.i = icmp eq i32 %14, %15
  br i1 %cmp2.i, label %lor.lhs.false1.i.if.then.i171_crit_edge, label %lor.lhs.false1.i.tower_check_for_read_packet.exit_crit_edge

lor.lhs.false1.i.tower_check_for_read_packet.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tower_check_for_read_packet.exit

lor.lhs.false1.i.if.then.i171_crit_edge:          ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i171

if.then.i171:                                     ; preds = %lor.lhs.false1.i.if.then.i171_crit_edge, %lor.lhs.false.i.if.then.i171_crit_edge, %if.end17.if.then.i171_crit_edge
  %read_buffer_length3.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %read_buffer_length3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_buffer_length3.i, align 4
  %read_packet_length.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %read_packet_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %read_packet_length.i, align 4
  br label %tower_check_for_read_packet.exit

tower_check_for_read_packet.exit:                 ; preds = %if.then.i171, %lor.lhs.false1.i.tower_check_for_read_packet.exit_crit_edge
  %interrupt_in_done.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %interrupt_in_done.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %interrupt_in_done.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %read_buffer_lock.i) #10
  %read_packet_length = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %read_packet_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_packet_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp18219 = icmp eq i32 %21, 0
  br i1 %cmp18219, label %while.body.lr.ph, label %tower_check_for_read_packet.exit.while.end_crit_edge

tower_check_for_read_packet.exit.while.end_crit_edge: ; preds = %tower_check_for_read_packet.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %tower_check_for_read_packet.exit
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %packet_timeout_jiffies = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 9
  %read_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 11
  %read_buffer_length = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 6
  %interrupt_out_busy = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 22
  %read_last_arrival.i175 = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %tower_check_for_read_packet.exit189.while.body_crit_edge, %while.body.lr.ph
  %timeout.1220 = phi i32 [ %timeout.0, %while.body.lr.ph ], [ %timeout.2200, %tower_check_for_read_packet.exit189.while.body_crit_edge ]
  %22 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f_flags, align 4
  %and = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool19.not = icmp eq i32 %and, 0
  br i1 %tobool19.not, label %if.end21, label %while.body.unlock_exit_crit_edge

while.body.unlock_exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end21:                                         ; preds = %while.body
  %24 = ptrtoint ptr %packet_timeout_jiffies to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %packet_timeout_jiffies, align 4
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 530) #10
  %26 = ptrtoint ptr %interrupt_in_done.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interrupt_in_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool28.not = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool31.not = icmp eq i32 %25, 0
  %spec.store.select = select i1 %tobool31.not, i32 1, i32 %25
  %__ret.0 = select i1 %tobool28.not, i32 %25, i32 %spec.store.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.0)
  %tobool36.not = icmp eq i32 %__ret.0, 0
  %not.tobool28.not = xor i1 %tobool28.not, true
  %28 = select i1 %not.tobool28.not, i1 true, i1 %tobool36.not
  br i1 %28, label %if.end21.if.end70_crit_edge, label %if.then40

if.end21.if.end70_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end70

if.then40:                                        ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %29 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  %30 = ptrtoint ptr %packet_timeout_jiffies to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %packet_timeout_jiffies, align 4
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call43209 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %32 = ptrtoint ptr %interrupt_in_done.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %interrupt_in_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool46.not210 = icmp eq i32 %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool50.not211 = icmp eq i32 %31, 0
  %spec.store.select114212 = select i1 %tobool50.not211, i32 1, i32 %31
  %__ret41.1213 = select i1 %tobool46.not210, i32 %31, i32 %spec.store.select114212
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.1213)
  %tobool56.not214 = icmp eq i32 %__ret41.1213, 0
  %not.tobool46.not215 = xor i1 %tobool46.not210, true
  %34 = select i1 %not.tobool46.not215, i1 true, i1 %tobool56.not214
  br i1 %34, label %if.then40.for.end_crit_edge, label %if.then40.if.end63_crit_edge

if.then40.if.end63_crit_edge:                     ; preds = %if.then40
  br label %if.end63

if.then40.for.end_crit_edge:                      ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end63:                                         ; preds = %cleanup.if.end63_crit_edge, %if.then40.if.end63_crit_edge
  %__ret41.1217 = phi i32 [ %__ret41.1, %cleanup.if.end63_crit_edge ], [ %__ret41.1213, %if.then40.if.end63_crit_edge ]
  %call43216 = phi i32 [ %call43, %cleanup.if.end63_crit_edge ], [ %call43209, %if.then40.if.end63_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43216)
  %tobool64.not = icmp eq i32 %call43216, 0
  br i1 %tobool64.not, label %cleanup, label %if.end63.__out_crit_edge

if.end63.__out_crit_edge:                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end63
  %call67 = call i32 @schedule_timeout(i32 noundef %__ret41.1217) #10
  %call43 = call i32 @prepare_to_wait_event(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %35 = ptrtoint ptr %interrupt_in_done.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %interrupt_in_done.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool46.not = icmp eq i32 %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool50.not = icmp eq i32 %call67, 0
  %spec.store.select114 = select i1 %tobool50.not, i32 1, i32 %call67
  %__ret41.1 = select i1 %tobool46.not, i32 %call67, i32 %spec.store.select114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret41.1)
  %tobool56.not = icmp eq i32 %__ret41.1, 0
  %not.tobool46.not = xor i1 %tobool46.not, true
  %37 = select i1 %not.tobool46.not, i1 true, i1 %tobool56.not
  br i1 %37, label %cleanup.for.end_crit_edge, label %cleanup.if.end63_crit_edge

cleanup.if.end63_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end63

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then40.for.end_crit_edge
  %__ret41.1.lcssa = phi i32 [ %__ret41.1213, %if.then40.for.end_crit_edge ], [ %__ret41.1, %cleanup.for.end_crit_edge ]
  call void @finish_wait(ptr noundef %read_wait, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end63.__out_crit_edge
  %__ret41.2193 = phi i32 [ %__ret41.1.lcssa, %for.end ], [ %call43216, %if.end63.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end70

if.end70:                                         ; preds = %__out, %if.end21.if.end70_crit_edge
  %__ret.1 = phi i32 [ %__ret.0, %if.end21.if.end70_crit_edge ], [ %__ret41.2193, %__out ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.1)
  %cmp72 = icmp slt i32 %__ret.1, 0
  br i1 %cmp72, label %if.end70.unlock_exit_crit_edge, label %if.end74

if.end70.unlock_exit_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end74:                                         ; preds = %if.end70
  %38 = load i32, ptr @read_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool75.not = icmp eq i32 %38, 0
  br i1 %tobool75.not, label %if.end74.if.end87_crit_edge, label %land.lhs.true76

if.end74.if.end87_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true76:                                  ; preds = %if.end74
  %39 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %read_buffer_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool77.not = icmp eq i32 %40, 0
  br i1 %tobool77.not, label %lor.lhs.false, label %land.lhs.true76.if.then79_crit_edge

land.lhs.true76.if.then79_crit_edge:              ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79

lor.lhs.false:                                    ; preds = %land.lhs.true76
  %41 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool78.not = icmp eq i32 %42, 0
  br i1 %tobool78.not, label %lor.lhs.false.if.end82_crit_edge, label %lor.lhs.false.if.then79_crit_edge

lor.lhs.false.if.then79_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then79

lor.lhs.false.if.end82_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

if.then79:                                        ; preds = %lor.lhs.false.if.then79_crit_edge, %land.lhs.true76.if.then79_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %call2.i164 = call i32 @__msecs_to_jiffies(i32 noundef %38) #10
  %add81 = add i32 %call2.i164, %43
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %lor.lhs.false.if.end82_crit_edge
  %timeout.2.ph = phi i32 [ %timeout.1220, %lor.lhs.false.if.end82_crit_edge ], [ %add81, %if.then79 ]
  %.pr = load i32, ptr @read_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool83.not = icmp eq i32 %.pr, 0
  br i1 %tobool83.not, label %if.end82.if.end87_crit_edge, label %land.lhs.true84

if.end82.if.end87_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true84:                                  ; preds = %if.end82
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %44 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %timeout.2.ph, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp85 = icmp slt i32 %sub, 0
  br i1 %cmp85, label %land.lhs.true84.unlock_exit_crit_edge, label %land.lhs.true84.if.end87_crit_edge

land.lhs.true84.if.end87_crit_edge:               ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end87

land.lhs.true84.unlock_exit_crit_edge:            ; preds = %land.lhs.true84
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end87:                                         ; preds = %land.lhs.true84.if.end87_crit_edge, %if.end82.if.end87_crit_edge, %if.end74.if.end87_crit_edge
  %timeout.2200 = phi i32 [ %timeout.2.ph, %land.lhs.true84.if.end87_crit_edge ], [ %timeout.2.ph, %if.end82.if.end87_crit_edge ], [ %timeout.1220, %if.end74.if.end87_crit_edge ]
  call void @_raw_spin_lock_irq(ptr noundef %read_buffer_lock.i) #10
  %45 = load i32, ptr @packet_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool.not.i174 = icmp eq i32 %45, 0
  br i1 %tobool.not.i174, label %if.end87.if.then.i186_crit_edge, label %lor.lhs.false.i180

if.end87.if.then.i186_crit_edge:                  ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i186

lor.lhs.false.i180:                               ; preds = %if.end87
  %46 = ptrtoint ptr %read_last_arrival.i175 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %read_last_arrival.i175, align 4
  %48 = ptrtoint ptr %packet_timeout_jiffies to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %packet_timeout_jiffies, align 4
  %add.i177 = add i32 %49, %47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %sub.i178 = sub i32 %add.i177, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i178)
  %cmp.i179 = icmp slt i32 %sub.i178, 0
  br i1 %cmp.i179, label %lor.lhs.false.i180.if.then.i186_crit_edge, label %lor.lhs.false1.i183

lor.lhs.false.i180.if.then.i186_crit_edge:        ; preds = %lor.lhs.false.i180
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i186

lor.lhs.false1.i183:                              ; preds = %lor.lhs.false.i180
  %51 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %read_buffer_length, align 4
  %53 = load i32, ptr @read_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %53)
  %cmp2.i182 = icmp eq i32 %52, %53
  br i1 %cmp2.i182, label %lor.lhs.false1.i183.if.then.i186_crit_edge, label %lor.lhs.false1.i183.tower_check_for_read_packet.exit189_crit_edge

lor.lhs.false1.i183.tower_check_for_read_packet.exit189_crit_edge: ; preds = %lor.lhs.false1.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %tower_check_for_read_packet.exit189

lor.lhs.false1.i183.if.then.i186_crit_edge:       ; preds = %lor.lhs.false1.i183
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i186

if.then.i186:                                     ; preds = %lor.lhs.false1.i183.if.then.i186_crit_edge, %lor.lhs.false.i180.if.then.i186_crit_edge, %if.end87.if.then.i186_crit_edge
  %54 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %read_buffer_length, align 4
  %56 = ptrtoint ptr %read_packet_length to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %read_packet_length, align 4
  br label %tower_check_for_read_packet.exit189

tower_check_for_read_packet.exit189:              ; preds = %if.then.i186, %lor.lhs.false1.i183.tower_check_for_read_packet.exit189_crit_edge
  %57 = ptrtoint ptr %interrupt_in_done.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %interrupt_in_done.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %read_buffer_lock.i) #10
  %58 = ptrtoint ptr %read_packet_length to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %read_packet_length, align 4
  %cmp18 = icmp eq i32 %59, 0
  br i1 %cmp18, label %tower_check_for_read_packet.exit189.while.body_crit_edge, label %tower_check_for_read_packet.exit189.while.end_crit_edge

tower_check_for_read_packet.exit189.while.end_crit_edge: ; preds = %tower_check_for_read_packet.exit189
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

tower_check_for_read_packet.exit189.while.body_crit_edge: ; preds = %tower_check_for_read_packet.exit189
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.end:                                        ; preds = %tower_check_for_read_packet.exit189.while.end_crit_edge, %tower_check_for_read_packet.exit.while.end_crit_edge
  %.lcssa = phi i32 [ %21, %tower_check_for_read_packet.exit.while.end_crit_edge ], [ %59, %tower_check_for_read_packet.exit189.while.end_crit_edge ]
  %60 = call i32 @llvm.umin.i32(i32 %.lcssa, i32 %count)
  %read_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 5
  %61 = ptrtoint ptr %read_buffer to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %read_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp9.i.i = icmp slt i32 %60, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %while.end
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.unlock_exit_crit_edge, label %if.then27.i.i, !prof !184

land.rhs16.i.i.unlock_exit_crit_edge:             ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %unlock_exit

if.then.i.i.i:                                    ; preds = %while.end
  call void @__check_object_size(ptr noundef %62, i32 noundef %60, i1 noundef zeroext true) #10
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 174) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %63 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %60, i32 -1226833920) #16, !srcloc !185
  %asmresult.i.i = extractvalue { i32, i32 } %63, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %62, i32 noundef %60) #10
  %call.i12.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %62, i32 noundef %60) #10
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %60, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %60, %if.end.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %tobool92.not = icmp eq i32 %n.addr.0.i, 0
  br i1 %tobool92.not, label %if.end94, label %copy_to_user.exit.unlock_exit_crit_edge

copy_to_user.exit.unlock_exit_crit_edge:          ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end94:                                         ; preds = %copy_to_user.exit
  call void @_raw_spin_lock_irq(ptr noundef %read_buffer_lock.i) #10
  %read_buffer_length95 = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 6
  %64 = ptrtoint ptr %read_buffer_length95 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %read_buffer_length95, align 4
  %sub96 = sub i32 %65, %60
  store i32 %sub96, ptr %read_buffer_length95, align 4
  %66 = ptrtoint ptr %read_packet_length to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %read_packet_length, align 4
  %sub98 = sub i32 %67, %60
  store i32 %sub98, ptr %read_packet_length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %65, i32 %60)
  %cmp101222.not = icmp eq i32 %65, %60
  br i1 %cmp101222.not, label %if.end94.for.end106_crit_edge, label %if.end94.for.body_crit_edge

if.end94.for.body_crit_edge:                      ; preds = %if.end94
  br label %for.body

if.end94.for.end106_crit_edge:                    ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end106

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end94.for.body_crit_edge
  %i.0223 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end94.for.body_crit_edge ]
  %68 = ptrtoint ptr %read_buffer to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %read_buffer, align 4
  %add103 = add i32 %i.0223, %60
  %arrayidx = getelementptr i8, ptr %69, i32 %add103
  %70 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %arrayidx, align 1
  %arrayidx105 = getelementptr i8, ptr %69, i32 %i.0223
  %72 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %arrayidx105, align 1
  %inc = add nuw i32 %i.0223, 1
  %73 = ptrtoint ptr %read_buffer_length95 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %read_buffer_length95, align 4
  %cmp101 = icmp ult i32 %inc, %74
  br i1 %cmp101, label %for.body.for.body_crit_edge, label %for.body.for.end106_crit_edge

for.body.for.end106_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end106

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end106:                                       ; preds = %for.body.for.end106_crit_edge, %if.end94.for.end106_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %read_buffer_lock.i) #10
  br label %unlock_exit

unlock_exit:                                      ; preds = %for.end106, %copy_to_user.exit.unlock_exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.unlock_exit_crit_edge, %land.lhs.true84.unlock_exit_crit_edge, %if.end70.unlock_exit_crit_edge, %while.body.unlock_exit_crit_edge, %if.then10, %do.body, %if.end.unlock_exit_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then10 ], [ %60, %for.end106 ], [ -19, %if.end.unlock_exit_crit_edge ], [ -14, %copy_to_user.exit.unlock_exit_crit_edge ], [ 0, %do.body ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.unlock_exit_crit_edge ], [ -110, %land.lhs.true84.unlock_exit_crit_edge ], [ -11, %while.body.unlock_exit_crit_edge ], [ %__ret.1, %if.end70.unlock_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #10
  br label %exit

exit:                                             ; preds = %unlock_exit, %entry.exit_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %unlock_exit ], [ -512, %entry.exit_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tower_write(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %ppos) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %call = tail call i32 @mutex_lock_interruptible_nested(ptr noundef %1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.exit_crit_edge

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  %disconnected = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool2.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.unlock_exit_crit_edge

if.end.unlock_exit_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp = icmp eq i32 %count, 0
  br i1 %cmp, label %do.body, label %while.cond.preheader

while.cond.preheader:                             ; preds = %if.end4
  %interrupt_out_busy = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 22
  %f_flags = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 7
  %write_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 12
  br label %while.cond

do.body:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tower_write.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_write, %if.then10)) #10
          to label %unlock_exit [label %if.then10], !srcloc !183

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %udev = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %udev, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %4, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tower_write.__UNIQUE_ID_ddebug248, ptr noundef %dev11, ptr noundef nonnull @.str.34) #10
  br label %unlock_exit

while.cond:                                       ; preds = %if.end38.while.cond_crit_edge, %while.cond.preheader
  %5 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool14.not = icmp eq i32 %6, 0
  br i1 %tobool14.not, label %while.end, label %while.body

while.body:                                       ; preds = %while.cond
  %7 = ptrtoint ptr %f_flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f_flags, align 4
  %and = and i32 %8, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool15.not = icmp eq i32 %and, 0
  br i1 %tobool15.not, label %if.end17, label %while.body.unlock_exit_crit_edge

while.body.unlock_exit_crit_edge:                 ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end17:                                         ; preds = %while.body
  call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 609) #10
  %9 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool25.not = icmp eq i32 %10, 0
  br i1 %tobool25.not, label %if.end17.if.end38_crit_edge, label %if.then26

if.end17.if.end38_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38

if.then26:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %11 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %call28142 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %12 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool30.not143 = icmp eq i32 %13, 0
  br i1 %tobool30.not143, label %if.then26.for.end_crit_edge, label %if.then26.if.end32_crit_edge

if.then26.if.end32_crit_edge:                     ; preds = %if.then26
  br label %if.end32

if.then26.for.end_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end32:                                         ; preds = %cleanup.if.end32_crit_edge, %if.then26.if.end32_crit_edge
  %call28144 = phi i32 [ %call28, %cleanup.if.end32_crit_edge ], [ %call28142, %if.then26.if.end32_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28144)
  %tobool33.not = icmp eq i32 %call28144, 0
  br i1 %tobool33.not, label %cleanup, label %if.end32.__out_crit_edge

if.end32.__out_crit_edge:                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end32
  call void @schedule() #10
  %call28 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %14 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %interrupt_out_busy, align 4
  %tobool30.not = icmp eq i32 %15, 0
  br i1 %tobool30.not, label %cleanup.for.end_crit_edge, label %cleanup.if.end32_crit_edge

cleanup.if.end32_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then26.for.end_crit_edge
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end32.__out_crit_edge
  %__ret27.1131 = phi i32 [ 0, %for.end ], [ %call28144, %if.end32.__out_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end38

if.end38:                                         ; preds = %__out, %if.end17.if.end38_crit_edge
  %__ret.0 = phi i32 [ %__ret27.1131, %__out ], [ 0, %if.end17.if.end38_crit_edge ]
  %tobool40.not = icmp eq i32 %__ret.0, 0
  br i1 %tobool40.not, label %if.end38.while.cond_crit_edge, label %if.end38.unlock_exit_crit_edge

if.end38.unlock_exit_crit_edge:                   ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end38.while.cond_crit_edge:                    ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %while.cond
  %16 = load i32, ptr @write_buffer_size, align 4
  %17 = call i32 @llvm.smin.i32(i32 %16, i32 %count)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tower_write.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_write, %if.then57)) #10
          to label %do.end62 [label %if.then57], !srcloc !183

if.then57:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %udev58 = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %udev58 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %udev58, align 4
  %dev59 = getelementptr inbounds %struct.usb_device, ptr %19, i32 0, i32 15
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tower_write.__UNIQUE_ID_ddebug251, ptr noundef %dev59, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %count, i32 noundef %17) #10
  br label %do.end62

do.end62:                                         ; preds = %if.then57, %while.end
  %interrupt_out_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 18
  %20 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %interrupt_out_buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.i.i = icmp slt i32 %17, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %do.end62
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.unlock_exit_crit_edge, label %if.then27.i.i, !prof !184

land.rhs16.i.i.unlock_exit_crit_edge:             ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.30, i32 noundef 230, i32 noundef 9, ptr noundef null) #10
  br label %unlock_exit

if.then.i.i.i:                                    ; preds = %do.end62
  call void @__check_object_size(ptr noundef %21, i32 noundef %17, i1 noundef zeroext false) #10
  call void @__might_fault(ptr noundef nonnull @.str.32, i32 noundef 156) #10
  %call.i.i = call zeroext i1 @should_fail_usercopy() #10
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %22 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %17, i32 -1226833920) #16, !srcloc !186
  %asmresult.i.i = extractvalue { i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !184

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %21, i32 noundef %17) #10
  %23 = call i32 @llvm.read_register.i32(metadata !173) #10
  %and.i.i.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 4
  %25 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !187
  %and.i.i.i.i = and i32 %25, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #10, !srcloc !188
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %21, ptr noundef %buffer, i32 noundef %17) #10
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %25) #10, !srcloc !188
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #10, !srcloc !189
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %17, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %17, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end66, label %if.then11.i.i, !prof !184

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i = sub i32 %17, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 %sub.i.i
  %26 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %unlock_exit

if.end66:                                         ; preds = %if.end.i.i
  %interrupt_out_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 20
  %27 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %interrupt_out_urb, align 4
  %udev67 = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %udev67 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %udev67, align 4
  %interrupt_out_endpoint = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 19
  %31 = ptrtoint ptr %interrupt_out_endpoint to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %interrupt_out_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %34 to i32
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %30, align 8
  %shl.i = shl i32 %36, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or = or i32 %or.i, 1073741824
  %37 = ptrtoint ptr %interrupt_out_buffer to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %interrupt_out_buffer, align 4
  %interrupt_out_interval = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 21
  %39 = ptrtoint ptr %interrupt_out_interval to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %interrupt_out_interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 8
  %41 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %30, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 10
  %42 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 14
  %43 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %38, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 19
  %44 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %17, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 28
  %45 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @tower_interrupt_out_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 27
  %46 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %1, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %30, i32 0, i32 4
  %47 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %48)
  %cmp.i = icmp eq i32 %48, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %48)
  %cmp6.i = icmp ugt i32 %48, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i127, label %if.end66.usb_fill_int_urb.exit_crit_edge

if.end66.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit

if.then.i127:                                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #12
  %49 = call i32 @llvm.smax.i32(i32 %40, i32 1) #10
  %50 = call i32 @llvm.umin.i32(i32 %49, i32 16) #10
  %sub.i = add nsw i32 %50, -1
  %shl.i126 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i127, %if.end66.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i126, %if.then.i127 ], [ %40, %if.end66.usb_fill_int_urb.exit_crit_edge ]
  %51 = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 25
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %interval.sink.i, ptr %51, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %28, i32 0, i32 23
  %53 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %start_frame.i, align 4
  %54 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 1, ptr %interrupt_out_busy, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !190
  call void @arm_heavy_mb() #10
  %55 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %interrupt_out_urb, align 4
  %call76 = call i32 @usb_submit_urb(ptr noundef %56, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %usb_fill_int_urb.exit.unlock_exit_crit_edge, label %if.then78

usb_fill_int_urb.exit.unlock_exit_crit_edge:      ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.then78:                                        ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %interrupt_out_busy, align 4
  %58 = ptrtoint ptr %udev67 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %udev67, align 4
  %dev84 = getelementptr inbounds %struct.usb_device, ptr %59, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev84, ptr noundef nonnull @.str.36, i32 noundef %call76) #14
  br label %unlock_exit

unlock_exit:                                      ; preds = %if.then78, %usb_fill_int_urb.exit.unlock_exit_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.unlock_exit_crit_edge, %if.end38.unlock_exit_crit_edge, %while.body.unlock_exit_crit_edge, %if.then10, %do.body, %if.end.unlock_exit_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then10 ], [ %call76, %if.then78 ], [ -19, %if.end.unlock_exit_crit_edge ], [ %17, %usb_fill_int_urb.exit.unlock_exit_crit_edge ], [ 0, %do.body ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.unlock_exit_crit_edge ], [ -11, %while.body.unlock_exit_crit_edge ], [ %__ret.0, %if.end38.unlock_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef %1) #10
  br label %exit

exit:                                             ; preds = %unlock_exit, %entry.exit_crit_edge
  %retval1.1 = phi i32 [ %retval1.0, %unlock_exit ], [ -512, %entry.exit_crit_edge ]
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tower_poll(ptr noundef %file, ptr noundef %wait) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %disconnected = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %read_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 11
  %tobool.not.i = icmp eq ptr %wait, null
  br i1 %tobool.not.i, label %if.end.poll_wait.exit24_crit_edge, label %land.lhs.true.i

if.end.poll_wait.exit24_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true.i22

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %4(ptr noundef %file, ptr noundef nonnull %read_wait, ptr noundef nonnull %wait) #10
  br label %land.lhs.true.i22

land.lhs.true.i22:                                ; preds = %if.then.i, %land.lhs.true.i.land.lhs.true.i22_crit_edge
  %write_wait27 = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 12
  %5 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wait, align 4
  %tobool1.not.i19 = icmp eq ptr %6, null
  %tobool3.not.i20 = icmp eq ptr %write_wait27, null
  %or.cond.i21 = or i1 %tobool3.not.i20, %tobool1.not.i19
  br i1 %or.cond.i21, label %land.lhs.true.i22.poll_wait.exit24_crit_edge, label %if.then.i23

land.lhs.true.i22.poll_wait.exit24_crit_edge:     ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %poll_wait.exit24

if.then.i23:                                      ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %6(ptr noundef %file, ptr noundef nonnull %write_wait27, ptr noundef nonnull %wait) #10
  br label %poll_wait.exit24

poll_wait.exit24:                                 ; preds = %if.then.i23, %land.lhs.true.i22.poll_wait.exit24_crit_edge, %if.end.poll_wait.exit24_crit_edge
  %read_buffer_lock.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %read_buffer_lock.i) #10
  %7 = load i32, ptr @packet_timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i25 = icmp eq i32 %7, 0
  br i1 %tobool.not.i25, label %poll_wait.exit24.if.then.i26_crit_edge, label %lor.lhs.false.i

poll_wait.exit24.if.then.i26_crit_edge:           ; preds = %poll_wait.exit24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i26

lor.lhs.false.i:                                  ; preds = %poll_wait.exit24
  %read_last_arrival.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 10
  %8 = ptrtoint ptr %read_last_arrival.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %read_last_arrival.i, align 4
  %packet_timeout_jiffies.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 9
  %10 = ptrtoint ptr %packet_timeout_jiffies.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %packet_timeout_jiffies.i, align 4
  %add.i = add i32 %11, %9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %add.i, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp.i = icmp slt i32 %sub.i, 0
  br i1 %cmp.i, label %lor.lhs.false.i.if.then.i26_crit_edge, label %lor.lhs.false1.i

lor.lhs.false.i.if.then.i26_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i26

lor.lhs.false1.i:                                 ; preds = %lor.lhs.false.i
  %read_buffer_length.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 6
  %13 = ptrtoint ptr %read_buffer_length.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %read_buffer_length.i, align 4
  %15 = load i32, ptr @read_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %15)
  %cmp2.i = icmp eq i32 %14, %15
  br i1 %cmp2.i, label %lor.lhs.false1.i.if.then.i26_crit_edge, label %lor.lhs.false1.i.tower_check_for_read_packet.exit_crit_edge

lor.lhs.false1.i.tower_check_for_read_packet.exit_crit_edge: ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tower_check_for_read_packet.exit

lor.lhs.false1.i.if.then.i26_crit_edge:           ; preds = %lor.lhs.false1.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i26

if.then.i26:                                      ; preds = %lor.lhs.false1.i.if.then.i26_crit_edge, %lor.lhs.false.i.if.then.i26_crit_edge, %poll_wait.exit24.if.then.i26_crit_edge
  %read_buffer_length3.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %read_buffer_length3.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %read_buffer_length3.i, align 4
  %read_packet_length.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %read_packet_length.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %read_packet_length.i, align 4
  br label %tower_check_for_read_packet.exit

tower_check_for_read_packet.exit:                 ; preds = %if.then.i26, %lor.lhs.false1.i.tower_check_for_read_packet.exit_crit_edge
  %interrupt_in_done.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %interrupt_in_done.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %interrupt_in_done.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %read_buffer_lock.i) #10
  %read_packet_length = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 7
  %20 = ptrtoint ptr %read_packet_length to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %read_packet_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.not = icmp eq i32 %21, 0
  %spec.select = select i1 %cmp.not, i32 0, i32 65
  %interrupt_out_busy = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 22
  %22 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool3.not = icmp eq i32 %23, 0
  %or5 = or i32 %spec.select, 260
  %mask.1 = select i1 %tobool3.not, i32 %or5, i32 %spec.select
  br label %cleanup

cleanup:                                          ; preds = %tower_check_for_read_packet.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %mask.1, %tower_check_for_read_packet.exit ], [ 24, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tower_open(ptr noundef %inode, ptr noundef %file) #2 align 64 {
entry:
  %reset_reply = alloca %struct.tower_reset_reply, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reset_reply) #10
  %0 = ptrtoint ptr %reset_reply to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reset_reply, align 4
  %call = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #10
  %i_rdev.i = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %1 = ptrtoint ptr %i_rdev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %i_rdev.i, align 8
  %and.i = and i32 %2, 1048575
  %call3 = tail call ptr @usb_find_interface(ptr noundef nonnull @tower_driver, i32 noundef %and.i) #10
  %tobool.not = icmp eq ptr %call3, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.40, i32 noundef %and.i) #14
  br label %exit

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.usb_interface, ptr %call3, i32 0, i32 7, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %tobool6.not = icmp eq ptr %4, null
  br i1 %tobool6.not, label %if.end.exit_crit_edge, label %if.end8

if.end.exit_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end8:                                          ; preds = %if.end
  %call9 = tail call i32 @mutex_lock_interruptible_nested(ptr noundef nonnull %4, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end8.exit_crit_edge

if.end8.exit_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end12:                                         ; preds = %if.end8
  %open_count = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %open_count to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %open_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool13.not = icmp eq i32 %6, 0
  br i1 %tobool13.not, label %if.end15, label %if.end12.unlock_exit_crit_edge

if.end12.unlock_exit_crit_edge:                   ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %unlock_exit

if.end15:                                         ; preds = %if.end12
  %udev = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 1
  %7 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %udev, align 4
  %call16 = call i32 @usb_control_msg_recv(ptr noundef %8, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext -64, i16 noundef zeroext 0, i16 noundef zeroext 0, ptr noundef nonnull %reset_reply, i16 noundef zeroext 4, i32 noundef 1000, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end20, label %if.end23

do.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %udev, align 4
  %dev22 = getelementptr inbounds %struct.usb_device, ptr %10, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev22, ptr noundef nonnull @.str.43) #14
  br label %unlock_exit

if.end23:                                         ; preds = %if.end15
  %read_buffer_length = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 6
  %11 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %read_buffer_length, align 4
  %read_packet_length = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 7
  %12 = ptrtoint ptr %read_packet_length to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %read_packet_length, align 4
  %interrupt_in_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 15
  %13 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %interrupt_in_urb, align 4
  %15 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %udev, align 4
  %interrupt_in_endpoint = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 14
  %17 = ptrtoint ptr %interrupt_in_endpoint to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %interrupt_in_endpoint, align 4
  %bEndpointAddress = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %bEndpointAddress to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %bEndpointAddress, align 1
  %conv = zext i8 %20 to i32
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %16, align 8
  %shl.i = shl i32 %22, 8
  %shl1.i = shl nuw nsw i32 %conv, 15
  %or.i = or i32 %shl1.i, %shl.i
  %or27 = or i32 %or.i, 1073741952
  %interrupt_in_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 13
  %23 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %interrupt_in_buffer, align 4
  %wMaxPacketSize.i = getelementptr inbounds %struct.usb_endpoint_descriptor, ptr %18, i32 0, i32 4
  %25 = ptrtoint ptr %wMaxPacketSize.i to i32
  call void @__asan_loadN_noabort(i32 %25, i32 2)
  %26 = load i16, ptr %wMaxPacketSize.i, align 1
  %27 = and i16 %26, -249
  %28 = call i16 @llvm.bswap.i16(i16 %27) #10
  %and.i72 = zext i16 %28 to i32
  %interrupt_in_interval = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 16
  %29 = ptrtoint ptr %interrupt_in_interval to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %interrupt_in_interval, align 4
  %dev1.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 8
  %31 = ptrtoint ptr %dev1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %16, ptr %dev1.i, align 4
  %pipe2.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 10
  %32 = ptrtoint ptr %pipe2.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or27, ptr %pipe2.i, align 4
  %transfer_buffer3.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 14
  %33 = ptrtoint ptr %transfer_buffer3.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %24, ptr %transfer_buffer3.i, align 4
  %transfer_buffer_length.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 19
  %34 = ptrtoint ptr %transfer_buffer_length.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %and.i72, ptr %transfer_buffer_length.i, align 4
  %complete.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 28
  %35 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @tower_interrupt_in_callback, ptr %complete.i, align 4
  %context4.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 27
  %36 = ptrtoint ptr %context4.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %4, ptr %context4.i, align 4
  %speed.i = getelementptr inbounds %struct.usb_device, ptr %16, i32 0, i32 4
  %37 = ptrtoint ptr %speed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %speed.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %38)
  %cmp.i = icmp eq i32 %38, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %38)
  %cmp6.i = icmp ugt i32 %38, 4
  %or.cond.i = or i1 %cmp.i, %cmp6.i
  br i1 %or.cond.i, label %if.then.i, label %if.end23.usb_fill_int_urb.exit_crit_edge

if.end23.usb_fill_int_urb.exit_crit_edge:         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %usb_fill_int_urb.exit

if.then.i:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %39 = call i32 @llvm.smax.i32(i32 %30, i32 1) #10
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 16) #10
  %sub.i = add nsw i32 %40, -1
  %shl.i73 = shl nuw nsw i32 1, %sub.i
  br label %usb_fill_int_urb.exit

usb_fill_int_urb.exit:                            ; preds = %if.then.i, %if.end23.usb_fill_int_urb.exit_crit_edge
  %interval.sink.i = phi i32 [ %shl.i73, %if.then.i ], [ %30, %if.end23.usb_fill_int_urb.exit_crit_edge ]
  %41 = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 25
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %interval.sink.i, ptr %41, align 4
  %start_frame.i = getelementptr inbounds %struct.urb, ptr %14, i32 0, i32 23
  %43 = ptrtoint ptr %start_frame.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -1, ptr %start_frame.i, align 4
  %interrupt_in_done = getelementptr inbounds %struct.lego_usb_tower, ptr %4, i32 0, i32 17
  %44 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %interrupt_in_done, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !191
  call void @arm_heavy_mb() #10
  %45 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %interrupt_in_urb, align 4
  %call34 = call i32 @usb_submit_urb(ptr noundef %46, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %udev, align 4
  %dev41 = getelementptr inbounds %struct.usb_device, ptr %48, i32 0, i32 15
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev41, ptr noundef nonnull @.str.46, i32 noundef %call34) #14
  br label %unlock_exit

if.end42:                                         ; preds = %usb_fill_int_urb.exit
  call void @__sanitizer_cov_trace_pc() #12
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %49 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %4, ptr %private_data, align 4
  %50 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 1, ptr %open_count, align 4
  br label %unlock_exit

unlock_exit:                                      ; preds = %if.end42, %do.end39, %do.end20, %if.end12.unlock_exit_crit_edge
  %retval1.0 = phi i32 [ %call16, %do.end20 ], [ %call34, %do.end39 ], [ 0, %if.end42 ], [ -16, %if.end12.unlock_exit_crit_edge ]
  call void @mutex_unlock(ptr noundef nonnull %4) #10
  br label %exit

exit:                                             ; preds = %unlock_exit, %if.end8.exit_crit_edge, %if.end.exit_crit_edge, %do.end
  %retval1.1 = phi i32 [ %retval1.0, %unlock_exit ], [ -19, %do.end ], [ -19, %if.end.exit_crit_edge ], [ -512, %if.end8.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reset_reply) #10
  ret i32 %retval1.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tower_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #2 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.exit_crit_edge, label %if.end

entry.exit_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

if.end:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull %1, i32 noundef 0) #10
  %disconnected = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %disconnected to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %disconnected, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.end4, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef nonnull %1) #10
  %interrupt_in_urb.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 15
  %3 = ptrtoint ptr %interrupt_in_urb.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %interrupt_in_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %4) #10
  %interrupt_out_urb.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %interrupt_out_urb.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %interrupt_out_urb.i, align 4
  tail call void @usb_free_urb(ptr noundef %6) #10
  %read_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %read_buffer.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %read_buffer.i, align 4
  tail call void @kfree(ptr noundef %8) #10
  %interrupt_in_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 13
  %9 = ptrtoint ptr %interrupt_in_buffer.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %interrupt_in_buffer.i, align 4
  tail call void @kfree(ptr noundef %10) #10
  %interrupt_out_buffer.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 18
  %11 = ptrtoint ptr %interrupt_out_buffer.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %interrupt_out_buffer.i, align 4
  tail call void @kfree(ptr noundef %12) #10
  %udev.i = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %udev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %udev.i, align 4
  tail call void @usb_put_dev(ptr noundef %14) #10
  tail call void @kfree(ptr noundef nonnull %1) #10
  br label %exit

if.end4:                                          ; preds = %if.end
  %interrupt_out_busy = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 22
  %15 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool5.not = icmp eq i32 %16, 0
  br i1 %tobool5.not, label %if.end4.if.end50_crit_edge, label %if.then6

if.end4.if.end50_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then6:                                         ; preds = %if.end4
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 419) #10
  %17 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool11.not = icmp eq i32 %18, 0
  br i1 %tobool11.not, label %if.then6.if.end50_crit_edge, label %if.then20

if.then6.if.end50_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then20:                                        ; preds = %if.then6
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #10
  %19 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #10
  %write_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 12
  %call82 = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %20 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool24.not83 = icmp eq i32 %21, 0
  br i1 %tobool24.not83, label %if.then20.for.end_crit_edge, label %if.then20.if.end41_crit_edge

if.then20.if.end41_crit_edge:                     ; preds = %if.then20
  br label %if.end41

if.then20.for.end_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end41:                                         ; preds = %cleanup.if.end41_crit_edge, %if.then20.if.end41_crit_edge
  %__ret21.185 = phi i32 [ %__ret21.1, %cleanup.if.end41_crit_edge ], [ 200, %if.then20.if.end41_crit_edge ]
  %call84 = phi i32 [ %call, %cleanup.if.end41_crit_edge ], [ %call82, %if.then20.if.end41_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool42.not = icmp eq i32 %call84, 0
  br i1 %tobool42.not, label %cleanup, label %if.end41.__out_crit_edge

if.end41.__out_crit_edge:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %__out

cleanup:                                          ; preds = %if.end41
  %call45 = call i32 @schedule_timeout(i32 noundef %__ret21.185) #10
  %call = call i32 @prepare_to_wait_event(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry, i32 noundef 1) #10
  %22 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %interrupt_out_busy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool24.not = icmp eq i32 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool29.not = icmp eq i32 %call45, 0
  %24 = select i1 %tobool24.not, i1 %tobool29.not, i1 false
  %__ret21.1 = select i1 %24, i32 1, i32 %call45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret21.1)
  %tobool35.not = icmp eq i32 %__ret21.1, 0
  %25 = select i1 %tobool24.not, i1 true, i1 %tobool35.not
  br i1 %25, label %cleanup.for.end_crit_edge, label %cleanup.if.end41_crit_edge

cleanup.if.end41_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.then20.for.end_crit_edge
  call void @finish_wait(ptr noundef %write_wait, ptr noundef nonnull %__wq_entry) #10
  br label %__out

__out:                                            ; preds = %for.end, %if.end41.__out_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #10
  br label %if.end50

if.end50:                                         ; preds = %__out, %if.then6.if.end50_crit_edge, %if.end4.if.end50_crit_edge
  %interrupt_in_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 15
  %26 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %interrupt_in_urb, align 4
  call void @usb_kill_urb(ptr noundef %27) #10
  %interrupt_out_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 20
  %28 = ptrtoint ptr %interrupt_out_urb to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %interrupt_out_urb, align 4
  call void @usb_kill_urb(ptr noundef %29) #10
  %open_count = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 3
  %30 = ptrtoint ptr %open_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %open_count, align 4
  call void @mutex_unlock(ptr noundef nonnull %1) #10
  br label %exit

exit:                                             ; preds = %if.end50, %if.then2, %entry.exit_crit_edge
  %retval1.0 = phi i32 [ 0, %if.then2 ], [ 0, %if.end50 ], [ -19, %entry.exit_crit_edge ]
  ret i32 %retval1.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mutex_lock_interruptible_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @schedule_timeout(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tower_interrupt_out_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %udev = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lego_usb_tower_debug_data.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_interrupt_out_callback, %if.then.i)) #10
          to label %lego_usb_tower_debug_data.exit [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lego_usb_tower_debug_data.__UNIQUE_ID_ddebug244, ptr noundef %dev2, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.tower_interrupt_out_callback, i32 noundef %7, i32 noundef %7, ptr noundef %9) #10
  br label %lego_usb_tower_debug_data.exit

lego_usb_tower_debug_data.exit:                   ; preds = %if.then.i, %entry
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %do.body [
    i32 0, label %lego_usb_tower_debug_data.exit.if.end12_crit_edge
    i32 -2, label %lego_usb_tower_debug_data.exit.if.end12_crit_edge24
    i32 -104, label %lego_usb_tower_debug_data.exit.if.end12_crit_edge25
    i32 -108, label %lego_usb_tower_debug_data.exit.if.end12_crit_edge26
  ]

lego_usb_tower_debug_data.exit.if.end12_crit_edge26: ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

lego_usb_tower_debug_data.exit.if.end12_crit_edge25: ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

lego_usb_tower_debug_data.exit.if.end12_crit_edge24: ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

lego_usb_tower_debug_data.exit.if.end12_crit_edge: ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

do.body:                                          ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tower_interrupt_out_callback.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_interrupt_out_callback, %if.then9)) #10
          to label %if.end12 [label %if.then9], !srcloc !183

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %dev11 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tower_interrupt_out_callback.__UNIQUE_ID_ddebug254, ptr noundef %dev11, ptr noundef nonnull @.str.37, ptr noundef nonnull @__func__.tower_interrupt_out_callback, i32 noundef %3) #10
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %do.body, %lego_usb_tower_debug_data.exit.if.end12_crit_edge, %lego_usb_tower_debug_data.exit.if.end12_crit_edge24, %lego_usb_tower_debug_data.exit.if.end12_crit_edge25, %lego_usb_tower_debug_data.exit.if.end12_crit_edge26
  %interrupt_out_busy = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 22
  %13 = ptrtoint ptr %interrupt_out_busy to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %interrupt_out_busy, align 4
  %write_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 12
  tail call void @__wake_up(ptr noundef %write_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_submit_urb(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_find_interface(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tower_interrupt_in_callback(ptr nocapture noundef readonly %urb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %context = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 27
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  %status1 = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 12
  %2 = ptrtoint ptr %status1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status1, align 4
  %udev = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %actual_length = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 20
  %6 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %actual_length, align 4
  %transfer_buffer = getelementptr inbounds %struct.urb, ptr %urb, i32 0, i32 14
  %8 = ptrtoint ptr %transfer_buffer to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %transfer_buffer, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @lego_usb_tower_debug_data.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_interrupt_in_callback, %if.then.i)) #10
          to label %lego_usb_tower_debug_data.exit [label %if.then.i], !srcloc !183

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @lego_usb_tower_debug_data.__UNIQUE_ID_ddebug244, ptr noundef %dev2, ptr noundef nonnull @.str.39, ptr noundef nonnull @__func__.tower_interrupt_in_callback, i32 noundef %7, i32 noundef %7, ptr noundef %9) #10
  br label %lego_usb_tower_debug_data.exit

lego_usb_tower_debug_data.exit:                   ; preds = %if.then.i, %entry
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.56)
  switch i32 %3, label %do.body [
    i32 0, label %if.end13
    i32 -2, label %lego_usb_tower_debug_data.exit.exit_crit_edge
    i32 -104, label %lego_usb_tower_debug_data.exit.exit_crit_edge107
    i32 -108, label %lego_usb_tower_debug_data.exit.exit_crit_edge108
  ]

lego_usb_tower_debug_data.exit.exit_crit_edge108: ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

lego_usb_tower_debug_data.exit.exit_crit_edge107: ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

lego_usb_tower_debug_data.exit.exit_crit_edge:    ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.body:                                          ; preds = %lego_usb_tower_debug_data.exit
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tower_interrupt_in_callback.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_interrupt_in_callback, %if.then10)) #10
          to label %resubmit [label %if.then10], !srcloc !183

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %udev, align 4
  %dev12 = getelementptr inbounds %struct.usb_device, ptr %12, i32 0, i32 15
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tower_interrupt_in_callback.__UNIQUE_ID_ddebug252, ptr noundef %dev12, ptr noundef nonnull @.str.48, ptr noundef nonnull @__func__.tower_interrupt_in_callback, i32 noundef %3) #10
  br label %resubmit

if.end13:                                         ; preds = %lego_usb_tower_debug_data.exit
  %13 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %actual_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15.not = icmp eq i32 %14, 0
  br i1 %cmp15.not, label %if.end13.resubmit_crit_edge, label %do.body18

if.end13.resubmit_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %resubmit

do.body18:                                        ; preds = %if.end13
  %read_buffer_lock = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 8
  %call22 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %read_buffer_lock) #10
  %read_buffer_length = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 6
  %15 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %read_buffer_length, align 4
  %17 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %actual_length, align 4
  %add = add i32 %18, %16
  %19 = load i32, ptr @read_buffer_size, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %19)
  %cmp28 = icmp ult i32 %add, %19
  br i1 %cmp28, label %if.then30, label %do.end58

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %read_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 5
  %20 = ptrtoint ptr %read_buffer to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %read_buffer, align 4
  %add.ptr = getelementptr i8, ptr %21, i32 %16
  %interrupt_in_buffer = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 13
  %22 = ptrtoint ptr %interrupt_in_buffer to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %interrupt_in_buffer, align 4
  %24 = call ptr @memcpy(ptr %add.ptr, ptr %23, i32 %18)
  %25 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %actual_length, align 4
  %27 = ptrtoint ptr %read_buffer_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %read_buffer_length, align 4
  %add35 = add i32 %28, %26
  store i32 %add35, ptr %read_buffer_length, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %29 = load volatile i32, ptr @jiffies, align 128
  %read_last_arrival = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 10
  %30 = ptrtoint ptr %read_last_arrival to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %read_last_arrival, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tower_interrupt_in_callback.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tower_interrupt_in_callback, %if.then48)) #10
          to label %if.end62 [label %if.then48], !srcloc !183

if.then48:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %udev, align 4
  %dev50 = getelementptr inbounds %struct.usb_device, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %actual_length to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %actual_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tower_interrupt_in_callback.__UNIQUE_ID_ddebug253, ptr noundef %dev50, ptr noundef nonnull @.str.49, ptr noundef nonnull @__func__.tower_interrupt_in_callback, i32 noundef %34) #10
  br label %if.end62

do.end58:                                         ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.50, i32 noundef %18) #14
  br label %if.end62

if.end62:                                         ; preds = %do.end58, %if.then48, %if.then30
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %read_buffer_lock, i32 noundef %call22) #10
  br label %resubmit

resubmit:                                         ; preds = %if.end62, %if.end13.resubmit_crit_edge, %if.then10, %do.body
  %interrupt_in_urb = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %interrupt_in_urb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %interrupt_in_urb, align 4
  %call65 = tail call i32 @usb_submit_urb(ptr noundef %36, i32 noundef 2592) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %resubmit.exit_crit_edge, label %do.end70

resubmit.exit_crit_edge:                          ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  br label %exit

do.end70:                                         ; preds = %resubmit
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %udev, align 4
  %dev72 = getelementptr inbounds %struct.usb_device, ptr %38, i32 0, i32 15
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev72, ptr noundef nonnull @.str.52, ptr noundef nonnull @__func__.tower_interrupt_in_callback, i32 noundef %call65) #14
  br label %exit

exit:                                             ; preds = %do.end70, %resubmit.exit_crit_edge, %lego_usb_tower_debug_data.exit.exit_crit_edge, %lego_usb_tower_debug_data.exit.exit_crit_edge107, %lego_usb_tower_debug_data.exit.exit_crit_edge108
  %interrupt_in_done = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 17
  %39 = ptrtoint ptr %interrupt_in_done to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %interrupt_in_done, align 4
  %read_wait = getelementptr inbounds %struct.lego_usb_tower, ptr %1, i32 0, i32 11
  tail call void @__wake_up(ptr noundef %read_wait, i32 noundef 1, i32 noundef 1, ptr noundef null) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_kill_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_free_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_deregister_dev(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_poison_urb(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind readonly }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !18, !20, !22, !23, !25, !27, !28, !30, !32, !33, !35, !37, !39, !40, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !59, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !77, !78, !79, !80, !81, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !108, !109, !110, !112, !113, !115, !117, !119, !120, !121, !123, !124, !126, !127, !128, !130, !132, !133, !135, !136, !137, !139, !140, !141, !142, !144, !145, !146, !148, !149, !150, !152, !154, !155, !157, !158, !160, !161, !162, !164, !165, !166, !168, !169, !170, !171}
!llvm.named.register.sp = !{!173}
!llvm.module.flags = !{!174, !175, !176, !177, !178, !179, !180, !181}
!llvm.ident = !{!182}

!0 = !{ptr @__param_read_buffer_size, !1, !"__param_read_buffer_size", i1 false, i1 false}
!1 = !{!"../drivers/usb/misc/legousbtower.c", i32 99, i32 1}
!2 = !{ptr @__UNIQUE_ID_read_buffer_sizetype232, !1, !"__UNIQUE_ID_read_buffer_sizetype232", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_read_buffer_size233, !4, !"__UNIQUE_ID_read_buffer_size233", i1 false, i1 false}
!4 = !{!"../drivers/usb/misc/legousbtower.c", i32 100, i32 1}
!5 = !{ptr @__param_write_buffer_size, !6, !"__param_write_buffer_size", i1 false, i1 false}
!6 = !{!"../drivers/usb/misc/legousbtower.c", i32 109, i32 1}
!7 = !{ptr @__UNIQUE_ID_write_buffer_sizetype234, !6, !"__UNIQUE_ID_write_buffer_sizetype234", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_write_buffer_size235, !9, !"__UNIQUE_ID_write_buffer_size235", i1 false, i1 false}
!9 = !{!"../drivers/usb/misc/legousbtower.c", i32 110, i32 1}
!10 = !{ptr @__param_packet_timeout, !11, !"__param_packet_timeout", i1 false, i1 false}
!11 = !{!"../drivers/usb/misc/legousbtower.c", i32 123, i32 1}
!12 = !{ptr @__UNIQUE_ID_packet_timeouttype236, !11, !"__UNIQUE_ID_packet_timeouttype236", i1 false, i1 false}
!13 = !{ptr @__UNIQUE_ID_packet_timeout237, !14, !"__UNIQUE_ID_packet_timeout237", i1 false, i1 false}
!14 = !{!"../drivers/usb/misc/legousbtower.c", i32 124, i32 1}
!15 = !{ptr @__param_read_timeout, !16, !"__param_read_timeout", i1 false, i1 false}
!16 = !{!"../drivers/usb/misc/legousbtower.c", i32 131, i32 1}
!17 = !{ptr @__UNIQUE_ID_read_timeouttype238, !16, !"__UNIQUE_ID_read_timeouttype238", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_read_timeout239, !19, !"__UNIQUE_ID_read_timeout239", i1 false, i1 false}
!19 = !{!"../drivers/usb/misc/legousbtower.c", i32 132, i32 1}
!20 = !{ptr @__param_interrupt_in_interval, !21, !"__param_interrupt_in_interval", i1 false, i1 false}
!21 = !{!"../drivers/usb/misc/legousbtower.c", i32 144, i32 1}
!22 = !{ptr @__UNIQUE_ID_interrupt_in_intervaltype240, !21, !"__UNIQUE_ID_interrupt_in_intervaltype240", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_interrupt_in_interval241, !24, !"__UNIQUE_ID_interrupt_in_interval241", i1 false, i1 false}
!24 = !{!"../drivers/usb/misc/legousbtower.c", i32 145, i32 1}
!25 = !{ptr @__param_interrupt_out_interval, !26, !"__param_interrupt_out_interval", i1 false, i1 false}
!26 = !{!"../drivers/usb/misc/legousbtower.c", i32 148, i32 1}
!27 = !{ptr @__UNIQUE_ID_interrupt_out_intervaltype242, !26, !"__UNIQUE_ID_interrupt_out_intervaltype242", i1 false, i1 false}
!28 = !{ptr @__UNIQUE_ID_interrupt_out_interval243, !29, !"__UNIQUE_ID_interrupt_out_interval243", i1 false, i1 false}
!29 = !{!"../drivers/usb/misc/legousbtower.c", i32 149, i32 1}
!30 = !{ptr @__initcall__kmod_legousbtower__255_875_tower_driver_init6, !31, !"__initcall__kmod_legousbtower__255_875_tower_driver_init6", i1 false, i1 false}
!31 = !{!"../drivers/usb/misc/legousbtower.c", i32 875, i32 1}
!32 = !{ptr @__exitcall_tower_driver_exit, !31, !"__exitcall_tower_driver_exit", i1 false, i1 false}
!33 = !{ptr @__UNIQUE_ID_author256, !34, !"__UNIQUE_ID_author256", i1 false, i1 false}
!34 = !{!"../drivers/usb/misc/legousbtower.c", i32 877, i32 1}
!35 = !{ptr @__UNIQUE_ID_description257, !36, !"__UNIQUE_ID_description257", i1 false, i1 false}
!36 = !{!"../drivers/usb/misc/legousbtower.c", i32 878, i32 1}
!37 = !{ptr @__UNIQUE_ID_file258, !38, !"__UNIQUE_ID_file258", i1 false, i1 false}
!38 = !{!"../drivers/usb/misc/legousbtower.c", i32 879, i32 1}
!39 = !{ptr @__UNIQUE_ID_license259, !38, !"__UNIQUE_ID_license259", i1 false, i1 false}
!40 = !{ptr @__param_str_read_buffer_size, !1, !"__param_str_read_buffer_size", i1 false, i1 false}
!41 = !{ptr @read_buffer_size, !42, !"read_buffer_size", i1 false, i1 false}
!42 = !{!"../drivers/usb/misc/legousbtower.c", i32 98, i32 12}
!43 = !{ptr @__param_str_write_buffer_size, !6, !"__param_str_write_buffer_size", i1 false, i1 false}
!44 = !{ptr @write_buffer_size, !45, !"write_buffer_size", i1 false, i1 false}
!45 = !{!"../drivers/usb/misc/legousbtower.c", i32 108, i32 12}
!46 = !{ptr @__param_str_packet_timeout, !11, !"__param_str_packet_timeout", i1 false, i1 false}
!47 = !{ptr @packet_timeout, !48, !"packet_timeout", i1 false, i1 false}
!48 = !{!"../drivers/usb/misc/legousbtower.c", i32 122, i32 12}
!49 = !{ptr @__param_str_read_timeout, !16, !"__param_str_read_timeout", i1 false, i1 false}
!50 = !{ptr @read_timeout, !51, !"read_timeout", i1 false, i1 false}
!51 = !{!"../drivers/usb/misc/legousbtower.c", i32 130, i32 12}
!52 = !{ptr @__param_str_interrupt_in_interval, !21, !"__param_str_interrupt_in_interval", i1 false, i1 false}
!53 = !{ptr @interrupt_in_interval, !54, !"interrupt_in_interval", i1 false, i1 false}
!54 = !{!"../drivers/usb/misc/legousbtower.c", i32 143, i32 12}
!55 = !{ptr @__param_str_interrupt_out_interval, !26, !"__param_str_interrupt_out_interval", i1 false, i1 false}
!56 = !{ptr @interrupt_out_interval, !57, !"interrupt_out_interval", i1 false, i1 false}
!57 = !{!"../drivers/usb/misc/legousbtower.c", i32 147, i32 12}
!58 = !{ptr @.str, !31, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tower_driver, !60, !"tower_driver", i1 false, i1 false}
!60 = !{!"../drivers/usb/misc/legousbtower.c", i32 266, i32 26}
!61 = !{ptr @tower_probe.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../drivers/usb/misc/legousbtower.c", i32 755, i32 2}
!63 = !{ptr @.str.1, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @tower_probe.__key.2, !65, !"__key", i1 false, i1 false}
!65 = !{!"../drivers/usb/misc/legousbtower.c", i32 757, i32 2}
!66 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @tower_probe.__key.4, !68, !"__key", i1 false, i1 false}
!68 = !{!"../drivers/usb/misc/legousbtower.c", i32 760, i32 2}
!69 = !{ptr @.str.5, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @tower_probe.__key.6, !71, !"__key", i1 false, i1 false}
!71 = !{!"../drivers/usb/misc/legousbtower.c", i32 761, i32 2}
!72 = !{ptr @.str.7, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.8, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/usb/misc/legousbtower.c", i32 768, i32 3}
!75 = !{ptr @.str.9, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.10, !74, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @.str.11, !74, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.12, !74, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @tower_probe._entry, !74, !"_entry", i1 false, i1 false}
!80 = !{ptr @tower_probe._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.14, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/usb/misc/legousbtower.c", i32 801, i32 3}
!83 = !{ptr @tower_probe._entry.13, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @tower_probe._entry_ptr.15, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.17, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/usb/misc/legousbtower.c", i32 805, i32 2}
!87 = !{ptr @.str.18, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @tower_probe._entry.16, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @tower_probe._entry_ptr.19, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.21, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/misc/legousbtower.c", i32 817, i32 3}
!92 = !{ptr @tower_probe._entry.20, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @tower_probe._entry_ptr.22, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/misc/legousbtower.c", i32 823, i32 2}
!96 = !{ptr @tower_probe._entry.23, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @tower_probe._entry_ptr.25, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.26, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/misc/legousbtower.c", i32 258, i32 11}
!100 = !{ptr @tower_class, !101, !"tower_class", i1 false, i1 false}
!101 = !{!"../drivers/usb/misc/legousbtower.c", i32 257, i32 32}
!102 = !{ptr @.str.27, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/misc/legousbtower.c", i32 250, i32 31}
!104 = !{ptr @tower_fops, !105, !"tower_fops", i1 false, i1 false}
!105 = !{!"../drivers/usb/misc/legousbtower.c", i32 238, i32 37}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/misc/legousbtower.c", i32 516, i32 3}
!108 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @tower_read.__UNIQUE_ID_ddebug245, !107, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!110 = distinct !{null, !111, !"__already_done", i1 false, i1 false}
!111 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!112 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.31, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!115 = !{ptr @.str.32, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!117 = !{ptr @.str.33, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/usb/misc/legousbtower.c", i32 598, i32 3}
!119 = !{ptr @.str.34, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @tower_write.__UNIQUE_ID_ddebug248, !118, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!121 = !{ptr @.str.35, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/usb/misc/legousbtower.c", i32 616, i32 2}
!123 = !{ptr @tower_write.__UNIQUE_ID_ddebug251, !122, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!124 = !{ptr @.str.36, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/misc/legousbtower.c", i32 640, i32 3}
!126 = !{ptr @tower_write._entry, !125, !"_entry", i1 false, i1 false}
!127 = !{ptr @tower_write._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!128 = !{ptr @__func__.tower_interrupt_out_callback, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/misc/legousbtower.c", i32 718, i32 45}
!130 = !{ptr @.str.37, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/misc/legousbtower.c", i32 725, i32 3}
!132 = !{ptr @tower_interrupt_out_callback.__UNIQUE_ID_ddebug254, !131, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!133 = !{ptr @.str.38, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/usb/misc/legousbtower.c", i32 281, i32 2}
!135 = !{ptr @.str.39, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @lego_usb_tower_debug_data.__UNIQUE_ID_ddebug244, !134, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!137 = !{ptr @.str.40, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/usb/misc/legousbtower.c", i32 319, i32 3}
!139 = !{ptr @.str.41, !138, !"<string literal>", i1 false, i1 false}
!140 = !{ptr @tower_open._entry, !138, !"_entry", i1 false, i1 false}
!141 = !{ptr @tower_open._entry_ptr, !138, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.43, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/misc/legousbtower.c", i32 351, i32 3}
!144 = !{ptr @tower_open._entry.42, !143, !"_entry", i1 false, i1 false}
!145 = !{ptr @tower_open._entry_ptr.44, !143, !"_entry_ptr", i1 false, i1 false}
!146 = !{ptr @.str.46, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/misc/legousbtower.c", i32 374, i32 3}
!148 = !{ptr @tower_open._entry.45, !147, !"_entry", i1 false, i1 false}
!149 = !{ptr @tower_open._entry_ptr.47, !147, !"_entry_ptr", i1 false, i1 false}
!150 = !{ptr @__func__.tower_interrupt_in_callback, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/misc/legousbtower.c", i32 665, i32 45}
!152 = !{ptr @.str.48, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/misc/legousbtower.c", i32 674, i32 4}
!154 = !{ptr @tower_interrupt_in_callback.__UNIQUE_ID_ddebug252, !153, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!155 = !{ptr @.str.49, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/usb/misc/legousbtower.c", i32 689, i32 4}
!157 = !{ptr @tower_interrupt_in_callback.__UNIQUE_ID_ddebug253, !156, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!158 = !{ptr @.str.50, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/misc/legousbtower.c", i32 692, i32 4}
!160 = !{ptr @tower_interrupt_in_callback._entry, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @tower_interrupt_in_callback._entry_ptr, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.52, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/misc/legousbtower.c", i32 701, i32 3}
!164 = !{ptr @tower_interrupt_in_callback._entry.51, !163, !"_entry", i1 false, i1 false}
!165 = !{ptr @tower_interrupt_in_callback._entry_ptr.53, !163, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.54, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/misc/legousbtower.c", i32 871, i32 2}
!168 = !{ptr @.str.55, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @tower_disconnect._entry, !167, !"_entry", i1 false, i1 false}
!170 = !{ptr @tower_disconnect._entry_ptr, !167, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @tower_table, !172, !"tower_table", i1 false, i1 false}
!172 = !{!"../drivers/usb/misc/legousbtower.c", i32 176, i32 35}
!173 = !{!"sp"}
!174 = !{i32 1, !"wchar_size", i32 2}
!175 = !{i32 1, !"min_enum_size", i32 4}
!176 = !{i32 8, !"branch-target-enforcement", i32 0}
!177 = !{i32 8, !"sign-return-address", i32 0}
!178 = !{i32 8, !"sign-return-address-all", i32 0}
!179 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!180 = !{i32 7, !"uwtable", i32 1}
!181 = !{i32 7, !"frame-pointer", i32 2}
!182 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!183 = !{i64 2148714391, i64 2148714396, i64 2148714409, i64 2148714453, i64 2148714487, i64 2148714508}
!184 = !{!"branch_weights", i32 2000, i32 1}
!185 = !{i64 2152486216, i64 2152486241}
!186 = !{i64 2152485535, i64 2152485560}
!187 = !{i64 4981090}
!188 = !{i64 4981287}
!189 = !{i64 2152466520}
!190 = !{i64 2153991946}
!191 = !{i64 2153972762}
