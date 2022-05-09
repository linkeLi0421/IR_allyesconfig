; ModuleID = '/llk/IR_all_yes/drivers/firewire/core-cdev.c_pt.bc'
source_filename = "../drivers/firewire/core-cdev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.radix_tree_preload = type { %struct.local_lock_t, i32, ptr }
%struct.local_lock_t = type { %struct.lockdep_map, ptr }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fw_device = type { %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.device, %struct.mutex, %struct.list_head, ptr, i32, i32, i16, ptr, %struct.delayed_work, %struct.fw_attribute_group }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.fw_attribute_group = type { [2 x ptr], %struct.attribute_group, [13 x ptr] }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.bus_reset_event = type { %struct.event, %struct.fw_cdev_event_bus_reset }
%struct.event = type { [2 x %struct.anon.74], %struct.list_head }
%struct.anon.74 = type { ptr, i32 }
%struct.fw_cdev_event_bus_reset = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.fw_card = type { ptr, ptr, %struct.kref, %struct.completion, i32, i32, i32, i64, %struct.list_head, i64, i32, i32, i32, i32, i64, i32, i32, i32, %struct.spinlock, ptr, ptr, ptr, i8, i32, i8, i32, %struct.list_head, %struct.list_head, %struct.delayed_work, i8, %struct.delayed_work, i32, i32, i32, i8, i8, i8, i8, i32, [256 x i32], i32 }
%struct.fw_packet = type { i32, i32, [4 x i32], i32, ptr, i32, i32, i8, i32, ptr, i32, %struct.list_head, ptr }
%struct.inbound_phy_packet_event = type { %struct.event, %struct.fw_cdev_event_phy_packet }
%struct.fw_cdev_event_phy_packet = type { i64, i32, i32, i32, [0 x i32] }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.file = type { %union.anon.4, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.4 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.client = type { i32, ptr, %struct.spinlock, i8, %struct.idr, %struct.list_head, %struct.wait_queue_head, %struct.wait_queue_head, i64, ptr, i64, %struct.fw_iso_buffer, i32, i8, %struct.list_head, i64, %struct.list_head, %struct.kref }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fw_iso_buffer = type { i32, ptr, i32, i32 }
%union.ioctl_arg = type { %struct.fw_cdev_get_info }
%struct.fw_cdev_get_info = type { i32, i32, i64, i64, i64, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.vm_area_struct = type { i32, i32, ptr, ptr, %struct.rb_node, i32, ptr, i32, i32, %union.anon.46, %struct.list_head, ptr, ptr, i32, ptr, ptr, %struct.atomic_t, %struct.vm_userfaultfd_ctx }
%union.anon.46 = type { %struct.anon.47 }
%struct.anon.47 = type { %struct.rb_node, i32 }
%struct.vm_userfaultfd_ctx = type { ptr }
%struct.fw_iso_context = type { ptr, i32, i32, i32, i8, i32, %union.fw_iso_callback, ptr }
%union.fw_iso_callback = type { ptr }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.70, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.71, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.72, ptr, %struct.address_space, %struct.list_head, %union.anon.73, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.70 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.seqcount = type { i32, %struct.lockdep_map }
%union.anon.71 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.72 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.73 = type { ptr }
%struct.iso_resource = type { %struct.client_resource, ptr, %struct.delayed_work, i32, i32, i64, i32, ptr, ptr }
%struct.client_resource = type { ptr, i32 }
%struct.fw_address_region = type { i64, i64 }
%struct.fw_cdev_allocate = type { i64, i64, i32, i32, i64 }
%struct.address_handler_resource = type { %struct.client_resource, %struct.fw_address_handler, i64, ptr }
%struct.fw_address_handler = type { i64, i64, ptr, ptr, %struct.list_head }
%struct.fw_cdev_send_response = type { i32, i32, i64, i32 }
%struct.inbound_transaction_resource = type { %struct.client_resource, ptr, ptr, ptr, i32 }
%struct.fw_cdev_add_descriptor = type { i32, i32, i64, i32, i32 }
%struct.descriptor_resource = type { %struct.client_resource, %struct.fw_descriptor, [0 x i32] }
%struct.fw_descriptor = type { %struct.list_head, i32, i32, i32, ptr }
%struct.fw_cdev_create_iso_context = type { i32, i32, i32, i32, i64, i32 }
%struct.anon.78 = type { %struct.fw_iso_packet, [256 x i8] }
%struct.fw_iso_packet = type { i16, i16, [0 x i32] }
%struct.fw_cdev_queue_iso = type { i64, i64, i32, i32 }
%struct.fw_cdev_iso_packet = type { i32, [0 x i32] }
%struct.fw_cdev_start_iso = type { i32, i32, i32, i32 }
%struct.fw_cdev_get_cycle_timer2 = type { i64, i32, i32, i32 }
%struct.fw_cdev_get_cycle_timer = type { i64, i32 }
%struct.fw_cdev_send_request = type { i32, i32, i64, i64, i64, i32 }
%struct.fw_cdev_send_stream_packet = type { i32, i32, i32, i32, i64, i64, i32, i32 }
%struct.fw_card_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.outbound_phy_packet_event = type { %struct.event, ptr, %struct.fw_packet, %struct.fw_cdev_event_phy_packet }
%struct.fw_cdev_send_phy_packet = type { i64, [2 x i32], i32 }
%struct.fw_cdev_set_iso_channels = type { i64, i32 }
%struct.outbound_transaction_event = type { %struct.event, ptr, %struct.outbound_transaction_resource, %struct.fw_cdev_event_response }
%struct.outbound_transaction_resource = type { %struct.client_resource, %struct.fw_transaction }
%struct.fw_transaction = type { i32, i32, %struct.list_head, ptr, i8, %struct.timer_list, %struct.fw_packet, ptr, ptr }
%struct.fw_cdev_event_response = type { i64, i32, i32, i32, [0 x i32] }
%struct.inbound_transaction_event = type { %struct.event, %union.anon.77 }
%union.anon.77 = type { %struct.fw_cdev_event_request2 }
%struct.fw_cdev_event_request2 = type { i64, i32, i32, i64, i32, i32, i32, i32, i32, i32, [0 x i32] }
%struct.iso_interrupt_event = type { %struct.event, %struct.fw_cdev_event_iso_interrupt }
%struct.fw_cdev_event_iso_interrupt = type { i64, i32, i32, i32, [0 x i32] }
%struct.iso_interrupt_mc_event = type { %struct.event, %struct.fw_cdev_event_iso_interrupt_mc }
%struct.fw_cdev_event_iso_interrupt_mc = type { i64, i32, i32 }
%struct.fw_cdev_allocate_iso_resource = type { i64, i64, i32, i32 }
%struct.iso_resource_event = type { %struct.event, %struct.fw_cdev_event_iso_resource }
%struct.fw_cdev_event_iso_resource = type { i64, i32, i32, i32, i32 }

@fw_device_ops = dso_local constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @no_llseek, ptr @fw_device_op_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fw_device_op_poll, ptr @fw_device_op_ioctl, ptr null, ptr @fw_device_op_mmap, i32 0, ptr @fw_device_op_open, ptr null, ptr @fw_device_op_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@fw_workqueue = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/firewire/core-cdev.c\00", [35 x i8] zeroinitializer }, align 32
@check_copy_size.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/thread_info.h\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Buffer overflow detected (%d < %lu)!\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@ioctl_handlers = internal constant { [25 x ptr], [60 x i8] } { [25 x ptr] [ptr @ioctl_get_info, ptr @ioctl_send_request, ptr @ioctl_allocate, ptr @ioctl_deallocate, ptr @ioctl_send_response, ptr @ioctl_initiate_bus_reset, ptr @ioctl_add_descriptor, ptr @ioctl_remove_descriptor, ptr @ioctl_create_iso_context, ptr @ioctl_queue_iso, ptr @ioctl_start_iso, ptr @ioctl_stop_iso, ptr @ioctl_get_cycle_timer, ptr @ioctl_allocate_iso_resource, ptr @ioctl_deallocate_iso_resource, ptr @ioctl_allocate_iso_resource_once, ptr @ioctl_deallocate_iso_resource_once, ptr @ioctl_get_speed, ptr @ioctl_send_broadcast_request, ptr @ioctl_send_stream_packet, ptr @ioctl_get_cycle_timer2, ptr @ioctl_send_phy_packet, ptr @ioctl_receive_phy_packets, ptr @ioctl_set_iso_channels, ptr @ioctl_flush_iso], [60 x i8] zeroinitializer }, align 32
@fw_device_rwsem = external dso_local global %struct.rw_semaphore, align 4
@radix_tree_preloads = external dso_local global %struct.radix_tree_preload, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@oops_in_progress = external dso_local local_unnamed_addr global i32, align 4
@debug_locks_silent = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.4 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"include/linux/local_lock_internal.h\00", [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"DEBUG_LOCKS_WARN_ON(%s)\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"l->owner != current\00", [44 x i8] zeroinitializer }, align 32
@init_iso_resource.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"(work_completion)(&(&r->work)->work)\00", [59 x i8] zeroinitializer }, align 32
@init_iso_resource.__key.8 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&(&r->work)->timer\00", [45 x i8] zeroinitializer }, align 32
@fw_device_op_open.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&client->lock\00", [18 x i8] zeroinitializer }, align 32
@fw_device_op_open.__key.11 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&client->wait\00", [18 x i8] zeroinitializer }, align 32
@fw_device_op_open.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&client->tx_flush_wait\00", [41 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@switch.table.outbound_phy_packet_callback = internal constant { [14 x i32], [40 x i8] } { [14 x i32] [i32 0, i32 0, i32 0, i32 18, i32 18, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 5, i32 6], [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 4, i64 5, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 4]
@___asan_gen_.19 = private unnamed_addr constant [14 x i8] c"fw_device_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1800, i32 30 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 299, i32 8 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 230, i32 6 }
@___asan_gen_.29 = private unnamed_addr constant [31 x i8] c"../include/linux/thread_info.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 214, i32 2 }
@___asan_gen_.32 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 174, i32 2 }
@___asan_gen_.34 = private unnamed_addr constant [15 x i8] c"ioctl_handlers\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1602, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [39 x i8] c"../include/linux/local_lock_internal.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 36, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 1382, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 258, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 261, i32 2 }
@___asan_gen_.74 = private constant [32 x i8] c"../drivers/firewire/core-cdev.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 262, i32 2 }
@___asan_gen_.76 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 378, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [42 x i8] c"switch.table.outbound_phy_packet_callback\00", align 1
@llvm.compiler.used = appending global [22 x ptr] [ptr @fw_device_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @ioctl_handlers, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @init_iso_resource.__key, ptr @.str.7, ptr @init_iso_resource.__key.8, ptr @.str.9, ptr @fw_device_op_open.__key, ptr @.str.10, ptr @fw_device_op_open.__key.11, ptr @.str.12, ptr @fw_device_op_open.__key.13, ptr @.str.14, ptr @xa_init_flags.__key, ptr @.str.15, ptr @switch.table.outbound_phy_packet_callback], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_ops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ioctl_handlers to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_iso_resource.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_iso_resource.__key.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_op_open.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_op_open.__key.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_device_op_open.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.outbound_phy_packet_callback to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_device_cdev_update(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %client_list_mutex.i = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %client_list_mutex.i, i32 noundef 0) #12
  %client_list.i = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %client_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn13.i = load ptr, ptr %client_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %client_list.i
  br i1 %cmp.not14.i, label %entry.for_each_client.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for_each_client.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for_each_client.exit

for.body.i:                                       ; preds = %queue_bus_reset_event.exit.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %queue_bus_reset_event.exit.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %c.0.i = getelementptr i8, ptr %.pn15.i, i32 -296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 64) #15
  %cmp.i = icmp eq ptr %call7.i.i.i, null
  br i1 %cmp.i, label %for.body.i.queue_bus_reset_event.exit_crit_edge, label %if.end.i

for.body.i.queue_bus_reset_event.exit_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_bus_reset_event.exit

if.end.i:                                         ; preds = %for.body.i
  %reset.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1
  %device.i.i = getelementptr i8, ptr %.pn15.i, i32 -292
  %2 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device.i.i, align 4
  %card1.i.i = getelementptr inbounds %struct.fw_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %card1.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card1.i.i, align 4
  %lock.i.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i.i) #12
  %bus_reset_closure.i.i = getelementptr i8, ptr %.pn15.i, i32 -64
  %6 = ptrtoint ptr %bus_reset_closure.i.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %bus_reset_closure.i.i, align 8
  %8 = ptrtoint ptr %reset.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %7, ptr %reset.i, align 8
  %type.i.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %type.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %type.i.i, align 8
  %10 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device.i.i, align 4
  %generation.i.i = getelementptr inbounds %struct.fw_device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %generation.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %generation.i.i, align 4
  %generation3.i.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %generation3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %generation3.i.i, align 8
  %node_id.i.i = getelementptr inbounds %struct.fw_device, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %node_id.i.i, align 8
  %node_id5.i.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %node_id5.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %node_id5.i.i, align 4
  %local_node.i.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 19
  %18 = ptrtoint ptr %local_node.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %local_node.i.i, align 8
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %conv.i.i = zext i16 %21 to i32
  %local_node_id.i.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %22 = ptrtoint ptr %local_node_id.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv.i.i, ptr %local_node_id.i.i, align 8
  %bm_node_id.i.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 33
  %23 = ptrtoint ptr %bm_node_id.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bm_node_id.i.i, align 8
  %bm_node_id7.i.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %25 = ptrtoint ptr %bm_node_id7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %bm_node_id7.i.i, align 4
  %irm_node.i.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 21
  %26 = ptrtoint ptr %irm_node.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %irm_node.i.i, align 8
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %27, align 4
  %conv9.i.i = zext i16 %29 to i32
  %irm_node_id.i.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %30 = ptrtoint ptr %irm_node_id.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %conv9.i.i, ptr %irm_node_id.i.i, align 8
  %root_node.i.i = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 20
  %31 = ptrtoint ptr %root_node.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %root_node.i.i, align 4
  %33 = ptrtoint ptr %32 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %32, align 4
  %conv11.i.i = zext i16 %34 to i32
  %root_node_id.i.i = getelementptr inbounds %struct.bus_reset_event, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %35 = ptrtoint ptr %root_node_id.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %conv11.i.i, ptr %root_node_id.i.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i.i) #12
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %reset.i, ptr %call7.i.i.i, align 8
  %size.i.i = getelementptr inbounds %struct.anon.74, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %size.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 40, ptr %size.i.i, align 4
  %arrayidx4.i.i = getelementptr [2 x %struct.anon.74], ptr %call7.i.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %arrayidx4.i.i, align 8
  %size8.i.i = getelementptr [2 x %struct.anon.74], ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %39 = ptrtoint ptr %size8.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %size8.i.i, align 4
  %lock.i12.i = getelementptr i8, ptr %.pn15.i, i32 -288
  %call10.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i12.i) #12
  %in_shutdown.i.i = getelementptr i8, ptr %.pn15.i, i32 -244
  %40 = ptrtoint ptr %in_shutdown.i.i to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %in_shutdown.i.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i = icmp eq i8 %41, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #12
  br label %queue_event.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %link.i.i = getelementptr inbounds %struct.event, ptr %call7.i.i.i, i32 0, i32 1
  %event_list.i.i = getelementptr i8, ptr %.pn15.i, i32 -180
  %prev.i.i.i = getelementptr i8, ptr %.pn15.i, i32 -176
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i.i, ptr noundef %43, ptr noundef %event_list.i.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.else.i.i.queue_event.exit.i_crit_edge

if.else.i.i.queue_event.exit.i_crit_edge:         ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_event.exit.i

if.end.i.i.i.i:                                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %44 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %link.i.i, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %link.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %event_list.i.i, ptr %link.i.i, align 8
  %prev3.i.i.i.i = getelementptr inbounds %struct.event, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %link.i.i, ptr %43, align 4
  br label %queue_event.exit.i

queue_event.exit.i:                               ; preds = %if.end.i.i.i.i, %if.else.i.i.queue_event.exit.i_crit_edge, %if.then.i.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i12.i, i32 noundef %call10.i.i) #12
  %wait.i.i = getelementptr i8, ptr %.pn15.i, i32 -172
  tail call void @__wake_up(ptr noundef %wait.i.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i12.i) #12
  %resource_idr.i = getelementptr i8, ptr %.pn15.i, i32 -240
  %call2.i = tail call i32 @idr_for_each(ptr noundef %resource_idr.i, ptr noundef nonnull @schedule_reallocations, ptr noundef %c.0.i) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i12.i) #12
  br label %queue_bus_reset_event.exit

queue_bus_reset_event.exit:                       ; preds = %queue_event.exit.i, %for.body.i.queue_bus_reset_event.exit_crit_edge
  %48 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_list.i
  br i1 %cmp.not.i, label %queue_bus_reset_event.exit.for_each_client.exit_crit_edge, label %queue_bus_reset_event.exit.for.body.i_crit_edge

queue_bus_reset_event.exit.for.body.i_crit_edge:  ; preds = %queue_bus_reset_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

queue_bus_reset_event.exit.for_each_client.exit_crit_edge: ; preds = %queue_bus_reset_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for_each_client.exit

for_each_client.exit:                             ; preds = %queue_bus_reset_event.exit.for_each_client.exit_crit_edge, %entry.for_each_client.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %client_list_mutex.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_device_cdev_remove(ptr noundef %device) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %client_list_mutex.i = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %client_list_mutex.i, i32 noundef 0) #12
  %client_list.i = getelementptr inbounds %struct.fw_device, ptr %device, i32 0, i32 8
  %0 = ptrtoint ptr %client_list.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn13.i = load ptr, ptr %client_list.i, align 4
  %cmp.not14.i = icmp eq ptr %.pn13.i, %client_list.i
  br i1 %cmp.not14.i, label %entry.for_each_client.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.for_each_client.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for_each_client.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn15.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn13.i, %entry.for.body.i_crit_edge ]
  %wait.i = getelementptr i8, ptr %.pn15.i, i32 -172
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %1 = ptrtoint ptr %.pn15.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn.i = load ptr, ptr %.pn15.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %client_list.i
  br i1 %cmp.not.i, label %for.body.i.for_each_client.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.for_each_client.exit_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for_each_client.exit

for_each_client.exit:                             ; preds = %for.body.i.for_each_client.exit_crit_edge, %entry.for_each_client.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %client_list_mutex.i) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @fw_cdev_handle_phy_packet(ptr noundef %card, ptr nocapture noundef readonly %p) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 18
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %phy_receiver_list = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 27
  %0 = ptrtoint ptr %phy_receiver_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn44 = load ptr, ptr %phy_receiver_list, align 4
  %cmp7.not45 = icmp eq ptr %.pn44, %phy_receiver_list
  br i1 %cmp7.not45, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %arrayidx = getelementptr %struct.fw_packet, ptr %p, i32 0, i32 2, i32 1
  %arrayidx18 = getelementptr %struct.fw_packet, ptr %p, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %queue_event.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn46 = phi ptr [ %.pn44, %for.body.lr.ph ], [ %.pn, %queue_event.exit.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 2592, i32 noundef 56) #15
  %cmp10 = icmp eq ptr %call7.i, null
  br i1 %cmp10, label %for.body.for.end_crit_edge, label %if.end

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

if.end:                                           ; preds = %for.body
  %phy_receiver_closure = getelementptr i8, ptr %.pn46, i32 8
  %2 = ptrtoint ptr %phy_receiver_closure to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %phy_receiver_closure, align 8
  %phy_packet = getelementptr inbounds %struct.inbound_phy_packet_event, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %phy_packet to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %phy_packet, align 8
  %type = getelementptr inbounds %struct.inbound_phy_packet_event, ptr %call7.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 8, ptr %type, align 8
  %rcode = getelementptr inbounds %struct.inbound_phy_packet_event, ptr %call7.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %rcode to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %rcode, align 4
  %length = getelementptr inbounds %struct.inbound_phy_packet_event, ptr %call7.i, i32 0, i32 1, i32 3
  %7 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 8, ptr %length, align 8
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %data = getelementptr inbounds %struct.inbound_phy_packet_event, ptr %call7.i, i32 0, i32 1, i32 4
  %10 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %data, align 4
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx18, align 4
  %arrayidx21 = getelementptr %struct.inbound_phy_packet_event, ptr %call7.i, i32 1
  %13 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %arrayidx21, align 8
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %phy_packet, ptr %call7.i, align 8
  %size.i = getelementptr inbounds %struct.anon.74, ptr %call7.i, i32 0, i32 1
  %15 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %size.i, align 4
  %arrayidx4.i = getelementptr [2 x %struct.anon.74], ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %arrayidx4.i, align 8
  %size8.i = getelementptr [2 x %struct.anon.74], ptr %call7.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %size8.i, align 4
  %lock.i = getelementptr i8, ptr %.pn46, i32 -272
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %in_shutdown.i = getelementptr i8, ptr %.pn46, i32 -228
  %18 = ptrtoint ptr %in_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %in_shutdown.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i = icmp eq i8 %19, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %queue_event.exit

if.else.i:                                        ; preds = %if.end
  %link.i = getelementptr inbounds %struct.event, ptr %call7.i, i32 0, i32 1
  %event_list.i = getelementptr i8, ptr %.pn46, i32 -164
  %prev.i.i = getelementptr i8, ptr %.pn46, i32 -160
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %21, ptr noundef %event_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.queue_event.exit_crit_edge

if.else.i.queue_event.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_event.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %link.i, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %event_list.i, ptr %link.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.event, ptr %call7.i, i32 0, i32 1, i32 1
  %24 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %link.i, ptr %21, align 4
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %if.end.i.i.i, %if.else.i.queue_event.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  %wait.i = getelementptr i8, ptr %.pn46, i32 -156
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %26 = ptrtoint ptr %.pn46 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn46, align 4
  %cmp7.not = icmp eq ptr %.pn, %phy_receiver_list
  br i1 %cmp7.not, label %queue_event.exit.for.end_crit_edge, label %queue_event.exit.for.body_crit_edge

queue_event.exit.for.body_crit_edge:              ; preds = %queue_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

queue_event.exit.for.end_crit_edge:               ; preds = %queue_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %queue_event.exit.for.end_crit_edge, %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @no_llseek(ptr noundef, i64 noundef, i32 noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_device_op_read(ptr nocapture noundef readonly %file, ptr noundef %buffer, i32 noundef %count, ptr nocapture noundef readnone %offset) #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 301) #12
  %event_list.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %event_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %entry.if.end23.i_crit_edge

entry.if.end23.i_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

lor.lhs.false.i:                                  ; preds = %entry
  %device.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device.i, align 4
  %call.i.i.i81.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i82.not.i = icmp eq i32 %7, 3
  br i1 %cmp.i82.not.i, label %lor.lhs.false.i.if.end23.i_crit_edge, label %if.then.i

lor.lhs.false.i.if.end23.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.then.i:                                        ; preds = %lor.lhs.false.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  %8 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #12
  %wait.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 6
  %call7115.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %9 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i84.not116.i = icmp eq ptr %10, %event_list.i
  br i1 %cmp.i84.not116.i, label %if.then.i.lor.lhs.false11.i_crit_edge, label %if.then.i.if.end20.thread105.i_crit_edge

if.then.i.if.end20.thread105.i_crit_edge:         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.thread105.i

if.then.i.lor.lhs.false11.i_crit_edge:            ; preds = %if.then.i
  br label %lor.lhs.false11.i

lor.lhs.false11.i:                                ; preds = %cleanup.i.lor.lhs.false11.i_crit_edge, %if.then.i.lor.lhs.false11.i_crit_edge
  %call7117.i = phi i32 [ %call7.i, %cleanup.i.lor.lhs.false11.i_crit_edge ], [ %call7115.i, %if.then.i.lor.lhs.false11.i_crit_edge ]
  %11 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device.i, align 4
  %call.i.i.i86.i = call zeroext i1 @__kasan_check_read(ptr noundef %12, i32 noundef 4) #12
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %14)
  %cmp.i87.not.i = icmp eq i32 %14, 3
  br i1 %cmp.i87.not.i, label %lor.lhs.false11.i.if.end20.thread105.i_crit_edge, label %if.end.i

lor.lhs.false11.i.if.end20.thread105.i_crit_edge: ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.thread105.i

if.end.i:                                         ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7117.i)
  %tobool16.not.i = icmp eq i32 %call7117.i, 0
  br i1 %tobool16.not.i, label %cleanup.i, label %if.end20.i

cleanup.i:                                        ; preds = %if.end.i
  call void @schedule() #12
  %call7.i = call i32 @prepare_to_wait_event(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #12
  %15 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i84.not.i = icmp eq ptr %16, %event_list.i
  br i1 %cmp.i84.not.i, label %cleanup.i.lor.lhs.false11.i_crit_edge, label %cleanup.i.if.end20.thread105.i_crit_edge

cleanup.i.if.end20.thread105.i_crit_edge:         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end20.thread105.i

cleanup.i.lor.lhs.false11.i_crit_edge:            ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false11.i

if.end20.thread105.i:                             ; preds = %cleanup.i.if.end20.thread105.i_crit_edge, %lor.lhs.false11.i.if.end20.thread105.i_crit_edge, %if.then.i.if.end20.thread105.i_crit_edge
  call void @finish_wait(ptr noundef %wait.i, ptr noundef nonnull %__wq_entry.i) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  br label %if.end23.i

if.end20.i:                                       ; preds = %if.end.i
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7117.i)
  %cmp.i = icmp slt i32 %call7117.i, 0
  br i1 %cmp.i, label %if.end20.i.dequeue_event.exit_crit_edge, label %if.end20.i.if.end23.i_crit_edge

if.end20.i.if.end23.i_crit_edge:                  ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end23.i

if.end20.i.dequeue_event.exit_crit_edge:          ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dequeue_event.exit

if.end23.i:                                       ; preds = %if.end20.i.if.end23.i_crit_edge, %if.end20.thread105.i, %lor.lhs.false.i.if.end23.i_crit_edge, %entry.if.end23.i_crit_edge
  %17 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %event_list.i, align 4
  %cmp.i89.not.i = icmp eq ptr %18, %event_list.i
  br i1 %cmp.i89.not.i, label %land.lhs.true.i, label %if.end23.i.if.end31.i_crit_edge

if.end23.i.if.end31.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

land.lhs.true.i:                                  ; preds = %if.end23.i
  %device27.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %19 = ptrtoint ptr %device27.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device27.i, align 4
  %call.i.i.i91.i = call zeroext i1 @__kasan_check_read(ptr noundef %20, i32 noundef 4) #12
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %20, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %22)
  %cmp.i92.not.i = icmp eq i32 %22, 3
  br i1 %cmp.i92.not.i, label %land.lhs.true.i.dequeue_event.exit_crit_edge, label %land.lhs.true.i.if.end31.i_crit_edge

land.lhs.true.i.if.end31.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end31.i

land.lhs.true.i.dequeue_event.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dequeue_event.exit

if.end31.i:                                       ; preds = %land.lhs.true.i.if.end31.i_crit_edge, %if.end23.i.if.end31.i_crit_edge
  %lock.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2
  call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %23 = ptrtoint ptr %event_list.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %event_list.i, align 4
  %add.ptr.i = getelementptr i8, ptr %24, i32 -16
  %call.i.i94.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %24) #12
  br i1 %call.i.i94.i, label %if.end.i.i95.i, label %if.end31.i.list_del.exit.i_crit_edge

if.end31.i.list_del.exit.i_crit_edge:             ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit.i

if.end.i.i95.i:                                   ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %24, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i95.i, %if.end31.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %24, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp37120.not.i = icmp eq i32 %count, 0
  br i1 %cmp37120.not.i, label %list_del.exit.i.out.i_crit_edge, label %for.body.i

list_del.exit.i.out.i_crit_edge:                  ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

for.body.i:                                       ; preds = %list_del.exit.i
  %size38.i = getelementptr i8, ptr %24, i32 -12
  %33 = ptrtoint ptr %size38.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %size38.i, align 4
  %35 = call i32 @llvm.umin.i32(i32 %34, i32 %count) #12
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp9.i.i.i = icmp slt i32 %35, 0
  br i1 %cmp9.i.i.i, label %for.body.i.land.rhs16.i.i.i_crit_edge, label %if.then.i.i.i.i

for.body.i.land.rhs16.i.i.i_crit_edge:            ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs16.i.i.i

land.rhs16.i.i.i:                                 ; preds = %for.body.i.1.land.rhs16.i.i.i_crit_edge, %for.body.i.land.rhs16.i.i.i_crit_edge
  %.b71.i.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i.i, label %land.rhs16.i.i.i.out.i_crit_edge, label %if.then27.i.i.i, !prof !45

land.rhs16.i.i.i.out.i_crit_edge:                 ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.then27.i.i.i:                                  ; preds = %land.rhs16.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %out.i

if.then.i.i.i.i:                                  ; preds = %for.body.i
  call void @__check_object_size(ptr noundef %37, i32 noundef %35, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i.i

if.then.i.i.i.i.copy_to_user.exit.i_crit_edge:    ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i.i
  %38 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %buffer, i32 %35, i32 -1226833920) #16, !srcloc !46
  %asmresult.i.i.i = extractvalue { i32, i32 } %38, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then2.i.i.i, label %if.end.i.i.i.copy_to_user.exit.i_crit_edge

if.end.i.i.i.copy_to_user.exit.i_crit_edge:       ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %37, i32 noundef %35) #12
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %buffer, ptr noundef %37, i32 noundef %35) #12
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i.i = phi i32 [ %35, %if.then.i.i.i.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %35, %if.end.i.i.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i)
  %tobool45.not.i = icmp eq i32 %n.addr.0.i.i, 0
  br i1 %tobool45.not.i, label %if.end47.i, label %copy_to_user.exit.i.out.i_crit_edge

copy_to_user.exit.i.out.i_crit_edge:              ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

if.end47.i:                                       ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %count)
  %cmp37.i = icmp ult i32 %34, %count
  br i1 %cmp37.i, label %for.body.i.1, label %if.end47.i.out.i_crit_edge

if.end47.i.out.i_crit_edge:                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out.i

for.body.i.1:                                     ; preds = %if.end47.i
  %arrayidx.i.1 = getelementptr i8, ptr %24, i32 -8
  %size38.i.1 = getelementptr i8, ptr %24, i32 -4
  %39 = ptrtoint ptr %size38.i.1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size38.i.1, align 4
  %sub.i.1 = sub i32 %count, %35
  %41 = call i32 @llvm.umin.i32(i32 %40, i32 %sub.i.1) #12
  %add.ptr41.i.1 = getelementptr i8, ptr %buffer, i32 %35
  %42 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.i.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp9.i.i.i.1 = icmp slt i32 %41, 0
  br i1 %cmp9.i.i.i.1, label %for.body.i.1.land.rhs16.i.i.i_crit_edge, label %if.then.i.i.i.i.1

for.body.i.1.land.rhs16.i.i.i_crit_edge:          ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.rhs16.i.i.i

if.then.i.i.i.i.1:                                ; preds = %for.body.i.1
  call void @__check_object_size(ptr noundef %43, i32 noundef %41, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i.i.1 = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i.1, label %if.then.i.i.i.i.1.copy_to_user.exit.i.1_crit_edge, label %if.end.i.i.i.1

if.then.i.i.i.i.1.copy_to_user.exit.i.1_crit_edge: ; preds = %if.then.i.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i.1

if.end.i.i.i.1:                                   ; preds = %if.then.i.i.i.i.1
  %44 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %add.ptr41.i.1, i32 %41, i32 -1226833920) #16, !srcloc !46
  %asmresult.i.i.i.1 = extractvalue { i32, i32 } %44, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.1)
  %cmp.i6.i.i.1 = icmp eq i32 %asmresult.i.i.i.1, 0
  br i1 %cmp.i6.i.i.1, label %if.then2.i.i.i.1, label %if.end.i.i.i.1.copy_to_user.exit.i.1_crit_edge

if.end.i.i.i.1.copy_to_user.exit.i.1_crit_edge:   ; preds = %if.end.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i.1

if.then2.i.i.i.1:                                 ; preds = %if.end.i.i.i.1
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i.1 = call zeroext i1 @__kasan_check_read(ptr noundef %43, i32 noundef %41) #12
  %call.i12.i.i.i.1 = call i32 @arm_copy_to_user(ptr noundef %add.ptr41.i.1, ptr noundef %43, i32 noundef %41) #12
  br label %copy_to_user.exit.i.1

copy_to_user.exit.i.1:                            ; preds = %if.then2.i.i.i.1, %if.end.i.i.i.1.copy_to_user.exit.i.1_crit_edge, %if.then.i.i.i.i.1.copy_to_user.exit.i.1_crit_edge
  %n.addr.0.i.i.1 = phi i32 [ %41, %if.then.i.i.i.i.1.copy_to_user.exit.i.1_crit_edge ], [ %call.i12.i.i.i.1, %if.then2.i.i.i.1 ], [ %41, %if.end.i.i.i.1.copy_to_user.exit.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i.i.1)
  %tobool45.not.i.1 = icmp eq i32 %n.addr.0.i.i.1, 0
  %add.i.1 = add i32 %41, %35
  %spec.select = select i1 %tobool45.not.i.1, i32 %add.i.1, i32 -14
  br label %out.i

out.i:                                            ; preds = %copy_to_user.exit.i.1, %if.end47.i.out.i_crit_edge, %copy_to_user.exit.i.out.i_crit_edge, %if.then27.i.i.i, %land.rhs16.i.i.i.out.i_crit_edge, %list_del.exit.i.out.i_crit_edge
  %ret.0.i = phi i32 [ -14, %if.then27.i.i.i ], [ -14, %land.rhs16.i.i.i.out.i_crit_edge ], [ 0, %list_del.exit.i.out.i_crit_edge ], [ %35, %if.end47.i.out.i_crit_edge ], [ -14, %copy_to_user.exit.i.out.i_crit_edge ], [ %spec.select, %copy_to_user.exit.i.1 ]
  call void @kfree(ptr noundef %add.ptr.i) #12
  br label %dequeue_event.exit

dequeue_event.exit:                               ; preds = %out.i, %land.lhs.true.i.dequeue_event.exit_crit_edge, %if.end20.i.dequeue_event.exit_crit_edge
  %retval.0.i = phi i32 [ %ret.0.i, %out.i ], [ %call7117.i, %if.end20.i.dequeue_event.exit_crit_edge ], [ -19, %land.lhs.true.i.dequeue_event.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_device_op_poll(ptr noundef %file, ptr noundef %pt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %wait = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 6
  %tobool.not.i = icmp eq ptr %pt, null
  br i1 %tobool.not.i, label %entry.poll_wait.exit_crit_edge, label %land.lhs.true.i

entry.poll_wait.exit_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

land.lhs.true.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %pt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pt, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  %tobool3.not.i = icmp eq ptr %wait, null
  %or.cond.i = or i1 %tobool3.not.i, %tobool1.not.i
  br i1 %or.cond.i, label %land.lhs.true.i.poll_wait.exit_crit_edge, label %if.then.i

land.lhs.true.i.poll_wait.exit_crit_edge:         ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %poll_wait.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %3(ptr noundef %file, ptr noundef nonnull %wait, ptr noundef nonnull %pt) #12
  br label %poll_wait.exit

poll_wait.exit:                                   ; preds = %if.then.i, %land.lhs.true.i.poll_wait.exit_crit_edge, %entry.poll_wait.exit_crit_edge
  %device = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %5, i32 noundef 4) #12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i.not = icmp eq i32 %7, 3
  %spec.select = select i1 %cmp.i.not, i32 24, i32 0
  %event_list = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5
  %8 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %event_list, align 4
  %cmp.i11.not = icmp eq ptr %9, %event_list
  %or4 = or i32 %spec.select, 65
  %mask.1 = select i1 %cmp.i11.not, i32 %spec.select, i32 %or4
  ret i32 %mask.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_device_op_ioctl(ptr nocapture noundef readonly %file, i32 noundef %cmd, i32 noundef %arg) #0 align 64 {
entry:
  %buffer.i = alloca %union.ioctl_arg, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %2 = inttoptr i32 %arg to ptr
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buffer.i) #12
  %device.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i, align 4
  %call.i.i.i67.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %4, i32 noundef 4) #12
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %6)
  %cmp.i.not.i = icmp eq i32 %6, 3
  br i1 %cmp.i.not.i, label %entry.dispatch_ioctl.exit_crit_edge, label %if.end.i

entry.dispatch_ioctl.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %dispatch_ioctl.exit

if.end.i:                                         ; preds = %entry
  %7 = and i32 %cmd, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 8960, i32 %7)
  %cmp.not.i = icmp eq i32 %7, 8960
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.dispatch_ioctl.exit_crit_edge

if.end.i.dispatch_ioctl.exit_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dispatch_ioctl.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %and2.i = and i32 %cmd, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %and2.i)
  %cmp3.i = icmp ugt i32 %and2.i, 24
  br i1 %cmp3.i, label %lor.lhs.false.i.dispatch_ioctl.exit_crit_edge, label %lor.lhs.false4.i

lor.lhs.false.i.dispatch_ioctl.exit_crit_edge:    ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dispatch_ioctl.exit

lor.lhs.false4.i:                                 ; preds = %lor.lhs.false.i
  %shr5.i = lshr i32 %cmd, 16
  %and6.i = and i32 %shr5.i, 16383
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %and6.i)
  %cmp7.i = icmp ugt i32 %and6.i, 40
  br i1 %cmp7.i, label %lor.lhs.false4.i.dispatch_ioctl.exit_crit_edge, label %if.end9.i

lor.lhs.false4.i.dispatch_ioctl.exit_crit_edge:   ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dispatch_ioctl.exit

if.end9.i:                                        ; preds = %lor.lhs.false4.i
  %8 = call ptr @memset(ptr %buffer.i, i32 0, i32 40)
  %9 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool13.not.i = icmp eq i32 %9, 0
  br i1 %tobool13.not.i, label %if.end9.i.if.end21.i_crit_edge, label %if.then.i.i.i.i

if.end9.i.if.end21.i_crit_edge:                   ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then.i.i.i.i:                                  ; preds = %if.end9.i
  call void @__check_object_size(ptr noundef nonnull %buffer.i, i32 noundef %and6.i, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #12
  %call.i.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true.i.i.i

if.then.i.i.i.i.if.end.i.i.i_crit_edge:           ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %if.then.i.i.i.i
  %10 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %and6.i, i32 -1226833920) #16, !srcloc !47
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.i6.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.i6.i.i, label %if.then.i7.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, !prof !45

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i.i

if.then.i7.i.i:                                   ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buffer.i, i32 noundef %and6.i) #12
  %11 = call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i.i) #6, !srcloc !48
  %and.i.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i.i = or i32 %and.i.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i.i) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  %call1.i.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buffer.i, ptr noundef %2, i32 noundef %and6.i) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i7.i.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %if.then.i.i.i.i.if.end.i.i.i_crit_edge
  %res.0.i.i.i = phi i32 [ %and6.i, %if.then.i.i.i.i.if.end.i.i.i_crit_edge ], [ %call1.i.i.i.i, %if.then.i7.i.i ], [ %and6.i, %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i.i)
  %tobool4.not.i.i.i = icmp eq i32 %res.0.i.i.i, 0
  br i1 %tobool4.not.i.i.i, label %if.end.i.i.i.if.end21.i_crit_edge, label %if.then11.i.i.i, !prof !45

if.end.i.i.i.if.end21.i_crit_edge:                ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end21.i

if.then11.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i.i = sub i32 %and6.i, %res.0.i.i.i
  %add.ptr.i.i.i = getelementptr i8, ptr %buffer.i, i32 %sub.i.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i.i, i32 0, i32 %res.0.i.i.i)
  br label %dispatch_ioctl.exit

if.end21.i:                                       ; preds = %if.end.i.i.i.if.end21.i_crit_edge, %if.end9.i.if.end21.i_crit_edge
  %arrayidx.i = getelementptr [25 x ptr], ptr @ioctl_handlers, i32 0, i32 %and2.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  %call24.i = call i32 %16(ptr noundef %1, ptr noundef nonnull %buffer.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24.i)
  %cmp25.i = icmp slt i32 %call24.i, 0
  br i1 %cmp25.i, label %if.end21.i.dispatch_ioctl.exit_crit_edge, label %if.end27.i

if.end21.i.dispatch_ioctl.exit_crit_edge:         ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dispatch_ioctl.exit

if.end27.i:                                       ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %tobool31.not.i = icmp sgt i32 %cmd, -1
  br i1 %tobool31.not.i, label %if.end27.i.if.end39.i_crit_edge, label %if.then.i.i.i59.i

if.end27.i.if.end39.i_crit_edge:                  ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.then.i.i.i59.i:                                ; preds = %if.end27.i
  call void @__check_object_size(ptr noundef nonnull %buffer.i, i32 noundef %and6.i, i1 noundef zeroext true) #12
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i60.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i60.i, label %if.then.i.i.i59.i.copy_to_user.exit.i_crit_edge, label %if.end.i.i64.i

if.then.i.i.i59.i.copy_to_user.exit.i_crit_edge:  ; preds = %if.then.i.i.i59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i

if.end.i.i64.i:                                   ; preds = %if.then.i.i.i59.i
  %17 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %2, i32 %and6.i, i32 -1226833920) #16, !srcloc !46
  %asmresult.i.i62.i = extractvalue { i32, i32 } %17, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i62.i)
  %cmp.i6.i63.i = icmp eq i32 %asmresult.i.i62.i, 0
  br i1 %cmp.i6.i63.i, label %if.then2.i.i.i, label %if.end.i.i64.i.copy_to_user.exit.i_crit_edge

if.end.i.i64.i.copy_to_user.exit.i_crit_edge:     ; preds = %if.end.i.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit.i

if.then2.i.i.i:                                   ; preds = %if.end.i.i64.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i65.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %buffer.i, i32 noundef %and6.i) #12
  %call.i12.i.i.i = call i32 @arm_copy_to_user(ptr noundef %2, ptr noundef nonnull %buffer.i, i32 noundef %and6.i) #12
  br label %copy_to_user.exit.i

copy_to_user.exit.i:                              ; preds = %if.then2.i.i.i, %if.end.i.i64.i.copy_to_user.exit.i_crit_edge, %if.then.i.i.i59.i.copy_to_user.exit.i_crit_edge
  %n.addr.0.i66.i = phi i32 [ %and6.i, %if.then.i.i.i59.i.copy_to_user.exit.i_crit_edge ], [ %call.i12.i.i.i, %if.then2.i.i.i ], [ %and6.i, %if.end.i.i64.i.copy_to_user.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i66.i)
  %tobool36.not.i = icmp eq i32 %n.addr.0.i66.i, 0
  br i1 %tobool36.not.i, label %copy_to_user.exit.i.if.end39.i_crit_edge, label %copy_to_user.exit.i.dispatch_ioctl.exit_crit_edge

copy_to_user.exit.i.dispatch_ioctl.exit_crit_edge: ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %dispatch_ioctl.exit

copy_to_user.exit.i.if.end39.i_crit_edge:         ; preds = %copy_to_user.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39.i

if.end39.i:                                       ; preds = %copy_to_user.exit.i.if.end39.i_crit_edge, %if.end27.i.if.end39.i_crit_edge
  br label %dispatch_ioctl.exit

dispatch_ioctl.exit:                              ; preds = %if.end39.i, %copy_to_user.exit.i.dispatch_ioctl.exit_crit_edge, %if.end21.i.dispatch_ioctl.exit_crit_edge, %if.then11.i.i.i, %lor.lhs.false4.i.dispatch_ioctl.exit_crit_edge, %lor.lhs.false.i.dispatch_ioctl.exit_crit_edge, %if.end.i.dispatch_ioctl.exit_crit_edge, %entry.dispatch_ioctl.exit_crit_edge
  %retval.0.i = phi i32 [ %call24.i, %if.end39.i ], [ -19, %entry.dispatch_ioctl.exit_crit_edge ], [ -25, %lor.lhs.false4.i.dispatch_ioctl.exit_crit_edge ], [ -25, %lor.lhs.false.i.dispatch_ioctl.exit_crit_edge ], [ -25, %if.end.i.dispatch_ioctl.exit_crit_edge ], [ %call24.i, %if.end21.i.dispatch_ioctl.exit_crit_edge ], [ -14, %copy_to_user.exit.i.dispatch_ioctl.exit_crit_edge ], [ -14, %if.then11.i.i.i ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buffer.i) #12
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_device_op_mmap(ptr nocapture noundef readonly %file, ptr noundef %vma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 4) #12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i.not = icmp eq i32 %5, 3
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 11
  %pages = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 11, i32 1
  %6 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pages, align 4
  %cmp.not = icmp eq ptr %7, null
  br i1 %cmp.not, label %if.end2, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  %vm_flags = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 8
  %8 = ptrtoint ptr %vm_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %vm_flags, align 4
  %and = and i32 %9, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end2.cleanup_crit_edge, label %if.end5

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end2
  %10 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vma, align 4
  %and6 = and i32 %11, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end9, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %if.end5
  %vm_start11 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 12
  %12 = ptrtoint ptr %vm_start11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %vm_start11, align 8
  %vm_end = getelementptr inbounds %struct.vm_area_struct, ptr %vma, i32 0, i32 1
  %13 = ptrtoint ptr %vm_end to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vm_end, align 4
  %15 = ptrtoint ptr %vma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %vma, align 4
  %sub = sub i32 %14, %16
  %and13 = and i32 %sub, 4095
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %shr = lshr i32 %sub, 12
  %call18 = tail call i32 @fw_iso_buffer_alloc(ptr noundef %buffer, i32 noundef %shr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %lock = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %iso_context = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 9
  %17 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iso_context, align 8
  %tobool22.not = icmp eq ptr %18, null
  br i1 %tobool22.not, label %if.end30.thread, label %if.end30

if.end30.thread:                                  ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %if.end34

if.end30:                                         ; preds = %if.end21
  %19 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %20, i32 0, i32 5
  %21 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %card, align 4
  %type.i = getelementptr inbounds %struct.fw_iso_context, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp.i74 = icmp eq i32 %24, 0
  %..i = select i1 %cmp.i74, i32 1, i32 2
  %call28 = tail call i32 @fw_iso_buffer_map_dma(ptr noundef %buffer, ptr noundef %22, i32 noundef %..i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp29 = icmp eq i32 %call28, 0
  %buffer_is_mapped = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 13
  %frombool = zext i1 %cmp29 to i8
  %25 = ptrtoint ptr %buffer_is_mapped to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %frombool, ptr %buffer_is_mapped, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %cmp32 = icmp slt i32 %call28, 0
  br i1 %cmp32, label %if.end30.fail_crit_edge, label %if.end30.if.end34_crit_edge

if.end30.if.end34_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end34

if.end30.fail_crit_edge:                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.end34:                                         ; preds = %if.end30.if.end34_crit_edge, %if.end30.thread
  %26 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pages, align 4
  %page_count38 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 11, i32 2
  %28 = ptrtoint ptr %page_count38 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %page_count38, align 8
  %call39 = tail call i32 @vm_map_pages_zero(ptr noundef %vma, ptr noundef %27, i32 noundef %29) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.end34.fail_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end34.fail_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

fail:                                             ; preds = %if.end34.fail_crit_edge, %if.end30.fail_crit_edge
  %ret.1 = phi i32 [ %call28, %if.end30.fail_crit_edge ], [ %call39, %if.end34.fail_crit_edge ]
  %30 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %device, align 4
  %card45 = getelementptr inbounds %struct.fw_device, ptr %31, i32 0, i32 5
  %32 = ptrtoint ptr %card45 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %card45, align 4
  tail call void @fw_iso_buffer_destroy(ptr noundef %buffer, ptr noundef %33) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end34.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %fail ], [ -19, %entry.cleanup_crit_edge ], [ -16, %if.end.cleanup_crit_edge ], [ -22, %if.end2.cleanup_crit_edge ], [ -22, %if.end5.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %call18, %if.end16.cleanup_crit_edge ], [ 0, %if.end34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_device_op_open(ptr noundef %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %i_rdev = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 13
  %0 = ptrtoint ptr %i_rdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %i_rdev, align 8
  %call = tail call ptr @fw_device_get_by_devt(i32 noundef %1) #12
  %cmp = icmp eq ptr %call, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef nonnull %call, i32 noundef 4) #12
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cmp.i.not = icmp eq i32 %3, 3
  br i1 %cmp.i.not, label %if.then2, label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %device1.i = getelementptr inbounds %struct.fw_device, ptr %call, i32 0, i32 6
  tail call void @put_device(ptr noundef %device1.i) #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 312) #15
  %cmp5 = icmp eq ptr %call7.i.i, null
  br i1 %cmp5, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %device1.i34 = getelementptr inbounds %struct.fw_device, ptr %call, i32 0, i32 6
  tail call void @put_device(ptr noundef %device1.i34) #12
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %device8 = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %device8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call, ptr %device8, align 4
  %lock = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @fw_device_op_open.__key, i16 noundef signext 3) #12
  %resource_idr = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %resource_idr, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
  %xa_flags.i.i.i = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 1
  %6 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 4, i32 0, i32 2
  %7 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 4, i32 2
  %9 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %idr_next.i.i, align 8
  %event_list = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 5
  %10 = ptrtoint ptr %event_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %event_list, ptr %event_list, align 4
  %prev.i = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %event_list, ptr %prev.i, align 8
  %wait = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 6
  tail call void @__init_waitqueue_head(ptr noundef %wait, ptr noundef nonnull @.str.12, ptr noundef nonnull @fw_device_op_open.__key.11) #12
  %tx_flush_wait = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 7
  tail call void @__init_waitqueue_head(ptr noundef %tx_flush_wait, ptr noundef nonnull @.str.14, ptr noundef nonnull @fw_device_op_open.__key.13) #12
  %phy_receiver_link = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 14
  %12 = ptrtoint ptr %phy_receiver_link to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %phy_receiver_link, ptr %phy_receiver_link, align 8
  %prev.i35 = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %prev.i35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %phy_receiver_link, ptr %prev.i35, align 4
  %link = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %link, ptr %link, align 8
  %prev.i36 = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 16, i32 1
  %15 = ptrtoint ptr %prev.i36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %link, ptr %prev.i36, align 4
  %kref = getelementptr inbounds %struct.client, ptr %call7.i.i, i32 0, i32 17
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref, i32 noundef 4) #12
  %16 = ptrtoint ptr %kref to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile i32 1, ptr %kref, align 8
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %17 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i.i, ptr %private_data, align 4
  %call16 = tail call i32 @nonseekable_open(ptr noundef %inode, ptr noundef %file) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.then6, %if.then2, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %if.then2 ], [ -12, %if.then6 ], [ %call16, %if.end7 ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_device_op_release(ptr nocapture noundef readnone %inode, ptr nocapture noundef readonly %file) #0 align 64 {
entry:
  %__wq_entry = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %device = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  %lock = getelementptr inbounds %struct.fw_card, ptr %5, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %phy_receiver_link = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 14
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %phy_receiver_link) #12
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %phy_receiver_link to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy_receiver_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %12 = ptrtoint ptr %phy_receiver_link to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %phy_receiver_link, align 4
  %prev.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %14 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %device, align 4
  %card2 = getelementptr inbounds %struct.fw_device, ptr %15, i32 0, i32 5
  %16 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %card2, align 4
  %lock3 = getelementptr inbounds %struct.fw_card, ptr %17, i32 0, i32 18
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock3) #12
  %18 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %device, align 4
  %client_list_mutex = getelementptr inbounds %struct.fw_device, ptr %19, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %client_list_mutex, i32 noundef 0) #12
  %link = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 16
  %call.i.i78 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #12
  br i1 %call.i.i78, label %if.end.i.i81, label %list_del.exit.list_del.exit83_crit_edge

list_del.exit.list_del.exit83_crit_edge:          ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit83

if.end.i.i81:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i79 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 16, i32 1
  %20 = ptrtoint ptr %prev.i.i79 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i79, align 4
  %22 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %link, align 4
  %prev1.i.i.i80 = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i80 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i80, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit83

list_del.exit83:                                  ; preds = %if.end.i.i81, %list_del.exit.list_del.exit83_crit_edge
  %26 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %link, align 4
  %prev.i82 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 16, i32 1
  %27 = ptrtoint ptr %prev.i82 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i82, align 4
  %28 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %device, align 4
  %client_list_mutex6 = getelementptr inbounds %struct.fw_device, ptr %29, i32 0, i32 7
  tail call void @mutex_unlock(ptr noundef %client_list_mutex6) #12
  %iso_context = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 9
  %30 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iso_context, align 8
  %tobool.not = icmp eq ptr %31, null
  br i1 %tobool.not, label %list_del.exit83.if.end_crit_edge, label %if.then

list_del.exit83.if.end_crit_edge:                 ; preds = %list_del.exit83
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %list_del.exit83
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fw_iso_context_destroy(ptr noundef nonnull %31) #12
  br label %if.end

if.end:                                           ; preds = %if.then, %list_del.exit83.if.end_crit_edge
  %pages = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 11, i32 1
  %32 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pages, align 4
  %tobool8.not = icmp eq ptr %33, null
  br i1 %tobool8.not, label %if.end.if.end13_crit_edge, label %if.then9

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %buffer = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 11
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 4
  %card12 = getelementptr inbounds %struct.fw_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %card12 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card12, align 4
  tail call void @fw_iso_buffer_destroy(ptr noundef %buffer, ptr noundef %37) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then9, %if.end.if.end13_crit_edge
  %lock14 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock14) #12
  %in_shutdown = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3
  %38 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %in_shutdown, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock14) #12
  tail call void @__might_sleep(ptr noundef nonnull @.str, i32 noundef 1772) #12
  tail call void @_raw_spin_lock_irq(ptr noundef %lock14) #12
  %resource_idr.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 4
  %call.i = tail call i32 @idr_for_each(ptr noundef %resource_idr.i, ptr noundef nonnull @is_outbound_transaction_resource, ptr noundef null) #12
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool20.not = icmp eq i32 %call.i, 0
  br i1 %tobool20.not, label %if.end13.do.end30_crit_edge, label %if.end22

if.end13.do.end30_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end30

if.end22:                                         ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry) #12
  %39 = call ptr @memset(ptr %__wq_entry, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry, i32 noundef 0) #12
  %tx_flush_wait = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 7
  %call2389 = call i32 @prepare_to_wait_event(ptr noundef %tx_flush_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock14) #12
  %call.i8690 = call i32 @idr_for_each(ptr noundef %resource_idr.i, ptr noundef nonnull @is_outbound_transaction_resource, ptr noundef null) #12
  call void @_raw_spin_unlock_irq(ptr noundef %lock14) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i8690)
  %tobool25.not91 = icmp eq i32 %call.i8690, 0
  br i1 %tobool25.not91, label %if.end22.for.end_crit_edge, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  br label %cleanup

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

cleanup:                                          ; preds = %cleanup.cleanup_crit_edge, %if.end22.cleanup_crit_edge
  call void @schedule() #12
  %call23 = call i32 @prepare_to_wait_event(ptr noundef %tx_flush_wait, ptr noundef nonnull %__wq_entry, i32 noundef 2) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock14) #12
  %call.i86 = call i32 @idr_for_each(ptr noundef %resource_idr.i, ptr noundef nonnull @is_outbound_transaction_resource, ptr noundef null) #12
  call void @_raw_spin_unlock_irq(ptr noundef %lock14) #12
  %tobool25.not = icmp eq i32 %call.i86, 0
  br i1 %tobool25.not, label %cleanup.for.end_crit_edge, label %cleanup.cleanup_crit_edge

cleanup.cleanup_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end22.for.end_crit_edge
  call void @finish_wait(ptr noundef %tx_flush_wait, ptr noundef nonnull %__wq_entry) #12
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry) #12
  br label %do.end30

do.end30:                                         ; preds = %for.end, %if.end13.do.end30_crit_edge
  %call31 = call i32 @idr_for_each(ptr noundef %resource_idr.i, ptr noundef nonnull @shutdown_resource, ptr noundef %1) #12
  call void @idr_destroy(ptr noundef %resource_idr.i) #12
  %event_list = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5
  %40 = ptrtoint ptr %event_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %event_list, align 4
  %cmp.not92 = icmp eq ptr %41, %event_list
  br i1 %cmp.not92, label %do.end30.for.end47_crit_edge, label %do.end30.for.body_crit_edge

do.end30.for.body_crit_edge:                      ; preds = %do.end30
  br label %for.body

do.end30.for.end47_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end47

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end30.for.body_crit_edge
  %.pn.in93 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %41, %do.end30.for.body_crit_edge ]
  %event.0 = getelementptr i8, ptr %.pn.in93, i32 -16
  %42 = ptrtoint ptr %.pn.in93 to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn = load ptr, ptr %.pn.in93, align 4
  call void @kfree(ptr noundef %event.0) #12
  %cmp.not = icmp eq ptr %.pn, %event_list
  br i1 %cmp.not, label %for.body.for.end47_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.body.for.end47_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end47

for.end47:                                        ; preds = %for.body.for.end47_crit_edge, %do.end30.for.end47_crit_edge
  %kref.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %43 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %for.end47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.client_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.client_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %client_put.exit

if.then.i.i:                                      ; preds = %for.end47
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %44 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %device, align 4
  %device1.i.i.i = getelementptr inbounds %struct.fw_device, ptr %45, i32 0, i32 6
  call void @put_device(ptr noundef %device1.i.i.i) #12
  call void @kfree(ptr noundef %1) #12
  br label %client_put.exit

client_put.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.client_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_for_each(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @schedule_reallocations(i32 noundef %id, ptr noundef %p, ptr nocapture noundef readnone %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %cmp.i = icmp eq ptr %1, @release_iso_resource
  br i1 %cmp.i, label %if.then.i, label %entry.schedule_if_iso_resource.exit_crit_edge

entry.schedule_if_iso_resource.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %schedule_if_iso_resource.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @schedule_iso_resource(ptr noundef %p, i32 noundef 0) #12
  br label %schedule_if_iso_resource.exit

schedule_if_iso_resource.exit:                    ; preds = %if.then.i, %entry.schedule_if_iso_resource.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_iso_resource(ptr noundef %client, ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %todo = getelementptr inbounds %struct.iso_resource, ptr %resource, i32 0, i32 3
  %0 = ptrtoint ptr %todo to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 2, ptr %todo, align 8
  tail call fastcc void @schedule_iso_resource(ptr noundef %resource, i32 noundef 0)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @schedule_iso_resource(ptr noundef %r, i32 noundef %delay) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %client = getelementptr inbounds %struct.iso_resource, ptr %r, i32 0, i32 1
  %0 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client, align 8
  %kref.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %3 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %.not.i.i.i.i.i = icmp sgt i32 %3, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.client_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.client_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %client_get.exit

client_get.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.client_get.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @fw_workqueue to i32))
  %4 = load ptr, ptr @fw_workqueue, align 4
  %work = getelementptr inbounds %struct.iso_resource, ptr %r, i32 0, i32 2
  %call.i = tail call zeroext i1 @queue_delayed_work_on(i32 noundef 4, ptr noundef %4, ptr noundef %work, i32 noundef %delay) #12
  br i1 %call.i, label %client_get.exit.if.end_crit_edge, label %if.then

client_get.exit.if.end_crit_edge:                 ; preds = %client_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %client_get.exit
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %client, align 8
  %kref.i4 = getelementptr inbounds %struct.client, ptr %6, i32 0, i32 17
  %call.i.i.i.i.i.i.i5 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i4, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref.i4, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i4, ptr %kref.i4, i32 1, ptr elementtype(i32) %kref.i4) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i6 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i6, label %if.end5.i.i.i.i.i.if.end_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.if.end_crit_edge:               ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i4, i32 noundef 3) #12
  br label %if.end

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %device.i.i = getelementptr %struct.client, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  %device1.i.i.i = getelementptr inbounds %struct.fw_device, ptr %9, i32 0, i32 6
  tail call void @put_device(ptr noundef %device1.i.i.i) #12
  tail call void @kfree(ptr noundef %6) #12
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end_crit_edge, %client_get.exit.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_to_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_get_info(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %bus_reset = alloca %struct.fw_cdev_event_bus_reset, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %bus_reset) #12
  %0 = call ptr @memset(ptr %bus_reset, i32 255, i32 40)
  %1 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arg, align 8
  %3 = ptrtoint ptr %client to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %client, align 8
  store i32 5, ptr %arg, align 8
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %index = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index, align 8
  %card3 = getelementptr inbounds %struct.fw_cdev_get_info, ptr %arg, i32 0, i32 5
  %10 = ptrtoint ptr %card3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %card3, align 8
  tail call void @down_read(ptr noundef nonnull @fw_device_rwsem) #12
  %rom = getelementptr inbounds %struct.fw_cdev_get_info, ptr %arg, i32 0, i32 2
  %11 = ptrtoint ptr %rom to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %rom, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %12)
  %cmp.not = icmp eq i64 %12, 0
  br i1 %cmp.not, label %if.end15.critedge, label %if.then

if.then:                                          ; preds = %entry
  %rom_length = getelementptr inbounds %struct.fw_cdev_get_info, ptr %arg, i32 0, i32 1
  %13 = ptrtoint ptr %rom_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rom_length, align 4
  %15 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %device, align 4
  %config_rom_length = getelementptr inbounds %struct.fw_device, ptr %16, i32 0, i32 10
  %17 = ptrtoint ptr %config_rom_length to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %config_rom_length, align 8
  %mul = shl i32 %18, 2
  %conv.i = trunc i64 %12 to i32
  %19 = inttoptr i32 %conv.i to ptr
  %config_rom = getelementptr inbounds %struct.fw_device, ptr %16, i32 0, i32 9
  %20 = ptrtoint ptr %config_rom to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %config_rom, align 4
  %22 = tail call i32 @llvm.umin.i32(i32 %14, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp9.i.i = icmp slt i32 %22, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.then
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.copy_to_user.exit_crit_edge, label %if.then27.i.i, !prof !45

land.rhs16.i.i.copy_to_user.exit_crit_edge:       ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %copy_to_user.exit

if.then.i.i.i:                                    ; preds = %if.then
  tail call void @__check_object_size(ptr noundef %21, i32 noundef %22, i1 noundef zeroext true) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.copy_to_user.exit_crit_edge, label %if.end.i.i

if.then.i.i.i.copy_to_user.exit_crit_edge:        ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.end.i.i:                                       ; preds = %if.then.i.i.i
  %23 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %19, i32 %22, i32 -1226833920) #16, !srcloc !46
  %asmresult.i.i = extractvalue { i32, i32 } %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then2.i.i, label %if.end.i.i.copy_to_user.exit_crit_edge

if.end.i.i.copy_to_user.exit_crit_edge:           ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %copy_to_user.exit

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %21, i32 noundef %22) #12
  %call.i12.i.i = tail call i32 @arm_copy_to_user(ptr noundef %19, ptr noundef %21, i32 noundef %22) #12
  br label %copy_to_user.exit

copy_to_user.exit:                                ; preds = %if.then2.i.i, %if.end.i.i.copy_to_user.exit_crit_edge, %if.then.i.i.i.copy_to_user.exit_crit_edge, %if.then27.i.i, %land.rhs16.i.i.copy_to_user.exit_crit_edge
  %n.addr.0.i = phi i32 [ %22, %if.then.i.i.i.copy_to_user.exit_crit_edge ], [ %call.i12.i.i, %if.then2.i.i ], [ %22, %if.end.i.i.copy_to_user.exit_crit_edge ], [ 1, %if.then27.i.i ], [ 1, %land.rhs16.i.i.copy_to_user.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n.addr.0.i)
  %phi.cmp = icmp eq i32 %n.addr.0.i, 0
  %24 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %device, align 4
  %config_rom_length10 = getelementptr inbounds %struct.fw_device, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %config_rom_length10 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %config_rom_length10, align 8
  %mul11 = shl i32 %27, 2
  %28 = ptrtoint ptr %rom_length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul11, ptr %rom_length, align 4
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #12
  br i1 %phi.cmp, label %copy_to_user.exit.if.end15_crit_edge, label %copy_to_user.exit.cleanup_crit_edge

copy_to_user.exit.cleanup_crit_edge:              ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

copy_to_user.exit.if.end15_crit_edge:             ; preds = %copy_to_user.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

if.end15.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %29 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %device, align 4
  %config_rom_length10.c = getelementptr inbounds %struct.fw_device, ptr %30, i32 0, i32 10
  %31 = ptrtoint ptr %config_rom_length10.c to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %config_rom_length10.c, align 8
  %mul11.c = shl i32 %32, 2
  %rom_length12.c = getelementptr inbounds %struct.fw_cdev_get_info, ptr %arg, i32 0, i32 1
  %33 = ptrtoint ptr %rom_length12.c to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul11.c, ptr %rom_length12.c, align 4
  tail call void @up_read(ptr noundef nonnull @fw_device_rwsem) #12
  br label %if.end15

if.end15:                                         ; preds = %if.end15.critedge, %copy_to_user.exit.if.end15_crit_edge
  %34 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device, align 4
  %client_list_mutex = getelementptr inbounds %struct.fw_device, ptr %35, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %client_list_mutex, i32 noundef 0) #12
  %bus_reset_closure = getelementptr inbounds %struct.fw_cdev_get_info, ptr %arg, i32 0, i32 4
  %36 = ptrtoint ptr %bus_reset_closure to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %bus_reset_closure, align 8
  %bus_reset_closure17 = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 8
  %38 = ptrtoint ptr %bus_reset_closure17 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %37, ptr %bus_reset_closure17, align 8
  %bus_reset18 = getelementptr inbounds %struct.fw_cdev_get_info, ptr %arg, i32 0, i32 3
  %39 = ptrtoint ptr %bus_reset18 to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %bus_reset18, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %40)
  %cmp19.not = icmp eq i64 %40, 0
  br i1 %cmp19.not, label %if.end15.land.lhs.true_crit_edge, label %if.then20

if.end15.land.lhs.true_crit_edge:                 ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

if.then20:                                        ; preds = %if.end15
  %41 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device, align 4
  %card1.i = getelementptr inbounds %struct.fw_device, ptr %42, i32 0, i32 5
  %43 = ptrtoint ptr %card1.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %card1.i, align 4
  %lock.i = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %45 = ptrtoint ptr %bus_reset_closure17 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %bus_reset_closure17, align 8
  %47 = ptrtoint ptr %bus_reset to i32
  call void @__asan_store8_noabort(i32 %47)
  store i64 %46, ptr %bus_reset, align 8
  %type.i = getelementptr inbounds %struct.fw_cdev_event_bus_reset, ptr %bus_reset, i32 0, i32 1
  %48 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %type.i, align 8
  %49 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %device, align 4
  %generation.i = getelementptr inbounds %struct.fw_device, ptr %50, i32 0, i32 3
  %51 = ptrtoint ptr %generation.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %generation.i, align 4
  %generation3.i = getelementptr inbounds %struct.fw_cdev_event_bus_reset, ptr %bus_reset, i32 0, i32 7
  %53 = ptrtoint ptr %generation3.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %generation3.i, align 8
  %node_id.i = getelementptr inbounds %struct.fw_device, ptr %50, i32 0, i32 2
  %54 = ptrtoint ptr %node_id.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %node_id.i, align 8
  %node_id5.i = getelementptr inbounds %struct.fw_cdev_event_bus_reset, ptr %bus_reset, i32 0, i32 2
  %56 = ptrtoint ptr %node_id5.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %node_id5.i, align 4
  %local_node.i = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 19
  %57 = ptrtoint ptr %local_node.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %local_node.i, align 8
  %59 = ptrtoint ptr %58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %58, align 4
  %conv.i79 = zext i16 %60 to i32
  %local_node_id.i = getelementptr inbounds %struct.fw_cdev_event_bus_reset, ptr %bus_reset, i32 0, i32 3
  %61 = ptrtoint ptr %local_node_id.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %conv.i79, ptr %local_node_id.i, align 8
  %bm_node_id.i = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 33
  %62 = ptrtoint ptr %bm_node_id.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bm_node_id.i, align 8
  %bm_node_id7.i = getelementptr inbounds %struct.fw_cdev_event_bus_reset, ptr %bus_reset, i32 0, i32 4
  %64 = ptrtoint ptr %bm_node_id7.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %bm_node_id7.i, align 4
  %irm_node.i = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 21
  %65 = ptrtoint ptr %irm_node.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %irm_node.i, align 8
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %66, align 4
  %conv9.i = zext i16 %68 to i32
  %irm_node_id.i = getelementptr inbounds %struct.fw_cdev_event_bus_reset, ptr %bus_reset, i32 0, i32 5
  %69 = ptrtoint ptr %irm_node_id.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %conv9.i, ptr %irm_node_id.i, align 8
  %root_node.i = getelementptr inbounds %struct.fw_card, ptr %44, i32 0, i32 20
  %70 = ptrtoint ptr %root_node.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %root_node.i, align 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %71, align 4
  %conv11.i = zext i16 %73 to i32
  %root_node_id.i = getelementptr inbounds %struct.fw_cdev_event_bus_reset, ptr %bus_reset, i32 0, i32 6
  %74 = ptrtoint ptr %root_node_id.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %conv11.i, ptr %root_node_id.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  %75 = ptrtoint ptr %bus_reset18 to i32
  call void @__asan_load8_noabort(i32 %75)
  %76 = load i64, ptr %bus_reset18, align 8
  %conv.i80 = trunc i64 %76 to i32
  %77 = inttoptr i32 %conv.i80 to ptr
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 174) #12
  %call.i.i69 = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i69, label %if.then20.if.end30_crit_edge, label %if.end.i.i73

if.then20.if.end30_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end.i.i73:                                     ; preds = %if.then20
  %78 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %77, i32 36, i32 -1226833920) #16, !srcloc !46
  %asmresult.i.i71 = extractvalue { i32, i32 } %78, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i71)
  %cmp.i6.i72 = icmp eq i32 %asmresult.i.i71, 0
  br i1 %cmp.i6.i72, label %copy_to_user.exit78, label %if.end.i.i73.if.end30_crit_edge

if.end.i.i73.if.end30_crit_edge:                  ; preds = %if.end.i.i73
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

copy_to_user.exit78:                              ; preds = %if.end.i.i73
  %call.i.i.i74 = call zeroext i1 @__kasan_check_read(ptr noundef nonnull %bus_reset, i32 noundef 36) #12
  %call.i12.i.i75 = call i32 @arm_copy_to_user(ptr noundef %77, ptr noundef nonnull %bus_reset, i32 noundef 36) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i75)
  %phi.cmp62 = icmp eq i32 %call.i12.i.i75, 0
  br i1 %phi.cmp62, label %copy_to_user.exit78.land.lhs.true_crit_edge, label %copy_to_user.exit78.if.end30_crit_edge

copy_to_user.exit78.if.end30_crit_edge:           ; preds = %copy_to_user.exit78
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

copy_to_user.exit78.land.lhs.true_crit_edge:      ; preds = %copy_to_user.exit78
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %copy_to_user.exit78.land.lhs.true_crit_edge, %if.end15.land.lhs.true_crit_edge
  %link = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 16
  %79 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %link, align 4
  %cmp.i.not = icmp eq ptr %80, %link
  br i1 %cmp.i.not, label %if.then27, label %land.lhs.true.if.end30_crit_edge

land.lhs.true.if.end30_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.then27:                                        ; preds = %land.lhs.true
  %81 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %device, align 4
  %client_list = getelementptr inbounds %struct.fw_device, ptr %82, i32 0, i32 8
  %prev.i = getelementptr inbounds %struct.fw_device, ptr %82, i32 0, i32 8, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i, align 4
  %call.i.i82 = call zeroext i1 @__list_add_valid(ptr noundef %link, ptr noundef %84, ptr noundef %client_list) #12
  br i1 %call.i.i82, label %if.end.i.i83, label %if.then27.if.end30_crit_edge

if.then27.if.end30_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end30

if.end.i.i83:                                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #14
  %85 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %link, ptr %prev.i, align 4
  %86 = ptrtoint ptr %link to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %client_list, ptr %link, align 4
  %prev3.i.i = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 16, i32 1
  %87 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %link, ptr %84, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.end.i.i83, %if.then27.if.end30_crit_edge, %land.lhs.true.if.end30_crit_edge, %copy_to_user.exit78.if.end30_crit_edge, %if.end.i.i73.if.end30_crit_edge, %if.then20.if.end30_crit_edge
  %cond34 = phi i32 [ 0, %land.lhs.true.if.end30_crit_edge ], [ -14, %copy_to_user.exit78.if.end30_crit_edge ], [ 0, %if.then27.if.end30_crit_edge ], [ 0, %if.end.i.i83 ], [ -14, %if.then20.if.end30_crit_edge ], [ -14, %if.end.i.i73.if.end30_crit_edge ]
  %89 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %device, align 4
  %client_list_mutex32 = getelementptr inbounds %struct.fw_device, ptr %90, i32 0, i32 7
  call void @mutex_unlock(ptr noundef %client_list_mutex32) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end30, %copy_to_user.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond34, %if.end30 ], [ -14, %copy_to_user.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %bus_reset) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_send_request(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %1, label %entry.return_crit_edge [
    i32 0, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge5
    i32 4, label %entry.sw.epilog_crit_edge6
    i32 5, label %entry.sw.epilog_crit_edge7
    i32 17, label %entry.sw.epilog_crit_edge8
    i32 18, label %entry.sw.epilog_crit_edge9
    i32 19, label %entry.sw.epilog_crit_edge10
    i32 20, label %entry.sw.epilog_crit_edge11
    i32 21, label %entry.sw.epilog_crit_edge12
    i32 22, label %entry.sw.epilog_crit_edge13
    i32 23, label %entry.sw.epilog_crit_edge14
  ]

entry.sw.epilog_crit_edge14:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge13:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge12:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge11:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge10:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge9:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge8:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge7:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge6:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge5:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %return

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge5, %entry.sw.epilog_crit_edge6, %entry.sw.epilog_crit_edge7, %entry.sw.epilog_crit_edge8, %entry.sw.epilog_crit_edge9, %entry.sw.epilog_crit_edge10, %entry.sw.epilog_crit_edge11, %entry.sw.epilog_crit_edge12, %entry.sw.epilog_crit_edge13, %entry.sw.epilog_crit_edge14
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %3 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device, align 4
  %node_id = getelementptr inbounds %struct.fw_device, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %node_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %node_id, align 8
  %max_speed = getelementptr inbounds %struct.fw_device, ptr %4, i32 0, i32 4
  %7 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_speed, align 8
  %call = tail call fastcc i32 @init_request(ptr noundef %client, ptr noundef %arg, i32 noundef %6, i32 noundef %8)
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_allocate(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %region = alloca %struct.fw_address_region, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %region) #12
  %0 = getelementptr inbounds %struct.fw_address_region, ptr %region, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 56) #15
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %arg, align 8
  %4 = ptrtoint ptr %region to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %region, align 8
  %5 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %client, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %6)
  %cmp1 = icmp ult i32 %6, 4
  br i1 %cmp1, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.fw_cdev_allocate, ptr %arg, i32 0, i32 2
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 8
  %conv = zext i32 %8 to i64
  %add = add i64 %3, %conv
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %region_end = getelementptr inbounds %struct.fw_cdev_allocate, ptr %arg, i32 0, i32 4
  %9 = ptrtoint ptr %region_end to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %region_end, align 8
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %storemerge = phi i64 [ %10, %if.else ], [ %add, %if.then2 ]
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %storemerge, ptr %0, align 8
  %length6 = getelementptr inbounds %struct.fw_cdev_allocate, ptr %arg, i32 0, i32 2
  %12 = ptrtoint ptr %length6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %length6, align 8
  %conv7 = zext i32 %13 to i64
  %handler = getelementptr inbounds %struct.address_handler_resource, ptr %call7.i, i32 0, i32 1
  %length8 = getelementptr inbounds %struct.address_handler_resource, ptr %call7.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %length8 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv7, ptr %length8, align 8
  %address_callback = getelementptr inbounds %struct.address_handler_resource, ptr %call7.i, i32 0, i32 1, i32 2
  %15 = ptrtoint ptr %address_callback to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @handle_request, ptr %address_callback, align 8
  %callback_data = getelementptr inbounds %struct.address_handler_resource, ptr %call7.i, i32 0, i32 1, i32 3
  %16 = ptrtoint ptr %callback_data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call7.i, ptr %callback_data, align 4
  %closure = getelementptr inbounds %struct.fw_cdev_allocate, ptr %arg, i32 0, i32 1
  %17 = ptrtoint ptr %closure to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %closure, align 8
  %closure11 = getelementptr inbounds %struct.address_handler_resource, ptr %call7.i, i32 0, i32 2
  %19 = ptrtoint ptr %closure11 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %closure11, align 8
  %client12 = getelementptr inbounds %struct.address_handler_resource, ptr %call7.i, i32 0, i32 3
  %20 = ptrtoint ptr %client12 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %client, ptr %client12, align 8
  %call14 = call i32 @fw_core_add_address_handler(ptr noundef %handler, ptr noundef nonnull %region) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.then17, label %if.end18

if.then17:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %21 = ptrtoint ptr %handler to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %handler, align 8
  %23 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %22, ptr %arg, align 8
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @release_address_handler, ptr %call7.i, align 8
  %call23 = call fastcc i32 @add_client_resource(ptr noundef %client, ptr noundef nonnull %call7.i, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.then26, label %if.end28

if.then26:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  call void @fw_core_remove_address_handler(ptr noundef %handler) #12
  call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  %handle = getelementptr inbounds %struct.client_resource, ptr %call7.i, i32 0, i32 1
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handle, align 4
  %handle30 = getelementptr inbounds %struct.fw_cdev_allocate, ptr %arg, i32 0, i32 3
  %27 = ptrtoint ptr %handle30 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %handle30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %if.then26, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call14, %if.then17 ], [ %call23, %if.then26 ], [ 0, %if.end28 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %region) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_deallocate(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 8
  %call = tail call fastcc i32 @release_client_resource(ptr noundef %client, i32 noundef %1, ptr noundef nonnull @release_address_handler, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_send_response(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %resource = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %resource) #12
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %resource, align 4, !annotation !56
  %handle = getelementptr inbounds %struct.fw_cdev_send_response, ptr %arg, i32 0, i32 3
  %1 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %handle, align 8
  %call = call fastcc i32 @release_client_resource(ptr noundef %client, i32 noundef %2, ptr noundef nonnull @release_request, ptr noundef nonnull %resource)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %resource, align 4
  %request = getelementptr inbounds %struct.inbound_transaction_resource, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %request, align 4
  %cmp.i = icmp eq ptr %6, null
  br i1 %cmp.i, label %if.end.out_crit_edge, label %if.end3

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end3:                                          ; preds = %if.end
  %length = getelementptr inbounds %struct.fw_cdev_send_response, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %length, align 4
  %call5 = call i32 @fw_get_response_length(ptr noundef nonnull %6) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %call5)
  %cmp6.not = icmp eq i32 %8, %call5
  br i1 %cmp6.not, label %if.end9, label %if.then7

if.then7:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %request, align 4
  call void @kfree(ptr noundef %10) #12
  br label %out

if.end9:                                          ; preds = %if.end3
  %data = getelementptr inbounds %struct.inbound_transaction_resource, ptr %4, i32 0, i32 3
  %11 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %data, align 4
  %data10 = getelementptr inbounds %struct.fw_cdev_send_response, ptr %arg, i32 0, i32 2
  %13 = ptrtoint ptr %data10 to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %data10, align 8
  %conv.i = trunc i64 %14 to i32
  %15 = inttoptr i32 %conv.i to ptr
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp9.i.i = icmp slt i32 %17, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end9
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.if.then14_crit_edge, label %if.then27.i.i, !prof !45

land.rhs16.i.i.if.then14_crit_edge:               ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then14

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %if.then14

if.then.i.i.i:                                    ; preds = %if.end9
  call void @__check_object_size(ptr noundef %12, i32 noundef %17, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i_crit_edge:               ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %18 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %15, i32 %17, i32 -1226833920) #16, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !45

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %12, i32 noundef %17) #12
  %19 = call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i.i.i.i.i = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 4
  %21 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !48
  %and.i.i.i.i = and i32 %21, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %12, ptr noundef %15, i32 noundef %17) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %21) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.then.i.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %17, %if.then.i.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %17, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end16, label %if.then11.i.i, !prof !45

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %17, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 %sub.i.i
  %22 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %if.then14

if.then14:                                        ; preds = %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.if.then14_crit_edge
  %23 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %request, align 4
  call void @kfree(ptr noundef %24) #12
  br label %out

if.end16:                                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.inbound_transaction_resource, ptr %4, i32 0, i32 1
  %25 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %card, align 4
  %27 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %request, align 4
  %29 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arg, align 8
  call void @fw_send_response(ptr noundef %26, ptr noundef %28, i32 noundef %30) #12
  br label %out

out:                                              ; preds = %if.end16, %if.then14, %if.then7, %if.end.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ -22, %if.then7 ], [ -14, %if.then14 ], [ 0, %if.end16 ]
  %card18 = getelementptr inbounds %struct.inbound_transaction_resource, ptr %4, i32 0, i32 1
  %31 = ptrtoint ptr %card18 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %card18, align 4
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %32, i32 0, i32 2
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %33 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i34, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fw_card_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %fw_card_put.exit

if.then.i.i34:                                    ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  call void @fw_card_release(ptr noundef %kref.i) #12, !callees !57
  br label %fw_card_put.exit

fw_card_put.exit:                                 ; preds = %if.then.i.i34, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge
  call void @kfree(ptr noundef %4) #12
  br label %cleanup

cleanup:                                          ; preds = %fw_card_put.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fw_card_put.exit ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %resource) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_initiate_bus_reset(ptr nocapture noundef readonly %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card, align 4
  %4 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp = icmp eq i32 %5, 1
  tail call void @fw_schedule_bus_reset(ptr noundef %3, i1 noundef zeroext true, i1 noundef zeroext %cmp) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_add_descriptor(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %is_local = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %is_local to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_local, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %length = getelementptr inbounds %struct.fw_cdev_add_descriptor, ptr %arg, i32 0, i32 3
  %3 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %length, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %cmp = icmp ugt i32 %4, 256
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end8.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end8.i:                                        ; preds = %if.end
  %mul = shl nuw nsw i32 %4, 2
  %add = add nuw nsw i32 %mul, 32
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %cmp4 = icmp eq ptr %call9.i, null
  br i1 %cmp4, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %data = getelementptr inbounds %struct.descriptor_resource, ptr %call9.i, i32 0, i32 2
  %data7 = getelementptr inbounds %struct.fw_cdev_add_descriptor, ptr %arg, i32 0, i32 2
  %5 = ptrtoint ptr %data7 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data7, align 8
  %conv.i = trunc i64 %6 to i32
  %7 = inttoptr i32 %conv.i to ptr
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 8
  %mul10 = shl i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul10)
  %cmp9.i.i = icmp slt i32 %mul10, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %if.end6
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.failed_crit_edge, label %if.then27.i.i, !prof !45

land.rhs16.i.i.failed_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %failed

if.then.i.i.i:                                    ; preds = %if.end6
  tail call void @__check_object_size(ptr noundef %data, i32 noundef %mul10, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i65_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i65_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i65

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %10 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %7, i32 %mul10, i32 -1226833920) #16, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %10, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i65_crit_edge, !prof !45

land.lhs.true.i.i.if.end.i.i65_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i65

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data, i32 noundef %mul10) #12
  %11 = tail call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i.i.i.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 4
  %13 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !48
  %and.i.i.i.i = and i32 %13, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data, ptr noundef %7, i32 noundef %mul10) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %13) #12, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  br label %if.end.i.i65

if.end.i.i65:                                     ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i65_crit_edge, %if.then.i.i.i.if.end.i.i65_crit_edge
  %res.0.i.i = phi i32 [ %mul10, %if.then.i.i.i.if.end.i.i65_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %mul10, %land.lhs.true.i.i.if.end.i.i65_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end14, label %if.then11.i.i, !prof !45

if.then11.i.i:                                    ; preds = %if.end.i.i65
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %mul10, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data, i32 %sub.i.i
  %14 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %failed

if.end14:                                         ; preds = %if.end.i.i65
  %15 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %length, align 8
  %descriptor = getelementptr inbounds %struct.descriptor_resource, ptr %call9.i, i32 0, i32 1
  %length16 = getelementptr inbounds %struct.descriptor_resource, ptr %call9.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %length16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %length16, align 16
  %18 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arg, align 8
  %immediate18 = getelementptr inbounds %struct.descriptor_resource, ptr %call9.i, i32 0, i32 1, i32 2
  %20 = ptrtoint ptr %immediate18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %immediate18, align 4
  %key = getelementptr inbounds %struct.fw_cdev_add_descriptor, ptr %arg, i32 0, i32 1
  %21 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %key, align 4
  %key20 = getelementptr inbounds %struct.descriptor_resource, ptr %call9.i, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %key20 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %key20, align 8
  %data24 = getelementptr inbounds %struct.descriptor_resource, ptr %call9.i, i32 0, i32 1, i32 4
  %24 = ptrtoint ptr %data24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %data, ptr %data24, align 4
  %call26 = tail call i32 @fw_core_add_descriptor(ptr noundef %descriptor) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %cmp27 = icmp slt i32 %call26, 0
  br i1 %cmp27, label %if.end14.failed_crit_edge, label %if.end29

if.end14.failed_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

if.end29:                                         ; preds = %if.end14
  %25 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @release_descriptor, ptr %call9.i, align 128
  %call31 = tail call fastcc i32 @add_client_resource(ptr noundef %client, ptr noundef nonnull %call9.i, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.then33, label %if.end35

if.then33:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fw_core_remove_descriptor(ptr noundef %descriptor) #12
  br label %failed

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %handle = getelementptr inbounds %struct.client_resource, ptr %call9.i, i32 0, i32 1
  %26 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %handle, align 4
  %handle37 = getelementptr inbounds %struct.fw_cdev_add_descriptor, ptr %arg, i32 0, i32 4
  %28 = ptrtoint ptr %handle37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %handle37, align 4
  br label %cleanup

failed:                                           ; preds = %if.then33, %if.end14.failed_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.failed_crit_edge
  %ret.0 = phi i32 [ %call26, %if.end14.failed_crit_edge ], [ %call31, %if.then33 ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end35, %if.end8.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %failed ], [ 0, %if.end35 ], [ -38, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_remove_descriptor(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 8
  %call = tail call fastcc i32 @release_client_resource(ptr noundef %client, i32 noundef %1, ptr noundef nonnull @release_descriptor, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_create_iso_context(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %if.then14
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %speed = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 3
  %3 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %speed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %4)
  %cmp = icmp ugt i32 %4, 5
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %lor.lhs.false

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %sw.bb
  %channel = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 2
  %5 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %channel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %6)
  %cmp1 = icmp ugt i32 %6, 63
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.else_crit_edge

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb2:                                           ; preds = %entry
  %header_size = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 1
  %7 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %header_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp3 = icmp ugt i32 %8, 3
  %and = and i32 %8, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond = and i1 %cmp3, %tobool.not
  br i1 %or.cond, label %lor.lhs.false6, label %sw.bb2.cleanup_crit_edge

sw.bb2.cleanup_crit_edge:                         ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %sw.bb2
  %channel7 = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 2
  %9 = ptrtoint ptr %channel7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %channel7, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %10)
  %cmp8 = icmp ugt i32 %10, 63
  br i1 %cmp8, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false6.if.else_crit_edge

lor.lhs.false6.if.else_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then14:                                        ; preds = %entry
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %11 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %card, align 4
  %call.i = tail call ptr @fw_iso_context_create(ptr noundef %14, i32 noundef 2, i32 noundef 0, i32 noundef 0, i32 noundef 0, ptr noundef null, ptr noundef %client) #12
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then14.if.end22_crit_edge, label %if.then.i

if.then14.if.end22_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then.i:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %callback2.i = getelementptr inbounds %struct.fw_iso_context, ptr %call.i, i32 0, i32 6
  %15 = ptrtoint ptr %callback2.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @iso_mc_callback, ptr %callback2.i, align 4
  br label %if.end22

if.else:                                          ; preds = %lor.lhs.false6.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  %device15 = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %16 = ptrtoint ptr %device15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device15, align 4
  %card16 = getelementptr inbounds %struct.fw_device, ptr %17, i32 0, i32 5
  %18 = ptrtoint ptr %card16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %card16, align 4
  %channel18 = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 2
  %20 = ptrtoint ptr %channel18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channel18, align 8
  %speed19 = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 3
  %22 = ptrtoint ptr %speed19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %speed19, align 4
  %header_size20 = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 1
  %24 = ptrtoint ptr %header_size20 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %header_size20, align 4
  %call21 = tail call ptr @fw_iso_context_create(ptr noundef %19, i32 noundef %1, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef nonnull @iso_callback, ptr noundef %client) #12
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then.i, %if.then14.if.end22_crit_edge
  %context.0 = phi ptr [ %call21, %if.else ], [ %call.i, %if.then14.if.end22_crit_edge ], [ %call.i, %if.then.i ]
  %cmp.i = icmp ugt ptr %context.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end26

if.then24:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %26 = ptrtoint ptr %context.0 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end22
  %27 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %client, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %28)
  %cmp27 = icmp ult i32 %28, 5
  br i1 %cmp27, label %if.then28, label %if.end26.if.end29_crit_edge

if.end26.if.end29_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then28:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %drop_overflow_headers = getelementptr inbounds %struct.fw_iso_context, ptr %context.0, i32 0, i32 4
  %29 = ptrtoint ptr %drop_overflow_headers to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 1, ptr %drop_overflow_headers, align 4
  br label %if.end29

if.end29:                                         ; preds = %if.then28, %if.end26.if.end29_crit_edge
  %lock = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %iso_context = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 9
  %30 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iso_context, align 8
  %cmp30.not = icmp eq ptr %31, null
  br i1 %cmp30.not, label %if.end33, label %if.then31

if.then31:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @fw_iso_context_destroy(ptr noundef %context.0) #12
  br label %cleanup

if.end33:                                         ; preds = %if.end29
  %buffer_is_mapped = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 13
  %32 = ptrtoint ptr %buffer_is_mapped to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %buffer_is_mapped, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool34.not = icmp eq i8 %33, 0
  br i1 %tobool34.not, label %if.then35, label %if.end33.if.end45_crit_edge

if.end33.if.end45_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end45

if.then35:                                        ; preds = %if.end33
  %buffer = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 11
  %device36 = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %34 = ptrtoint ptr %device36 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device36, align 4
  %card37 = getelementptr inbounds %struct.fw_device, ptr %35, i32 0, i32 5
  %36 = ptrtoint ptr %card37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %card37, align 4
  %type.i = getelementptr inbounds %struct.fw_iso_context, ptr %context.0, i32 0, i32 1
  %38 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.i87 = icmp eq i32 %39, 0
  %..i = select i1 %cmp.i87, i32 1, i32 2
  %call39 = tail call i32 @fw_iso_buffer_map_dma(ptr noundef %buffer, ptr noundef %37, i32 noundef %..i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %cmp40 = icmp slt i32 %call39, 0
  br i1 %cmp40, label %if.then41, label %if.end43

if.then41:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  tail call void @fw_iso_context_destroy(ptr noundef %context.0) #12
  br label %cleanup

if.end43:                                         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %buffer_is_mapped to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %buffer_is_mapped, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.end43, %if.end33.if.end45_crit_edge
  %closure = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 4
  %41 = ptrtoint ptr %closure to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %closure, align 8
  %iso_closure = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 10
  %43 = ptrtoint ptr %iso_closure to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %42, ptr %iso_closure, align 8
  %44 = ptrtoint ptr %iso_context to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %context.0, ptr %iso_context, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %handle = getelementptr inbounds %struct.fw_cdev_create_iso_context, ptr %arg, i32 0, i32 5
  %45 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %handle, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end45, %if.then41, %if.then31, %if.then24, %lor.lhs.false6.cleanup_crit_edge, %sw.bb2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %26, %if.then24 ], [ -16, %if.then31 ], [ 0, %if.end45 ], [ %call39, %if.then41 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %sw.bb2.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_queue_iso(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %u = alloca %struct.anon.78, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_context = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 9
  %0 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iso_context, align 8
  call void @llvm.lifetime.start.p0(i64 260, ptr nonnull %u) #12
  %2 = call ptr @memset(ptr %u, i32 255, i32 260)
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %handle = getelementptr inbounds %struct.fw_cdev_queue_iso, ptr %arg, i32 0, i32 3
  %3 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1.not = icmp eq i32 %4, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data = getelementptr inbounds %struct.fw_cdev_queue_iso, ptr %arg, i32 0, i32 1
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %data, align 8
  %conv = trunc i64 %6 to i32
  %vm_start = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 12
  %7 = ptrtoint ptr %vm_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %vm_start, align 8
  %sub = sub i32 %conv, %8
  %buffer = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 11
  %page_count = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 11, i32 2
  %9 = ptrtoint ptr %page_count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %page_count, align 8
  %shl = shl i32 %10, 12
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %cmp3 = icmp eq i64 %6, 0
  br i1 %cmp3, label %if.end.if.end13.thread_crit_edge, label %lor.lhs.false5

if.end.if.end13.thread_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.thread

lor.lhs.false5:                                   ; preds = %if.end
  %pages = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pages, align 4
  %cmp7 = icmp ne ptr %12, null
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %shl)
  %cmp10.not = icmp ult i32 %sub, %shl
  %or.cond = select i1 %cmp7, i1 %cmp10.not, i1 false
  br i1 %or.cond, label %if.end13, label %lor.lhs.false5.if.end13.thread_crit_edge

lor.lhs.false5.if.end13.thread_crit_edge:         ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13.thread

if.end13.thread:                                  ; preds = %lor.lhs.false5.if.end13.thread_crit_edge, %if.end.if.end13.thread_crit_edge
  %type241 = getelementptr inbounds %struct.fw_iso_context, ptr %1, i32 0, i32 1
  br label %if.end17

if.end13:                                         ; preds = %lor.lhs.false5
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %cmp14 = icmp ne i32 %14, 2
  %and = and i32 %sub, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond235 = select i1 %cmp14, i1 true, i1 %tobool.not
  br i1 %or.cond235, label %if.end13.if.end17_crit_edge, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.end17:                                         ; preds = %if.end13.if.end17_crit_edge, %if.end13.thread
  %type248 = phi ptr [ %type241, %if.end13.thread ], [ %type, %if.end13.if.end17_crit_edge ]
  %payload.0247 = phi i32 [ 0, %if.end13.thread ], [ %sub, %if.end13.if.end17_crit_edge ]
  %buffer_end.0246 = phi i32 [ 0, %if.end13.thread ], [ %shl, %if.end13.if.end17_crit_edge ]
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %arg, align 8
  %conv.i = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv.i to ptr
  %size = getelementptr inbounds %struct.fw_cdev_queue_iso, ptr %arg, i32 0, i32 2
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 8
  %add.ptr = getelementptr i8, ptr %17, i32 %19
  %cmp18262 = icmp ugt ptr %add.ptr, %17
  br i1 %cmp18262, label %while.body.lr.ph, label %if.end17.while.end_crit_edge

if.end17.while.end_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end17
  %interrupt = getelementptr inbounds %struct.fw_iso_packet, ptr %u, i32 0, i32 1
  %header_size = getelementptr inbounds %struct.fw_iso_context, ptr %1, i32 0, i32 5
  %header117 = getelementptr inbounds %struct.fw_iso_packet, ptr %u, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end160.while.body_crit_edge, %while.body.lr.ph
  %p.0266 = phi ptr [ %17, %while.body.lr.ph ], [ %arrayidx, %if.end160.while.body_crit_edge ]
  %payload.1265 = phi i32 [ %payload.0247, %while.body.lr.ph ], [ %add164, %if.end160.while.body_crit_edge ]
  %transmit_header_bytes.0264 = phi i32 [ 0, %while.body.lr.ph ], [ %transmit_header_bytes.1, %if.end160.while.body_crit_edge ]
  %count.0263 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %if.end160.while.body_crit_edge ]
  call void @__might_fault(ptr noundef nonnull @.str, i32 noundef 1108) #12
  %20 = call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i to ptr
  %cpu_domain.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 4
  %22 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i) #6, !srcloc !48
  %and.i = and i32 %22, -13
  %or.i = or i32 %and.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  %23 = call { i32, i32 } asm sideeffect ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $3,r1; .ifnc $3r1,fpr11; .ifnc $3r1,r11fp; .ifnc $3r1,ipr12; .ifnc $3r1,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__get_user_4", "=&{r0},={r2},{r0},{r1},~{lr},~{cc}"(ptr %p.0266, i32 -1226833921) #12, !srcloc !58
  %asmresult = extractvalue { i32, i32 } %23, 0
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %22) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult)
  %tobool24.not = icmp eq i32 %asmresult, 0
  br i1 %tobool24.not, label %if.end26, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %while.body
  %asmresult22 = extractvalue { i32, i32 } %23, 1
  %conv28 = trunc i32 %asmresult22 to i16
  %24 = ptrtoint ptr %u to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv28, ptr %u, align 4
  %sh.diff = lshr i32 %asmresult22, 1
  %tr.sh.diff = trunc i32 %sh.diff to i16
  %bf.shl = and i16 %tr.sh.diff, -32768
  %sh.diff228 = lshr i32 %asmresult22, 3
  %tr.sh.diff229 = trunc i32 %sh.diff228 to i16
  %bf.shl36 = and i16 %tr.sh.diff229, 16384
  %sh.diff230 = lshr i32 %asmresult22, 6
  %tr.sh.diff231 = trunc i32 %sh.diff230 to i16
  %bf.shl45 = and i16 %tr.sh.diff231, 12288
  %sh.diff232 = lshr i32 %asmresult22, 12
  %tr.sh.diff233 = trunc i32 %sh.diff232 to i16
  %bf.shl54 = and i16 %tr.sh.diff233, 3840
  %shr58 = lshr i32 %asmresult22, 24
  %25 = trunc i32 %shr58 to i16
  %bf.set38 = or i16 %bf.shl36, %25
  %bf.set47 = or i16 %bf.set38, %bf.shl
  %bf.set56 = or i16 %bf.set47, %bf.shl45
  %bf.set64 = or i16 %bf.set56, %bf.shl54
  %26 = ptrtoint ptr %interrupt to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %bf.set64, ptr %interrupt, align 2
  %27 = ptrtoint ptr %type248 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type248, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %28, label %if.end26.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb80
    i32 2, label %sw.bb98
  ]

if.end26.sw.epilog_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end26
  %30 = and i32 %asmresult22, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool72.not = icmp eq i32 %30, 0
  br i1 %tobool72.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb80:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777216, i32 %asmresult22)
  %cmp86 = icmp ult i32 %asmresult22, 16777216
  br i1 %cmp86, label %sw.bb80.cleanup_crit_edge, label %lor.lhs.false88

sw.bb80.cleanup_crit_edge:                        ; preds = %sw.bb80
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false88:                                  ; preds = %sw.bb80
  %31 = ptrtoint ptr %header_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %header_size, align 4
  %rem = urem i32 %shr58, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp94.not = icmp eq i32 %rem, 0
  br i1 %cmp94.not, label %lor.lhs.false88.sw.epilog_crit_edge, label %lor.lhs.false88.cleanup_crit_edge

lor.lhs.false88.cleanup_crit_edge:                ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false88.sw.epilog_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.bb98:                                          ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv28)
  %cmp102 = icmp ne i16 %conv28, 0
  %33 = and i16 %conv28, 3
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %33)
  %tobool109.not = icmp eq i16 %33, 0
  %or.cond236 = and i1 %cmp102, %tobool109.not
  br i1 %or.cond236, label %sw.bb98.sw.epilog_crit_edge, label %sw.bb98.cleanup_crit_edge

sw.bb98.cleanup_crit_edge:                        ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.bb98.sw.epilog_crit_edge:                      ; preds = %sw.bb98
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb98.sw.epilog_crit_edge, %lor.lhs.false88.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %if.end26.sw.epilog_crit_edge
  %transmit_header_bytes.1 = phi i32 [ %transmit_header_bytes.0264, %if.end26.sw.epilog_crit_edge ], [ %transmit_header_bytes.0264, %lor.lhs.false88.sw.epilog_crit_edge ], [ %shr58, %sw.bb.sw.epilog_crit_edge ], [ %transmit_header_bytes.0264, %sw.bb98.sw.epilog_crit_edge ]
  %div234 = lshr i32 %transmit_header_bytes.1, 2
  %arrayidx = getelementptr %struct.fw_cdev_iso_packet, ptr %p.0266, i32 0, i32 1, i32 %div234
  %cmp112 = icmp ugt ptr %arrayidx, %add.ptr
  br i1 %cmp112, label %sw.epilog.cleanup_crit_edge, label %if.end59.i.i

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end59.i.i:                                     ; preds = %sw.epilog
  %header = getelementptr inbounds %struct.fw_cdev_iso_packet, ptr %p.0266, i32 0, i32 1
  call void @__check_object_size(ptr noundef %header117, i32 noundef %transmit_header_bytes.1, i1 noundef zeroext false) #12
  call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #12
  %call.i.i = call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.end59.i.i.if.end.i.i_crit_edge, label %land.lhs.true.i.i

if.end59.i.i.if.end.i.i_crit_edge:                ; preds = %if.end59.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end59.i.i
  %34 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %header, i32 %transmit_header_bytes.1, i32 -1226833920) #16, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %34, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !45

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %header117, i32 noundef %transmit_header_bytes.1) #12
  %35 = call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i.i.i.i.i = and i32 %35, -16384
  %36 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %36, i32 0, i32 4
  %37 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !48
  %and.i.i.i.i = and i32 %37, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef %header117, ptr noundef %header, i32 noundef %transmit_header_bytes.1) #12
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %37) #12, !srcloc !49
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end59.i.i.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %transmit_header_bytes.1, %if.end59.i.i.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %transmit_header_bytes.1, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end123, label %if.then11.i.i, !prof !45

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %transmit_header_bytes.1, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %header117, i32 %sub.i.i
  %38 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end123:                                        ; preds = %if.end.i.i
  %39 = ptrtoint ptr %interrupt to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load126 = load i16, ptr %interrupt, align 2
  %40 = and i16 %bf.load126, 16384
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %tobool129.not = icmp eq i16 %40, 0
  br i1 %tobool129.not, label %if.end123.if.end146_crit_edge, label %land.lhs.true130

if.end123.if.end146_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

land.lhs.true130:                                 ; preds = %if.end123
  %41 = ptrtoint ptr %type248 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %type248, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp132 = icmp eq i32 %42, 0
  br i1 %cmp132, label %land.lhs.true134, label %land.lhs.true130.if.end146_crit_edge

land.lhs.true130.if.end146_crit_edge:             ; preds = %land.lhs.true130
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

land.lhs.true134:                                 ; preds = %land.lhs.true130
  %bf.clear138 = and i16 %bf.load126, 255
  %bf.cast139 = zext i16 %bf.clear138 to i32
  %43 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %u, align 4
  %conv142 = zext i16 %44 to i32
  %add = sub nsw i32 0, %conv142
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast139, i32 %add)
  %cmp143.not = icmp eq i32 %bf.cast139, %add
  br i1 %cmp143.not, label %land.lhs.true134.if.end146_crit_edge, label %land.lhs.true134.cleanup_crit_edge

land.lhs.true134.cleanup_crit_edge:               ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true134.if.end146_crit_edge:             ; preds = %land.lhs.true134
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146

if.end146:                                        ; preds = %land.lhs.true134.if.end146_crit_edge, %land.lhs.true130.if.end146_crit_edge, %if.end123.if.end146_crit_edge
  %45 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %u, align 4
  %conv149 = zext i16 %46 to i32
  %add150 = add i32 %payload.1265, %conv149
  call void @__sanitizer_cov_trace_cmp4(i32 %add150, i32 %buffer_end.0246)
  %cmp151 = icmp ugt i32 %add150, %buffer_end.0246
  br i1 %cmp151, label %if.end146.cleanup_crit_edge, label %if.end154

if.end146.cleanup_crit_edge:                      ; preds = %if.end146
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end154:                                        ; preds = %if.end146
  %call157 = call i32 @fw_iso_context_queue(ptr noundef nonnull %1, ptr noundef nonnull %u, ptr noundef %buffer, i32 noundef %payload.1265) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %if.end160, label %if.end154.while.end_crit_edge

if.end154.while.end_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end160:                                        ; preds = %if.end154
  %47 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %u, align 4
  %conv163 = zext i16 %48 to i32
  %add164 = add i32 %payload.1265, %conv163
  %inc = add i32 %count.0263, 1
  %cmp18 = icmp ult ptr %arrayidx, %add.ptr
  br i1 %cmp18, label %if.end160.while.body_crit_edge, label %if.end160.while.end_crit_edge

if.end160.while.end_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

if.end160.while.body_crit_edge:                   ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.end:                                        ; preds = %if.end160.while.end_crit_edge, %if.end154.while.end_crit_edge, %if.end17.while.end_crit_edge
  %count.0.lcssa = phi i32 [ 0, %if.end17.while.end_crit_edge ], [ %count.0263, %if.end154.while.end_crit_edge ], [ %inc, %if.end160.while.end_crit_edge ]
  %payload.1.lcssa = phi i32 [ %payload.0247, %if.end17.while.end_crit_edge ], [ %payload.1265, %if.end154.while.end_crit_edge ], [ %add164, %if.end160.while.end_crit_edge ]
  %p.0.lcssa = phi ptr [ %17, %if.end17.while.end_crit_edge ], [ %p.0266, %if.end154.while.end_crit_edge ], [ %arrayidx, %if.end160.while.end_crit_edge ]
  call void @fw_iso_context_queue_flush(ptr noundef nonnull %1) #12
  %49 = ptrtoint ptr %p.0.lcssa to i32
  %conv.i237 = zext i32 %49 to i64
  %50 = ptrtoint ptr %arg to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %arg, align 8
  %52 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %size, align 8
  %54 = trunc i64 %51 to i32
  %55 = sub i32 %54, %49
  %conv171 = add i32 %55, %53
  store i32 %conv171, ptr %size, align 8
  store i64 %conv.i237, ptr %arg, align 8
  %56 = ptrtoint ptr %vm_start to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %vm_start, align 8
  %add175 = add i32 %57, %payload.1.lcssa
  %conv176 = zext i32 %add175 to i64
  %58 = ptrtoint ptr %data to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 %conv176, ptr %data, align 8
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end146.cleanup_crit_edge, %land.lhs.true134.cleanup_crit_edge, %if.then11.i.i, %sw.epilog.cleanup_crit_edge, %sw.bb98.cleanup_crit_edge, %lor.lhs.false88.cleanup_crit_edge, %sw.bb80.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count.0.lcssa, %while.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end13.cleanup_crit_edge ], [ -14, %if.then11.i.i ], [ -22, %if.end146.cleanup_crit_edge ], [ -22, %land.lhs.true134.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %sw.bb98.cleanup_crit_edge ], [ -22, %sw.bb80.cleanup_crit_edge ], [ -22, %lor.lhs.false88.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -14, %while.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 260, ptr nonnull %u) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_start_iso(ptr nocapture noundef readonly %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_context = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 9
  %0 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iso_context, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %handle = getelementptr inbounds %struct.fw_cdev_start_iso, ptr %arg, i32 0, i32 3
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %type = getelementptr inbounds %struct.fw_iso_context, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp3 = icmp eq i32 %5, 1
  br i1 %cmp3, label %land.lhs.true, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

land.lhs.true:                                    ; preds = %if.end
  %tags = getelementptr inbounds %struct.fw_cdev_start_iso, ptr %arg, i32 0, i32 2
  %6 = ptrtoint ptr %tags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tags, align 4
  %8 = add i32 %7, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -15, i32 %8)
  %9 = icmp ult i32 %8, -15
  br i1 %9, label %land.lhs.true.cleanup_crit_edge, label %lor.lhs.false8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false8:                                   ; preds = %land.lhs.true
  %sync = getelementptr inbounds %struct.fw_cdev_start_iso, ptr %arg, i32 0, i32 1
  %10 = ptrtoint ptr %sync to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sync, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp9 = icmp ugt i32 %11, 15
  br i1 %cmp9, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false8.if.end11_crit_edge

lor.lhs.false8.if.end11_crit_edge:                ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end11

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11:                                         ; preds = %lor.lhs.false8.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %12 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arg, align 4
  %sync13 = getelementptr inbounds %struct.fw_cdev_start_iso, ptr %arg, i32 0, i32 1
  %14 = ptrtoint ptr %sync13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sync13, align 4
  %tags14 = getelementptr inbounds %struct.fw_cdev_start_iso, ptr %arg, i32 0, i32 2
  %16 = ptrtoint ptr %tags14 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tags14, align 4
  %call = tail call i32 @fw_iso_context_start(ptr noundef nonnull %1, i32 noundef %13, i32 noundef %15, i32 noundef %17) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %lor.lhs.false8.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end11 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_stop_iso(ptr nocapture noundef readonly %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_context = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 9
  %0 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iso_context, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @fw_iso_context_stop(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_get_cycle_timer(ptr nocapture noundef readonly %client, ptr nocapture noundef writeonly %arg) #0 align 64 {
entry:
  %ct2 = alloca %struct.fw_cdev_get_cycle_timer2, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %ct2) #12
  %0 = call ptr @memset(ptr %ct2, i32 255, i32 24)
  %clk_id = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, ptr %ct2, i32 0, i32 2
  %1 = ptrtoint ptr %clk_id to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %clk_id, align 4
  %call = call i32 @ioctl_get_cycle_timer2(ptr noundef %client, ptr noundef nonnull %ct2)
  %2 = ptrtoint ptr %ct2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %ct2, align 8
  %mul = mul i64 %3, 1000000
  %tv_nsec = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, ptr %ct2, i32 0, i32 1
  %4 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tv_nsec, align 8
  %div = sdiv i32 %5, 1000
  %conv = sext i32 %div to i64
  %add = add i64 %mul, %conv
  %6 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %add, ptr %arg, align 8
  %cycle_timer = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, ptr %ct2, i32 0, i32 3
  %7 = ptrtoint ptr %cycle_timer to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cycle_timer, align 8
  %cycle_timer1 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer, ptr %arg, i32 0, i32 1
  %9 = ptrtoint ptr %cycle_timer1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %cycle_timer1, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %ct2) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_allocate_iso_resource(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_iso_resource(ptr noundef %client, ptr noundef %arg, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_deallocate_iso_resource(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 8
  %call = tail call fastcc i32 @release_client_resource(ptr noundef %client, i32 noundef %1, ptr noundef nonnull @release_iso_resource, ptr noundef null)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_allocate_iso_resource_once(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_iso_resource(ptr noundef %client, ptr noundef %arg, i32 noundef 3)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_deallocate_iso_resource_once(ptr noundef %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @init_iso_resource(ptr noundef %client, ptr noundef %arg, i32 noundef 4)
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ioctl_get_speed(ptr nocapture noundef readonly %client, ptr nocapture noundef readnone %arg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %max_speed = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %max_speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_speed, align 8
  ret i32 %3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_send_broadcast_request(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arg, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %switch = icmp ult i32 %1, 2
  br i1 %switch, label %sw.epilog, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  %offset = getelementptr inbounds %struct.fw_cdev_send_request, ptr %arg, i32 0, i32 2
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %offset, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 281474708277248, i64 %3)
  %cmp = icmp ult i64 %3, 281474708277248
  br i1 %cmp, label %sw.epilog.cleanup_crit_edge, label %if.end

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call fastcc i32 @init_request(ptr noundef %client, ptr noundef %arg, i32 noundef 65535, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ], [ -13, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_send_stream_packet(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  %request = alloca %struct.fw_cdev_send_request, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %request) #12
  %0 = getelementptr inbounds i8, ptr %request, i32 8
  %1 = call ptr @memset(ptr %0, i32 255, i32 32)
  %speed = getelementptr inbounds %struct.fw_cdev_send_stream_packet, ptr %arg, i32 0, i32 7
  %2 = ptrtoint ptr %speed to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %speed, align 4
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card, align 4
  %link_speed = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 16
  %8 = ptrtoint ptr %link_speed to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %link_speed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %9)
  %cmp = icmp ugt i32 %3, %9
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %10 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arg, align 8
  %shl = shl i32 1024, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shl)
  %cmp2 = icmp ugt i32 %11, %shl
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tag = getelementptr inbounds %struct.fw_cdev_send_stream_packet, ptr %arg, i32 0, i32 1
  %12 = ptrtoint ptr %tag to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %13)
  %cmp3 = icmp ugt i32 %13, 3
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %channel = getelementptr inbounds %struct.fw_cdev_send_stream_packet, ptr %arg, i32 0, i32 2
  %14 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %channel, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %15)
  %cmp5 = icmp ugt i32 %15, 63
  br i1 %cmp5, label %lor.lhs.false4.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false4
  %sy = getelementptr inbounds %struct.fw_cdev_send_stream_packet, ptr %arg, i32 0, i32 3
  %16 = ptrtoint ptr %sy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sy, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %17)
  %cmp7 = icmp ugt i32 %17, 15
  br i1 %cmp7, label %lor.lhs.false6.cleanup_crit_edge, label %if.end9

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #14
  %shl.i = shl nuw nsw i32 %13, 14
  %shl1.i = shl nuw nsw i32 %15, 8
  %or.i = or i32 %shl1.i, %shl.i
  %or2.i = or i32 %or.i, %17
  %18 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 10, ptr %request, align 8
  %length14 = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 1
  %19 = ptrtoint ptr %length14 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %11, ptr %length14, align 4
  %closure = getelementptr inbounds %struct.fw_cdev_send_stream_packet, ptr %arg, i32 0, i32 4
  %20 = ptrtoint ptr %closure to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %closure, align 8
  %closure15 = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 3
  %22 = ptrtoint ptr %closure15 to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %closure15, align 8
  %data = getelementptr inbounds %struct.fw_cdev_send_stream_packet, ptr %arg, i32 0, i32 5
  %23 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %data, align 8
  %data16 = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 4
  %25 = ptrtoint ptr %data16 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %data16, align 8
  %generation = getelementptr inbounds %struct.fw_cdev_send_stream_packet, ptr %arg, i32 0, i32 6
  %26 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %generation, align 8
  %generation17 = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 5
  %28 = ptrtoint ptr %generation17 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %generation17, align 8
  %call19 = call fastcc i32 @init_request(ptr noundef %client, ptr noundef nonnull %request, i32 noundef %or2.i, i32 noundef %3)
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call19, %if.end9 ], [ -5, %lor.lhs.false.cleanup_crit_edge ], [ -5, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %request) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_get_cycle_timer2(ptr nocapture noundef readonly %client, ptr nocapture noundef %arg) #0 align 64 {
entry:
  %ts = alloca %struct.timespec64, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %card1 = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %ts) #12
  %4 = call ptr @memset(ptr %ts, i32 0, i32 16)
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #12, !srcloc !59
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #12, !srcloc !60
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @trace_hardirqs_off() #12
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 8
  %read_csr = getelementptr inbounds %struct.fw_card_driver, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %read_csr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %read_csr, align 4
  %call3 = tail call i32 %9(ptr noundef %3, i32 noundef 512) #12
  %clk_id = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, ptr %arg, i32 0, i32 2
  %10 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %clk_id, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %11, label %if.end.do.body6_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb4
    i32 4, label %sw.bb5
  ]

if.end.do.body6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body6

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @ktime_get_real_ts64(ptr noundef nonnull %ts) #12
  br label %do.body6

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @ktime_get_ts64(ptr noundef nonnull %ts) #12
  br label %do.body6

sw.bb5:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @ktime_get_raw_ts64(ptr noundef nonnull %ts) #12
  br label %do.body6

do.body6:                                         ; preds = %sw.bb5, %sw.bb4, %sw.bb, %if.end.do.body6_crit_edge
  %ret.0 = phi i32 [ 0, %sw.bb5 ], [ 0, %sw.bb4 ], [ 0, %sw.bb ], [ -22, %if.end.do.body6_crit_edge ]
  call void @trace_hardirqs_on() #12
  call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #12, !srcloc !61
  %13 = ptrtoint ptr %ts to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %ts, align 8
  %15 = ptrtoint ptr %arg to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %14, ptr %arg, align 8
  %tv_nsec = getelementptr inbounds %struct.timespec64, ptr %ts, i32 0, i32 1
  %16 = ptrtoint ptr %tv_nsec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tv_nsec, align 8
  %tv_nsec10 = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, ptr %arg, i32 0, i32 1
  %18 = ptrtoint ptr %tv_nsec10 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %tv_nsec10, align 8
  %cycle_timer = getelementptr inbounds %struct.fw_cdev_get_cycle_timer2, ptr %arg, i32 0, i32 3
  %19 = ptrtoint ptr %cycle_timer to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call3, ptr %cycle_timer, align 8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %ts) #12
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_send_phy_packet(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %card1 = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %card1, align 4
  %is_local = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %is_local to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load = load i16, ptr %is_local, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 124) #15
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %kref.i = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.end4
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %7 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %7)
  %.not.i.i.i.i.i = icmp sgt i32 %7, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.client_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.client_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.end4.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %client_get.exit

client_get.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.client_get.exit_crit_edge
  %client5 = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %client5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client5, align 8
  %p = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %p to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %p, align 4
  %generation = getelementptr inbounds %struct.fw_cdev_send_phy_packet, ptr %arg, i32 0, i32 2
  %10 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %generation, align 8
  %generation7 = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %generation7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %generation7, align 8
  %header = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %header to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 224, ptr %header, align 4
  %data = getelementptr inbounds %struct.fw_cdev_send_phy_packet, ptr %arg, i32 0, i32 1
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 8
  %arrayidx12 = getelementptr %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx12, align 8
  %arrayidx14 = getelementptr %struct.fw_cdev_send_phy_packet, ptr %arg, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx14, align 4
  %arrayidx17 = getelementptr %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 2, i32 2, i32 2
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx17, align 4
  %header_length = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 2, i32 3
  %20 = ptrtoint ptr %header_length to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 12, ptr %header_length, align 4
  %callback = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 2, i32 9
  %21 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @outbound_phy_packet_callback, ptr %callback, align 4
  %22 = ptrtoint ptr %arg to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %arg, align 8
  %phy_packet = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 3
  %24 = ptrtoint ptr %phy_packet to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %23, ptr %phy_packet, align 8
  %type = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 3, i32 1
  %25 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 7, ptr %type, align 8
  %and.i = and i32 %15, -1056964609
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i = icmp eq i32 %and.i, 0
  br i1 %cmp.i, label %is_ping_packet.exit, label %client_get.exit.if.end26_crit_edge

client_get.exit.if.end26_crit_edge:               ; preds = %client_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

is_ping_packet.exit:                              ; preds = %client_get.exit
  %neg.i = xor i32 %15, -1
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %neg.i)
  %cmp3.i = icmp eq i32 %27, %neg.i
  br i1 %cmp3.i, label %if.then24, label %is_ping_packet.exit.if.end26_crit_edge

is_ping_packet.exit.if.end26_crit_edge:           ; preds = %is_ping_packet.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end26

if.then24:                                        ; preds = %is_ping_packet.exit
  call void @__sanitizer_cov_trace_pc() #14
  %length = getelementptr inbounds %struct.outbound_phy_packet_event, ptr %call7.i.i, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %length to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 4, ptr %length, align 8
  br label %if.end26

if.end26:                                         ; preds = %if.then24, %is_ping_packet.exit.if.end26_crit_edge, %client_get.exit.if.end26_crit_edge
  %29 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %3, align 8
  %send_request = getelementptr inbounds %struct.fw_card_driver, ptr %30, i32 0, i32 4
  %31 = ptrtoint ptr %send_request to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %send_request, align 4
  tail call void %32(ptr noundef %3, ptr noundef %p) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -38, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_receive_phy_packets(ptr noundef %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %0 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %device, align 4
  %is_local = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %is_local to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load = load i16, ptr %is_local, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load)
  %tobool.not = icmp sgt i16 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %card1 = getelementptr inbounds %struct.fw_device, ptr %1, i32 0, i32 5
  %3 = ptrtoint ptr %card1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %card1, align 4
  %lock = getelementptr inbounds %struct.fw_card, ptr %4, i32 0, i32 18
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %phy_receiver_link = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 14
  %phy_receiver_list = getelementptr inbounds %struct.fw_card, ptr %4, i32 0, i32 27
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %phy_receiver_link) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.end.__list_del_entry.exit.i_crit_edge

if.end.__list_del_entry.exit.i_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 14, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %phy_receiver_link to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy_receiver_link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr inbounds %struct.fw_card, ptr %4, i32 0, i32 27, i32 1
  %11 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %phy_receiver_link, ptr noundef %12, ptr noundef %phy_receiver_list) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %phy_receiver_link, ptr %prev.i2.i, align 4
  %14 = ptrtoint ptr %phy_receiver_link to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %phy_receiver_list, ptr %phy_receiver_link, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 14, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %phy_receiver_link, ptr %12, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %17 = ptrtoint ptr %arg to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %arg, align 8
  %phy_receiver_closure = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 15
  %19 = ptrtoint ptr %phy_receiver_closure to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %18, ptr %phy_receiver_closure, align 8
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

cleanup:                                          ; preds = %list_move_tail.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_move_tail.exit ], [ -38, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_set_iso_channels(ptr nocapture noundef readonly %client, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_context = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 9
  %0 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iso_context, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %handle = getelementptr inbounds %struct.fw_cdev_set_iso_channels, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @fw_iso_context_set_channels(ptr noundef nonnull %1, ptr noundef %arg) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ioctl_flush_iso(ptr nocapture noundef readonly %client, ptr nocapture noundef readonly %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %iso_context = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 9
  %0 = ptrtoint ptr %iso_context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iso_context, align 8
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @fw_iso_context_flush_completions(ptr noundef nonnull %1) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @down_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @up_read(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_request(ptr noundef %client, ptr nocapture noundef readonly %request, i32 noundef %destination_id, i32 noundef %speed) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %request, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %1)
  %cmp.not = icmp eq i32 %1, 10
  br i1 %cmp.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %length = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 1
  %2 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %3)
  %cmp1 = icmp ugt i32 %3, 4096
  %shl = shl i32 512, %speed
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %shl)
  %cmp3 = icmp ugt i32 %3, %shl
  %or.cond = select i1 %cmp1, i1 true, i1 %cmp3
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp5 = icmp eq i32 %1, 0
  br i1 %cmp5, label %land.lhs.true6, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true6:                                   ; preds = %if.end
  %4 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %5)
  %cmp8 = icmp ult i32 %5, 4
  br i1 %cmp8, label %land.lhs.true6.cleanup_crit_edge, label %land.lhs.true6.if.end10_crit_edge

land.lhs.true6.if.end10_crit_edge:                ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true6.cleanup_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true6.if.end10_crit_edge, %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %length11 = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 1
  %6 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length11, align 4
  %add = add i32 %7, 208
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #17
  %cmp12 = icmp eq ptr %call9.i, null
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %client15 = getelementptr inbounds %struct.outbound_transaction_event, ptr %call9.i, i32 0, i32 1
  %8 = ptrtoint ptr %client15 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %client, ptr %client15, align 8
  %9 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length11, align 4
  %response = getelementptr inbounds %struct.outbound_transaction_event, ptr %call9.i, i32 0, i32 3
  %length17 = getelementptr inbounds %struct.outbound_transaction_event, ptr %call9.i, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %length17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %length17, align 8
  %closure = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 3
  %12 = ptrtoint ptr %closure to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %closure, align 8
  %14 = ptrtoint ptr %response to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %response, align 8
  %data = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 4
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %data, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %16)
  %tobool.not = icmp eq i64 %16, 0
  br i1 %tobool.not, label %if.end14.if.end29_crit_edge, label %land.lhs.true20

if.end14.if.end29_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.lhs.true20:                                  ; preds = %if.end14
  %data22 = getelementptr inbounds %struct.outbound_transaction_event, ptr %call9.i, i32 0, i32 3, i32 4
  %conv.i = trunc i64 %16 to i32
  %17 = inttoptr i32 %conv.i to ptr
  %18 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %length11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp9.i.i = icmp slt i32 %19, 0
  br i1 %cmp9.i.i, label %land.rhs16.i.i, label %if.then.i.i.i

land.rhs16.i.i:                                   ; preds = %land.lhs.true20
  %.b71.i.i = load i1, ptr @check_copy_size.__already_done, align 1
  br i1 %.b71.i.i, label %land.rhs16.i.i.failed_crit_edge, label %if.then27.i.i, !prof !45

land.rhs16.i.i.failed_crit_edge:                  ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

if.then27.i.i:                                    ; preds = %land.rhs16.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @check_copy_size.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 230, i32 noundef 9, ptr noundef null) #12
  br label %failed

if.then.i.i.i:                                    ; preds = %land.lhs.true20
  tail call void @__check_object_size(ptr noundef %data22, i32 noundef %19, i1 noundef zeroext false) #12
  tail call void @__might_fault(ptr noundef nonnull @.str.3, i32 noundef 156) #12
  %call.i.i = tail call zeroext i1 @should_fail_usercopy() #12
  br i1 %call.i.i, label %if.then.i.i.i.if.end.i.i75_crit_edge, label %land.lhs.true.i.i

if.then.i.i.i.if.end.i.i75_crit_edge:             ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i75

land.lhs.true.i.i:                                ; preds = %if.then.i.i.i
  %20 = tail call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %17, i32 %19, i32 -1226833920) #16, !srcloc !47
  %asmresult.i.i = extractvalue { i32, i32 } %20, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i75_crit_edge, !prof !45

land.lhs.true.i.i.if.end.i.i75_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i.i75

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %data22, i32 noundef %19) #12
  %21 = tail call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i.i.i.i.i = and i32 %21, -16384
  %22 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %22, i32 0, i32 4
  %23 = tail call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #6, !srcloc !48
  %and.i.i.i.i = and i32 %23, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #12, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  %call1.i.i.i = tail call i32 @arm_copy_from_user(ptr noundef %data22, ptr noundef %17, i32 noundef %19) #12
  tail call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %23) #12, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #12, !srcloc !50
  br label %if.end.i.i75

if.end.i.i75:                                     ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i75_crit_edge, %if.then.i.i.i.if.end.i.i75_crit_edge
  %res.0.i.i = phi i32 [ %19, %if.then.i.i.i.if.end.i.i75_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %19, %land.lhs.true.i.i.if.end.i.i75_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end.i.i75.if.end29_crit_edge, label %if.then11.i.i, !prof !45

if.end.i.i75.if.end29_crit_edge:                  ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then11.i.i:                                    ; preds = %if.end.i.i75
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i.i = sub i32 %19, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %data22, i32 %sub.i.i
  %24 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %failed

if.end29:                                         ; preds = %if.end.i.i75.if.end29_crit_edge, %if.end14.if.end29_crit_edge
  %r = getelementptr inbounds %struct.outbound_transaction_event, ptr %call9.i, i32 0, i32 2
  %25 = ptrtoint ptr %r to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @release_transaction, ptr %r, align 4
  %call32 = tail call fastcc i32 @add_client_resource(ptr noundef %client, ptr noundef %r, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %if.end29.failed_crit_edge, label %if.end35

if.end29.failed_crit_edge:                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

if.end35:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  %device = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 1
  %26 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %27, i32 0, i32 5
  %28 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %card, align 4
  %transaction = getelementptr inbounds %struct.outbound_transaction_event, ptr %call9.i, i32 0, i32 2, i32 1
  %30 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %request, align 8
  %generation = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 5
  %32 = ptrtoint ptr %generation to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %generation, align 8
  %offset = getelementptr inbounds %struct.fw_cdev_send_request, ptr %request, i32 0, i32 2
  %34 = ptrtoint ptr %offset to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %offset, align 8
  %data39 = getelementptr inbounds %struct.outbound_transaction_event, ptr %call9.i, i32 0, i32 3, i32 4
  %36 = ptrtoint ptr %length11 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %length11, align 4
  tail call void @fw_send_request(ptr noundef %29, ptr noundef %transaction, i32 noundef %31, i32 noundef %destination_id, i32 noundef %33, i32 noundef %speed, i64 noundef %35, ptr noundef %data39, i32 noundef %37, ptr noundef nonnull @complete_transaction, ptr noundef nonnull %call9.i) #12
  br label %cleanup

failed:                                           ; preds = %if.end29.failed_crit_edge, %if.then11.i.i, %if.then27.i.i, %land.rhs16.i.i.failed_crit_edge
  %ret.0 = phi i32 [ %call32, %if.end29.failed_crit_edge ], [ -14, %if.then11.i.i ], [ -14, %if.then27.i.i ], [ -14, %land.rhs16.i.i.failed_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %cleanup

cleanup:                                          ; preds = %failed, %if.end35, %if.end10.cleanup_crit_edge, %land.lhs.true6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %failed ], [ 0, %if.end35 ], [ -5, %land.lhs.true.cleanup_crit_edge ], [ -22, %land.lhs.true6.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @release_transaction(ptr nocapture noundef %client, ptr nocapture noundef %resource) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @add_client_resource(ptr noundef %client, ptr noundef %resource, i32 noundef %gfp_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %gfp_mask, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %entry.do.body1_crit_edge, label %if.then

entry.do.body1_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @idr_preload(i32 noundef %gfp_mask) #12
  br label %do.body1

do.body1:                                         ; preds = %if.then, %entry.do.body1_crit_edge
  %lock = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 2
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %in_shutdown = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_shutdown, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool6.not = icmp eq i8 %1, 0
  br i1 %tobool6.not, label %if.end9, label %do.body1.if.end13_crit_edge

do.body1.if.end13_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.end9:                                          ; preds = %do.body1
  %resource_idr = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 4
  %call8 = tail call i32 @idr_alloc(ptr noundef %resource_idr, ptr noundef %resource, i32 noundef 0, i32 noundef 0, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call8)
  %cmp10 = icmp sgt i32 %call8, -1
  br i1 %cmp10, label %if.then12, label %if.end9.if.end13_crit_edge

if.end9.if.end13_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then12:                                        ; preds = %if.end9
  %handle = getelementptr inbounds %struct.client_resource, ptr %resource, i32 0, i32 1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call8, ptr %handle, align 4
  %kref.i = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %3 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %3, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %if.then12.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

if.then12.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %if.then12
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %4 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %.not.i.i.i.i.i = icmp sgt i32 %4, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.client_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.client_get.exit_crit_edge:      ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %if.then12.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %if.then12.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %client_get.exit

client_get.exit:                                  ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.client_get.exit_crit_edge
  %5 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %resource, align 4
  %cmp.i = icmp eq ptr %6, @release_iso_resource
  br i1 %cmp.i, label %if.then.i, label %client_get.exit.if.end13_crit_edge

client_get.exit.if.end13_crit_edge:               ; preds = %client_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end13

if.then.i:                                        ; preds = %client_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @schedule_iso_resource(ptr noundef %resource, i32 noundef 0) #12
  br label %if.end13

if.end13:                                         ; preds = %if.then.i, %client_get.exit.if.end13_crit_edge, %if.end9.if.end13_crit_edge, %do.body1.if.end13_crit_edge
  %ret.033 = phi i32 [ %call8, %if.end9.if.end13_crit_edge ], [ %call8, %client_get.exit.if.end13_crit_edge ], [ %call8, %if.then.i ], [ -125, %do.body1.if.end13_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  br i1 %tobool.i.not, label %if.end13.if.end17_crit_edge, label %if.then16

if.end13.if.end17_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end17

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %7 = tail call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %12, ptrtoint (ptr @radix_tree_preloads to i32)
  %13 = inttoptr i32 %add.i to ptr
  tail call fastcc void @local_lock_release(ptr noundef %13) #12
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !62
  %14 = tail call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end13.if.end17_crit_edge
  %18 = tail call i32 @llvm.smin.i32(i32 %ret.033, i32 0)
  ret i32 %18
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @complete_transaction(ptr nocapture noundef readnone %card, i32 noundef %rcode, ptr nocapture noundef readonly %payload, i32 noundef %length, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %response = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 3
  %client1 = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 8
  %length2 = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %length2, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %length)
  %cmp = icmp ugt i32 %3, %length
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %length2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %length, ptr %length2, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rcode)
  %cmp4 = icmp eq i32 %rcode, 0
  br i1 %cmp4, label %if.then5, label %if.end.do.body9_crit_edge

if.end.do.body9_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %data6 = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 3, i32 4
  %5 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %length2, align 8
  %7 = call ptr @memcpy(ptr %data6, ptr %payload, i32 %6)
  br label %do.body9

do.body9:                                         ; preds = %if.then5, %if.end.do.body9_crit_edge
  %lock = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %resource_idr = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 4
  %handle = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 2, i32 0, i32 1
  %8 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %handle, align 4
  %call14 = tail call ptr @idr_remove(ptr noundef %resource_idr, i32 noundef %9) #12
  %in_shutdown = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_shutdown, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %do.body9.if.end16_crit_edge, label %if.then15

do.body9.if.end16_crit_edge:                      ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #14
  %tx_flush_wait = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 7
  tail call void @__wake_up(ptr noundef %tx_flush_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #12
  br label %if.end16

if.end16:                                         ; preds = %if.then15, %do.body9.if.end16_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #12
  %type = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %type, align 8
  %rcode18 = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 3, i32 2
  %13 = ptrtoint ptr %rcode18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %rcode, ptr %rcode18, align 4
  %14 = ptrtoint ptr %length2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp20 = icmp ult i32 %15, 5
  br i1 %cmp20, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end16
  %data23 = getelementptr inbounds %struct.outbound_transaction_event, ptr %data, i32 0, i32 3, i32 4
  %16 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %response, ptr %data, align 4
  %size.i = getelementptr inbounds %struct.anon.74, ptr %data, i32 0, i32 1
  %17 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 24, ptr %size.i, align 4
  %arrayidx4.i = getelementptr [2 x %struct.anon.74], ptr %data, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %data23, ptr %arrayidx4.i, align 4
  %size8.i = getelementptr [2 x %struct.anon.74], ptr %data, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %15, ptr %size8.i, align 4
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %20 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %in_shutdown, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool.not.i = icmp eq i8 %21, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %data) #12
  br label %if.end28

if.else.i:                                        ; preds = %if.then22
  %link.i = getelementptr inbounds %struct.event, ptr %data, i32 0, i32 1
  %event_list.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5, i32 1
  %22 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %23, ptr noundef %event_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.if.end28_crit_edge

if.else.i.if.end28_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %link.i, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %event_list.i, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.event, ptr %data, i32 0, i32 1, i32 1
  %26 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %link.i, ptr %23, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end16
  %add = add i32 %15, 24
  %28 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %response, ptr %data, align 4
  %size.i53 = getelementptr inbounds %struct.anon.74, ptr %data, i32 0, i32 1
  %29 = ptrtoint ptr %size.i53 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add, ptr %size.i53, align 4
  %arrayidx4.i54 = getelementptr [2 x %struct.anon.74], ptr %data, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx4.i54 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %arrayidx4.i54, align 4
  %size8.i55 = getelementptr [2 x %struct.anon.74], ptr %data, i32 0, i32 1, i32 1
  %31 = ptrtoint ptr %size8.i55 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %size8.i55, align 4
  %call10.i57 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %32 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %in_shutdown, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i59 = icmp eq i8 %33, 0
  br i1 %tobool.not.i59, label %if.else.i65, label %if.then.i60

if.then.i60:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %data) #12
  br label %if.end28

if.else.i65:                                      ; preds = %if.else
  %link.i61 = getelementptr inbounds %struct.event, ptr %data, i32 0, i32 1
  %event_list.i62 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5
  %prev.i.i63 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5, i32 1
  %34 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i63, align 4
  %call.i.i.i64 = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i61, ptr noundef %35, ptr noundef %event_list.i62) #12
  br i1 %call.i.i.i64, label %if.end.i.i.i67, label %if.else.i65.if.end28_crit_edge

if.else.i65.if.end28_crit_edge:                   ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end28

if.end.i.i.i67:                                   ; preds = %if.else.i65
  call void @__sanitizer_cov_trace_pc() #14
  %36 = ptrtoint ptr %prev.i.i63 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %link.i61, ptr %prev.i.i63, align 4
  %37 = ptrtoint ptr %link.i61 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %event_list.i62, ptr %link.i61, align 4
  %prev3.i.i.i66 = getelementptr inbounds %struct.event, ptr %data, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i66 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i66, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %link.i61, ptr %35, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.end.i.i.i67, %if.else.i65.if.end28_crit_edge, %if.then.i60, %if.end.i.i.i, %if.else.i.if.end28_crit_edge, %if.then.i
  %call10.i57.sink = phi i32 [ %call10.i, %if.then.i ], [ %call10.i, %if.else.i.if.end28_crit_edge ], [ %call10.i, %if.end.i.i.i ], [ %call10.i57, %if.then.i60 ], [ %call10.i57, %if.else.i65.if.end28_crit_edge ], [ %call10.i57, %if.end.i.i.i67 ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10.i57.sink) #12
  %wait.i68 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait.i68, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %kref.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %40 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %40, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.client_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.client_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %client_put.exit

if.then.i.i:                                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %device.i.i = getelementptr %struct.client, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %device.i.i, align 4
  %device1.i.i.i = getelementptr inbounds %struct.fw_device, ptr %42, i32 0, i32 6
  tail call void @put_device(ptr noundef %device1.i.i.i) #12
  tail call void @kfree(ptr noundef %1) #12
  br label %client_put.exit

client_put.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.client_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_preload(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_lock_release(ptr noundef %l) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @oops_in_progress to i32))
  %0 = load i32, ptr @oops_in_progress, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end35_crit_edge

entry.if.end35_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true:                                    ; preds = %entry
  %owner = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %1 = ptrtoint ptr %owner to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %owner, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !34) #12
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %task = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %task to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %task, align 8
  %cmp.not = icmp eq ptr %2, %6
  br i1 %cmp.not, label %land.lhs.true.if.end35_crit_edge, label %do.end, !prof !45

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end:                                           ; preds = %land.lhs.true
  %call3 = tail call i32 @debug_locks_off() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %do.end.if.end35_crit_edge, label %land.lhs.true5

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

land.lhs.true5:                                   ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks_silent to i32))
  %7 = load i32, ptr @debug_locks_silent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %do.end19, label %land.lhs.true5.if.end35_crit_edge

land.lhs.true5.if.end35_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

do.end19:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 36, i32 noundef 9, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6) #12
  br label %if.end35

if.end35:                                         ; preds = %do.end19, %land.lhs.true5.if.end35_crit_edge, %do.end.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %entry.if.end35_crit_edge
  %owner37 = getelementptr inbounds %struct.local_lock_t, ptr %l, i32 0, i32 1
  %8 = ptrtoint ptr %owner37 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %owner37, align 4
  br label %__here

__here:                                           ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef %l, i32 noundef ptrtoint (ptr blockaddress(@local_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_locks_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @handle_request(ptr noundef %card, ptr noundef %request, i32 noundef %tcode, i32 noundef %destination, i32 noundef %source, i32 noundef %generation, i64 noundef %offset, ptr noundef %payload, i32 noundef %length, ptr nocapture noundef readonly %callback_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !54
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i.i, label %entry.if.end15.sink.split.i.i.i.i.i_crit_edge, label %if.else.i.i.i.i.i, !prof !55

entry.if.end15.sink.split.i.i.i.i.i_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i:                                ; preds = %entry
  %add.i.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i.i, 1
  %1 = or i32 %add.i.i.i.i.i, %asmresult.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %1)
  %.not.i.i.i.i.i = icmp sgt i32 %1, -1
  br i1 %.not.i.i.i.i.i, label %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge, label %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, !prof !45

if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15.sink.split.i.i.i.i.i

if.else.i.i.i.i.i.fw_card_get.exit_crit_edge:     ; preds = %if.else.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fw_card_get.exit

if.end15.sink.split.i.i.i.i.i:                    ; preds = %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge
  %.sink.i.i.i.i.i = phi i32 [ 2, %entry.if.end15.sink.split.i.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.i.if.end15.sink.split.i.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef %.sink.i.i.i.i.i) #12
  br label %fw_card_get.exit

fw_card_get.exit:                                 ; preds = %if.end15.sink.split.i.i.i.i.i, %if.else.i.i.i.i.i.fw_card_get.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 24) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i108 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 2592, i32 noundef 72) #15
  %cmp = icmp eq ptr %call7.i, null
  %cmp3 = icmp eq ptr %call7.i108, null
  %or.cond = select i1 %cmp, i1 true, i1 %cmp3
  br i1 %or.cond, label %fw_card_get.exit.failed_crit_edge, label %if.end

fw_card_get.exit.failed_crit_edge:                ; preds = %fw_card_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

if.end:                                           ; preds = %fw_card_get.exit
  %card4 = getelementptr inbounds %struct.inbound_transaction_resource, ptr %call7.i, i32 0, i32 1
  %4 = ptrtoint ptr %card4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %card, ptr %card4, align 8
  %request5 = getelementptr inbounds %struct.inbound_transaction_resource, ptr %call7.i, i32 0, i32 2
  %5 = ptrtoint ptr %request5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %request, ptr %request5, align 4
  %data = getelementptr inbounds %struct.inbound_transaction_resource, ptr %call7.i, i32 0, i32 3
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %payload, ptr %data, align 8
  %length6 = getelementptr inbounds %struct.inbound_transaction_resource, ptr %call7.i, i32 0, i32 4
  %7 = ptrtoint ptr %length6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %length, ptr %length6, align 4
  %cmp.i = icmp eq ptr %request, null
  br i1 %cmp.i, label %if.then8, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14

if.then8:                                         ; preds = %if.end
  %call9 = tail call ptr @kmemdup(ptr noundef %payload, i32 noundef %length, i32 noundef 2592) #12
  %cmp10 = icmp eq ptr %call9, null
  br i1 %cmp10, label %if.then8.failed_crit_edge, label %if.end12

if.then8.failed_crit_edge:                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call9, ptr %data, align 8
  br label %if.end14

if.end14:                                         ; preds = %if.end12, %if.end.if.end14_crit_edge
  %fcp_frame.0 = phi ptr [ %call9, %if.end12 ], [ null, %if.end.if.end14_crit_edge ]
  %9 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @release_request, ptr %call7.i, align 8
  %client = getelementptr inbounds %struct.address_handler_resource, ptr %callback_data, i32 0, i32 3
  %10 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %client, align 8
  %call16 = tail call fastcc i32 @add_client_resource(ptr noundef %11, ptr noundef nonnull %call7.i, i32 noundef 2592)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end14.failed_crit_edge, label %if.end19

if.end14.failed_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #14
  br label %failed

if.end19:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %client, align 8
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %15)
  %cmp21 = icmp ult i32 %15, 4
  br i1 %cmp21, label %if.then22, label %if.else

if.then22:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %and = and i32 %tcode, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %spec.store.select = select i1 %tobool.not, i32 %tcode, i32 9
  %handle = getelementptr inbounds %struct.client_resource, ptr %call7.i, i32 0, i32 1
  %16 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle, align 4
  br label %if.end45

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #14
  %index = getelementptr inbounds %struct.fw_card, ptr %card, i32 0, i32 25
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 8
  %card37 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 6
  %20 = ptrtoint ptr %card37 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %card37, align 8
  %generation38 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 7
  %21 = ptrtoint ptr %generation38 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %generation, ptr %generation38, align 4
  %length39 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 9
  %22 = ptrtoint ptr %length39 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %length, ptr %length39, align 4
  %handle41 = getelementptr inbounds %struct.client_resource, ptr %call7.i, i32 0, i32 1
  %23 = ptrtoint ptr %handle41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handle41, align 4
  %handle42 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 8
  %25 = ptrtoint ptr %handle42 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %handle42, align 8
  br label %if.end45

if.end45:                                         ; preds = %if.else, %if.then22
  %.sink113 = phi i32 [ 2, %if.then22 ], [ 6, %if.else ]
  %tcode.sink = phi i32 [ %spec.store.select, %if.then22 ], [ %tcode, %if.else ]
  %destination.sink = phi i32 [ %length, %if.then22 ], [ %destination, %if.else ]
  %source.sink = phi i32 [ %17, %if.then22 ], [ %source, %if.else ]
  %event_size0.0 = phi i32 [ 32, %if.then22 ], [ 48, %if.else ]
  %.sink.in = getelementptr inbounds %struct.address_handler_resource, ptr %callback_data, i32 0, i32 2
  %26 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load8_noabort(i32 %26)
  %.sink = load i64, ptr %.sink.in, align 8
  %27 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 1
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %.sink113, ptr %27, align 8
  %29 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 2
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %tcode.sink, ptr %29, align 4
  %31 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 3
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %offset, ptr %31, align 8
  %33 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %destination.sink, ptr %33, align 4
  %35 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1, i32 0, i32 4
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %source.sink, ptr %35, align 8
  %37 = getelementptr inbounds %struct.inbound_transaction_event, ptr %call7.i108, i32 0, i32 1
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %.sink, ptr %37, align 8
  %39 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data, align 8
  %41 = ptrtoint ptr %call7.i108 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %37, ptr %call7.i108, align 8
  %size.i = getelementptr inbounds %struct.anon.74, ptr %call7.i108, i32 0, i32 1
  %42 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %event_size0.0, ptr %size.i, align 4
  %arrayidx4.i = getelementptr [2 x %struct.anon.74], ptr %call7.i108, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %arrayidx4.i, align 8
  %size8.i = getelementptr [2 x %struct.anon.74], ptr %call7.i108, i32 0, i32 1, i32 1
  %44 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %length, ptr %size8.i, align 4
  %lock.i = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 2
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %in_shutdown.i = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 3
  %45 = ptrtoint ptr %in_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %in_shutdown.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i108) #12
  br label %queue_event.exit

if.else.i:                                        ; preds = %if.end45
  %link.i = getelementptr inbounds %struct.event, ptr %call7.i108, i32 0, i32 1
  %event_list.i = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 5, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %48, ptr noundef %event_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.queue_event.exit_crit_edge

if.else.i.queue_event.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_event.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %link.i, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %event_list.i, ptr %link.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.event, ptr %call7.i108, i32 0, i32 1, i32 1
  %51 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %link.i, ptr %48, align 4
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %if.end.i.i.i, %if.else.i.queue_event.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  %wait.i = getelementptr inbounds %struct.client, ptr %13, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

failed:                                           ; preds = %if.end14.failed_crit_edge, %if.then8.failed_crit_edge, %fw_card_get.exit.failed_crit_edge
  %fcp_frame.1 = phi ptr [ null, %fw_card_get.exit.failed_crit_edge ], [ null, %if.then8.failed_crit_edge ], [ %fcp_frame.0, %if.end14.failed_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i) #12
  tail call void @kfree(ptr noundef %call7.i108) #12
  tail call void @kfree(ptr noundef %fcp_frame.1) #12
  %cmp.i109 = icmp eq ptr %request, null
  br i1 %cmp.i109, label %failed.if.end51_crit_edge, label %if.then50

failed.if.end51_crit_edge:                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end51

if.then50:                                        ; preds = %failed
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @fw_send_response(ptr noundef %card, ptr noundef nonnull %request, i32 noundef 4) #12
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %failed.if.end51_crit_edge
  %call.i.i.i.i.i.i.i111 = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %53 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %53, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i112 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i112, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void @fw_card_release(ptr noundef %kref.i) #12, !callees !57
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %queue_event.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_address_handler(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_address_handler(ptr nocapture noundef readnone %client, ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %handler = getelementptr inbounds %struct.address_handler_resource, ptr %resource, i32 0, i32 1
  tail call void @fw_core_remove_address_handler(ptr noundef %handler) #12
  tail call void @kfree(ptr noundef %resource) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_request(ptr nocapture noundef readnone %client, ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %request = getelementptr inbounds %struct.inbound_transaction_resource, ptr %resource, i32 0, i32 2
  %0 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %request, align 4
  %cmp.i = icmp eq ptr %1, null
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %data = getelementptr inbounds %struct.inbound_transaction_resource, ptr %resource, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void @kfree(ptr noundef %3) #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %card = getelementptr inbounds %struct.inbound_transaction_resource, ptr %resource, i32 0, i32 1
  %4 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %card, align 4
  tail call void @fw_send_response(ptr noundef %5, ptr noundef nonnull %1, i32 noundef 4) #12
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %card2 = getelementptr inbounds %struct.inbound_transaction_resource, ptr %resource, i32 0, i32 1
  %6 = ptrtoint ptr %card2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %card2, align 4
  %kref.i = getelementptr inbounds %struct.fw_card, ptr %7, i32 0, i32 2
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge:     ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %fw_card_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %fw_card_put.exit

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  tail call void @fw_card_release(ptr noundef %kref.i) #12, !callees !57
  br label %fw_card_put.exit

fw_card_put.exit:                                 ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.fw_card_put.exit_crit_edge
  tail call void @kfree(ptr noundef %resource) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_send_response(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_card_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_address_handler(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @release_client_resource(ptr noundef %client, i32 noundef %handle, ptr noundef readnone %release, ptr noundef writeonly %return_resource) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %in_shutdown = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 3
  %0 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %in_shutdown, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %entry.if.then12.critedge_crit_edge

entry.if.then12.critedge_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.critedge

if.end:                                           ; preds = %entry
  %resource_idr = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 4
  %call = tail call ptr @idr_find(ptr noundef %resource_idr, i32 noundef %handle) #12
  %tobool1.not = icmp eq ptr %call, null
  br i1 %tobool1.not, label %if.end.if.then12.critedge_crit_edge, label %land.lhs.true

if.end.if.then12.critedge_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then12.critedge

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %cmp = icmp eq ptr %3, %release
  br i1 %cmp, label %if.then3, label %land.lhs.true.land.lhs.true9_crit_edge

land.lhs.true.land.lhs.true9_crit_edge:           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %land.lhs.true9

if.then3:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  %call5 = tail call ptr @idr_remove(ptr noundef %resource_idr, i32 noundef %handle) #12
  br label %land.lhs.true9

land.lhs.true9:                                   ; preds = %if.then3, %land.lhs.true.land.lhs.true9_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %cmp11 = icmp eq ptr %5, %release
  br i1 %cmp11, label %if.end13, label %land.lhs.true9.cleanup_crit_edge

land.lhs.true9.cleanup_crit_edge:                 ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then12.critedge:                               ; preds = %if.end.if.then12.critedge_crit_edge, %entry.if.then12.critedge_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br label %cleanup

if.end13:                                         ; preds = %land.lhs.true9
  %tobool14.not = icmp eq ptr %return_resource, null
  br i1 %tobool14.not, label %if.else16, label %if.then15

if.then15:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %return_resource to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %return_resource, align 4
  br label %if.end18

if.else16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %release(ptr noundef %client, ptr noundef nonnull %call) #12
  br label %if.end18

if.end18:                                         ; preds = %if.else16, %if.then15
  %kref.i = getelementptr inbounds %struct.client, ptr %client, i32 0, i32 17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.cleanup_crit_edge:              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %device.i.i = getelementptr %struct.client, ptr %client, i32 0, i32 1
  %8 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device.i.i, align 4
  %device1.i.i.i = getelementptr inbounds %struct.fw_device, ptr %9, i32 0, i32 6
  tail call void @put_device(ptr noundef %device1.i.i.i) #12
  tail call void @kfree(ptr noundef %client) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.cleanup_crit_edge, %if.then12.critedge, %land.lhs.true9.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then12.critedge ], [ -22, %land.lhs.true9.cleanup_crit_edge ], [ 0, %if.end5.i.i.i.i.i.cleanup_crit_edge ], [ 0, %if.then10.i.i.i.i.i ], [ 0, %if.then.i.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_find(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_get_response_length(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_schedule_bus_reset(ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_core_add_descriptor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_descriptor(ptr nocapture noundef readnone %client, ptr noundef %resource) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %descriptor = getelementptr inbounds %struct.descriptor_resource, ptr %resource, i32 0, i32 1
  tail call void @fw_core_remove_descriptor(ptr noundef %descriptor) #12
  tail call void @kfree(ptr noundef %resource) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_core_remove_descriptor(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iso_callback(ptr nocapture noundef readnone %context, i32 noundef %cycle, i32 noundef %header_length, ptr nocapture noundef readonly %header, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %header_length, 48
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 2592) #17
  %cmp = icmp eq ptr %call9.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %interrupt = getelementptr inbounds %struct.iso_interrupt_event, ptr %call9.i, i32 0, i32 1
  %type = getelementptr inbounds %struct.iso_interrupt_event, ptr %call9.i, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %type, align 32
  %iso_closure = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 10
  %1 = ptrtoint ptr %iso_closure to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %iso_closure, align 8
  %3 = ptrtoint ptr %interrupt to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %interrupt, align 8
  %cycle3 = getelementptr inbounds %struct.iso_interrupt_event, ptr %call9.i, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %cycle3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %cycle, ptr %cycle3, align 4
  %header_length5 = getelementptr inbounds %struct.iso_interrupt_event, ptr %call9.i, i32 0, i32 1, i32 3
  %5 = ptrtoint ptr %header_length5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %header_length, ptr %header_length5, align 8
  %header7 = getelementptr inbounds %struct.iso_interrupt_event, ptr %call9.i, i32 0, i32 1, i32 4
  %6 = call ptr @memcpy(ptr %header7, ptr %header, i32 %header_length)
  %add9 = add i32 %header_length, 24
  %7 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %interrupt, ptr %call9.i, align 128
  %size.i = getelementptr inbounds %struct.anon.74, ptr %call9.i, i32 0, i32 1
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add9, ptr %size.i, align 4
  %arrayidx4.i = getelementptr [2 x %struct.anon.74], ptr %call9.i, i32 0, i32 1
  %9 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %arrayidx4.i, align 8
  %size8.i = getelementptr [2 x %struct.anon.74], ptr %call9.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %size8.i, align 4
  %lock.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 2
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %in_shutdown.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %in_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %in_shutdown.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i = icmp eq i8 %12, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i22

if.then.i22:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  br label %queue_event.exit

if.else.i:                                        ; preds = %if.end
  %link.i = getelementptr inbounds %struct.event, ptr %call9.i, i32 0, i32 1
  %event_list.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %14, ptr noundef %event_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.queue_event.exit_crit_edge

if.else.i.queue_event.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_event.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %link.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %event_list.i, ptr %link.i, align 16
  %prev3.i.i.i = getelementptr inbounds %struct.event, ptr %call9.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %link.i, ptr %14, align 4
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %if.end.i.i.i, %if.else.i.queue_event.exit_crit_edge, %if.then.i22
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  %wait.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %queue_event.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iso_mc_callback(ptr nocapture noundef readnone %context, i32 noundef %completed, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2592, i32 noundef 40) #15
  %cmp = icmp eq ptr %call7.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %interrupt = getelementptr inbounds %struct.iso_interrupt_mc_event, ptr %call7.i, i32 0, i32 1
  %type = getelementptr inbounds %struct.iso_interrupt_mc_event, ptr %call7.i, i32 0, i32 1, i32 1
  %1 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 9, ptr %type, align 8
  %iso_closure = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 10
  %2 = ptrtoint ptr %iso_closure to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %iso_closure, align 8
  %4 = ptrtoint ptr %interrupt to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %3, ptr %interrupt, align 8
  %buffer = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 11
  %call2 = tail call i32 @fw_iso_buffer_lookup(ptr noundef %buffer, i32 noundef %completed) #12
  %completed4 = getelementptr inbounds %struct.iso_interrupt_mc_event, ptr %call7.i, i32 0, i32 1, i32 2
  %5 = ptrtoint ptr %completed4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call2, ptr %completed4, align 4
  %6 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %interrupt, ptr %call7.i, align 8
  %size.i = getelementptr inbounds %struct.anon.74, ptr %call7.i, i32 0, i32 1
  %7 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 16, ptr %size.i, align 4
  %arrayidx4.i = getelementptr [2 x %struct.anon.74], ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx4.i, align 8
  %size8.i = getelementptr [2 x %struct.anon.74], ptr %call7.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %size8.i, align 4
  %lock.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 2
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %in_shutdown.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 3
  %10 = ptrtoint ptr %in_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %in_shutdown.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef nonnull %call7.i) #12
  br label %queue_event.exit

if.else.i:                                        ; preds = %if.end
  %link.i = getelementptr inbounds %struct.event, ptr %call7.i, i32 0, i32 1
  %event_list.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 5, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %13, ptr noundef %event_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.queue_event.exit_crit_edge

if.else.i.queue_event.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_event.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %link.i, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %event_list.i, ptr %link.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.event, ptr %call7.i, i32 0, i32 1, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %link.i, ptr %13, align 4
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %if.end.i.i.i, %if.else.i.queue_event.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  %wait.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br label %cleanup

cleanup:                                          ; preds = %queue_event.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fw_iso_context_create(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_buffer_map_dma(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_buffer_lookup(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_queue(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_context_queue_flush(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_iso_resource(ptr noundef %client, ptr nocapture noundef %request, i32 noundef %todo) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, ptr %request, i32 0, i32 1
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %cmp = icmp eq i64 %1, 0
  br i1 %cmp, label %land.lhs.true, label %entry.lor.lhs.false_crit_edge

entry.lor.lhs.false_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %entry
  %bandwidth = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, ptr %request, i32 0, i32 2
  %2 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bandwidth, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1 = icmp eq i32 %3, 0
  br i1 %cmp1, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.lor.lhs.false_crit_edge

land.lhs.true.lor.lhs.false_crit_edge:            ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false:                                    ; preds = %land.lhs.true.lor.lhs.false_crit_edge, %entry.lor.lhs.false_crit_edge
  %bandwidth2 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, ptr %request, i32 0, i32 2
  %4 = ptrtoint ptr %bandwidth2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bandwidth2, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4915, i32 %5)
  %cmp3 = icmp ugt i32 %5, 4915
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3264, i32 noundef 144) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i99 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3264, i32 noundef 48) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i100 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 3264, i32 noundef 48) #15
  %cmp6 = icmp eq ptr %call7.i, null
  %cmp8 = icmp eq ptr %call7.i99, null
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp8
  %cmp10 = icmp eq ptr %call7.i100, null
  %or.cond98 = select i1 %or.cond, i1 true, i1 %cmp10
  br i1 %or.cond98, label %if.end.fail_crit_edge, label %do.body13

if.end.fail_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

do.body13:                                        ; preds = %if.end
  %work = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %work, i32 noundef 0) #12
  %9 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 2, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.7, ptr noundef nonnull @init_iso_resource.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #12
  %entry21 = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 2, i32 0, i32 1
  %10 = ptrtoint ptr %entry21 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry21, ptr %entry21, align 8
  %prev.i = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 2, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry21, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 2, i32 0, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @iso_resource_work, ptr %func, align 8
  %timer = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 2, i32 1
  tail call void @init_timer_key(ptr noundef %timer, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.9, ptr noundef nonnull @init_iso_resource.__key.8) #12
  %client30 = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 1
  %13 = ptrtoint ptr %client30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %client, ptr %client30, align 8
  %todo31 = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 3
  %14 = ptrtoint ptr %todo31 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %todo, ptr %todo31, align 8
  %generation = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 4
  %15 = ptrtoint ptr %generation to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %generation, align 4
  %16 = ptrtoint ptr %channels to i32
  call void @__asan_load8_noabort(i32 %16)
  %17 = load i64, ptr %channels, align 8
  %channels33 = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 5
  %18 = ptrtoint ptr %channels33 to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %channels33, align 8
  %19 = ptrtoint ptr %bandwidth2 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth2, align 8
  %bandwidth35 = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 6
  %21 = ptrtoint ptr %bandwidth35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bandwidth35, align 8
  %e_alloc = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 7
  %22 = ptrtoint ptr %e_alloc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call7.i99, ptr %e_alloc, align 4
  %e_dealloc = getelementptr inbounds %struct.iso_resource, ptr %call7.i, i32 0, i32 8
  %23 = ptrtoint ptr %e_dealloc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i100, ptr %e_dealloc, align 8
  %24 = ptrtoint ptr %request to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %request, align 8
  %iso_resource = getelementptr inbounds %struct.iso_resource_event, ptr %call7.i99, i32 0, i32 1
  %26 = ptrtoint ptr %iso_resource to i32
  call void @__asan_store8_noabort(i32 %26)
  store i64 %25, ptr %iso_resource, align 8
  %type = getelementptr inbounds %struct.iso_resource_event, ptr %call7.i99, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 4, ptr %type, align 8
  %iso_resource39 = getelementptr inbounds %struct.iso_resource_event, ptr %call7.i100, i32 0, i32 1
  %28 = ptrtoint ptr %iso_resource39 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %25, ptr %iso_resource39, align 8
  %type42 = getelementptr inbounds %struct.iso_resource_event, ptr %call7.i100, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %type42 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 5, ptr %type42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %todo)
  %cmp43 = icmp eq i32 %todo, 0
  br i1 %cmp43, label %if.then44, label %if.else

if.then44:                                        ; preds = %do.body13
  %30 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @release_iso_resource, ptr %call7.i, align 8
  %call46 = tail call fastcc i32 @add_client_resource(ptr noundef %client, ptr noundef nonnull %call7.i, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %cmp47 = icmp slt i32 %call46, 0
  br i1 %cmp47, label %if.then44.fail_crit_edge, label %if.then44.if.end53_crit_edge

if.then44.if.end53_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end53

if.then44.fail_crit_edge:                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #14
  br label %fail

if.else:                                          ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #14
  %31 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %call7.i, align 8
  %handle = getelementptr inbounds %struct.client_resource, ptr %call7.i, i32 0, i32 1
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %handle, align 4
  tail call fastcc void @schedule_iso_resource(ptr noundef nonnull %call7.i, i32 noundef 0)
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.then44.if.end53_crit_edge
  %handle55 = getelementptr inbounds %struct.client_resource, ptr %call7.i, i32 0, i32 1
  %33 = ptrtoint ptr %handle55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %handle55, align 4
  %handle56 = getelementptr inbounds %struct.fw_cdev_allocate_iso_resource, ptr %request, i32 0, i32 3
  %35 = ptrtoint ptr %handle56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %handle56, align 4
  br label %cleanup

fail:                                             ; preds = %if.then44.fail_crit_edge, %if.end.fail_crit_edge
  %ret.0 = phi i32 [ %call46, %if.then44.fail_crit_edge ], [ -12, %if.end.fail_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i) #12
  tail call void @kfree(ptr noundef %call7.i99) #12
  tail call void @kfree(ptr noundef %call7.i100) #12
  br label %cleanup

cleanup:                                          ; preds = %fail, %if.end53, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail ], [ 0, %if.end53 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iso_resource_work(ptr noundef %work) #0 align 64 {
entry:
  %channel = alloca i32, align 4
  %bandwidth = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -12
  %client1 = getelementptr i8, ptr %work, i32 -4
  %0 = ptrtoint ptr %client1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %client1, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %channel) #12
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %channel, align 4, !annotation !56
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bandwidth) #12
  %3 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %bandwidth, align 4, !annotation !56
  %lock = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %device = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device, align 4
  %generation2 = getelementptr inbounds %struct.fw_device, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %generation2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %generation2, align 4
  %todo3 = getelementptr i8, ptr %work, i32 100
  %8 = ptrtoint ptr %todo3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %todo3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %land.lhs.true, label %if.else

land.lhs.true:                                    ; preds = %entry
  %call = tail call i64 @get_jiffies_64() #12
  %10 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device, align 4
  %card = getelementptr inbounds %struct.fw_device, ptr %11, i32 0, i32 5
  %12 = ptrtoint ptr %card to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %card, align 4
  %reset_jiffies = getelementptr inbounds %struct.fw_card, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %reset_jiffies to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %reset_jiffies, align 8
  %add.neg = add i64 %call, -100
  %sub = sub i64 %add.neg, %15
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %sub)
  %cmp5 = icmp slt i64 %sub, 0
  br i1 %cmp5, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @schedule_iso_resource(ptr noundef %add.ptr, i32 noundef 34)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp6 = icmp eq i32 %9, 1
  br i1 %cmp6, label %land.rhs, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.rhs:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  %generation7 = getelementptr i8, ptr %work, i32 104
  %16 = ptrtoint ptr %generation7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %generation7, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %7)
  %cmp8 = icmp eq i32 %17, %7
  br label %if.end

if.end:                                           ; preds = %land.rhs, %if.else.if.end_crit_edge, %if.then, %land.lhs.true.if.end_crit_edge
  %skip.0.off0 = phi i1 [ true, %if.then ], [ false, %if.else.if.end_crit_edge ], [ %cmp8, %land.rhs ], [ false, %land.lhs.true.if.end_crit_edge ]
  %.off = add i32 %9, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.off)
  %switch = icmp ult i32 %.off, 3
  %generation13 = getelementptr i8, ptr %work, i32 104
  %18 = ptrtoint ptr %generation13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %7, ptr %generation13, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br i1 %skip.0.off0, label %if.end.out_crit_edge, label %if.end16

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end16:                                         ; preds = %if.end
  %bandwidth17 = getelementptr i8, ptr %work, i32 116
  %19 = ptrtoint ptr %bandwidth17 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bandwidth17, align 8
  %21 = ptrtoint ptr %bandwidth to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %bandwidth, align 4
  %22 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %device, align 4
  %card19 = getelementptr inbounds %struct.fw_device, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %card19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %card19, align 4
  %channels = getelementptr i8, ptr %work, i32 108
  %26 = ptrtoint ptr %channels to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %channels, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %28 = icmp ult i32 %9, 4
  %switch.cast = trunc i32 %9 to i4
  %switch.downshift = lshr i4 -5, %switch.cast
  %29 = and i4 %switch.downshift, 1
  %30 = sext i4 %29 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %switch.masked = icmp ne i4 %29, 0
  %31 = select i1 %28, i1 %switch.masked, i1 false
  call void @fw_iso_resource_manage(ptr noundef %25, i32 noundef %7, i64 noundef %27, ptr noundef nonnull %channel, ptr noundef nonnull %bandwidth, i1 noundef zeroext %31) #12
  %32 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %33)
  %cmp26 = icmp eq i32 %33, -11
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %switch145 = icmp ult i32 %9, 2
  %or.cond = select i1 %cmp26, i1 %switch145, i1 false
  br i1 %or.cond, label %if.end16.out_crit_edge, label %if.end32

if.end16.out_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end32:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %33)
  %cmp33 = icmp sgt i32 %33, -1
  br i1 %cmp33, label %if.end32.lor.end36_crit_edge, label %lor.rhs34

if.end32.lor.end36_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.end36

lor.rhs34:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %bandwidth, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp35 = icmp sgt i32 %35, 0
  br label %lor.end36

lor.end36:                                        ; preds = %lor.rhs34, %if.end32.lor.end36_crit_edge
  %36 = phi i1 [ true, %if.end32.lor.end36_crit_edge ], [ %cmp35, %lor.rhs34 ]
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %37 = ptrtoint ptr %todo3 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %todo3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp40 = icmp eq i32 %38, 0
  br i1 %cmp40, label %if.then41, label %lor.end36.if.end43_crit_edge

lor.end36.if.end43_crit_edge:                     ; preds = %lor.end36
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end43

if.then41:                                        ; preds = %lor.end36
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %todo3 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 1, ptr %todo3, align 8
  br label %if.end43

if.end43:                                         ; preds = %if.then41, %lor.end36.if.end43_crit_edge
  %40 = ptrtoint ptr %todo3 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %todo3, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %41)
  %cmp45 = icmp ne i32 %41, 1
  %brmerge = select i1 %cmp45, i1 true, i1 %36
  br i1 %brmerge, label %if.end43.if.end54_crit_edge, label %land.lhs.true48

if.end43.if.end54_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true48:                                  ; preds = %if.end43
  %in_shutdown = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3
  %42 = ptrtoint ptr %in_shutdown to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %in_shutdown, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool49.not = icmp eq i8 %43, 0
  br i1 %tobool49.not, label %land.lhs.true50, label %land.lhs.true48.if.end54_crit_edge

land.lhs.true48.if.end54_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

land.lhs.true50:                                  ; preds = %land.lhs.true48
  %resource_idr = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 4
  %handle = getelementptr i8, ptr %work, i32 -8
  %44 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %handle, align 4
  %call51 = call ptr @idr_remove(ptr noundef %resource_idr, i32 noundef %45) #12
  %tobool52.not = icmp eq ptr %call51, null
  br i1 %tobool52.not, label %land.lhs.true50.if.end54_crit_edge, label %if.then53

land.lhs.true50.if.end54_crit_edge:               ; preds = %land.lhs.true50
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then53:                                        ; preds = %land.lhs.true50
  %kref.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %46 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %46, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %if.then53
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.if.end54_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.if.end54_crit_edge:             ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end54

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %if.end54

if.then.i.i:                                      ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %47 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %device, align 4
  %device1.i.i.i = getelementptr inbounds %struct.fw_device, ptr %48, i32 0, i32 6
  call void @put_device(ptr noundef %device1.i.i.i) #12
  call void @kfree(ptr noundef %1) #12
  br label %if.end54

if.end54:                                         ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.if.end54_crit_edge, %land.lhs.true50.if.end54_crit_edge, %land.lhs.true48.if.end54_crit_edge, %if.end43.if.end54_crit_edge
  %free.0.shrunk = phi i1 [ %switch, %land.lhs.true48.if.end54_crit_edge ], [ %switch, %land.lhs.true50.if.end54_crit_edge ], [ %switch, %if.end43.if.end54_crit_edge ], [ true, %if.end5.i.i.i.i.i.if.end54_crit_edge ], [ true, %if.then10.i.i.i.i.i ], [ true, %if.then.i.i ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  br i1 %cmp, label %land.lhs.true57, label %if.end61

land.lhs.true57:                                  ; preds = %if.end54
  %49 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %50)
  %cmp58 = icmp sgt i32 %50, -1
  br i1 %cmp58, label %if.then59, label %land.lhs.true57.if.then70_crit_edge

land.lhs.true57.if.then70_crit_edge:              ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  %sh_prom = zext i32 %50 to i64
  %shl = shl nuw i64 1, %sh_prom
  %51 = ptrtoint ptr %channels to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %shl, ptr %channels, align 8
  br label %if.then70

if.end61:                                         ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp62 = icmp ne i32 %9, 1
  %.not = xor i1 %36, true
  %brmerge143 = select i1 %cmp62, i1 true, i1 %.not
  br i1 %brmerge143, label %if.end66, label %if.end61.out_crit_edge

if.end61.out_crit_edge:                           ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end66:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %9)
  %cond = icmp eq i32 %9, 3
  br i1 %cond, label %if.end66.if.then70_crit_edge, label %if.else72

if.end66.if.then70_crit_edge:                     ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then70

if.then70:                                        ; preds = %if.end66.if.then70_crit_edge, %if.then59, %land.lhs.true57.if.then70_crit_edge
  %e_alloc = getelementptr i8, ptr %work, i32 120
  %52 = ptrtoint ptr %e_alloc to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %e_alloc, align 4
  store ptr null, ptr %e_alloc, align 4
  br label %if.end74

if.else72:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #14
  %e_dealloc = getelementptr i8, ptr %work, i32 124
  %54 = ptrtoint ptr %e_dealloc to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %e_dealloc, align 8
  store ptr null, ptr %e_dealloc, align 8
  br label %if.end74

if.end74:                                         ; preds = %if.else72, %if.then70
  %e.0 = phi ptr [ %53, %if.then70 ], [ %55, %if.else72 ]
  %handle76 = getelementptr i8, ptr %work, i32 -8
  %56 = ptrtoint ptr %handle76 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %handle76, align 4
  %iso_resource = getelementptr inbounds %struct.iso_resource_event, ptr %e.0, i32 0, i32 1
  %handle77 = getelementptr inbounds %struct.iso_resource_event, ptr %e.0, i32 0, i32 1, i32 2
  %58 = ptrtoint ptr %handle77 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %handle77, align 4
  %59 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %channel, align 4
  %channel79 = getelementptr inbounds %struct.iso_resource_event, ptr %e.0, i32 0, i32 1, i32 3
  %61 = ptrtoint ptr %channel79 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %channel79, align 8
  %62 = ptrtoint ptr %bandwidth to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %bandwidth, align 4
  %bandwidth81 = getelementptr inbounds %struct.iso_resource_event, ptr %e.0, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %bandwidth81 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %bandwidth81, align 4
  %65 = ptrtoint ptr %e.0 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %iso_resource, ptr %e.0, align 4
  %size.i = getelementptr inbounds %struct.anon.74, ptr %e.0, i32 0, i32 1
  %66 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 24, ptr %size.i, align 4
  %arrayidx4.i = getelementptr [2 x %struct.anon.74], ptr %e.0, i32 0, i32 1
  %67 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %arrayidx4.i, align 4
  %size8.i = getelementptr [2 x %struct.anon.74], ptr %e.0, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %size8.i, align 4
  %call10.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %in_shutdown.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 3
  %69 = ptrtoint ptr %in_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %in_shutdown.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i = icmp eq i8 %70, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #14
  call void @kfree(ptr noundef %e.0) #12
  br label %queue_event.exit

if.else.i:                                        ; preds = %if.end74
  %link.i = getelementptr inbounds %struct.event, ptr %e.0, i32 0, i32 1
  %event_list.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 5, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %72, ptr noundef %event_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.queue_event.exit_crit_edge

if.else.i.queue_event.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_event.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %link.i, ptr %prev.i.i, align 4
  %74 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %event_list.i, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.event, ptr %e.0, i32 0, i32 1, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %link.i, ptr %72, align 4
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %if.end.i.i.i, %if.else.i.queue_event.exit_crit_edge, %if.then.i
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10.i) #12
  %wait.i = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 6
  call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  br i1 %free.0.shrunk, label %if.then84, label %queue_event.exit.out_crit_edge

queue_event.exit.out_crit_edge:                   ; preds = %queue_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then84:                                        ; preds = %queue_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  %call86 = call zeroext i1 @cancel_delayed_work(ptr noundef %work) #12
  %e_alloc87 = getelementptr i8, ptr %work, i32 120
  %77 = ptrtoint ptr %e_alloc87 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %e_alloc87, align 4
  call void @kfree(ptr noundef %78) #12
  %e_dealloc88 = getelementptr i8, ptr %work, i32 124
  %79 = ptrtoint ptr %e_dealloc88 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %e_dealloc88, align 8
  call void @kfree(ptr noundef %80) #12
  call void @kfree(ptr noundef %add.ptr) #12
  br label %out

out:                                              ; preds = %if.then84, %queue_event.exit.out_crit_edge, %if.end61.out_crit_edge, %if.end16.out_crit_edge, %if.end.out_crit_edge
  %kref.i146 = getelementptr inbounds %struct.client, ptr %1, i32 0, i32 17
  %call.i.i.i.i.i.i.i147 = call zeroext i1 @__kasan_check_write(ptr noundef %kref.i146, i32 noundef 4) #12
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  call void @llvm.prefetch.p0(ptr %kref.i146, i32 1, i32 3, i32 1) #12
  %81 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i146, ptr %kref.i146, i32 1, ptr elementtype(i32) %kref.i146) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i148 = extractvalue { i32, i32, i32 } %81, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i148)
  %cmp.i.i.i.i.i149 = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i148, 1
  br i1 %cmp.i.i.i.i.i149, label %if.then.i.i155, label %if.end5.i.i.i.i.i151

if.end5.i.i.i.i.i151:                             ; preds = %out
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i148)
  %.not.i.i.i.i.i150 = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i148, 0
  br i1 %.not.i.i.i.i.i150, label %if.end5.i.i.i.i.i151.client_put.exit156_crit_edge, label %if.then10.i.i.i.i.i152, !prof !45

if.end5.i.i.i.i.i151.client_put.exit156_crit_edge: ; preds = %if.end5.i.i.i.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_put.exit156

if.then10.i.i.i.i.i152:                           ; preds = %if.end5.i.i.i.i.i151
  call void @__sanitizer_cov_trace_pc() #14
  call void @refcount_warn_saturate(ptr noundef %kref.i146, i32 noundef 3) #12
  br label %client_put.exit156

if.then.i.i155:                                   ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %82 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %device, align 4
  %device1.i.i.i154 = getelementptr inbounds %struct.fw_device, ptr %83, i32 0, i32 6
  call void @put_device(ptr noundef %device1.i.i.i154) #12
  call void @kfree(ptr noundef %1) #12
  br label %client_put.exit156

client_put.exit156:                               ; preds = %if.then.i.i155, %if.then10.i.i.i.i.i152, %if.end5.i.i.i.i.i151.client_put.exit156_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bandwidth) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %channel) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_resource_manage(ptr noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_real_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @ktime_get_raw_ts64(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @outbound_phy_packet_callback(ptr noundef %packet, ptr nocapture noundef readnone %card, i32 noundef %status) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %status, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 14
  br i1 %0, label %switch.hole_check, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 12347, %switch.maskindex
  %1 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %switch.lobit.not = icmp eq i16 %1, 0
  br i1 %switch.lobit.not, label %switch.hole_check.sw.epilog_crit_edge, label %switch.lookup

switch.hole_check.sw.epilog_crit_edge:            ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #14
  %switch.gep = getelementptr inbounds [14 x i32], ptr @switch.table.outbound_phy_packet_callback, i32 0, i32 %switch.tableidx
  %2 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %2)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %switch.hole_check.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %status.sink = phi i32 [ %switch.load, %switch.lookup ], [ %status, %switch.hole_check.sw.epilog_crit_edge ], [ %status, %entry.sw.epilog_crit_edge ]
  %rcode14 = getelementptr i8, ptr %packet, i32 80
  %3 = ptrtoint ptr %rcode14 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %status.sink, ptr %rcode14, align 4
  %add.ptr = getelementptr i8, ptr %packet, i32 -28
  %timestamp = getelementptr inbounds %struct.fw_packet, ptr %packet, i32 0, i32 8
  %4 = ptrtoint ptr %timestamp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %timestamp, align 4
  %phy_packet15 = getelementptr i8, ptr %packet, i32 68
  %data = getelementptr i8, ptr %packet, i32 88
  %6 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %data, align 4
  %client = getelementptr i8, ptr %packet, i32 -4
  %7 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %client, align 8
  %length = getelementptr i8, ptr %packet, i32 84
  %9 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %length, align 8
  %add = add i32 %10, 24
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %phy_packet15, ptr %add.ptr, align 4
  %size.i = getelementptr i8, ptr %packet, i32 -24
  %12 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %size.i, align 4
  %arrayidx4.i = getelementptr i8, ptr %packet, i32 -20
  %13 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %arrayidx4.i, align 4
  %size8.i = getelementptr i8, ptr %packet, i32 -16
  %14 = ptrtoint ptr %size8.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %size8.i, align 4
  %lock.i = getelementptr inbounds %struct.client, ptr %8, i32 0, i32 2
  %call10.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %in_shutdown.i = getelementptr inbounds %struct.client, ptr %8, i32 0, i32 3
  %15 = ptrtoint ptr %in_shutdown.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %in_shutdown.i, align 4, !range !44
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i = icmp eq i8 %16, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @kfree(ptr noundef %add.ptr) #12
  br label %queue_event.exit

if.else.i:                                        ; preds = %sw.epilog
  %link.i = getelementptr i8, ptr %packet, i32 -12
  %event_list.i = getelementptr inbounds %struct.client, ptr %8, i32 0, i32 5
  %prev.i.i = getelementptr inbounds %struct.client, ptr %8, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %link.i, ptr noundef %18, ptr noundef %event_list.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.else.i.queue_event.exit_crit_edge

if.else.i.queue_event.exit_crit_edge:             ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %queue_event.exit

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %link.i, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %link.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %event_list.i, ptr %link.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %packet, i32 -8
  %21 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %link.i, ptr %18, align 4
  br label %queue_event.exit

queue_event.exit:                                 ; preds = %if.end.i.i.i, %if.else.i.queue_event.exit_crit_edge, %if.then.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call10.i) #12
  %wait.i = getelementptr inbounds %struct.client, ptr %8, i32 0, i32 6
  tail call void @__wake_up(ptr noundef %wait.i, i32 noundef 1, i32 noundef 1, ptr noundef null) #12
  %23 = ptrtoint ptr %client to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %client, align 8
  %kref.i = getelementptr inbounds %struct.client, ptr %24, i32 0, i32 17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %queue_event.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.client_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.client_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %client_put.exit

if.then.i.i:                                      ; preds = %queue_event.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %device.i.i = getelementptr %struct.client, ptr %24, i32 0, i32 1
  %26 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %device.i.i, align 4
  %device1.i.i.i = getelementptr inbounds %struct.fw_device, ptr %27, i32 0, i32 6
  tail call void @put_device(ptr noundef %device1.i.i.i) #12
  tail call void @kfree(ptr noundef %24) #12
  br label %client_put.exit

client_put.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.client_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_set_channels(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_context_flush_completions(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fw_iso_buffer_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vm_map_pages_zero(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fw_iso_buffer_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fw_device_get_by_devt(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nonseekable_open(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @shutdown_resource(i32 noundef %id, ptr noundef %p, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  tail call void %1(ptr noundef %data, ptr noundef %p) #12
  %kref.i = getelementptr inbounds %struct.client, ptr %data, i32 0, i32 17
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %kref.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !51
  tail call void @llvm.prefetch.p0(ptr %kref.i, i32 1, i32 3, i32 1) #12
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %kref.i, ptr %kref.i, i32 1, ptr elementtype(i32) %kref.i) #12, !srcloc !52
  %asmresult.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i, label %if.end5.i.i.i.i.i

if.end5.i.i.i.i.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %if.end5.i.i.i.i.i.client_put.exit_crit_edge, label %if.then10.i.i.i.i.i, !prof !45

if.end5.i.i.i.i.i.client_put.exit_crit_edge:      ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %client_put.exit

if.then10.i.i.i.i.i:                              ; preds = %if.end5.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @refcount_warn_saturate(ptr noundef %kref.i, i32 noundef 3) #12
  br label %client_put.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !53
  %device.i.i = getelementptr %struct.client, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %device.i.i, align 4
  %device1.i.i.i = getelementptr inbounds %struct.fw_device, ptr %4, i32 0, i32 6
  tail call void @put_device(ptr noundef %device1.i.i.i) #12
  tail call void @kfree(ptr noundef %data) #12
  br label %client_put.exit

client_put.exit:                                  ; preds = %if.then.i.i, %if.then10.i.i.i.i.i, %if.end5.i.i.i.i.i.client_put.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @is_outbound_transaction_resource(i32 noundef %id, ptr nocapture noundef readonly %p, ptr nocapture noundef readnone %data) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %cmp = icmp eq ptr %1, @release_transaction
  %conv = zext i1 %cmp to i32
  ret i32 %conv
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #11

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind readnone }
attributes #17 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !27, !28, !30, !31, !33}
!llvm.named.register.sp = !{!34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @fw_device_ops, !1, !"fw_device_ops", i1 false, i1 false}
!1 = !{!"../drivers/firewire/core-cdev.c", i32 1800, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/firewire/core-cdev.c", i32 299, i32 8}
!4 = distinct !{null, !5, !"__already_done", i1 false, i1 false}
!5 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!9 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!11 = !{ptr @ioctl_handlers, !12, !"ioctl_handlers", i1 false, i1 false}
!12 = !{!"../drivers/firewire/core-cdev.c", i32 1602, i32 21}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../include/linux/local_lock_internal.h", i32 36, i32 2}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @init_iso_resource.__key, !18, !"__key", i1 false, i1 false}
!18 = !{!"../drivers/firewire/core-cdev.c", i32 1382, i32 2}
!19 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @init_iso_resource.__key.8, !18, !"__key", i1 false, i1 false}
!21 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @fw_device_op_open.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/firewire/core-cdev.c", i32 258, i32 2}
!24 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fw_device_op_open.__key.11, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/firewire/core-cdev.c", i32 261, i32 2}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @fw_device_op_open.__key.13, !29, !"__key", i1 false, i1 false}
!29 = !{!"../drivers/firewire/core-cdev.c", i32 262, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @xa_init_flags.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!33 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!34 = !{!"sp"}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i8 0, i8 2}
!45 = !{!"branch_weights", i32 2000, i32 1}
!46 = !{i64 2152308920, i64 2152308945}
!47 = !{i64 2152308239, i64 2152308264}
!48 = !{i64 4803794}
!49 = !{i64 4803991}
!50 = !{i64 2152289224}
!51 = !{i64 2148497567}
!52 = !{i64 2148412031, i64 2148412063, i64 2148412092, i64 2148412126, i64 2148412157, i64 2148412180}
!53 = !{i64 2149484623}
!54 = !{i64 2148409566, i64 2148409598, i64 2148409627, i64 2148409661, i64 2148409692, i64 2148409715}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{!"auto-init"}
!57 = distinct !{null, ptr @fw_card_release}
!58 = !{i64 2154127234, i64 2154127514, i64 2154127848, i64 2154128182}
!59 = !{i64 805026}
!60 = !{i64 802729}
!61 = !{i64 802539}
!62 = !{i64 2152845192}
