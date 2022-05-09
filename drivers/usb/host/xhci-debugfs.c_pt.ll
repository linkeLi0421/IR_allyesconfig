; ModuleID = '/llk/IR_all_yes/drivers/usb/host/xhci-debugfs.c_pt.bc'
source_filename = "../drivers/usb/host/xhci-debugfs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.file_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.debugfs_reg32 = type { ptr, i32 }
%struct.xhci_file_map = type { ptr, ptr }
%struct.xhci_virt_device = type { i32, ptr, ptr, ptr, [31 x %struct.xhci_virt_ep], i8, i8, ptr, ptr, i32, i16, ptr }
%struct.xhci_virt_ep = type { ptr, i32, ptr, ptr, ptr, i32, %struct.list_head, %struct.timer_list, ptr, ptr, ptr, i8, %struct.xhci_bw_info, %struct.list_head, i32, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.xhci_bw_info = type { i32, i32, i32, i32, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.xhci_slot_priv = type { [32 x i8], ptr, [31 x ptr], ptr }
%struct.xhci_ep_priv = type { [32 x i8], ptr, ptr, ptr, i32 }
%struct.xhci_hcd = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, %struct.spinlock, i8, i16, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.list_head, i32, %struct.delayed_work, %struct.completion, ptr, ptr, %struct.xhci_erst, ptr, %struct.list_head, %struct.mutex, ptr, [256 x ptr], ptr, ptr, ptr, ptr, ptr, i32, i32, %struct.s3_save, i64, i32, i32, ptr, %struct.xhci_hub, %struct.xhci_hub, i8, ptr, i32, ptr, i32, %struct.timer_list, i32, i16, ptr, ptr, %struct.list_head, ptr, [4 x i8], [0 x i32] }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.xhci_erst = type { ptr, i32, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.s3_save = type { i32, i32, i64, i32, i32, i32, i32, i64, i64 }
%struct.xhci_hub = type { ptr, i32, ptr, %struct.xhci_bus_state, i8, i8 }
%struct.xhci_bus_state = type { i32, i32, i32, i32, i32, [31 x i32], i32, i32, [31 x %struct.completion], [31 x %struct.completion] }
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
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.xhci_cap_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.xhci_port = type { ptr, i32, i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.xhci_regset = type { [32 x i8], %struct.debugfs_regset32, i32, %struct.list_head }
%struct.debugfs_regset32 = type { ptr, i32, ptr, ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.64, i32 }
%union.anon.64 = type { ptr }
%struct.seq_file = type { ptr, i32, i32, i32, i32, i64, i64, %struct.mutex, ptr, i32, ptr, ptr }
%struct.xhci_ring = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr }
%struct.xhci_segment = type { ptr, ptr, i32, i32, ptr, i32, i32 }
%union.xhci_trb = type { %struct.xhci_link_trb }
%struct.xhci_link_trb = type { i64, i32, i32 }
%struct.file = type { %union.anon.13, %struct.path, ptr, ptr, %struct.spinlock, i32, %struct.atomic_t, i32, i32, %struct.mutex, i64, %struct.fown_struct, ptr, %struct.file_ra_state, i64, ptr, ptr, ptr, ptr, i32, i32 }
%union.anon.13 = type { %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.path = type { ptr, ptr }
%struct.fown_struct = type { %struct.rwlock_t, ptr, i32, %struct.kuid_t, %struct.kuid_t, i32 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.kuid_t = type { i32 }
%struct.file_ra_state = type { i32, i32, i32, i32, i32, i64 }
%struct.dentry = type { i32, %struct.seqcount_spinlock, %struct.hlist_bl_node, ptr, %struct.qstr, ptr, [36 x i8], %struct.lockref, ptr, ptr, i32, ptr, %union.anon.55, %struct.list_head, %struct.list_head, %union.anon.56 }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.hlist_bl_node = type { ptr, ptr }
%struct.qstr = type { %union.anon.14, ptr }
%union.anon.14 = type { i64 }
%struct.lockref = type { %union.anon.16 }
%union.anon.16 = type { %struct.anon.17 }
%struct.anon.17 = type { %struct.spinlock, i32 }
%union.anon.55 = type { %struct.list_head }
%union.anon.56 = type { %struct.hlist_node }
%struct.dentry_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [76 x i8] }
%struct.inode = type { i16, i16, %struct.kuid_t, %struct.kgid_t, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32, %union.anon.65, i32, i64, %struct.timespec64, %struct.timespec64, %struct.timespec64, %struct.spinlock, i16, i8, i8, i64, %struct.seqcount, i32, %struct.rw_semaphore, i32, i32, %struct.hlist_node, %struct.list_head, ptr, i32, i16, i16, %struct.list_head, %struct.list_head, %struct.list_head, %union.anon.66, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %union.anon.67, ptr, %struct.address_space, %struct.list_head, %union.anon.68, i32, i32, ptr, ptr, ptr, ptr }
%struct.kgid_t = type { i32 }
%union.anon.65 = type { i32 }
%struct.timespec64 = type { i64, i32 }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%union.anon.66 = type { %struct.callback_head }
%struct.atomic64_t = type { i64 }
%union.anon.67 = type { ptr }
%struct.address_space = type { ptr, %struct.xarray, %struct.rw_semaphore, i32, %struct.atomic_t, %struct.rb_root_cached, %struct.rw_semaphore, i32, i32, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%union.anon.68 = type { ptr }
%struct.xhci_stream_info = type { ptr, i32, ptr, i32, i32, %struct.xarray, ptr }
%struct.xhci_stream_ctx = type { i64, [2 x i32] }
%struct.usb_device = type <{ i32, [16 x i8], i32, i32, i32, i32, i32, i32, ptr, i32, [2 x i32], ptr, ptr, %struct.usb_host_endpoint, [4 x i8], %struct.device, %struct.usb_device_descriptor, [2 x i8], ptr, ptr, ptr, [16 x ptr], [16 x ptr], ptr, i16, i8, i8, i8, i16, i8, i32, ptr, ptr, ptr, %struct.list_head, i32, i32, %struct.atomic_t, i32, i32, i8, [3 x i8], ptr, i32, %struct.usb2_lpm_parameters, %struct.usb3_lpm_parameters, %struct.usb3_lpm_parameters, i32, i16, i8, [5 x i8] }>
%struct.usb_host_endpoint = type <{ %struct.usb_endpoint_descriptor, %struct.usb_ss_ep_comp_descriptor, %struct.usb_ssp_isoc_ep_comp_descriptor, i8, %struct.list_head, ptr, ptr, ptr, i32, i32, i32 }>
%struct.usb_endpoint_descriptor = type <{ i8, i8, i8, i8, i16, i8, i8, i8 }>
%struct.usb_ss_ep_comp_descriptor = type { i8, i8, i8, i8, i16 }
%struct.usb_ssp_isoc_ep_comp_descriptor = type { i8, i8, i16, i32 }
%struct.usb_device_descriptor = type { i8, i8, i16, i8, i8, i8, i8, i16, i16, i16, i8, i8, i8, i8 }
%struct.usb2_lpm_parameters = type { i32, i32 }
%struct.usb3_lpm_parameters = type { i32, i32, i32, i32 }
%struct.xhci_slot_ctx = type { i32, i32, i32, i32, [4 x i32] }
%struct.xhci_container_ctx = type { i32, i32, ptr, i32 }
%struct.xhci_ep_ctx = type { i32, i32, i64, i32, [3 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ep%02d\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"stream_id\00", [22 x i8] zeroinitializer }, align 32
@stream_id_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @xhci_stream_id_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_stream_id_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"stream_context_array\00", [43 x i8] zeroinitializer }, align 32
@xhci_stream_context_array_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_stream_context_array_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%02d\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ep00\00", [27 x i8] zeroinitializer }, align 32
@xhci_debugfs_root = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@xhci_cap_regs = internal constant { [8 x %struct.debugfs_reg32], [32 x i8] } { [8 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.154, i32 0 }, %struct.debugfs_reg32 { ptr @.str.155, i32 4 }, %struct.debugfs_reg32 { ptr @.str.156, i32 8 }, %struct.debugfs_reg32 { ptr @.str.157, i32 12 }, %struct.debugfs_reg32 { ptr @.str.158, i32 16 }, %struct.debugfs_reg32 { ptr @.str.159, i32 20 }, %struct.debugfs_reg32 { ptr @.str.160, i32 24 }, %struct.debugfs_reg32 { ptr @.str.161, i32 28 }], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"reg-cap\00", [24 x i8] zeroinitializer }, align 32
@xhci_op_regs = internal constant { [8 x %struct.debugfs_reg32], [32 x i8] } { [8 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.162, i32 0 }, %struct.debugfs_reg32 { ptr @.str.163, i32 4 }, %struct.debugfs_reg32 { ptr @.str.164, i32 8 }, %struct.debugfs_reg32 { ptr @.str.165, i32 20 }, %struct.debugfs_reg32 { ptr @.str.166, i32 24 }, %struct.debugfs_reg32 { ptr @.str.167, i32 48 }, %struct.debugfs_reg32 { ptr @.str.168, i32 52 }, %struct.debugfs_reg32 { ptr @.str.169, i32 56 }], [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"reg-op\00", [25 x i8] zeroinitializer }, align 32
@xhci_runtime_regs = internal constant { [8 x %struct.debugfs_reg32], [32 x i8] } { [8 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.170, i32 0 }, %struct.debugfs_reg32 { ptr @.str.171, i32 32 }, %struct.debugfs_reg32 { ptr @.str.172, i32 36 }, %struct.debugfs_reg32 { ptr @.str.173, i32 40 }, %struct.debugfs_reg32 { ptr @.str.174, i32 48 }, %struct.debugfs_reg32 { ptr @.str.175, i32 52 }, %struct.debugfs_reg32 { ptr @.str.176, i32 56 }, %struct.debugfs_reg32 { ptr @.str.177, i32 60 }], [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg-runtime\00", [20 x i8] zeroinitializer }, align 32
@xhci_extcap_legsup = internal constant { [2 x %struct.debugfs_reg32], [16 x i8] } { [2 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.179, i32 0 }, %struct.debugfs_reg32 { ptr @.str.180, i32 4 }], [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"reg-ext-legsup\00", [17 x i8] zeroinitializer }, align 32
@xhci_extcap_protocol = internal constant { [10 x %struct.debugfs_reg32], [48 x i8] } { [10 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.181, i32 0 }, %struct.debugfs_reg32 { ptr @.str.182, i32 4 }, %struct.debugfs_reg32 { ptr @.str.183, i32 8 }, %struct.debugfs_reg32 { ptr @.str.184, i32 12 }, %struct.debugfs_reg32 { ptr @.str.185, i32 16 }, %struct.debugfs_reg32 { ptr @.str.186, i32 20 }, %struct.debugfs_reg32 { ptr @.str.187, i32 24 }, %struct.debugfs_reg32 { ptr @.str.188, i32 28 }, %struct.debugfs_reg32 { ptr @.str.189, i32 32 }, %struct.debugfs_reg32 { ptr @.str.190, i32 36 }], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"reg-ext-protocol\00", [47 x i8] zeroinitializer }, align 32
@xhci_extcap_dbc = internal constant { [14 x %struct.debugfs_reg32], [48 x i8] } { [14 x %struct.debugfs_reg32] [%struct.debugfs_reg32 { ptr @.str.191, i32 0 }, %struct.debugfs_reg32 { ptr @.str.192, i32 4 }, %struct.debugfs_reg32 { ptr @.str.193, i32 8 }, %struct.debugfs_reg32 { ptr @.str.194, i32 16 }, %struct.debugfs_reg32 { ptr @.str.195, i32 20 }, %struct.debugfs_reg32 { ptr @.str.196, i32 24 }, %struct.debugfs_reg32 { ptr @.str.197, i32 28 }, %struct.debugfs_reg32 { ptr @.str.198, i32 32 }, %struct.debugfs_reg32 { ptr @.str.199, i32 36 }, %struct.debugfs_reg32 { ptr @.str.200, i32 40 }, %struct.debugfs_reg32 { ptr @.str.201, i32 48 }, %struct.debugfs_reg32 { ptr @.str.202, i32 52 }, %struct.debugfs_reg32 { ptr @.str.203, i32 56 }, %struct.debugfs_reg32 { ptr @.str.204, i32 60 }], [48 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"reg-ext-dbc\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"command-ring\00", [19 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"event-ring\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"devices\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"xhci\00", [27 x i8] zeroinitializer }, align 32
@usb_debug_root = external dso_local local_unnamed_addr global ptr, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ring_files = internal constant { [4 x %struct.xhci_file_map], [32 x i8] } { [4 x %struct.xhci_file_map] [%struct.xhci_file_map { ptr @.str.15, ptr @xhci_ring_enqueue_show }, %struct.xhci_file_map { ptr @.str.16, ptr @xhci_ring_dequeue_show }, %struct.xhci_file_map { ptr @.str.17, ptr @xhci_ring_cycle_show }, %struct.xhci_file_map { ptr @.str.18, ptr @xhci_ring_trb_show }], [32 x i8] zeroinitializer }, align 32
@xhci_ring_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_ring_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"enqueue\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dequeue\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cycle\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trbs\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%pad\0A\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"%pad: %s\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"LINK %08x%08x intr %d type '%s' flags %c:%c:%c:%c\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"TRB %08x%08x status '%s' len %d slot %d ep %d type '%s' flags %c:%c\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"bRequestType %02x bRequest %02x wValue %02x%02x wIndex %02x%02x wLength %d length %d TD size %d intr %d type '%s' flags %c:%c:%c\00", [63 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c\00", [46 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c\00", [55 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [85 x i8], [43 x i8] } { [85 x i8] c"Buffer %08x%08x length %d TD size %d intr %d type '%s' flags %c:%c:%c:%c:%c:%c:%c:%c\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: flags %c\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: slot %d flags %c\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: ctx %08x%08x slot %d flags %c:%c\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: ctx %08x%08x slot %d flags %c\00", [62 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ctx %08x%08x slot %d ep %d flags %c:%c\00", [53 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: slot %d sp %d ep %d flags %c\00", [63 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: deq %08x%08x stream %d slot %d ep %d flags %c\00", [46 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%s: event %08x%08x vf intr %d vf id %d flags %c\00", [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: belt %d flags %c\00", [43 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s: ctx %08x%08x slot %d speed %d flags %c\00", [53 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"%s: info %08x%08x%08x pkt type %d roothub port %d flags %c\00", [37 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"type '%s' -> raw %08x %08x %08x %08x\00", [59 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Normal\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Setup Stage\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Data Stage\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Status Stage\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Isoch\00", [26 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Link\00", [27 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Event Data\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"No-Op\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Enable Slot Command\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Disable Slot Command\00", [43 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Address Device Command\00", [41 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Configure Endpoint Command\00", [37 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Evaluate Context Command\00", [39 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Reset Endpoint Command\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Stop Ring Command\00", [46 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Set TR Dequeue Pointer Command\00", [33 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Reset Device Command\00", [43 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Force Event Command\00", [44 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Negotiate Bandwidth Command\00", [36 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Set Latency Tolerance Value Command\00", [60 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Get Port Bandwidth Command\00", [37 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Force Header Command\00", [43 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"No-Op Command\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Transfer Event\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Command Completion Event\00", [39 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Port Status Change Event\00", [39 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bandwidth Request Event\00", [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Doorbell Event\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Host Controller Event\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Device Notification Event\00", [38 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"MFINDEX Wrap Event\00", [45 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"NEC Command Completion Event\00", [35 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"NET Get Firmware Revision Command\00", [62 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"UNKNOWN\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Invalid\00", [24 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Success\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Data Buffer Error\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Babble Detected\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"USB Transaction Error\00", [42 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"TRB Error\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Stall Error\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Resource Error\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Bandwidth Error\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No Slots Available Error\00", [39 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Invalid Stream Type Error\00", [38 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Slot Not Enabled Error\00", [41 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Endpoint Not Enabled Error\00", [37 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Short Packet\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Ring Underrun\00", [18 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"Ring Overrun\00", [19 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"VF Event Ring Full Error\00", [39 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Parameter Error\00", [16 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Bandwidth Overrun Error\00", [40 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Context State Error\00", [44 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No Ping Response Error\00", [41 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Event Ring Full Error\00", [42 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Incompatible Device Error\00", [38 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Missed Service Error\00", [43 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Command Ring Stopped\00", [43 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Command Aborted\00", [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Stopped - Length Invalid\00", [39 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Stopped - Short Packet\00", [41 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Max Exit Latency Too Large Error\00", [63 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Isoch Buffer Overrun\00", [43 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"Event Lost Error\00", [47 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Undefined Error\00", [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Invalid Stream ID Error\00", [40 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Secondary Bandwidth Error\00", [38 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Split Transaction Error\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Unknown!!\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Show stream ID %d trb ring, supported [1 - %d]\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Allocated %d streams and %d stream context array entries\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%pad stream id %d deq %016llx\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"%pad stream context entry not used deq %016llx\0A\00", [48 x i8] zeroinitializer }, align 32
@context_files = internal constant { [3 x %struct.xhci_file_map], [40 x i8] } { [3 x %struct.xhci_file_map] [%struct.xhci_file_map { ptr @.str.115, ptr @xhci_device_name_show }, %struct.xhci_file_map { ptr @.str.116, ptr @xhci_slot_context_show }, %struct.xhci_file_map { ptr @.str.117, ptr @xhci_endpoint_context_show }], [40 x i8] zeroinitializer }, align 32
@xhci_context_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_context_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"name\00", [27 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slot-context\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep-context\00", [21 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"RS %05x %s%s%s Ctx Entries %d MEL %d us Port# %d/%d\00", [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"full-speed\00", [21 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"low-speed\00", [22 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"high-speed\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"super-speed\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"super-speed plus\00", [47 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"UNKNOWN speed\00", [18 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" multi-TT\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.128 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c" Hub\00", [27 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c" [TT Slot %d Port# %d TTT %d Intr %d] Addr %d State %s\00", [41 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"enabled/disabled\00", [47 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"default\00", [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"addressed\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"configured\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"reserved\00", [23 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"State %s mult %d max P. Streams %d %s\00", [58 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"LSA \00", [27 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"interval %d us max ESIT payload %d CErr %d \00", [52 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Type %s %sburst %d maxp %d deq %016llx \00", [56 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"HID\00", [28 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"avg trb len %d\00", [17 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"running\00", [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"halted\00", [25 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"stopped\00", [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"error\00", [26 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"INVALID\00", [24 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Isoc OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Bulk OUT\00", [23 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Int OUT\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Isoc IN\00", [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Bulk IN\00", [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Int IN\00", [25 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"CAPLENGTH\00", [22 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCSPARAMS1\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCSPARAMS2\00", [21 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCSPARAMS3\00", [21 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCCPARAMS1\00", [21 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DOORBELLOFF\00", [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"RUNTIMEOFF\00", [21 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"HCCPARAMS2\00", [21 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USBCMD\00", [25 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"USBSTS\00", [25 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"PAGESIZE\00", [23 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DNCTRL\00", [25 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CRCR\00", [27 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DCBAAP_LOW\00", [21 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"DCBAAP_HIGH\00", [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"CONFIG\00", [25 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"MFINDEX\00", [24 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IR0_IMAN\00", [23 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"IR0_IMOD\00", [23 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"IR0_ERSTSZ\00", [21 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"IR0_ERSTBA_LOW\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"IR0_ERSTBA_HIGH\00", [16 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"IR0_ERDP_LOW\00", [19 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"IR0_ERDP_HIGH\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s:%02d\00", [24 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXTCAP_USBLEGSUP\00", [47 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_USBLEGCTLSTS\00", [44 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXTCAP_REVISION\00", [16 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EXTCAP_NAME\00", [20 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXTCAP_PORTINFO\00", [16 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"EXTCAP_PORTTYPE\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXTCAP_MANTISSA1\00", [47 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXTCAP_MANTISSA2\00", [47 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXTCAP_MANTISSA3\00", [47 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXTCAP_MANTISSA4\00", [47 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXTCAP_MANTISSA5\00", [47 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"EXTCAP_MANTISSA6\00", [47 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"EXTCAP_DBC_CAPABILITY\00", [42 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_DBC_DOORBELL\00", [44 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_DBC_ERSTSIZE\00", [44 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_DBC_ERST_LOW\00", [44 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EXTCAP_DBC_ERST_HIGH\00", [43 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_DBC_ERDP_LOW\00", [44 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EXTCAP_DBC_ERDP_HIGH\00", [43 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"EXTCAP_DBC_CONTROL\00", [45 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EXTCAP_DBC_STATUS\00", [46 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"EXTCAP_DBC_PORTSC\00", [46 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_DBC_CONT_LOW\00", [44 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"EXTCAP_DBC_CONT_HIGH\00", [43 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_DBC_DEVINFO1\00", [44 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"EXTCAP_DBC_DEVINFO2\00", [44 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"port%02d\00", [23 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"portsc\00", [25 x i8] zeroinitializer }, align 32
@port_fops = internal constant { %struct.file_operations, [32 x i8] } { %struct.file_operations { ptr null, ptr @seq_lseek, ptr @seq_read, ptr @xhci_port_write, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, ptr @xhci_port_open, ptr null, ptr @single_release, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"compliance\00", [21 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/uaccess.h\00", [40 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s %s %s Link:%s PortSpeed:%d \00", [33 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Powered\00", [24 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Powered-off\00", [20 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Connected\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"Not-connected\00", [18 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Enabled\00", [24 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Disabled\00", [23 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"OverCurrent \00", [19 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"In-Reset \00", [22 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Change: \00", [23 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CSC \00", [27 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PEC \00", [27 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WRC \00", [27 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"OCC \00", [27 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PRC \00", [27 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"PLC \00", [27 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CEC \00", [27 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CAS \00", [27 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Wake: \00", [25 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WCE \00", [27 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WDE \00", [27 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"WOE \00", [27 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U0\00", [29 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U1\00", [29 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U2\00", [29 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"U3\00", [29 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"RxDetect\00", [23 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Inactive\00", [23 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Polling\00", [24 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"Recovery\00", [23 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Hot Reset\00", [22 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"Compliance mode\00", [16 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"Test mode\00", [22 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"Resume\00", [25 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Unknown\00", [24 x i8] zeroinitializer }, align 32
@switch.table.xhci_ring_trb_show = internal constant { [37 x ptr], [44 x i8] } { [37 x ptr] [ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.110, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109], [44 x i8] zeroinitializer }, align 32
@switch.table.xhci_ring_trb_show.247 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@switch.table.xhci_ring_trb_show.248 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47], [32 x i8] zeroinitializer }, align 32
@switch.table.xhci_ring_trb_show.249 = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [36 x i8] zeroinitializer }, align 32
@switch.table.xhci_ring_trb_show.250 = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], [56 x i8] zeroinitializer }, align 32
@switch.table.xhci_ring_trb_show.251 = internal constant { [56 x ptr], [32 x i8] } { [56 x ptr] [ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.73, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62], [32 x i8] zeroinitializer }, align 32
@switch.table.xhci_slot_context_show = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124], [44 x i8] zeroinitializer }, align 32
@switch.table.xhci_slot_context_show.252 = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133], [16 x i8] zeroinitializer }, align 32
@switch.table.xhci_endpoint_context_show = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.145, ptr @.str.146, ptr @.str.146, ptr @.str.146, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144], [32 x i8] zeroinitializer }, align 32
@switch.table.xhci_endpoint_context_show.253 = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149], [32 x i8] zeroinitializer }, align 32
@switch.table.xhci_portsc_show = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.218, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.246, ptr @.str.246, ptr @.str.246, ptr @.str.245], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [33 x i64] [i64 31, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 32, i64 33, i64 34, i64 35, i64 36, i64 37, i64 38, i64 39]
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 462, i32 45 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 583, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant [15 x i8] c"stream_id_fops\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 529, i32 37 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 586, i32 22 }
@___asan_gen_.266 = private unnamed_addr constant [31 x i8] c"xhci_stream_context_array_fops\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 564, i32 1 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 600, i32 43 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 606, i32 10 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"xhci_debugfs_root\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 84, i32 23 }
@___asan_gen_.278 = private unnamed_addr constant [14 x i8] c"xhci_cap_regs\00", align 1
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 16, i32 35 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 664, i32 28 }
@___asan_gen_.284 = private unnamed_addr constant [13 x i8] c"xhci_op_regs\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 27, i32 35 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 669, i32 28 }
@___asan_gen_.290 = private unnamed_addr constant [18 x i8] c"xhci_runtime_regs\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 38, i32 35 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 674, i32 28 }
@___asan_gen_.296 = private unnamed_addr constant [19 x i8] c"xhci_extcap_legsup\00", align 1
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 49, i32 35 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 679, i32 8 }
@___asan_gen_.302 = private unnamed_addr constant [21 x i8] c"xhci_extcap_protocol\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 54, i32 35 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 684, i32 8 }
@___asan_gen_.308 = private unnamed_addr constant [16 x i8] c"xhci_extcap_dbc\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 67, i32 35 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 689, i32 8 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 692, i32 10 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 696, i32 10 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 699, i32 43 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 718, i32 41 }
@___asan_gen_.326 = private unnamed_addr constant [11 x i8] c"ring_files\00", align 1
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 228, i32 29 }
@___asan_gen_.329 = private unnamed_addr constant [15 x i8] c"xhci_ring_fops\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 251, i32 37 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 229, i32 3 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 230, i32 3 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 231, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 232, i32 3 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 170, i32 16 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 190, i32 16 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 206, i32 17 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2250, i32 4 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2267, i32 4 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2280, i32 4 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2298, i32 5 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2312, i32 5 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2326, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2343, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2350, i32 4 }
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2357, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2375, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2383, i32 4 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2394, i32 4 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2404, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2422, i32 4 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2431, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2438, i32 4 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2447, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2456, i32 4 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1435, i32 10 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1437, i32 10 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1439, i32 10 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1441, i32 10 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1443, i32 10 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1445, i32 10 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1447, i32 10 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1449, i32 10 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1451, i32 10 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1453, i32 10 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1455, i32 10 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1457, i32 10 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1459, i32 10 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1461, i32 10 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1463, i32 10 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1465, i32 10 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1467, i32 10 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1469, i32 10 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1471, i32 10 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1473, i32 10 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1475, i32 10 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1477, i32 10 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1479, i32 10 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1481, i32 10 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1483, i32 10 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1485, i32 10 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1487, i32 10 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1489, i32 10 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1491, i32 10 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1493, i32 10 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1495, i32 10 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1497, i32 10 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1499, i32 10 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1501, i32 10 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1136, i32 10 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1138, i32 10 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1140, i32 10 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1142, i32 10 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1144, i32 10 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1146, i32 10 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1148, i32 10 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1150, i32 10 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1152, i32 10 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1154, i32 10 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1156, i32 10 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1158, i32 10 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1160, i32 10 }
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1162, i32 10 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1164, i32 10 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1166, i32 10 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1168, i32 10 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1170, i32 10 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1172, i32 10 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1174, i32 10 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1176, i32 10 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1178, i32 10 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1180, i32 10 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1182, i32 10 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1184, i32 10 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1186, i32 10 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1188, i32 10 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1190, i32 10 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1192, i32 10 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1194, i32 10 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1196, i32 10 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1198, i32 10 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1200, i32 10 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1202, i32 10 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1204, i32 10 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1206, i32 10 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 1208, i32 10 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 493, i32 16 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 547, i32 16 }
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 555, i32 18 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 558, i32 18 }
@___asan_gen_.632 = private unnamed_addr constant [14 x i8] c"context_files\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 314, i32 29 }
@___asan_gen_.635 = private unnamed_addr constant [18 x i8] c"xhci_context_fops\00", align 1
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 336, i32 37 }
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 315, i32 3 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 316, i32 3 }
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 317, i32 3 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 309, i32 16 }
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2504, i32 21 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2509, i32 9 }
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2512, i32 9 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2515, i32 9 }
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2518, i32 9 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2521, i32 9 }
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2524, i32 9 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2526, i32 10 }
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2526, i32 24 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2527, i32 10 }
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2533, i32 28 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2230, i32 10 }
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2232, i32 10 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2234, i32 10 }
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2236, i32 10 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2238, i32 10 }
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2756, i32 21 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2758, i32 20 }
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2760, i32 28 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2763, i32 28 }
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2764, i32 40 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2767, i32 28 }
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2683, i32 10 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2685, i32 10 }
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2687, i32 10 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2689, i32 10 }
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2691, i32 10 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2693, i32 10 }
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2701, i32 10 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2703, i32 10 }
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2705, i32 10 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2707, i32 10 }
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2709, i32 10 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2711, i32 10 }
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2713, i32 10 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 17, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 18, i32 2 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 19, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 20, i32 2 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 21, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 22, i32 2 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 23, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 24, i32 2 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 28, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 29, i32 2 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 30, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 31, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 32, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 33, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 34, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 35, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 39, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 40, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 41, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 42, i32 2 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 43, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 44, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 45, i32 2 }
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 46, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 157, i32 29 }
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 50, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 51, i32 2 }
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 55, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 56, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 57, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 58, i32 2 }
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 59, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 60, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 61, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 62, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 63, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 64, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 68, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 69, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 70, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 71, i32 2 }
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 72, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 73, i32 2 }
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 74, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 75, i32 2 }
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 76, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 77, i32 2 }
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 78, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 79, i32 2 }
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 80, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 81, i32 2 }
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 641, i32 30 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 644, i32 43 }
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 648, i32 23 }
@___asan_gen_.917 = private unnamed_addr constant [10 x i8] c"port_fops\00", align 1
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 397, i32 37 }
@___asan_gen_.921 = private constant [35 x i8] c"../drivers/usb/host/xhci-debugfs.c\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.921, i32 375, i32 20 }
@___asan_gen_.924 = private unnamed_addr constant [27 x i8] c"../include/linux/uaccess.h\00", align 1
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.924, i32 156, i32 2 }
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2582, i32 21 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2583, i32 31 }
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2583, i32 43 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2584, i32 33 }
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2584, i32 47 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2585, i32 29 }
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2585, i32 41 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2590, i32 29 }
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2592, i32 29 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2594, i32 28 }
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2596, i32 29 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2598, i32 29 }
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2600, i32 29 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2602, i32 29 }
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2604, i32 29 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2606, i32 29 }
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2608, i32 29 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2610, i32 29 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2612, i32 28 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2614, i32 29 }
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2616, i32 29 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2618, i32 29 }
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2547, i32 10 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2549, i32 10 }
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2551, i32 10 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2553, i32 10 }
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2557, i32 10 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2559, i32 10 }
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2561, i32 10 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2563, i32 10 }
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2565, i32 10 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2567, i32 10 }
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2569, i32 10 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2571, i32 10 }
@___asan_gen_.1028 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant [27 x i8] c"../drivers/usb/host/xhci.h\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1029, i32 2575, i32 9 }
@___asan_gen_.1031 = private unnamed_addr constant [32 x i8] c"switch.table.xhci_ring_trb_show\00", align 1
@___asan_gen_.1032 = private unnamed_addr constant [36 x i8] c"switch.table.xhci_ring_trb_show.247\00", align 1
@___asan_gen_.1033 = private unnamed_addr constant [36 x i8] c"switch.table.xhci_ring_trb_show.248\00", align 1
@___asan_gen_.1034 = private unnamed_addr constant [36 x i8] c"switch.table.xhci_ring_trb_show.249\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant [36 x i8] c"switch.table.xhci_ring_trb_show.250\00", align 1
@___asan_gen_.1036 = private unnamed_addr constant [36 x i8] c"switch.table.xhci_ring_trb_show.251\00", align 1
@___asan_gen_.1037 = private unnamed_addr constant [36 x i8] c"switch.table.xhci_slot_context_show\00", align 1
@___asan_gen_.1038 = private unnamed_addr constant [40 x i8] c"switch.table.xhci_slot_context_show.252\00", align 1
@___asan_gen_.1039 = private unnamed_addr constant [40 x i8] c"switch.table.xhci_endpoint_context_show\00", align 1
@___asan_gen_.1040 = private unnamed_addr constant [44 x i8] c"switch.table.xhci_endpoint_context_show.253\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant [30 x i8] c"switch.table.xhci_portsc_show\00", align 1
@llvm.compiler.used = appending global [271 x ptr] [ptr @xhci_debugfs_remove_root, ptr @.str, ptr @.str.1, ptr @stream_id_fops, ptr @.str.2, ptr @xhci_stream_context_array_fops, ptr @.str.3, ptr @.str.4, ptr @xhci_debugfs_root, ptr @xhci_cap_regs, ptr @.str.5, ptr @xhci_op_regs, ptr @.str.6, ptr @xhci_runtime_regs, ptr @.str.7, ptr @xhci_extcap_legsup, ptr @.str.8, ptr @xhci_extcap_protocol, ptr @.str.9, ptr @xhci_extcap_dbc, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ring_files, ptr @xhci_ring_fops, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @context_files, ptr @xhci_context_fops, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @port_fops, ptr @.str.208, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @switch.table.xhci_ring_trb_show, ptr @switch.table.xhci_ring_trb_show.247, ptr @switch.table.xhci_ring_trb_show.248, ptr @switch.table.xhci_ring_trb_show.249, ptr @switch.table.xhci_ring_trb_show.250, ptr @switch.table.xhci_ring_trb_show.251, ptr @switch.table.xhci_slot_context_show, ptr @switch.table.xhci_slot_context_show.252, ptr @switch.table.xhci_endpoint_context_show, ptr @switch.table.xhci_endpoint_context_show.253, ptr @switch.table.xhci_portsc_show], section "llvm.metadata"
@0 = internal global [270 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stream_id_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_stream_context_array_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_debugfs_root to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_cap_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_op_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_runtime_regs to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_extcap_legsup to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_extcap_protocol to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_extcap_dbc to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ring_files to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_ring_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 85, i32 128, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @context_files to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xhci_context_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @port_fops to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_ring_trb_show to i32), i32 148, i32 192, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_ring_trb_show.247 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_ring_trb_show.248 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_ring_trb_show.249 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_ring_trb_show.250 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_ring_trb_show.251 to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_slot_context_show to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_slot_context_show.252 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_endpoint_context_show to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_endpoint_context_show.253 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.xhci_portsc_show to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_endpoint(ptr nocapture noundef readnone %xhci, ptr nocapture noundef readonly %dev, i32 noundef %ep_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_private = getelementptr inbounds %struct.xhci_virt_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %debugfs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.xhci_slot_priv, ptr %1, i32 0, i32 2, i32 %ep_index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 48) #14
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end3.cleanup_crit_edge, label %if.end6

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %ring = getelementptr %struct.xhci_virt_device, ptr %dev, i32 0, i32 4, i32 %ep_index, i32 2
  %5 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ring, align 4
  %show_ring = getelementptr inbounds %struct.xhci_ep_priv, ptr %call7.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %show_ring to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %show_ring, align 8
  %call9 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %ep_index)
  %root = getelementptr inbounds %struct.xhci_slot_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %root, align 4
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull %call7.i.i, ptr noundef %9) #11
  %call.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %show_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %show_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %show_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %show_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %root14 = getelementptr inbounds %struct.xhci_ep_priv, ptr %call7.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %root14 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %root14, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_remove_endpoint(ptr nocapture noundef readnone %xhci, ptr nocapture noundef readonly %dev, i32 noundef %ep_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_private = getelementptr inbounds %struct.xhci_virt_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %debugfs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.xhci_slot_priv, ptr %1, i32 0, i32 2, i32 %ep_index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %root = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  tail call void @debugfs_remove(ptr noundef %5) #11
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %arrayidx, align 4
  tail call void @kfree(ptr noundef nonnull %3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_stream_files(ptr nocapture noundef readnone %xhci, ptr nocapture noundef readonly %dev, i32 noundef %ep_index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_private = getelementptr inbounds %struct.xhci_virt_device, ptr %dev, i32 0, i32 11
  %0 = ptrtoint ptr %debugfs_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx = getelementptr %struct.xhci_slot_priv, ptr %1, i32 0, i32 2, i32 %ep_index
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %stream_info = getelementptr %struct.xhci_virt_device, ptr %dev, i32 0, i32 4, i32 %ep_index, i32 3
  %4 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %stream_info, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false2.cleanup_crit_edge, label %if.end

lor.lhs.false2.cleanup_crit_edge:                 ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #13
  %stream_info11 = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %stream_info11 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %stream_info11, align 4
  %stream_id = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 4
  %7 = ptrtoint ptr %stream_id to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %stream_id, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %arrayidx13 = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx13, align 4
  %show_ring = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %show_ring to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %show_ring, align 4
  %root = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 1
  %13 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %root, align 4
  %call = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.1, i16 noundef zeroext 420, ptr noundef %14, ptr noundef nonnull %3, ptr noundef nonnull @stream_id_fops) #11
  %15 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %root, align 4
  %call15 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.2, i16 noundef zeroext 292, ptr noundef %16, ptr noundef nonnull %3, ptr noundef nonnull @xhci_stream_context_array_fops) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_file(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_slot(ptr nocapture noundef readonly %xhci, i32 noundef %slot_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %slot_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 164) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call7.i.i, i32 noundef 32, ptr noundef nonnull @.str.3, i32 noundef %slot_id)
  %debugfs_slots = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 66
  %3 = ptrtoint ptr %debugfs_slots to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %debugfs_slots, align 4
  %call4 = tail call ptr @debugfs_create_dir(ptr noundef nonnull %call7.i.i, ptr noundef %4) #11
  %root = getelementptr inbounds %struct.xhci_slot_priv, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %root, align 8
  %dev5 = getelementptr inbounds %struct.xhci_slot_priv, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %dev5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %dev5, align 8
  %debugfs_private = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 11
  %7 = ptrtoint ptr %debugfs_private to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7.i.i, ptr %debugfs_private, align 4
  %ring = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 4, i32 0, i32 2
  %8 = load ptr, ptr %root, align 8
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.4, ptr noundef %8) #11
  %call.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %ring, ptr noundef nonnull @xhci_ring_fops) #11
  %9 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %root, align 8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %debugfs_private.i = getelementptr inbounds %struct.xhci_virt_device, ptr %12, i32 0, i32 11
  %13 = ptrtoint ptr %debugfs_private.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %debugfs_private.i, align 4
  %call.i.i25 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.115, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %14, ptr noundef nonnull @xhci_context_fops) #11
  %call.i.1.i26 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.116, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %14, ptr noundef nonnull @xhci_context_fops) #11
  %call.i.2.i27 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.117, i16 noundef zeroext 292, ptr noundef %10, ptr noundef %14, ptr noundef nonnull @xhci_context_fops) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_remove_slot(ptr nocapture noundef readonly %xhci, i32 noundef %slot_id) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.xhci_hcd, ptr %xhci, i32 0, i32 42, i32 %slot_id
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %debugfs_private = getelementptr inbounds %struct.xhci_virt_device, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %debugfs_private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %debugfs_private, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %root = getelementptr inbounds %struct.xhci_slot_priv, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %root, align 4
  tail call void @debugfs_remove(ptr noundef %5) #11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.015 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx3 = getelementptr %struct.xhci_slot_priv, ptr %3, i32 0, i32 2, i32 %i.015
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  tail call void @kfree(ptr noundef %7) #11
  %inc = add nuw nsw i32 %i.015, 1
  %exitcond.not = icmp eq i32 %inc, 31
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @kfree(ptr noundef nonnull %3) #11
  %8 = ptrtoint ptr %debugfs_private to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %debugfs_private, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_init(ptr noundef %xhci) local_unnamed_addr #0 align 64 {
entry:
  %port_name.i = alloca [8 x i8], align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xhci, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %init_name.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %entry.dev_name.exit_crit_edge ]
  %8 = load ptr, ptr @xhci_debugfs_root, align 4
  %call2 = tail call ptr @debugfs_create_dir(ptr noundef %retval.0.i, ptr noundef %8) #11
  %debugfs_root = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 65
  %9 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call2, ptr %debugfs_root, align 8
  %regset_list = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 67
  %10 = ptrtoint ptr %regset_list to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %regset_list, ptr %regset_list, align 4
  %prev.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 67, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %regset_list, ptr %prev.i, align 4
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %xhci, i32 noundef 0, ptr noundef nonnull @xhci_cap_regs, i32 noundef 8, ptr noundef %call2, ptr noundef nonnull @.str.5)
  %cap_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 2
  %12 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cap_regs, align 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !533
  %15 = lshr i32 %14, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !534
  %16 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %debugfs_root, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %xhci, i32 noundef %15, ptr noundef nonnull @xhci_op_regs, i32 noundef 8, ptr noundef %17, ptr noundef nonnull @.str.6)
  %18 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cap_regs, align 8
  %run_regs_off = getelementptr inbounds %struct.xhci_cap_regs, ptr %19, i32 0, i32 6
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %run_regs_off) #11, !srcloc !533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !535
  %21 = and i32 %20, -520093697
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %debugfs_root, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %xhci, i32 noundef %22, ptr noundef nonnull @xhci_runtime_regs, i32 noundef 8, ptr noundef %24, ptr noundef nonnull @.str.7)
  tail call fastcc void @xhci_debugfs_extcap_regset(ptr noundef %xhci, i32 noundef 1, ptr noundef nonnull @xhci_extcap_legsup, i32 noundef 2, ptr noundef nonnull @.str.8)
  tail call fastcc void @xhci_debugfs_extcap_regset(ptr noundef %xhci, i32 noundef 2, ptr noundef nonnull @xhci_extcap_protocol, i32 noundef 10, ptr noundef nonnull @.str.9)
  tail call fastcc void @xhci_debugfs_extcap_regset(ptr noundef %xhci, i32 noundef 10, ptr noundef nonnull @xhci_extcap_dbc, i32 noundef 14, ptr noundef nonnull @.str.10)
  %cmd_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 29
  %25 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %debugfs_root, align 8
  %call.i = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.11, ptr noundef %26) #11
  %call.i.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %cmd_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.1.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %cmd_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.2.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %cmd_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.3.i = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %call.i, ptr noundef %cmd_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %event_ring = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 36
  %27 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %debugfs_root, align 8
  %call.i45 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.12, ptr noundef %28) #11
  %call.i.i46 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.15, i16 noundef zeroext 292, ptr noundef %call.i45, ptr noundef %event_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.1.i47 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.16, i16 noundef zeroext 292, ptr noundef %call.i45, ptr noundef %event_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.2.i48 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.17, i16 noundef zeroext 292, ptr noundef %call.i45, ptr noundef %event_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %call.i.3.i49 = tail call ptr @debugfs_create_file(ptr noundef nonnull @.str.18, i16 noundef zeroext 292, ptr noundef %call.i45, ptr noundef %event_ring, ptr noundef nonnull @xhci_ring_fops) #11
  %29 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %debugfs_root, align 8
  %call20 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.13, ptr noundef %30) #11
  %debugfs_slots = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 66
  %31 = ptrtoint ptr %debugfs_slots to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call20, ptr %debugfs_slots, align 4
  %32 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %debugfs_root, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %port_name.i) #11
  %hcs_params1.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 7
  %34 = ptrtoint ptr %port_name.i to i32
  call void @__asan_store8_noabort(i32 %34)
  store i64 -1, ptr %port_name.i, align 8
  %35 = ptrtoint ptr %hcs_params1.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hcs_params1.i, align 4
  %shr.i = lshr i32 %36, 24
  %and.i = and i32 %shr.i, 127
  %call.i50 = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.205, ptr noundef %33) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not9.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not9.i, label %dev_name.exit.xhci_debugfs_create_ports.exit_crit_edge, label %while.body.lr.ph.i

dev_name.exit.xhci_debugfs_create_ports.exit_crit_edge: ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_debugfs_create_ports.exit

while.body.lr.ph.i:                               ; preds = %dev_name.exit
  %hw_ports.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 54
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %num_ports.010.i = phi i32 [ %and.i, %while.body.lr.ph.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add nsw i32 %num_ports.010.i, -1
  %call1.i = call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef nonnull %port_name.i, i32 noundef 8, ptr noundef nonnull @.str.206, i32 noundef %num_ports.010.i) #11
  %call3.i = call ptr @debugfs_create_dir(ptr noundef nonnull %port_name.i, ptr noundef %call.i50) #11
  %37 = ptrtoint ptr %hw_ports.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hw_ports.i, align 8
  %arrayidx.i = getelementptr %struct.xhci_port, ptr %38, i32 %dec.i
  %call4.i = call ptr @debugfs_create_file(ptr noundef nonnull @.str.207, i16 noundef zeroext 420, ptr noundef %call3.i, ptr noundef %arrayidx.i, ptr noundef nonnull @port_fops) #11
  %tobool.not.i51 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i51, label %while.body.i.xhci_debugfs_create_ports.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

while.body.i.xhci_debugfs_create_ports.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_debugfs_create_ports.exit

xhci_debugfs_create_ports.exit:                   ; preds = %while.body.i.xhci_debugfs_create_ports.exit_crit_edge, %dev_name.exit.xhci_debugfs_create_ports.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %port_name.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xhci_debugfs_regset(ptr noundef %xhci, i32 noundef %base, ptr noundef %regs, i32 noundef %nregs, ptr noundef %parent, ptr nocapture noundef readonly %fmt, ...) unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #11
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !536
  %1 = ptrtoint ptr %xhci to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %xhci, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 60) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %list.i = getelementptr inbounds %struct.xhci_regset, ptr %call7.i.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %list.i, ptr %list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.xhci_regset, ptr %call7.i.i.i, i32 0, i32 3, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %list.i, ptr %prev.i.i, align 8
  %regset_list.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 67
  %prev.i5.i = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 67, i32 1
  %6 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i5.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %7, ptr noundef %regset_list.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end_crit_edge

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %prev.i5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list.i, ptr %prev.i5.i, align 4
  %9 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %regset_list.i, ptr %list.i, align 4
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev.i.i, align 8
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %list.i, ptr %7, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i.i, %if.end.i.if.end_crit_edge
  call void @llvm.va_start(ptr nonnull %args)
  %12 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %12)
  %.fca.0.load = load i32, ptr %args, align 4
  %.fca.0.insert = insertvalue [1 x i32] poison, i32 %.fca.0.load, 0
  %call2 = call i32 @vsnprintf(ptr noundef nonnull %call7.i.i.i, i32 noundef 32, ptr noundef %fmt, [1 x i32] %.fca.0.insert)
  call void @llvm.va_end(ptr nonnull %args)
  %regset3 = getelementptr inbounds %struct.xhci_regset, ptr %call7.i.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %regset3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %regs, ptr %regset3, align 8
  %nregs5 = getelementptr inbounds %struct.xhci_regset, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %nregs5 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %nregs, ptr %nregs5, align 4
  %regs6 = getelementptr inbounds %struct.usb_hcd, ptr %2, i32 0, i32 16
  %15 = ptrtoint ptr %regs6 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs6, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 %base
  %base7 = getelementptr inbounds %struct.xhci_regset, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %17 = ptrtoint ptr %base7 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %base7, align 8
  call void @debugfs_create_regset32(ptr noundef nonnull %call7.i.i.i, i16 noundef zeroext 292, ptr noundef %parent, ptr noundef %regset3) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xhci_debugfs_extcap_regset(ptr noundef %xhci, i32 noundef %cap_id, ptr noundef %regs, i32 noundef %n, ptr noundef %cap_name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cap_regs = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 2
  %0 = ptrtoint ptr %cap_regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap_regs, align 8
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %2)
  %cmp2.i = icmp eq i32 %2, -1
  br i1 %cmp2.i, label %entry.while.end_crit_edge, label %if.end.i

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i:                                         ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #11
  %4 = lshr i32 %3, 14
  %shl.i = and i32 %4, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i)
  %tobool4.not.i = icmp eq i32 %shl.i, 0
  br i1 %tobool4.not.i, label %if.end.i.while.end_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  br label %do.body.i

if.end.i.while.end_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.i:                                        ; preds = %if.end24.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  %offset.1.i = phi i32 [ %add.i, %if.end24.i.do.body.i_crit_edge ], [ %shl.i, %if.end.i.do.body.i_crit_edge ]
  %add.ptr10.i = getelementptr i8, ptr %1, i32 %offset.1.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #11, !srcloc !533
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !538
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %5)
  %cmp14.i = icmp eq i32 %5, -1
  br i1 %cmp14.i, label %do.body.i.while.end_crit_edge, label %if.end16.i

do.body.i.while.end_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end16.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %offset.1.i)
  %cmp17.not.i = icmp ne i32 %offset.1.i, 0
  %and21.i = and i32 %6, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and21.i, i32 %cap_id)
  %cmp22.i = icmp eq i32 %and21.i, %cap_id
  %or.cond.i = select i1 %cmp17.not.i, i1 %cmp22.i, i1 false
  br i1 %or.cond.i, label %while.body.lr.ph, label %if.end24.i

if.end24.i:                                       ; preds = %if.end16.i
  %shr25.i = lshr i32 %6, 8
  %and26.i = and i32 %shr25.i, 255
  %shl27.i = shl nuw nsw i32 %and26.i, 2
  %add.i = add i32 %shl27.i, %offset.1.i
  %tobool28.not.i = icmp eq i32 %and26.i, 0
  br i1 %tobool28.not.i, label %if.end24.i.while.end_crit_edge, label %if.end24.i.do.body.i_crit_edge

if.end24.i.do.body.i_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i

if.end24.i.while.end_crit_edge:                   ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %cap_id)
  %cmp = icmp eq i32 %cap_id, 2
  %debugfs_root = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 65
  %add.ptr = getelementptr i8, ptr %1, i32 8
  br label %while.body

while.body:                                       ; preds = %xhci_find_next_ext_cap.exit42.while.body_crit_edge, %while.body.lr.ph
  %offset.046 = phi i32 [ %offset.1.i, %while.body.lr.ph ], [ %offset.1.i26, %xhci_find_next_ext_cap.exit42.while.body_crit_edge ]
  %index.045 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %xhci_find_next_ext_cap.exit42.while.body_crit_edge ]
  %nregs.044 = phi i32 [ %n, %while.body.lr.ph ], [ %nregs.1, %xhci_find_next_ext_cap.exit42.while.body_crit_edge ]
  br i1 %cmp, label %if.then, label %while.body.if.end_crit_edge

while.body.if.end_crit_edge:                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %offset.046
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #11, !srcloc !533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !539
  %8 = lshr i32 %7, 4
  %shr = and i32 %8, 15
  %add = add nuw nsw i32 %shr, 4
  %9 = tail call i32 @llvm.umin.i32(i32 %add, i32 %n)
  br label %if.end

if.end:                                           ; preds = %if.then, %while.body.if.end_crit_edge
  %nregs.1 = phi i32 [ %9, %if.then ], [ %nregs.044, %while.body.if.end_crit_edge ]
  %10 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %debugfs_root, align 8
  tail call void (ptr, i32, ptr, i32, ptr, ptr, ...) @xhci_debugfs_regset(ptr noundef %xhci, i32 noundef %offset.046, ptr noundef %regs, i32 noundef %nregs.1, ptr noundef %11, ptr noundef nonnull @.str.178, ptr noundef %cap_name, i32 noundef %index.045)
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %offset.046)
  %cond = icmp eq i32 %offset.046, 16
  br i1 %cond, label %if.then.i, label %if.end.do.body.i29.preheader_crit_edge

if.end.do.body.i29.preheader_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i29.preheader

if.then.i:                                        ; preds = %if.end
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !533
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !537
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %12)
  %cmp2.i21 = icmp eq i32 %12, -1
  br i1 %cmp2.i21, label %if.then.i.while.end_crit_edge, label %if.end.i24

if.then.i.while.end_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end.i24:                                       ; preds = %if.then.i
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #11
  %14 = lshr i32 %13, 14
  %shl.i22 = and i32 %14, 262140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl.i22)
  %tobool4.not.i23 = icmp eq i32 %shl.i22, 0
  br i1 %tobool4.not.i23, label %if.end.i24.while.end_crit_edge, label %if.end.i24.do.body.i29.preheader_crit_edge

if.end.i24.do.body.i29.preheader_crit_edge:       ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i29.preheader

if.end.i24.while.end_crit_edge:                   ; preds = %if.end.i24
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

do.body.i29.preheader:                            ; preds = %if.end.i24.do.body.i29.preheader_crit_edge, %if.end.do.body.i29.preheader_crit_edge
  %offset.1.i26.ph = phi i32 [ %offset.046, %if.end.do.body.i29.preheader_crit_edge ], [ %shl.i22, %if.end.i24.do.body.i29.preheader_crit_edge ]
  br label %do.body.i29

do.body.i29:                                      ; preds = %if.end24.i40.do.body.i29_crit_edge, %do.body.i29.preheader
  %offset.1.i26 = phi i32 [ %add.i38, %if.end24.i40.do.body.i29_crit_edge ], [ %offset.1.i26.ph, %do.body.i29.preheader ]
  %add.ptr10.i27 = getelementptr i8, ptr %1, i32 %offset.1.i26
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i27) #11, !srcloc !533
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !538
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %15)
  %cmp14.i28 = icmp eq i32 %15, -1
  br i1 %cmp14.i28, label %do.body.i29.while.end_crit_edge, label %if.end16.i34

do.body.i29.while.end_crit_edge:                  ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end16.i34:                                     ; preds = %do.body.i29
  call void @__sanitizer_cov_trace_cmp4(i32 %offset.1.i26, i32 %offset.046)
  %cmp17.not.i30 = icmp ne i32 %offset.1.i26, %offset.046
  %and21.i31 = and i32 %16, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %and21.i31, i32 %cap_id)
  %cmp22.i32 = icmp eq i32 %and21.i31, %cap_id
  %or.cond.i33 = select i1 %cmp17.not.i30, i1 %cmp22.i32, i1 false
  br i1 %or.cond.i33, label %xhci_find_next_ext_cap.exit42, label %if.end24.i40

if.end24.i40:                                     ; preds = %if.end16.i34
  %shr25.i35 = lshr i32 %16, 8
  %and26.i36 = and i32 %shr25.i35, 255
  %shl27.i37 = shl nuw nsw i32 %and26.i36, 2
  %add.i38 = add i32 %shl27.i37, %offset.1.i26
  %tobool28.not.i39 = icmp eq i32 %and26.i36, 0
  br i1 %tobool28.not.i39, label %if.end24.i40.while.end_crit_edge, label %if.end24.i40.do.body.i29_crit_edge

if.end24.i40.do.body.i29_crit_edge:               ; preds = %if.end24.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i29

if.end24.i40.while.end_crit_edge:                 ; preds = %if.end24.i40
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

xhci_find_next_ext_cap.exit42:                    ; preds = %if.end16.i34
  %inc = add i32 %index.045, 1
  %tobool.not = icmp eq i32 %offset.1.i26, 0
  br i1 %tobool.not, label %xhci_find_next_ext_cap.exit42.while.end_crit_edge, label %xhci_find_next_ext_cap.exit42.while.body_crit_edge

xhci_find_next_ext_cap.exit42.while.body_crit_edge: ; preds = %xhci_find_next_ext_cap.exit42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

xhci_find_next_ext_cap.exit42.while.end_crit_edge: ; preds = %xhci_find_next_ext_cap.exit42
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %xhci_find_next_ext_cap.exit42.while.end_crit_edge, %if.end24.i40.while.end_crit_edge, %do.body.i29.while.end_crit_edge, %if.end.i24.while.end_crit_edge, %if.then.i.while.end_crit_edge, %if.end24.i.while.end_crit_edge, %do.body.i.while.end_crit_edge, %if.end.i.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_exit(ptr noundef %xhci) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %debugfs_root = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 65
  %0 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %debugfs_root, align 8
  tail call void @debugfs_remove(ptr noundef %1) #11
  %2 = ptrtoint ptr %debugfs_root to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %debugfs_root, align 8
  %debugfs_slots = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 66
  %3 = ptrtoint ptr %debugfs_slots to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %debugfs_slots, align 4
  %regset_list = getelementptr inbounds %struct.xhci_hcd, ptr %xhci, i32 0, i32 67
  %4 = ptrtoint ptr %regset_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regset_list, align 8
  %cmp.not22 = icmp eq ptr %5, %regset_list
  br i1 %cmp.not22, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %xhci_debugfs_free_regset.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in23 = phi ptr [ %.pn, %xhci_debugfs_free_regset.exit.for.body_crit_edge ], [ %5, %entry.for.body_crit_edge ]
  %rgs.0 = getelementptr i8, ptr %.pn.in23, i32 -52
  %6 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn.in23, align 4
  %tobool.not.i = icmp eq ptr %rgs.0, null
  br i1 %tobool.not.i, label %for.body.xhci_debugfs_free_regset.exit_crit_edge, label %if.end.i

for.body.xhci_debugfs_free_regset.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_debugfs_free_regset.exit

if.end.i:                                         ; preds = %for.body
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in23) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del.exit.i_crit_edge

if.end.i.list_del.exit.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr i8, ptr %.pn.in23, i32 4
  %7 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i, align 4
  %9 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in23, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end.i.list_del.exit.i_crit_edge
  %13 = ptrtoint ptr %.pn.in23 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in23, align 4
  %prev.i.i = getelementptr i8, ptr %.pn.in23, i32 4
  %14 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef nonnull %rgs.0) #11
  br label %xhci_debugfs_free_regset.exit

xhci_debugfs_free_regset.exit:                    ; preds = %list_del.exit.i, %for.body.xhci_debugfs_free_regset.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %regset_list
  br i1 %cmp.not, label %xhci_debugfs_free_regset.exit.for.end_crit_edge, label %xhci_debugfs_free_regset.exit.for.body_crit_edge

xhci_debugfs_free_regset.exit.for.body_crit_edge: ; preds = %xhci_debugfs_free_regset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

xhci_debugfs_free_regset.exit.for.end_crit_edge:  ; preds = %xhci_debugfs_free_regset.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %xhci_debugfs_free_regset.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_create_root() local_unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @usb_debug_root to i32))
  %0 = load ptr, ptr @usb_debug_root, align 4
  %call = tail call ptr @debugfs_create_dir(ptr noundef nonnull @.str.14, ptr noundef %0) #11
  store ptr %call, ptr @xhci_debugfs_root, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @xhci_debugfs_remove_root() #5 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = load ptr, ptr @xhci_debugfs_root, align 4
  tail call void @debugfs_remove(ptr noundef %0) #11
  store ptr null, ptr @xhci_debugfs_root, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_ring_enqueue_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #11
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %enq_seg = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %enq_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enq_seg, align 4
  %enqueue = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %enqueue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enqueue, align 4
  %call = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %5, ptr noundef %7) #11
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %dma, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, ptr noundef nonnull %dma) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_ring_dequeue_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #11
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %deq_seg = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %deq_seg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %deq_seg, align 4
  %dequeue = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %dequeue to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dequeue, align 4
  %call = tail call i32 @xhci_trb_virt_to_dma(ptr noundef %5, ptr noundef %7) #11
  %8 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call, ptr %dma, align 4
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.19, ptr noundef nonnull %dma) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_ring_cycle_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cycle_state = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %cycle_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cycle_state, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.20, i32 noundef %5) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_ring_trb_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %dma.i = alloca i32, align 4
  %str.i = alloca [500 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %num_segs = getelementptr inbounds %struct.xhci_ring, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_segs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %xhci_ring_dump_segment.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %seg.0.in7 = phi ptr [ %next, %xhci_ring_dump_segment.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %i.06 = phi i32 [ %inc, %xhci_ring_dump_segment.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %6 = ptrtoint ptr %seg.0.in7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %seg.0 = load ptr, ptr %seg.0.in7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma.i) #11
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %str.i) #11
  %7 = call ptr @memset(ptr %str.i, i32 255, i32 500)
  %dma1.i = getelementptr inbounds %struct.xhci_segment, ptr %seg.0, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %xhci_decode_trb.exit.i.for.body.i_crit_edge, %for.body
  %i.016.i = phi i32 [ 0, %for.body ], [ %inc.i, %xhci_decode_trb.exit.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %seg.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %seg.0, align 4
  %arrayidx.i = getelementptr %union.xhci_trb, ptr %9, i32 %i.016.i
  %10 = ptrtoint ptr %dma1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma1.i, align 4
  %mul.i = shl i32 %i.016.i, 4
  %add.i = add i32 %11, %mul.i
  %12 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add.i, ptr %dma.i, align 4
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 8
  %15 = call i32 @llvm.bswap.i32(i32 %14) #11
  %arrayidx4.i = getelementptr [4 x i32], ptr %arrayidx.i, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx4.i, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17) #11
  %arrayidx6.i = getelementptr [4 x i32], ptr %arrayidx.i, i32 0, i32 2
  %19 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx6.i, align 8
  %21 = call i32 @llvm.bswap.i32(i32 %20) #11
  %arrayidx8.i = getelementptr [4 x i32], ptr %arrayidx.i, i32 0, i32 3
  %22 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx8.i, align 4
  %24 = call i32 @llvm.bswap.i32(i32 %23) #11
  %and.i.i = lshr i32 %24, 10
  %shr.i.i = and i32 %and.i.i, 63
  %25 = zext i32 %shr.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i32 %shr.i.i, label %sw.default.i.i [
    i32 6, label %sw.bb.i.i
    i32 32, label %for.body.i.sw.bb14.i.i_crit_edge
    i32 33, label %for.body.i.sw.bb14.i.i_crit_edge27
    i32 34, label %for.body.i.sw.bb14.i.i_crit_edge28
    i32 35, label %for.body.i.sw.bb14.i.i_crit_edge29
    i32 36, label %for.body.i.sw.bb14.i.i_crit_edge30
    i32 37, label %for.body.i.sw.bb14.i.i_crit_edge31
    i32 38, label %for.body.i.sw.bb14.i.i_crit_edge32
    i32 39, label %for.body.i.sw.bb14.i.i_crit_edge33
    i32 2, label %sw.bb33.i.i
    i32 3, label %sw.bb65.i.i
    i32 4, label %sw.bb95.i.i
    i32 1, label %for.body.i.sw.bb116.i.i_crit_edge
    i32 5, label %for.body.i.sw.bb116.i.i_crit_edge34
    i32 7, label %for.body.i.sw.bb116.i.i_crit_edge35
    i32 8, label %for.body.i.sw.bb116.i.i_crit_edge36
    i32 23, label %for.body.i.sw.bb149.i.i_crit_edge
    i32 9, label %for.body.i.sw.bb149.i.i_crit_edge37
    i32 10, label %for.body.i.sw.bb156.i.i_crit_edge
    i32 19, label %for.body.i.sw.bb156.i.i_crit_edge38
    i32 11, label %sw.bb165.i.i
    i32 12, label %sw.bb177.i.i
    i32 13, label %sw.bb189.i.i
    i32 14, label %sw.bb198.i.i
    i32 15, label %sw.bb214.i.i
    i32 16, label %sw.bb229.i.i
    i32 17, label %sw.bb244.i.i
    i32 18, label %sw.bb253.i.i
    i32 20, label %sw.bb264.i.i
    i32 21, label %sw.bb273.i.i
    i32 22, label %sw.bb284.i.i
  ]

for.body.i.sw.bb156.i.i_crit_edge38:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb156.i.i

for.body.i.sw.bb156.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb156.i.i

for.body.i.sw.bb149.i.i_crit_edge37:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb149.i.i

for.body.i.sw.bb149.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb149.i.i

for.body.i.sw.bb116.i.i_crit_edge36:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb116.i.i

for.body.i.sw.bb116.i.i_crit_edge35:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb116.i.i

for.body.i.sw.bb116.i.i_crit_edge34:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb116.i.i

for.body.i.sw.bb116.i.i_crit_edge:                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb116.i.i

for.body.i.sw.bb14.i.i_crit_edge33:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

for.body.i.sw.bb14.i.i_crit_edge32:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

for.body.i.sw.bb14.i.i_crit_edge31:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

for.body.i.sw.bb14.i.i_crit_edge30:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

for.body.i.sw.bb14.i.i_crit_edge29:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

for.body.i.sw.bb14.i.i_crit_edge28:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

for.body.i.sw.bb14.i.i_crit_edge27:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

for.body.i.sw.bb14.i.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb14.i.i

sw.bb.i.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr1.i.i = lshr i32 %21, 22
  %and3.i.i = and i32 %24, 32
  %26 = xor i32 %and3.i.i, 105
  %and4.i.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i.i)
  %tobool5.not.i.i = icmp eq i32 %and4.i.i, 0
  %cond6.i.i = select i1 %tobool5.not.i.i, i32 99, i32 67
  %and7.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i.i)
  %tobool8.not.i.i = icmp eq i32 %and7.i.i, 0
  %cond9.i.i = select i1 %tobool8.not.i.i, i32 116, i32 84
  %and10.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10.i.i)
  %tobool11.not.i.i = icmp eq i32 %and10.i.i, 0
  %cond12.i.i = select i1 %tobool11.not.i.i, i32 99, i32 67
  %call13.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.22, i32 noundef %18, i32 noundef %15, i32 noundef %shr1.i.i, ptr noundef nonnull @.str.45, i32 noundef %26, i32 noundef %cond6.i.i, i32 noundef %cond9.i.i, i32 noundef %cond12.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb14.i.i:                                      ; preds = %for.body.i.sw.bb14.i.i_crit_edge, %for.body.i.sw.bb14.i.i_crit_edge27, %for.body.i.sw.bb14.i.i_crit_edge28, %for.body.i.sw.bb14.i.i_crit_edge29, %for.body.i.sw.bb14.i.i_crit_edge30, %for.body.i.sw.bb14.i.i_crit_edge31, %for.body.i.sw.bb14.i.i_crit_edge32, %for.body.i.sw.bb14.i.i_crit_edge33
  %shr16.i.i = lshr i32 %21, 24
  %conv17.i.i = trunc i32 %shr16.i.i to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 37, i8 %conv17.i.i)
  %27 = icmp ult i8 %conv17.i.i, 37
  br i1 %27, label %switch.lookup, label %sw.bb14.i.i.xhci_trb_comp_code_string.exit.i.i_crit_edge

sw.bb14.i.i.xhci_trb_comp_code_string.exit.i.i_crit_edge: ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_trb_comp_code_string.exit.i.i

switch.lookup:                                    ; preds = %sw.bb14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ashr i32 %21, 24
  %switch.gep = getelementptr inbounds [37 x ptr], ptr @switch.table.xhci_ring_trb_show, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %xhci_trb_comp_code_string.exit.i.i

xhci_trb_comp_code_string.exit.i.i:               ; preds = %switch.lookup, %sw.bb14.i.i.xhci_trb_comp_code_string.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.110, %sw.bb14.i.i.xhci_trb_comp_code_string.exit.i.i_crit_edge ]
  %and19.i.i = and i32 %21, 16777215
  %shr21.i.i = lshr i32 %24, 24
  %and22.i.i = lshr i32 %24, 16
  %shr23.i.i = and i32 %and22.i.i, 31
  %trunc205.i.i = trunc i32 %and.i.i to i6
  %switch.tableidx = xor i6 %trunc205.i.i, -32
  %30 = sext i6 %switch.tableidx to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %30)
  %31 = icmp ult i6 %switch.tableidx, 8
  br i1 %31, label %switch.lookup8, label %xhci_trb_comp_code_string.exit.i.i.xhci_trb_type_string.exit.i.i_crit_edge

xhci_trb_comp_code_string.exit.i.i.xhci_trb_type_string.exit.i.i_crit_edge: ; preds = %xhci_trb_comp_code_string.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_trb_type_string.exit.i.i

switch.lookup8:                                   ; preds = %xhci_trb_comp_code_string.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %32 = sext i6 %switch.tableidx to i32
  %switch.gep9 = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_ring_trb_show.247, i32 0, i32 %32
  %33 = ptrtoint ptr %switch.gep9 to i32
  call void @__asan_load4_noabort(i32 %33)
  %switch.load10 = load ptr, ptr %switch.gep9, align 4
  br label %xhci_trb_type_string.exit.i.i

xhci_trb_type_string.exit.i.i:                    ; preds = %switch.lookup8, %xhci_trb_comp_code_string.exit.i.i.xhci_trb_type_string.exit.i.i_crit_edge
  %retval.0.i34.i.i = phi ptr [ %switch.load10, %switch.lookup8 ], [ @.str.73, %xhci_trb_comp_code_string.exit.i.i.xhci_trb_type_string.exit.i.i_crit_edge ]
  %and26.i.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and26.i.i)
  %tobool27.not.i.i = icmp eq i32 %and26.i.i, 0
  %cond28.i.i = select i1 %tobool27.not.i.i, i32 101, i32 69
  %and29.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i.i)
  %tobool30.not.i.i = icmp eq i32 %and29.i.i, 0
  %cond31.i.i = select i1 %tobool30.not.i.i, i32 99, i32 67
  %call32.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.23, i32 noundef %18, i32 noundef %15, ptr noundef nonnull %retval.0.i.i.i, i32 noundef %and19.i.i, i32 noundef %shr21.i.i, i32 noundef %shr23.i.i, ptr noundef nonnull %retval.0.i34.i.i, i32 noundef %cond28.i.i, i32 noundef %cond31.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb33.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %and34.i.i = and i32 %15, 255
  %and35.i.i = lshr i32 %15, 8
  %shr36.i.i = and i32 %and35.i.i, 255
  %shr38.i.i = lshr i32 %15, 24
  %and39.i.i = lshr i32 %15, 16
  %shr40.i.i = and i32 %and39.i.i, 255
  %and41.i.i = lshr i32 %18, 8
  %shr42.i.i = and i32 %and41.i.i, 255
  %and43.i.i = and i32 %18, 255
  %and44.i.i = lshr i32 %18, 16
  %and48.i.i = and i32 %21, 131071
  %and49.i.i = lshr i32 %21, 17
  %shr50.i.i = and i32 %and49.i.i, 31
  %shr51.i.i = lshr i32 %21, 22
  %and55.i.i = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and55.i.i)
  %tobool56.not.i.i = icmp eq i32 %and55.i.i, 0
  %cond57.i.i = select i1 %tobool56.not.i.i, i32 105, i32 73
  %and58.i.i = and i32 %24, 32
  %34 = xor i32 %and58.i.i, 105
  %and61.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61.i.i)
  %tobool62.not.i.i = icmp eq i32 %and61.i.i, 0
  %cond63.i.i = select i1 %tobool62.not.i.i, i32 99, i32 67
  %call64.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.24, i32 noundef %and34.i.i, i32 noundef %shr36.i.i, i32 noundef %shr38.i.i, i32 noundef %shr40.i.i, i32 noundef %shr42.i.i, i32 noundef %and43.i.i, i32 noundef %and44.i.i, i32 noundef %and48.i.i, i32 noundef %shr50.i.i, i32 noundef %shr51.i.i, ptr noundef nonnull @.str.41, i32 noundef %cond57.i.i, i32 noundef %34, i32 noundef %cond63.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb65.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %and66.i.i = and i32 %21, 131071
  %and67.i.i = lshr i32 %21, 17
  %shr68.i.i = and i32 %and67.i.i, 31
  %shr69.i.i = lshr i32 %21, 22
  %and73.i.i = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and73.i.i)
  %tobool74.not.i.i = icmp eq i32 %and73.i.i, 0
  %cond75.i.i = select i1 %tobool74.not.i.i, i32 105, i32 73
  %and76.i.i = and i32 %24, 32
  %35 = xor i32 %and76.i.i, 105
  %and79.i.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and79.i.i)
  %tobool80.not.i.i = icmp eq i32 %and79.i.i, 0
  %cond81.i.i = select i1 %tobool80.not.i.i, i32 99, i32 67
  %and82.i.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and82.i.i)
  %tobool83.not.i.i = icmp eq i32 %and82.i.i, 0
  %cond84.i.i = select i1 %tobool83.not.i.i, i32 115, i32 83
  %and85.i.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and85.i.i)
  %tobool86.not.i.i = icmp eq i32 %and85.i.i, 0
  %cond87.i.i = select i1 %tobool86.not.i.i, i32 105, i32 73
  %and88.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i.i)
  %tobool89.not.i.i = icmp eq i32 %and88.i.i, 0
  %cond90.i.i = select i1 %tobool89.not.i.i, i32 101, i32 69
  %and91.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and91.i.i)
  %tobool92.not.i.i = icmp eq i32 %and91.i.i, 0
  %cond93.i.i = select i1 %tobool92.not.i.i, i32 99, i32 67
  %call94.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.25, i32 noundef %18, i32 noundef %15, i32 noundef %and66.i.i, i32 noundef %shr68.i.i, i32 noundef %shr69.i.i, ptr noundef nonnull @.str.42, i32 noundef %cond75.i.i, i32 noundef %35, i32 noundef %cond81.i.i, i32 noundef %cond84.i.i, i32 noundef %cond87.i.i, i32 noundef %cond90.i.i, i32 noundef %cond93.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb95.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %and96.i.i = and i32 %21, 131071
  %and97.i.i = lshr i32 %21, 17
  %shr98.i.i = and i32 %and97.i.i, 31
  %shr99.i.i = lshr i32 %21, 22
  %and103.i.i = and i32 %24, 32
  %36 = xor i32 %and103.i.i, 105
  %and106.i.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106.i.i)
  %tobool107.not.i.i = icmp eq i32 %and106.i.i, 0
  %cond108.i.i = select i1 %tobool107.not.i.i, i32 99, i32 67
  %and109.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and109.i.i)
  %tobool110.not.i.i = icmp eq i32 %and109.i.i, 0
  %cond111.i.i = select i1 %tobool110.not.i.i, i32 101, i32 69
  %and112.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and112.i.i)
  %tobool113.not.i.i = icmp eq i32 %and112.i.i, 0
  %cond114.i.i = select i1 %tobool113.not.i.i, i32 99, i32 67
  %call115.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.26, i32 noundef %18, i32 noundef %15, i32 noundef %and96.i.i, i32 noundef %shr98.i.i, i32 noundef %shr99.i.i, ptr noundef nonnull @.str.43, i32 noundef %36, i32 noundef %cond108.i.i, i32 noundef %cond111.i.i, i32 noundef %cond114.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb116.i.i:                                     ; preds = %for.body.i.sw.bb116.i.i_crit_edge, %for.body.i.sw.bb116.i.i_crit_edge34, %for.body.i.sw.bb116.i.i_crit_edge35, %for.body.i.sw.bb116.i.i_crit_edge36
  %and117.i.i = and i32 %21, 131071
  %and118.i.i = lshr i32 %21, 17
  %shr119.i.i = and i32 %and118.i.i, 31
  %shr120.i.i = lshr i32 %21, 22
  %trunc204.i.i = trunc i32 %and.i.i to i6
  %switch.tableidx12 = add i6 %trunc204.i.i, -1
  %37 = sext i6 %switch.tableidx12 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %37)
  %38 = icmp ult i6 %switch.tableidx12, 8
  br i1 %38, label %switch.lookup11, label %sw.bb116.i.i.xhci_trb_type_string.exit75.i.i_crit_edge

sw.bb116.i.i.xhci_trb_type_string.exit75.i.i_crit_edge: ; preds = %sw.bb116.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_trb_type_string.exit75.i.i

switch.lookup11:                                  ; preds = %sw.bb116.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %39 = sext i6 %switch.tableidx12 to i32
  %switch.gep13 = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_ring_trb_show.248, i32 0, i32 %39
  %40 = ptrtoint ptr %switch.gep13 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load14 = load ptr, ptr %switch.gep13, align 4
  br label %xhci_trb_type_string.exit75.i.i

xhci_trb_type_string.exit75.i.i:                  ; preds = %switch.lookup11, %sw.bb116.i.i.xhci_trb_type_string.exit75.i.i_crit_edge
  %retval.0.i74.i.i = phi ptr [ %switch.load14, %switch.lookup11 ], [ @.str.73, %sw.bb116.i.i.xhci_trb_type_string.exit75.i.i_crit_edge ]
  %and124.i.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i.i)
  %tobool125.not.i.i = icmp eq i32 %and124.i.i, 0
  %cond126.i.i = select i1 %tobool125.not.i.i, i32 98, i32 66
  %and127.i.i = and i32 %24, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and127.i.i)
  %tobool128.not.i.i = icmp eq i32 %and127.i.i, 0
  %cond129.i.i = select i1 %tobool128.not.i.i, i32 105, i32 73
  %and130.i.i = and i32 %24, 32
  %41 = xor i32 %and130.i.i, 105
  %and133.i.i = and i32 %24, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and133.i.i)
  %tobool134.not.i.i = icmp eq i32 %and133.i.i, 0
  %cond135.i.i = select i1 %tobool134.not.i.i, i32 99, i32 67
  %and136.i.i = and i32 %24, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and136.i.i)
  %tobool137.not.i.i = icmp eq i32 %and136.i.i, 0
  %cond138.i.i = select i1 %tobool137.not.i.i, i32 115, i32 83
  %and139.i.i = and i32 %24, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and139.i.i)
  %tobool140.not.i.i = icmp eq i32 %and139.i.i, 0
  %cond141.i.i = select i1 %tobool140.not.i.i, i32 105, i32 73
  %and142.i.i = and i32 %24, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142.i.i)
  %tobool143.not.i.i = icmp eq i32 %and142.i.i, 0
  %cond144.i.i = select i1 %tobool143.not.i.i, i32 101, i32 69
  %and145.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and145.i.i)
  %tobool146.not.i.i = icmp eq i32 %and145.i.i, 0
  %cond147.i.i = select i1 %tobool146.not.i.i, i32 99, i32 67
  %call148.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.27, i32 noundef %18, i32 noundef %15, i32 noundef %and117.i.i, i32 noundef %shr119.i.i, i32 noundef %shr120.i.i, ptr noundef nonnull %retval.0.i74.i.i, i32 noundef %cond126.i.i, i32 noundef %cond129.i.i, i32 noundef %41, i32 noundef %cond135.i.i, i32 noundef %cond138.i.i, i32 noundef %cond141.i.i, i32 noundef %cond144.i.i, i32 noundef %cond147.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb149.i.i:                                     ; preds = %for.body.i.sw.bb149.i.i_crit_edge, %for.body.i.sw.bb149.i.i_crit_edge37
  %trunc203.i.i = trunc i32 %and.i.i to i6
  %switch.tableidx16 = add i6 %trunc203.i.i, -9
  %42 = sext i6 %switch.tableidx16 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %42)
  %43 = icmp ult i6 %switch.tableidx16, 15
  br i1 %43, label %switch.lookup15, label %sw.bb149.i.i.xhci_trb_type_string.exit110.i.i_crit_edge

sw.bb149.i.i.xhci_trb_type_string.exit110.i.i_crit_edge: ; preds = %sw.bb149.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_trb_type_string.exit110.i.i

switch.lookup15:                                  ; preds = %sw.bb149.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %44 = sext i6 %switch.tableidx16 to i32
  %switch.gep17 = getelementptr inbounds [15 x ptr], ptr @switch.table.xhci_ring_trb_show.249, i32 0, i32 %44
  %45 = ptrtoint ptr %switch.gep17 to i32
  call void @__asan_load4_noabort(i32 %45)
  %switch.load18 = load ptr, ptr %switch.gep17, align 4
  br label %xhci_trb_type_string.exit110.i.i

xhci_trb_type_string.exit110.i.i:                 ; preds = %switch.lookup15, %sw.bb149.i.i.xhci_trb_type_string.exit110.i.i_crit_edge
  %retval.0.i109.i.i = phi ptr [ %switch.load18, %switch.lookup15 ], [ @.str.73, %sw.bb149.i.i.xhci_trb_type_string.exit110.i.i_crit_edge ]
  %and152.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and152.i.i)
  %tobool153.not.i.i = icmp eq i32 %and152.i.i, 0
  %cond154.i.i = select i1 %tobool153.not.i.i, i32 99, i32 67
  %call155.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.28, ptr noundef nonnull %retval.0.i109.i.i, i32 noundef %cond154.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb156.i.i:                                     ; preds = %for.body.i.sw.bb156.i.i_crit_edge, %for.body.i.sw.bb156.i.i_crit_edge38
  %trunc.i.i = trunc i32 %and.i.i to i6
  %switch.tableidx20 = add i6 %trunc.i.i, -10
  %46 = sext i6 %switch.tableidx20 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %46)
  %47 = icmp ult i6 %switch.tableidx20, 10
  br i1 %47, label %switch.lookup19, label %sw.bb156.i.i.xhci_trb_type_string.exit145.i.i_crit_edge

sw.bb156.i.i.xhci_trb_type_string.exit145.i.i_crit_edge: ; preds = %sw.bb156.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_trb_type_string.exit145.i.i

switch.lookup19:                                  ; preds = %sw.bb156.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = sext i6 %switch.tableidx20 to i32
  %switch.gep21 = getelementptr inbounds [10 x ptr], ptr @switch.table.xhci_ring_trb_show.250, i32 0, i32 %48
  %49 = ptrtoint ptr %switch.gep21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %switch.load22 = load ptr, ptr %switch.gep21, align 4
  br label %xhci_trb_type_string.exit145.i.i

xhci_trb_type_string.exit145.i.i:                 ; preds = %switch.lookup19, %sw.bb156.i.i.xhci_trb_type_string.exit145.i.i_crit_edge
  %retval.0.i144.i.i = phi ptr [ %switch.load22, %switch.lookup19 ], [ @.str.73, %sw.bb156.i.i.xhci_trb_type_string.exit145.i.i_crit_edge ]
  %shr160.i.i = lshr i32 %24, 24
  %and161.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and161.i.i)
  %tobool162.not.i.i = icmp eq i32 %and161.i.i, 0
  %cond163.i.i = select i1 %tobool162.not.i.i, i32 99, i32 67
  %call164.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.29, ptr noundef nonnull %retval.0.i144.i.i, i32 noundef %shr160.i.i, i32 noundef %cond163.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb165.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr169.i.i = lshr i32 %24, 24
  %and170.i.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and170.i.i)
  %tobool171.not.i.i = icmp eq i32 %and170.i.i, 0
  %cond172.i.i = select i1 %tobool171.not.i.i, i32 98, i32 66
  %and173.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and173.i.i)
  %tobool174.not.i.i = icmp eq i32 %and173.i.i, 0
  %cond175.i.i = select i1 %tobool174.not.i.i, i32 99, i32 67
  %call176.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.50, i32 noundef %18, i32 noundef %15, i32 noundef %shr169.i.i, i32 noundef %cond172.i.i, i32 noundef %cond175.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb177.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr181.i.i = lshr i32 %24, 24
  %and182.i.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and182.i.i)
  %tobool183.not.i.i = icmp eq i32 %and182.i.i, 0
  %cond184.i.i = select i1 %tobool183.not.i.i, i32 100, i32 68
  %and185.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and185.i.i)
  %tobool186.not.i.i = icmp eq i32 %and185.i.i, 0
  %cond187.i.i = select i1 %tobool186.not.i.i, i32 99, i32 67
  %call188.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.51, i32 noundef %18, i32 noundef %15, i32 noundef %shr181.i.i, i32 noundef %cond184.i.i, i32 noundef %cond187.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb189.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr193.i.i = lshr i32 %24, 24
  %and194.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and194.i.i)
  %tobool195.not.i.i = icmp eq i32 %and194.i.i, 0
  %cond196.i.i = select i1 %tobool195.not.i.i, i32 99, i32 67
  %call197.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.52, i32 noundef %18, i32 noundef %15, i32 noundef %shr193.i.i, i32 noundef %cond196.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb198.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr202.i.i = lshr i32 %24, 24
  %and203.i.i = lshr i32 %24, 16
  %shr204.i.i = and i32 %and203.i.i, 31
  %and207.i.i = and i32 %24, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and207.i.i)
  %tobool208.not.i.i = icmp eq i32 %and207.i.i, 0
  %cond209.i.i = select i1 %tobool208.not.i.i, i32 116, i32 84
  %and210.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and210.i.i)
  %tobool211.not.i.i = icmp eq i32 %and210.i.i, 0
  %cond212.i.i = select i1 %tobool211.not.i.i, i32 99, i32 67
  %call213.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.53, i32 noundef %18, i32 noundef %15, i32 noundef %shr202.i.i, i32 noundef %shr204.i.i, i32 noundef %cond209.i.i, i32 noundef %cond212.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb214.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr218.i.i = lshr i32 %24, 24
  %and219.i.i = lshr i32 %24, 23
  %shr220.i.i = and i32 %and219.i.i, 1
  %and221.i.i = lshr i32 %24, 16
  %shr222.i.i = and i32 %and221.i.i, 31
  %and225.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225.i.i)
  %tobool226.not.i.i = icmp eq i32 %and225.i.i, 0
  %cond227.i.i = select i1 %tobool226.not.i.i, i32 99, i32 67
  %call228.i.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.54, i32 noundef %shr218.i.i, i32 noundef %shr220.i.i, i32 noundef %shr222.i.i, i32 noundef %cond227.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb229.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr233.i.i = lshr i32 %21, 16
  %shr235.i.i = lshr i32 %24, 24
  %and236.i.i = lshr i32 %24, 16
  %shr237.i.i = and i32 %and236.i.i, 31
  %and240.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240.i.i)
  %tobool241.not.i.i = icmp eq i32 %and240.i.i, 0
  %cond242.i.i = select i1 %tobool241.not.i.i, i32 99, i32 67
  %call243.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.55, i32 noundef %18, i32 noundef %15, i32 noundef %shr233.i.i, i32 noundef %shr235.i.i, i32 noundef %shr237.i.i, i32 noundef %cond242.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb244.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr248.i.i = lshr i32 %24, 24
  %and249.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and249.i.i)
  %tobool250.not.i.i = icmp eq i32 %and249.i.i, 0
  %cond251.i.i = select i1 %tobool250.not.i.i, i32 99, i32 67
  %call252.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.56, i32 noundef %shr248.i.i, i32 noundef %cond251.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb253.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr257.i.i = lshr i32 %21, 22
  %and258.i.i = lshr i32 %24, 16
  %shr259.i.i = and i32 %and258.i.i, 255
  %and260.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260.i.i)
  %tobool261.not.i.i = icmp eq i32 %and260.i.i, 0
  %cond262.i.i = select i1 %tobool261.not.i.i, i32 99, i32 67
  %call263.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.57, i32 noundef %18, i32 noundef %15, i32 noundef %shr257.i.i, i32 noundef %shr259.i.i, i32 noundef %cond262.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb264.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %and267.i.i = lshr i32 %24, 16
  %shr268.i.i = and i32 %and267.i.i, 4095
  %and269.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and269.i.i)
  %tobool270.not.i.i = icmp eq i32 %and269.i.i, 0
  %cond271.i.i = select i1 %tobool270.not.i.i, i32 99, i32 67
  %call272.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.59, i32 noundef %shr268.i.i, i32 noundef %cond271.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb273.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr277.i.i = lshr i32 %24, 24
  %and278.i.i = lshr i32 %24, 16
  %shr279.i.i = and i32 %and278.i.i, 15
  %and280.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and280.i.i)
  %tobool281.not.i.i = icmp eq i32 %and280.i.i, 0
  %cond282.i.i = select i1 %tobool281.not.i.i, i32 99, i32 67
  %call283.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.60, i32 noundef %18, i32 noundef %15, i32 noundef %shr277.i.i, i32 noundef %shr279.i.i, i32 noundef %cond282.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.bb284.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %and287.i.i = and i32 %15, -32
  %and288.i.i = and i32 %15, 31
  %shr290.i.i = lshr i32 %24, 24
  %and291.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and291.i.i)
  %tobool292.not.i.i = icmp eq i32 %and291.i.i, 0
  %cond293.i.i = select i1 %tobool292.not.i.i, i32 99, i32 67
  %call294.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.61, i32 noundef %21, i32 noundef %18, i32 noundef %and287.i.i, i32 noundef %and288.i.i, i32 noundef %shr290.i.i, i32 noundef %cond293.i.i) #11
  br label %xhci_decode_trb.exit.i

sw.default.i.i:                                   ; preds = %for.body.i
  %trunc206.i.i = trunc i32 %and.i.i to i6
  %switch.tableidx24 = xor i6 %trunc206.i.i, -32
  %50 = sext i6 %switch.tableidx24 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -8, i8 %50)
  %51 = icmp ult i6 %switch.tableidx24, -8
  br i1 %51, label %switch.lookup23, label %sw.default.i.i.xhci_trb_type_string.exit202.i.i_crit_edge

sw.default.i.i.xhci_trb_type_string.exit202.i.i_crit_edge: ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_trb_type_string.exit202.i.i

switch.lookup23:                                  ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %52 = zext i6 %switch.tableidx24 to i32
  %switch.gep25 = getelementptr inbounds [56 x ptr], ptr @switch.table.xhci_ring_trb_show.251, i32 0, i32 %52
  %53 = ptrtoint ptr %switch.gep25 to i32
  call void @__asan_load4_noabort(i32 %53)
  %switch.load26 = load ptr, ptr %switch.gep25, align 4
  br label %xhci_trb_type_string.exit202.i.i

xhci_trb_type_string.exit202.i.i:                 ; preds = %switch.lookup23, %sw.default.i.i.xhci_trb_type_string.exit202.i.i_crit_edge
  %retval.0.i201.i.i = phi ptr [ %switch.load26, %switch.lookup23 ], [ @.str.73, %sw.default.i.i.xhci_trb_type_string.exit202.i.i_crit_edge ]
  %call297.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %str.i, i32 noundef 500, ptr noundef nonnull @.str.39, ptr noundef nonnull %retval.0.i201.i.i, i32 noundef %15, i32 noundef %18, i32 noundef %21, i32 noundef %24) #11
  br label %xhci_decode_trb.exit.i

xhci_decode_trb.exit.i:                           ; preds = %xhci_trb_type_string.exit202.i.i, %sw.bb284.i.i, %sw.bb273.i.i, %sw.bb264.i.i, %sw.bb253.i.i, %sw.bb244.i.i, %sw.bb229.i.i, %sw.bb214.i.i, %sw.bb198.i.i, %sw.bb189.i.i, %sw.bb177.i.i, %sw.bb165.i.i, %xhci_trb_type_string.exit145.i.i, %xhci_trb_type_string.exit110.i.i, %xhci_trb_type_string.exit75.i.i, %sw.bb95.i.i, %sw.bb65.i.i, %sw.bb33.i.i, %xhci_trb_type_string.exit.i.i, %sw.bb.i.i
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, ptr noundef nonnull %dma.i, ptr noundef nonnull %str.i) #11
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 256
  br i1 %exitcond.not.i, label %xhci_ring_dump_segment.exit, label %xhci_decode_trb.exit.i.for.body.i_crit_edge

xhci_decode_trb.exit.i.for.body.i_crit_edge:      ; preds = %xhci_decode_trb.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

xhci_ring_dump_segment.exit:                      ; preds = %xhci_decode_trb.exit.i
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %str.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma.i) #11
  %next = getelementptr inbounds %struct.xhci_segment, ptr %seg.0, i32 0, i32 1
  %inc = add nuw i32 %i.06, 1
  %54 = ptrtoint ptr %num_segs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %num_segs, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %xhci_ring_dump_segment.exit.for.body_crit_edge, label %xhci_ring_dump_segment.exit.for.end_crit_edge

xhci_ring_dump_segment.exit.for.end_crit_edge:    ; preds = %xhci_ring_dump_segment.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

xhci_ring_dump_segment.exit.for.body_crit_edge:   ; preds = %xhci_ring_dump_segment.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %xhci_ring_dump_segment.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_trb_virt_to_dma(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @seq_lseek(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @seq_read(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_ring_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !540

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #11
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %d_iname = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 6
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.15, ptr noundef %d_iname) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %file_dentry.exit.for.end_crit_edge, label %for.cond

file_dentry.exit.for.end_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %file_dentry.exit
  %call1.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(8) @.str.16, ptr noundef %d_iname) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  br i1 %cmp2.1, label %for.cond.for.end_crit_edge, label %for.cond.1

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.1:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #13
  %call1.2 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.17, ptr noundef %d_iname) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.2)
  %cmp2.2 = icmp eq i32 %call1.2, 0
  %spec.select = select i1 %cmp2.2, i32 2, i32 3
  br label %for.end

for.end:                                          ; preds = %for.cond.1, %for.cond.for.end_crit_edge, %file_dentry.exit.for.end_crit_edge
  %i.08.lcssa = phi i32 [ 0, %file_dentry.exit.for.end_crit_edge ], [ 1, %for.cond.for.end_crit_edge ], [ %spec.select, %for.cond.1 ]
  %show = getelementptr [4 x %struct.xhci_file_map], ptr @ring_files, i32 0, i32 %i.08.lcssa, i32 1
  %10 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %show, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %12 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_private, align 4
  %call3 = tail call i32 @single_open(ptr noundef %file, ptr noundef %11, ptr noundef %13) #11
  ret i32 %call3
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_release(ptr noundef, ptr noundef) #3

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @single_open(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_stream_id_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %stream_id = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %stream_id) #11
  %4 = ptrtoint ptr %stream_id to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 -1, ptr %stream_id, align 2, !annotation !536
  %stream_info = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stream_info, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = call i32 @kstrtou16_from_user(ptr noundef %ubuf, i32 noundef %count, i32 noundef 10, ptr noundef nonnull %stream_id) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %stream_id to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %stream_id, align 2
  %conv = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %cmp = icmp eq i16 %8, 0
  br i1 %cmp, label %if.end3.cleanup_crit_edge, label %lor.lhs.false

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end3
  %9 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %stream_info, align 4
  %num_streams = getelementptr inbounds %struct.xhci_stream_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %num_streams to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_streams, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp7.not = icmp ugt i32 %12, %conv
  br i1 %cmp7.not, label %if.end10, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  %stream_id12 = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 4
  %13 = ptrtoint ptr %stream_id12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %conv, ptr %stream_id12, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %10, align 4
  %arrayidx = getelementptr ptr, ptr %15, i32 %conv
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %show_ring = getelementptr inbounds %struct.xhci_ep_priv, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %show_ring to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %show_ring, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %lor.lhs.false.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %count, %if.end10 ], [ -1, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %stream_id) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_stream_id_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @xhci_stream_id_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kstrtou16_from_user(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_stream_id_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %stream_info = getelementptr inbounds %struct.xhci_ep_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %stream_id = getelementptr inbounds %struct.xhci_ep_priv, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %stream_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stream_id, align 4
  %num_streams = getelementptr inbounds %struct.xhci_stream_info, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %num_streams to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_streams, align 4
  %sub = add i32 %7, -1
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.111, i32 noundef %5, i32 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_stream_context_array_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @xhci_stream_context_array_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_stream_context_array_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #11
  %stream_info = getelementptr inbounds %struct.xhci_ep_priv, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %stream_info, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %num_streams = getelementptr inbounds %struct.xhci_stream_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %num_streams to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_streams, align 4
  %num_stream_ctxs = getelementptr inbounds %struct.xhci_stream_info, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %num_stream_ctxs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_stream_ctxs, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.112, i32 noundef %5, i32 noundef %7) #11
  %8 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %stream_info, align 4
  %num_stream_ctxs431 = getelementptr inbounds %struct.xhci_stream_info, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %num_stream_ctxs431 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_stream_ctxs431, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp32.not = icmp eq i32 %11, 0
  br i1 %cmp32.not, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %12 = phi ptr [ %24, %for.inc.for.body_crit_edge ], [ %9, %if.end.for.body_crit_edge ]
  %id.033 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %stream_ctx_array = getelementptr inbounds %struct.xhci_stream_info, ptr %12, i32 0, i32 2
  %13 = ptrtoint ptr %stream_ctx_array to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %stream_ctx_array, align 4
  %add.ptr = getelementptr %struct.xhci_stream_ctx, ptr %14, i32 %id.033
  %ctx_array_dma = getelementptr inbounds %struct.xhci_stream_info, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %ctx_array_dma to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ctx_array_dma, align 4
  %mul = shl i32 %id.033, 4
  %add = add i32 %16, %mul
  %17 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %dma, align 4
  %num_streams8 = getelementptr inbounds %struct.xhci_stream_info, ptr %12, i32 0, i32 1
  %18 = ptrtoint ptr %num_streams8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_streams8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %id.033, i32 %19)
  %cmp9 = icmp ult i32 %id.033, %19
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %add.ptr, align 8
  %22 = call i64 @llvm.bswap.i64(i64 %21)
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.113, ptr noundef nonnull %dma, i32 noundef %id.033, i64 noundef %22) #11
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.114, ptr noundef nonnull %dma, i64 noundef %22) #11
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then10
  %inc = add nuw i32 %id.033, 1
  %23 = ptrtoint ptr %stream_info to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %stream_info, align 4
  %num_stream_ctxs4 = getelementptr inbounds %struct.xhci_stream_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %num_stream_ctxs4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %num_stream_ctxs4, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_device_name_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.xhci_slot_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %udev, align 4
  %init_name.i = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev2 = getelementptr inbounds %struct.usb_device, ptr %5, i32 0, i32 15
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %entry.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.118, ptr noundef %retval.0.i) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_slot_context_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %str = alloca [500 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.xhci_slot_priv, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %str) #11
  %4 = call ptr @memset(ptr %str, i32 255, i32 500)
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %udev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bus, align 8
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %8) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %8, i32 0, i32 25
  %9 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %10, %if.else.i ], [ %8, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %3, i32 0, i32 2
  %11 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %out_ctx, align 4
  %call3 = tail call ptr @xhci_get_slot_ctx(ptr noundef %hcd_priv.i, ptr noundef %12) #11
  %13 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %out_ctx, align 4
  %15 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call3, align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %dev_info2 = getelementptr inbounds %struct.xhci_slot_ctx, ptr %call3, i32 0, i32 1
  %18 = ptrtoint ptr %dev_info2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dev_info2, align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19)
  %tt_info = getelementptr inbounds %struct.xhci_slot_ctx, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %tt_info to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tt_info, align 4
  %dev_state = getelementptr inbounds %struct.xhci_slot_ctx, ptr %call3, i32 0, i32 3
  %23 = ptrtoint ptr %dev_state to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dev_state, align 4
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %and.i = and i32 %17, 15728640
  %26 = add nsw i32 %and.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %26)
  %27 = icmp ult i32 %26, 5242880
  br i1 %27, label %switch.lookup, label %hcd_to_xhci.exit.sw.epilog.i_crit_edge

hcd_to_xhci.exit.sw.epilog.i_crit_edge:           ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i

switch.lookup:                                    ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #13
  %28 = lshr exact i32 %26, 20
  %switch.gep = getelementptr inbounds [5 x ptr], ptr @switch.table.xhci_slot_context_show, i32 0, i32 %28
  %29 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %29)
  %switch.load = load ptr, ptr %switch.gep, align 4
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %switch.lookup, %hcd_to_xhci.exit.sw.epilog.i_crit_edge
  %s.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.125, %hcd_to_xhci.exit.sw.epilog.i_crit_edge ]
  %and3.i = and i32 %17, 1048575
  %and2.i = and i32 %17, 33554432
  %and1.i = and i32 %17, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool.not.i12 = icmp eq i32 %and2.i, 0
  %cond.i = select i1 %tobool.not.i12, ptr @.str.127, ptr @.str.126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool8.not.i = icmp eq i32 %and1.i, 0
  %cond9.i = select i1 %tobool8.not.i, ptr @.str.127, ptr @.str.128
  %shr.i = lshr i32 %17, 27
  %and11.i = and i32 %20, 65535
  %shr12.i = lshr i32 %20, 16
  %and13.i = and i32 %shr12.i, 255
  %shr15.i = lshr i32 %20, 24
  %call.i13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.119, i32 noundef %and3.i, ptr noundef nonnull %s.0.i, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond9.i, i32 noundef %shr.i, i32 noundef %and11.i, i32 noundef %and13.i, i32 noundef %shr15.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %25)
  %30 = icmp ult i32 %25, 536870912
  br i1 %30, label %switch.lookup14, label %sw.epilog.i.xhci_decode_slot_context.exit_crit_edge

sw.epilog.i.xhci_decode_slot_context.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_decode_slot_context.exit

switch.lookup14:                                  ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %shr25.i = lshr i32 %25, 27
  %switch.gep15 = getelementptr inbounds [4 x ptr], ptr @switch.table.xhci_slot_context_show.252, i32 0, i32 %shr25.i
  %31 = ptrtoint ptr %switch.gep15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %switch.load16 = load ptr, ptr %switch.gep15, align 4
  br label %xhci_decode_slot_context.exit

xhci_decode_slot_context.exit:                    ; preds = %switch.lookup14, %sw.epilog.i.xhci_decode_slot_context.exit_crit_edge
  %retval.0.i.i = phi ptr [ %switch.load16, %switch.lookup14 ], [ @.str.134, %sw.epilog.i.xhci_decode_slot_context.exit_crit_edge ]
  %32 = tail call i32 @llvm.bswap.i32(i32 %22)
  %dma = getelementptr inbounds %struct.xhci_container_ctx, ptr %14, i32 0, i32 3
  %and23.i = and i32 %25, 255
  %shr21.i = lshr i32 %32, 22
  %and19.i = lshr i32 %32, 16
  %shr20.i = and i32 %and19.i, 3
  %and17.i = lshr i32 %32, 8
  %shr18.i = and i32 %and17.i, 255
  %and16.i = and i32 %32, 255
  %add.ptr.i = getelementptr i8, ptr %str, i32 %call.i13
  %call27.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.129, i32 noundef %and16.i, i32 noundef %shr18.i, i32 noundef %shr20.i, i32 noundef %shr21.i, i32 noundef %and23.i, ptr noundef nonnull %retval.0.i.i) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, ptr noundef %dma, ptr noundef nonnull %str) #11
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %str) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_endpoint_context_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %dma = alloca i32, align 4
  %str = alloca [500 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma) #11
  %0 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %dma, align 4, !annotation !536
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %1 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %private, align 8
  %dev1 = getelementptr inbounds %struct.xhci_slot_priv, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %str) #11
  %5 = call ptr @memset(ptr %str, i32 255, i32 500)
  %udev = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 1
  %6 = ptrtoint ptr %udev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %udev, align 4
  %bus = getelementptr inbounds %struct.usb_device, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %bus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bus, align 8
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %9) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %9, i32 0, i32 25
  %10 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %11, %if.else.i ], [ %9, %entry.hcd_to_xhci.exit_crit_edge ]
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 0, i32 30
  %out_ctx = getelementptr inbounds %struct.xhci_virt_device, ptr %4, i32 0, i32 2
  %hcc_params = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %hcd_to_xhci.exit
  %ep_index.019 = phi i32 [ 0, %hcd_to_xhci.exit ], [ %add, %for.body.for.body_crit_edge ]
  %12 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %out_ctx, align 4
  %call3 = call ptr @xhci_get_ep_ctx(ptr noundef %hcd_priv.i, ptr noundef %13, i32 noundef %ep_index.019) #11
  %14 = ptrtoint ptr %out_ctx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %out_ctx, align 4
  %dma5 = getelementptr inbounds %struct.xhci_container_ctx, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dma5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma5, align 4
  %add = add nuw nsw i32 %ep_index.019, 1
  %18 = ptrtoint ptr %hcc_params to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %hcc_params, align 8
  %and = and i32 %19, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 32, i32 64
  %mul = mul i32 %cond, %add
  %add6 = add i32 %mul, %17
  %20 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add6, ptr %dma, align 4
  %21 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %call3, align 8
  %23 = call i32 @llvm.bswap.i32(i32 %22)
  %ep_info2 = getelementptr inbounds %struct.xhci_ep_ctx, ptr %call3, i32 0, i32 1
  %24 = ptrtoint ptr %ep_info2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ep_info2, align 4
  %26 = call i32 @llvm.bswap.i32(i32 %25)
  %deq = getelementptr inbounds %struct.xhci_ep_ctx, ptr %call3, i32 0, i32 2
  %27 = ptrtoint ptr %deq to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %deq, align 8
  %29 = call i64 @llvm.bswap.i64(i64 %28)
  %tx_info = getelementptr inbounds %struct.xhci_ep_ctx, ptr %call3, i32 0, i32 3
  %30 = ptrtoint ptr %tx_info to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tx_info, align 8
  %32 = call i32 @llvm.bswap.i32(i32 %31)
  %33 = lshr i32 %23, 8
  %shl.i = and i32 %33, 16711680
  %shr1.i = lshr i32 %32, 16
  %or.i = or i32 %shr1.i, %shl.i
  %and4.i = lshr i32 %23, 10
  %conv6.i = and i32 %and4.i, 31
  %shr7.i = lshr i32 %23, 16
  %34 = and i32 %33, 3
  %conv12.i = add nuw nsw i32 %34, 1
  %and13.i = and i32 %23, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13.i)
  %tobool.not.i18 = icmp eq i32 %and13.i, 0
  %35 = lshr i32 %26, 1
  %conv17.i = and i32 %35, 3
  %switch.tableidx = and i32 %23, 7
  %36 = xor i32 %switch.tableidx, 4
  %switch.gep = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_endpoint_context_show, i32 0, i32 %36
  %37 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %37)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %cond.i = select i1 %tobool.not.i18, ptr @.str.127, ptr @.str.136
  %call38.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.135, ptr noundef nonnull %switch.load, i32 noundef %conv12.i, i32 noundef %conv6.i, ptr noundef nonnull %cond.i) #11
  %add.ptr.i = getelementptr i8, ptr %str, i32 %call38.i
  %conv39.i = and i32 %shr7.i, 255
  %mul.i = shl i32 125, %conv39.i
  %call42.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr.i, ptr noundef nonnull @.str.137, i32 noundef %mul.i, i32 noundef %or.i, i32 noundef %conv17.i) #11
  %38 = lshr i32 %26, 3
  %switch.tableidx20 = and i32 %38, 7
  %39 = xor i32 %switch.tableidx20, 4
  %switch.gep22 = getelementptr inbounds [8 x ptr], ptr @switch.table.xhci_endpoint_context_show.253, i32 0, i32 %39
  %40 = ptrtoint ptr %switch.gep22 to i32
  call void @__asan_load4_noabort(i32 %40)
  %switch.load23 = load ptr, ptr %switch.gep22, align 4
  %add43.i = add i32 %call42.i, %call38.i
  %add.ptr44.i = getelementptr i8, ptr %str, i32 %add43.i
  %shr29.i = lshr i32 %26, 16
  %shr26.i = lshr i32 %26, 8
  %and21.i = and i32 %26, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.not.i = icmp eq i32 %and21.i, 0
  %cond48.i = select i1 %tobool22.not.i, ptr @.str.127, ptr @.str.139
  %conv49.i = and i32 %shr26.i, 255
  %call51.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr44.i, ptr noundef nonnull @.str.138, ptr noundef nonnull %switch.load23, ptr noundef nonnull %cond48.i, i32 noundef %conv49.i, i32 noundef %shr29.i, i64 noundef %29) #11
  %add52.i = add i32 %call51.i, %add43.i
  %add.ptr53.i = getelementptr i8, ptr %str, i32 %add52.i
  %conv54.i = and i32 %32, 65535
  %call55.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %add.ptr53.i, ptr noundef nonnull @.str.140, i32 noundef %conv54.i) #11
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.21, ptr noundef nonnull %dma, ptr noundef nonnull %str) #11
  %exitcond.not = icmp eq i32 %add, 31
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %str) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_slot_ctx(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_hcd_is_primary_hcd(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @xhci_get_ep_ctx(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_context_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dentry.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %dentry.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dentry.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 8
  %and.i.i = and i32 %3, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %entry.file_dentry.exit_crit_edge, label %if.then.i.i, !prof !540

entry.file_dentry.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %file_dentry.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %f_inode.i.i = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 2
  %4 = ptrtoint ptr %f_inode.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %f_inode.i.i, align 8
  %d_op.i.i = getelementptr inbounds %struct.dentry, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %d_op.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %d_op.i.i, align 8
  %d_real.i.i = getelementptr inbounds %struct.dentry_operations, ptr %7, i32 0, i32 12
  %8 = ptrtoint ptr %d_real.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d_real.i.i, align 16
  %call.i.i = tail call ptr %9(ptr noundef %1, ptr noundef %5) #11
  br label %file_dentry.exit

file_dentry.exit:                                 ; preds = %if.then.i.i, %entry.file_dentry.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call.i.i, %if.then.i.i ], [ %1, %entry.file_dentry.exit_crit_edge ]
  %d_iname = getelementptr inbounds %struct.dentry, ptr %retval.0.i.i, i32 0, i32 6
  %call1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.115, ptr noundef %d_iname) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp eq i32 %call1, 0
  br i1 %cmp2, label %file_dentry.exit.for.end_crit_edge, label %for.cond

file_dentry.exit.for.end_crit_edge:               ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond:                                         ; preds = %file_dentry.exit
  call void @__sanitizer_cov_trace_pc() #13
  %call1.1 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.116, ptr noundef %d_iname) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.1)
  %cmp2.1 = icmp eq i32 %call1.1, 0
  %spec.select = select i1 %cmp2.1, i32 1, i32 2
  br label %for.end

for.end:                                          ; preds = %for.cond, %file_dentry.exit.for.end_crit_edge
  %i.08.lcssa = phi i32 [ 0, %file_dentry.exit.for.end_crit_edge ], [ %spec.select, %for.cond ]
  %show = getelementptr [3 x %struct.xhci_file_map], ptr @context_files, i32 0, i32 %i.08.lcssa, i32 1
  %10 = ptrtoint ptr %show to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %show, align 4
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %12 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %i_private, align 4
  %call3 = tail call i32 @single_open(ptr noundef %file, ptr noundef %11, ptr noundef %13) #11
  ret i32 %call3
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #8

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @vsnprintf(ptr nocapture noundef, i32 noundef, ptr nocapture noundef readonly, [1 x i32] noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_port_write(ptr nocapture noundef readonly %file, ptr noundef %ubuf, i32 noundef %count, ptr nocapture noundef readnone %ppos) #0 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.file, ptr %file, i32 0, i32 16
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %private = getelementptr inbounds %struct.seq_file, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %private, align 8
  %rhub = getelementptr inbounds %struct.xhci_port, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %rhub to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %rhub, align 4
  %hcd = getelementptr inbounds %struct.xhci_hub, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hcd, align 4
  %call.i = tail call i32 @usb_hcd_is_primary_hcd(ptr noundef %7) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %entry.hcd_to_xhci.exit_crit_edge

entry.hcd_to_xhci.exit_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %hcd_to_xhci.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %primary_hcd1.i = getelementptr inbounds %struct.usb_hcd, ptr %7, i32 0, i32 25
  %8 = ptrtoint ptr %primary_hcd1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %primary_hcd1.i, align 8
  br label %hcd_to_xhci.exit

hcd_to_xhci.exit:                                 ; preds = %if.else.i, %entry.hcd_to_xhci.exit_crit_edge
  %primary_hcd.0.i = phi ptr [ %9, %if.else.i ], [ %7, %entry.hcd_to_xhci.exit_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #11
  %10 = tail call i32 @llvm.umin.i32(i32 %count, i32 31)
  %11 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @__check_object_size(ptr noundef nonnull %buf, i32 noundef %10, i1 noundef zeroext false) #11
  call void @__might_fault(ptr noundef nonnull @.str.211, i32 noundef 156) #11
  %call.i.i = call zeroext i1 @should_fail_usercopy() #11
  br i1 %call.i.i, label %hcd_to_xhci.exit.if.end.i.i_crit_edge, label %land.lhs.true.i.i

hcd_to_xhci.exit.if.end.i.i_crit_edge:            ; preds = %hcd_to_xhci.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %hcd_to_xhci.exit
  %12 = call { i32, i32 } asm ".syntax unified\0Aadds $1, $2, $3; sbcscc $1, $1, $0; movcc $0, #0", "=&r,=&r,r,Ir,0,~{cc}"(ptr %ubuf, i32 %10, i32 -1226833920) #16, !srcloc !541
  %asmresult.i.i = extractvalue { i32, i32 } %12, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i)
  %cmp.i6.i = icmp eq i32 %asmresult.i.i, 0
  br i1 %cmp.i6.i, label %if.then.i7.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge, !prof !540

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i.i

if.then.i7.i:                                     ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %buf, i32 noundef %10) #11
  %13 = call i32 @llvm.read_register.i32(metadata !523) #11
  %and.i.i.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %cpu_domain.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 4
  %15 = call i32 asm "mrc\09p15, 0, $0, c3, c0\09@ get domain", "=r,*m"(ptr elementtype(i32) %cpu_domain.i.i.i.i.i) #9, !srcloc !542
  %and.i.i.i.i = and i32 %15, -13
  %or.i.i.i.i = or i32 %and.i.i.i.i, 4
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %or.i.i.i.i) #11, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !544
  %call1.i.i.i = call i32 @arm_copy_from_user(ptr noundef nonnull %buf, ptr noundef %ubuf, i32 noundef %10) #11
  call void asm sideeffect "mcr\09p15, 0, $0, c3, c0\09@ set domain", "r,~{memory}"(i32 %15) #11, !srcloc !543
  call void asm sideeffect "mcr p15, 0, $0, c7, c5, 4", "r,~{memory}"(i32 0) #11, !srcloc !544
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i7.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %hcd_to_xhci.exit.if.end.i.i_crit_edge
  %res.0.i.i = phi i32 [ %10, %hcd_to_xhci.exit.if.end.i.i_crit_edge ], [ %call1.i.i.i, %if.then.i7.i ], [ %10, %land.lhs.true.i.i.if.end.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %res.0.i.i)
  %tobool4.not.i.i = icmp eq i32 %res.0.i.i, 0
  br i1 %tobool4.not.i.i, label %if.end, label %if.then11.i.i, !prof !540

if.then11.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i = sub i32 %10, %res.0.i.i
  %add.ptr.i.i = getelementptr i8, ptr %buf, i32 %sub.i.i
  %16 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %res.0.i.i)
  br label %cleanup

if.end:                                           ; preds = %if.end.i.i
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(10) %buf, ptr noundef nonnull dereferenceable(10) @.str.208, i32 10) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool3.not = icmp eq i32 %bcmp, 0
  br i1 %tobool3.not, label %if.then4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %hcc_params2 = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 3
  %17 = ptrtoint ptr %hcc_params2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hcc_params2, align 4
  %and = and i32 %18, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.then4.cleanup_crit_edge, label %do.body8

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body8:                                         ; preds = %if.then4
  %lock = getelementptr inbounds %struct.usb_hcd, ptr %primary_hcd.0.i, i32 1, i32 0, i32 9, i32 1, i32 4
  %call12 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %3, align 4
  %21 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #11, !srcloc !533
  %22 = call i32 @llvm.bswap.i32(i32 %21)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !545
  %and18 = and i32 %22, 480
  call void @__sanitizer_cov_trace_const_cmp4(i32 160, i32 %and18)
  %cmp19.not = icmp eq i32 %and18, 160
  br i1 %cmp19.not, label %if.end23, label %if.then21

if.then21:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #11
  br label %cleanup

if.end23:                                         ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  %call24 = call i32 @xhci_port_state_to_neutral(i32 noundef %22) #11
  %and25 = and i32 %call24, -66017
  %or = or i32 %and25, 65856
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !546
  call void @arm_heavy_mb() #11
  %23 = call i32 @llvm.bswap.i32(i32 %or)
  %24 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %3, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #11, !srcloc !547
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then21, %if.then4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then11.i.i
  %retval.0 = phi i32 [ -1, %if.then21 ], [ %count, %if.end23 ], [ %count, %if.then4.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -14, %if.then11.i.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_port_open(ptr nocapture noundef readonly %inode, ptr noundef %file) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %i_private = getelementptr inbounds %struct.inode, ptr %inode, i32 0, i32 54
  %0 = ptrtoint ptr %i_private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %i_private, align 4
  %call = tail call i32 @single_open(ptr noundef %file, ptr noundef nonnull @xhci_portsc_show, ptr noundef %1) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xhci_port_state_to_neutral(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__check_object_size(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_fault(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @should_fail_usercopy() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @arm_copy_from_user(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xhci_portsc_show(ptr noundef %s, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  %str = alloca [500 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.seq_file, ptr %s, i32 0, i32 11
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 8
  call void @llvm.lifetime.start.p0(i64 500, ptr nonnull %str) #11
  %2 = call ptr @memset(ptr %str, i32 255, i32 500)
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #11, !srcloc !533
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !548
  %and.i = and i32 %6, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, ptr @.str.214, ptr @.str.213
  %and1.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool2.not.i = icmp eq i32 %and1.i, 0
  %cond3.i = select i1 %tobool2.not.i, ptr @.str.216, ptr @.str.215
  %and4.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  %cond6.i = select i1 %tobool5.not.i, ptr @.str.218, ptr @.str.217
  %and.i.i = lshr i32 %6, 5
  %7 = and i32 %and.i.i, 15
  %switch.gep = getelementptr inbounds [16 x ptr], ptr @switch.table.xhci_portsc_show, i32 0, i32 %7
  %8 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %8)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %shr.i = lshr i32 %6, 10
  %and7.i = and i32 %shr.i, 15
  %call8.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %str, ptr noundef nonnull @.str.212, ptr noundef nonnull %cond.i, ptr noundef nonnull %cond3.i, ptr noundef nonnull %cond6.i, ptr noundef nonnull %switch.load, i32 noundef %and7.i) #11
  %and9.i = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9.i)
  %tobool10.not.i = icmp eq i32 %and9.i, 0
  br i1 %tobool10.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i = getelementptr i8, ptr %str, i32 %call8.i
  %9 = call ptr @memcpy(ptr %add.ptr.i, ptr @.str.219, i32 13)
  %add.i = add i32 %call8.i, 12
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %ret.0.i = phi i32 [ %add.i, %if.then.i ], [ %call8.i, %entry.if.end.i_crit_edge ]
  %and12.i = and i32 %6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12.i)
  %tobool13.not.i = icmp eq i32 %and12.i, 0
  br i1 %tobool13.not.i, label %if.end.i.if.end18.i_crit_edge, label %if.then14.i

if.end.i.if.end18.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i

if.then14.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr15.i = getelementptr i8, ptr %str, i32 %ret.0.i
  %10 = call ptr @memcpy(ptr %add.ptr15.i, ptr @.str.220, i32 10)
  %add17.i = add i32 %ret.0.i, 9
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then14.i, %if.end.i.if.end18.i_crit_edge
  %ret.1.i = phi i32 [ %add17.i, %if.then14.i ], [ %ret.0.i, %if.end.i.if.end18.i_crit_edge ]
  %add.ptr19.i = getelementptr i8, ptr %str, i32 %ret.1.i
  %11 = call ptr @memcpy(ptr %add.ptr19.i, ptr @.str.221, i32 9)
  %add21.i = add i32 %ret.1.i, 8
  %and22.i = and i32 %6, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22.i)
  %tobool23.not.i = icmp eq i32 %and22.i, 0
  br i1 %tobool23.not.i, label %if.end18.i.if.end28.i_crit_edge, label %if.then24.i

if.end18.i.if.end28.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end28.i

if.then24.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr25.i = getelementptr i8, ptr %str, i32 %add21.i
  %12 = call ptr @memcpy(ptr %add.ptr25.i, ptr @.str.222, i32 5)
  %add27.i = add i32 %ret.1.i, 12
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then24.i, %if.end18.i.if.end28.i_crit_edge
  %ret.2.i = phi i32 [ %add27.i, %if.then24.i ], [ %add21.i, %if.end18.i.if.end28.i_crit_edge ]
  %and29.i = and i32 %6, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29.i)
  %tobool30.not.i = icmp eq i32 %and29.i, 0
  br i1 %tobool30.not.i, label %if.end28.i.if.end35.i_crit_edge, label %if.then31.i

if.end28.i.if.end35.i_crit_edge:                  ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35.i

if.then31.i:                                      ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr32.i = getelementptr i8, ptr %str, i32 %ret.2.i
  %13 = call ptr @memcpy(ptr %add.ptr32.i, ptr @.str.223, i32 5)
  %add34.i = add i32 %ret.2.i, 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %if.then31.i, %if.end28.i.if.end35.i_crit_edge
  %ret.3.i = phi i32 [ %add34.i, %if.then31.i ], [ %ret.2.i, %if.end28.i.if.end35.i_crit_edge ]
  %and36.i = and i32 %6, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36.i)
  %tobool37.not.i = icmp eq i32 %and36.i, 0
  br i1 %tobool37.not.i, label %if.end35.i.if.end42.i_crit_edge, label %if.then38.i

if.end35.i.if.end42.i_crit_edge:                  ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr39.i = getelementptr i8, ptr %str, i32 %ret.3.i
  %14 = call ptr @memcpy(ptr %add.ptr39.i, ptr @.str.224, i32 5)
  %add41.i = add i32 %ret.3.i, 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then38.i, %if.end35.i.if.end42.i_crit_edge
  %ret.4.i = phi i32 [ %add41.i, %if.then38.i ], [ %ret.3.i, %if.end35.i.if.end42.i_crit_edge ]
  %and43.i = and i32 %6, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end42.i.if.end49.i_crit_edge, label %if.then45.i

if.end42.i.if.end49.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr46.i = getelementptr i8, ptr %str, i32 %ret.4.i
  %15 = call ptr @memcpy(ptr %add.ptr46.i, ptr @.str.225, i32 5)
  %add48.i = add i32 %ret.4.i, 4
  br label %if.end49.i

if.end49.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end49.i_crit_edge
  %ret.5.i = phi i32 [ %add48.i, %if.then45.i ], [ %ret.4.i, %if.end42.i.if.end49.i_crit_edge ]
  %and50.i = and i32 %6, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and50.i)
  %tobool51.not.i = icmp eq i32 %and50.i, 0
  br i1 %tobool51.not.i, label %if.end49.i.if.end56.i_crit_edge, label %if.then52.i

if.end49.i.if.end56.i_crit_edge:                  ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end56.i

if.then52.i:                                      ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr53.i = getelementptr i8, ptr %str, i32 %ret.5.i
  %16 = call ptr @memcpy(ptr %add.ptr53.i, ptr @.str.226, i32 5)
  %add55.i = add i32 %ret.5.i, 4
  br label %if.end56.i

if.end56.i:                                       ; preds = %if.then52.i, %if.end49.i.if.end56.i_crit_edge
  %ret.6.i = phi i32 [ %add55.i, %if.then52.i ], [ %ret.5.i, %if.end49.i.if.end56.i_crit_edge ]
  %and57.i = and i32 %6, 4194304
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57.i)
  %tobool58.not.i = icmp eq i32 %and57.i, 0
  br i1 %tobool58.not.i, label %if.end56.i.if.end63.i_crit_edge, label %if.then59.i

if.end56.i.if.end63.i_crit_edge:                  ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end63.i

if.then59.i:                                      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr60.i = getelementptr i8, ptr %str, i32 %ret.6.i
  %17 = call ptr @memcpy(ptr %add.ptr60.i, ptr @.str.227, i32 5)
  %add62.i = add i32 %ret.6.i, 4
  br label %if.end63.i

if.end63.i:                                       ; preds = %if.then59.i, %if.end56.i.if.end63.i_crit_edge
  %ret.7.i = phi i32 [ %add62.i, %if.then59.i ], [ %ret.6.i, %if.end56.i.if.end63.i_crit_edge ]
  %and64.i = and i32 %6, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and64.i)
  %tobool65.not.i = icmp eq i32 %and64.i, 0
  br i1 %tobool65.not.i, label %if.end63.i.if.end70.i_crit_edge, label %if.then66.i

if.end63.i.if.end70.i_crit_edge:                  ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70.i

if.then66.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr67.i = getelementptr i8, ptr %str, i32 %ret.7.i
  %18 = call ptr @memcpy(ptr %add.ptr67.i, ptr @.str.228, i32 5)
  %add69.i = add i32 %ret.7.i, 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.then66.i, %if.end63.i.if.end70.i_crit_edge
  %ret.8.i = phi i32 [ %add69.i, %if.then66.i ], [ %ret.7.i, %if.end63.i.if.end70.i_crit_edge ]
  %and71.i = and i32 %6, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71.i)
  %tobool72.not.i = icmp eq i32 %and71.i, 0
  br i1 %tobool72.not.i, label %if.end70.i.if.end77.i_crit_edge, label %if.then73.i

if.end70.i.if.end77.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end77.i

if.then73.i:                                      ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr74.i = getelementptr i8, ptr %str, i32 %ret.8.i
  %19 = call ptr @memcpy(ptr %add.ptr74.i, ptr @.str.229, i32 5)
  %add76.i = add i32 %ret.8.i, 4
  br label %if.end77.i

if.end77.i:                                       ; preds = %if.then73.i, %if.end70.i.if.end77.i_crit_edge
  %ret.9.i = phi i32 [ %add76.i, %if.then73.i ], [ %ret.8.i, %if.end70.i.if.end77.i_crit_edge ]
  %add.ptr78.i = getelementptr i8, ptr %str, i32 %ret.9.i
  %20 = call ptr @memcpy(ptr %add.ptr78.i, ptr @.str.230, i32 7)
  %add80.i = add i32 %ret.9.i, 6
  %and81.i = and i32 %6, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and81.i)
  %tobool82.not.i = icmp eq i32 %and81.i, 0
  br i1 %tobool82.not.i, label %if.end77.i.if.end87.i_crit_edge, label %if.then83.i

if.end77.i.if.end87.i_crit_edge:                  ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end87.i

if.then83.i:                                      ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr84.i = getelementptr i8, ptr %str, i32 %add80.i
  %21 = call ptr @memcpy(ptr %add.ptr84.i, ptr @.str.231, i32 5)
  %add86.i = add i32 %ret.9.i, 10
  br label %if.end87.i

if.end87.i:                                       ; preds = %if.then83.i, %if.end77.i.if.end87.i_crit_edge
  %ret.10.i = phi i32 [ %add86.i, %if.then83.i ], [ %add80.i, %if.end77.i.if.end87.i_crit_edge ]
  %and88.i = and i32 %6, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and88.i)
  %tobool89.not.i = icmp eq i32 %and88.i, 0
  br i1 %tobool89.not.i, label %if.end87.i.if.end94.i_crit_edge, label %if.then90.i

if.end87.i.if.end94.i_crit_edge:                  ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end94.i

if.then90.i:                                      ; preds = %if.end87.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr91.i = getelementptr i8, ptr %str, i32 %ret.10.i
  %22 = call ptr @memcpy(ptr %add.ptr91.i, ptr @.str.232, i32 5)
  %add93.i = add i32 %ret.10.i, 4
  br label %if.end94.i

if.end94.i:                                       ; preds = %if.then90.i, %if.end87.i.if.end94.i_crit_edge
  %ret.11.i = phi i32 [ %add93.i, %if.then90.i ], [ %ret.10.i, %if.end87.i.if.end94.i_crit_edge ]
  %and95.i = and i32 %6, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and95.i)
  %tobool96.not.i = icmp eq i32 %and95.i, 0
  br i1 %tobool96.not.i, label %if.end94.i.xhci_decode_portsc.exit_crit_edge, label %if.then97.i

if.end94.i.xhci_decode_portsc.exit_crit_edge:     ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %xhci_decode_portsc.exit

if.then97.i:                                      ; preds = %if.end94.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr98.i = getelementptr i8, ptr %str, i32 %ret.11.i
  %23 = call ptr @memcpy(ptr %add.ptr98.i, ptr @.str.233, i32 5)
  br label %xhci_decode_portsc.exit

xhci_decode_portsc.exit:                          ; preds = %if.then97.i, %if.end94.i.xhci_decode_portsc.exit_crit_edge
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %s, ptr noundef nonnull @.str.118, ptr noundef nonnull %str) #11
  call void @llvm.lifetime.end.p0(i64 500, ptr nonnull %str) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 270)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 270)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { argmemonly nofree nounwind readonly willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nobuiltin }
attributes #16 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !449, !451, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521}
!llvm.named.register.sp = !{!523}
!llvm.module.flags = !{!524, !525, !526, !527, !528, !529, !530, !531}
!llvm.ident = !{!532}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 462, i32 45}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 583, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 586, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 600, i32 43}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 606, i32 10}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 664, i32 28}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 669, i32 28}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 674, i32 28}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 679, i32 8}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 684, i32 8}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 689, i32 8}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 692, i32 10}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 696, i32 10}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 699, i32 43}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 718, i32 41}
!30 = !{ptr @xhci_debugfs_root, !31, !"xhci_debugfs_root", i1 false, i1 false}
!31 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 84, i32 23}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 229, i32 3}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 230, i32 3}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 231, i32 3}
!38 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 232, i32 3}
!40 = !{ptr @ring_files, !41, !"ring_files", i1 false, i1 false}
!41 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 228, i32 29}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 170, i32 16}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 190, i32 16}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 206, i32 17}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/usb/host/xhci.h", i32 2250, i32 4}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/usb/host/xhci.h", i32 2267, i32 4}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/usb/host/xhci.h", i32 2280, i32 4}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/usb/host/xhci.h", i32 2298, i32 5}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/usb/host/xhci.h", i32 2312, i32 5}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/usb/host/xhci.h", i32 2326, i32 4}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/usb/host/xhci.h", i32 2343, i32 4}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/usb/host/xhci.h", i32 2350, i32 4}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/usb/host/xhci.h", i32 2357, i32 4}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/usb/host/xhci.h", i32 2375, i32 4}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/usb/host/xhci.h", i32 2383, i32 4}
!70 = !{ptr @.str.33, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/usb/host/xhci.h", i32 2394, i32 4}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/usb/host/xhci.h", i32 2404, i32 4}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/usb/host/xhci.h", i32 2422, i32 4}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/usb/host/xhci.h", i32 2431, i32 4}
!78 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/usb/host/xhci.h", i32 2438, i32 4}
!80 = !{ptr @.str.38, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/usb/host/xhci.h", i32 2447, i32 4}
!82 = !{ptr @.str.39, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/usb/host/xhci.h", i32 2456, i32 4}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/usb/host/xhci.h", i32 1435, i32 10}
!86 = !{ptr @.str.41, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/usb/host/xhci.h", i32 1437, i32 10}
!88 = !{ptr @.str.42, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/usb/host/xhci.h", i32 1439, i32 10}
!90 = !{ptr @.str.43, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/usb/host/xhci.h", i32 1441, i32 10}
!92 = !{ptr @.str.44, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/usb/host/xhci.h", i32 1443, i32 10}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/usb/host/xhci.h", i32 1445, i32 10}
!96 = !{ptr @.str.46, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/usb/host/xhci.h", i32 1447, i32 10}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/usb/host/xhci.h", i32 1449, i32 10}
!100 = !{ptr @.str.48, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/usb/host/xhci.h", i32 1451, i32 10}
!102 = !{ptr @.str.49, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/usb/host/xhci.h", i32 1453, i32 10}
!104 = !{ptr @.str.50, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/usb/host/xhci.h", i32 1455, i32 10}
!106 = !{ptr @.str.51, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/usb/host/xhci.h", i32 1457, i32 10}
!108 = !{ptr @.str.52, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/usb/host/xhci.h", i32 1459, i32 10}
!110 = !{ptr @.str.53, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/usb/host/xhci.h", i32 1461, i32 10}
!112 = !{ptr @.str.54, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/usb/host/xhci.h", i32 1463, i32 10}
!114 = !{ptr @.str.55, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/usb/host/xhci.h", i32 1465, i32 10}
!116 = !{ptr @.str.56, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/usb/host/xhci.h", i32 1467, i32 10}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/usb/host/xhci.h", i32 1469, i32 10}
!120 = !{ptr @.str.58, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/usb/host/xhci.h", i32 1471, i32 10}
!122 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/usb/host/xhci.h", i32 1473, i32 10}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/usb/host/xhci.h", i32 1475, i32 10}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/usb/host/xhci.h", i32 1477, i32 10}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/usb/host/xhci.h", i32 1479, i32 10}
!130 = !{ptr @.str.63, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/usb/host/xhci.h", i32 1481, i32 10}
!132 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/usb/host/xhci.h", i32 1483, i32 10}
!134 = !{ptr @.str.65, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/usb/host/xhci.h", i32 1485, i32 10}
!136 = !{ptr @.str.66, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/usb/host/xhci.h", i32 1487, i32 10}
!138 = !{ptr @.str.67, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/usb/host/xhci.h", i32 1489, i32 10}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/usb/host/xhci.h", i32 1491, i32 10}
!142 = !{ptr @.str.69, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/usb/host/xhci.h", i32 1493, i32 10}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/usb/host/xhci.h", i32 1495, i32 10}
!146 = !{ptr @.str.71, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/usb/host/xhci.h", i32 1497, i32 10}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/usb/host/xhci.h", i32 1499, i32 10}
!150 = !{ptr @.str.73, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/usb/host/xhci.h", i32 1501, i32 10}
!152 = !{ptr @.str.74, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/usb/host/xhci.h", i32 1136, i32 10}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/usb/host/xhci.h", i32 1138, i32 10}
!156 = !{ptr @.str.76, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/usb/host/xhci.h", i32 1140, i32 10}
!158 = !{ptr @.str.77, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/usb/host/xhci.h", i32 1142, i32 10}
!160 = !{ptr @.str.78, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/usb/host/xhci.h", i32 1144, i32 10}
!162 = !{ptr @.str.79, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/usb/host/xhci.h", i32 1146, i32 10}
!164 = !{ptr @.str.80, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/usb/host/xhci.h", i32 1148, i32 10}
!166 = !{ptr @.str.81, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/usb/host/xhci.h", i32 1150, i32 10}
!168 = !{ptr @.str.82, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/usb/host/xhci.h", i32 1152, i32 10}
!170 = !{ptr @.str.83, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/usb/host/xhci.h", i32 1154, i32 10}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/usb/host/xhci.h", i32 1156, i32 10}
!174 = !{ptr @.str.85, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/usb/host/xhci.h", i32 1158, i32 10}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/usb/host/xhci.h", i32 1160, i32 10}
!178 = !{ptr @.str.87, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/usb/host/xhci.h", i32 1162, i32 10}
!180 = !{ptr @.str.88, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/usb/host/xhci.h", i32 1164, i32 10}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/usb/host/xhci.h", i32 1166, i32 10}
!184 = !{ptr @.str.90, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/usb/host/xhci.h", i32 1168, i32 10}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/usb/host/xhci.h", i32 1170, i32 10}
!188 = !{ptr @.str.92, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/usb/host/xhci.h", i32 1172, i32 10}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/usb/host/xhci.h", i32 1174, i32 10}
!192 = !{ptr @.str.94, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/usb/host/xhci.h", i32 1176, i32 10}
!194 = !{ptr @.str.95, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/usb/host/xhci.h", i32 1178, i32 10}
!196 = !{ptr @.str.96, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/usb/host/xhci.h", i32 1180, i32 10}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/usb/host/xhci.h", i32 1182, i32 10}
!200 = !{ptr @.str.98, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/usb/host/xhci.h", i32 1184, i32 10}
!202 = !{ptr @.str.99, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/usb/host/xhci.h", i32 1186, i32 10}
!204 = !{ptr @.str.100, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/usb/host/xhci.h", i32 1188, i32 10}
!206 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/usb/host/xhci.h", i32 1190, i32 10}
!208 = !{ptr @.str.102, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/usb/host/xhci.h", i32 1192, i32 10}
!210 = !{ptr @.str.103, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/usb/host/xhci.h", i32 1194, i32 10}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/usb/host/xhci.h", i32 1196, i32 10}
!214 = !{ptr @.str.105, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/usb/host/xhci.h", i32 1198, i32 10}
!216 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/usb/host/xhci.h", i32 1200, i32 10}
!218 = !{ptr @.str.107, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/usb/host/xhci.h", i32 1202, i32 10}
!220 = !{ptr @.str.108, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/usb/host/xhci.h", i32 1204, i32 10}
!222 = !{ptr @.str.109, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/usb/host/xhci.h", i32 1206, i32 10}
!224 = !{ptr @.str.110, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/usb/host/xhci.h", i32 1208, i32 10}
!226 = !{ptr @xhci_ring_fops, !227, !"xhci_ring_fops", i1 false, i1 false}
!227 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 251, i32 37}
!228 = !{ptr @stream_id_fops, !229, !"stream_id_fops", i1 false, i1 false}
!229 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 529, i32 37}
!230 = !{ptr @.str.111, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 493, i32 16}
!232 = !{ptr @xhci_stream_context_array_fops, !233, !"xhci_stream_context_array_fops", i1 false, i1 false}
!233 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 564, i32 1}
!234 = !{ptr @.str.112, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 547, i32 16}
!236 = !{ptr @.str.113, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 555, i32 18}
!238 = !{ptr @.str.114, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 558, i32 18}
!240 = !{ptr @.str.115, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 315, i32 3}
!242 = !{ptr @.str.116, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 316, i32 3}
!244 = !{ptr @.str.117, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 317, i32 3}
!246 = !{ptr @context_files, !247, !"context_files", i1 false, i1 false}
!247 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 314, i32 29}
!248 = !{ptr @.str.118, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 309, i32 16}
!250 = !{ptr @.str.119, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/usb/host/xhci.h", i32 2504, i32 21}
!252 = !{ptr @.str.120, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/usb/host/xhci.h", i32 2509, i32 9}
!254 = !{ptr @.str.121, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/usb/host/xhci.h", i32 2512, i32 9}
!256 = !{ptr @.str.122, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/usb/host/xhci.h", i32 2515, i32 9}
!258 = !{ptr @.str.123, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/usb/host/xhci.h", i32 2518, i32 9}
!260 = !{ptr @.str.124, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/usb/host/xhci.h", i32 2521, i32 9}
!262 = !{ptr @.str.125, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/usb/host/xhci.h", i32 2524, i32 9}
!264 = !{ptr @.str.126, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/usb/host/xhci.h", i32 2526, i32 10}
!266 = !{ptr @.str.127, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/usb/host/xhci.h", i32 2526, i32 24}
!268 = !{ptr @.str.128, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/usb/host/xhci.h", i32 2527, i32 10}
!270 = !{ptr @.str.129, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/usb/host/xhci.h", i32 2533, i32 28}
!272 = !{ptr @.str.130, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/usb/host/xhci.h", i32 2230, i32 10}
!274 = !{ptr @.str.131, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/usb/host/xhci.h", i32 2232, i32 10}
!276 = !{ptr @.str.132, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/usb/host/xhci.h", i32 2234, i32 10}
!278 = !{ptr @.str.133, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/usb/host/xhci.h", i32 2236, i32 10}
!280 = !{ptr @.str.134, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/usb/host/xhci.h", i32 2238, i32 10}
!282 = !{ptr @.str.135, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/usb/host/xhci.h", i32 2756, i32 21}
!284 = !{ptr @.str.136, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/usb/host/xhci.h", i32 2758, i32 20}
!286 = !{ptr @.str.137, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/usb/host/xhci.h", i32 2760, i32 28}
!288 = !{ptr @.str.138, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/usb/host/xhci.h", i32 2763, i32 28}
!290 = !{ptr @.str.139, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/usb/host/xhci.h", i32 2764, i32 40}
!292 = !{ptr @.str.140, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/usb/host/xhci.h", i32 2767, i32 28}
!294 = !{ptr @.str.141, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/usb/host/xhci.h", i32 2683, i32 10}
!296 = !{ptr @.str.142, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/usb/host/xhci.h", i32 2685, i32 10}
!298 = !{ptr @.str.143, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/usb/host/xhci.h", i32 2687, i32 10}
!300 = !{ptr @.str.144, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/usb/host/xhci.h", i32 2689, i32 10}
!302 = !{ptr @.str.145, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/usb/host/xhci.h", i32 2691, i32 10}
!304 = !{ptr @.str.146, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/usb/host/xhci.h", i32 2693, i32 10}
!306 = !{ptr @.str.147, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/usb/host/xhci.h", i32 2701, i32 10}
!308 = !{ptr @.str.148, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/usb/host/xhci.h", i32 2703, i32 10}
!310 = !{ptr @.str.149, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/usb/host/xhci.h", i32 2705, i32 10}
!312 = !{ptr @.str.150, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/usb/host/xhci.h", i32 2707, i32 10}
!314 = !{ptr @.str.151, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/usb/host/xhci.h", i32 2709, i32 10}
!316 = !{ptr @.str.152, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/usb/host/xhci.h", i32 2711, i32 10}
!318 = !{ptr @.str.153, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/usb/host/xhci.h", i32 2713, i32 10}
!320 = !{ptr @xhci_context_fops, !321, !"xhci_context_fops", i1 false, i1 false}
!321 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 336, i32 37}
!322 = !{ptr @.str.154, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 17, i32 2}
!324 = !{ptr @.str.155, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 18, i32 2}
!326 = !{ptr @.str.156, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 19, i32 2}
!328 = !{ptr @.str.157, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 20, i32 2}
!330 = !{ptr @.str.158, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 21, i32 2}
!332 = !{ptr @.str.159, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 22, i32 2}
!334 = !{ptr @.str.160, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 23, i32 2}
!336 = !{ptr @.str.161, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 24, i32 2}
!338 = !{ptr @xhci_cap_regs, !339, !"xhci_cap_regs", i1 false, i1 false}
!339 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 16, i32 35}
!340 = !{ptr @.str.162, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 28, i32 2}
!342 = !{ptr @.str.163, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 29, i32 2}
!344 = !{ptr @.str.164, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 30, i32 2}
!346 = !{ptr @.str.165, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 31, i32 2}
!348 = !{ptr @.str.166, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 32, i32 2}
!350 = !{ptr @.str.167, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 33, i32 2}
!352 = !{ptr @.str.168, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 34, i32 2}
!354 = !{ptr @.str.169, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 35, i32 2}
!356 = !{ptr @xhci_op_regs, !357, !"xhci_op_regs", i1 false, i1 false}
!357 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 27, i32 35}
!358 = !{ptr @.str.170, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 39, i32 2}
!360 = !{ptr @.str.171, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 40, i32 2}
!362 = !{ptr @.str.172, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 41, i32 2}
!364 = !{ptr @.str.173, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 42, i32 2}
!366 = !{ptr @.str.174, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 43, i32 2}
!368 = !{ptr @.str.175, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 44, i32 2}
!370 = !{ptr @.str.176, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 45, i32 2}
!372 = !{ptr @.str.177, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 46, i32 2}
!374 = !{ptr @xhci_runtime_regs, !375, !"xhci_runtime_regs", i1 false, i1 false}
!375 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 38, i32 35}
!376 = !{ptr @.str.178, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 157, i32 29}
!378 = !{ptr @.str.179, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 50, i32 2}
!380 = !{ptr @.str.180, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 51, i32 2}
!382 = !{ptr @xhci_extcap_legsup, !383, !"xhci_extcap_legsup", i1 false, i1 false}
!383 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 49, i32 35}
!384 = !{ptr @.str.181, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 55, i32 2}
!386 = !{ptr @.str.182, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 56, i32 2}
!388 = !{ptr @.str.183, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 57, i32 2}
!390 = !{ptr @.str.184, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 58, i32 2}
!392 = !{ptr @.str.185, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 59, i32 2}
!394 = !{ptr @.str.186, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 60, i32 2}
!396 = !{ptr @.str.187, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 61, i32 2}
!398 = !{ptr @.str.188, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 62, i32 2}
!400 = !{ptr @.str.189, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 63, i32 2}
!402 = !{ptr @.str.190, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 64, i32 2}
!404 = !{ptr @xhci_extcap_protocol, !405, !"xhci_extcap_protocol", i1 false, i1 false}
!405 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 54, i32 35}
!406 = !{ptr @.str.191, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 68, i32 2}
!408 = !{ptr @.str.192, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 69, i32 2}
!410 = !{ptr @.str.193, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 70, i32 2}
!412 = !{ptr @.str.194, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 71, i32 2}
!414 = !{ptr @.str.195, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 72, i32 2}
!416 = !{ptr @.str.196, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 73, i32 2}
!418 = !{ptr @.str.197, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 74, i32 2}
!420 = !{ptr @.str.198, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 75, i32 2}
!422 = !{ptr @.str.199, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 76, i32 2}
!424 = !{ptr @.str.200, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 77, i32 2}
!426 = !{ptr @.str.201, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 78, i32 2}
!428 = !{ptr @.str.202, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 79, i32 2}
!430 = !{ptr @.str.203, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 80, i32 2}
!432 = !{ptr @.str.204, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 81, i32 2}
!434 = !{ptr @xhci_extcap_dbc, !435, !"xhci_extcap_dbc", i1 false, i1 false}
!435 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 67, i32 35}
!436 = !{ptr @.str.205, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 641, i32 30}
!438 = !{ptr @.str.206, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 644, i32 43}
!440 = !{ptr @.str.207, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 648, i32 23}
!442 = !{ptr @port_fops, !443, !"port_fops", i1 false, i1 false}
!443 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 397, i32 37}
!444 = !{ptr @.str.208, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/usb/host/xhci-debugfs.c", i32 375, i32 20}
!446 = distinct !{null, !447, !"__already_done", i1 false, i1 false}
!447 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!448 = distinct !{null, !447, !"<string literal>", i1 false, i1 false}
!449 = distinct !{null, !450, !"<string literal>", i1 false, i1 false}
!450 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!451 = !{ptr @.str.211, !452, !"<string literal>", i1 false, i1 false}
!452 = !{!"../include/linux/uaccess.h", i32 156, i32 2}
!453 = !{ptr @.str.212, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/usb/host/xhci.h", i32 2582, i32 21}
!455 = !{ptr @.str.213, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/usb/host/xhci.h", i32 2583, i32 31}
!457 = !{ptr @.str.214, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/usb/host/xhci.h", i32 2583, i32 43}
!459 = !{ptr @.str.215, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/usb/host/xhci.h", i32 2584, i32 33}
!461 = !{ptr @.str.216, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/usb/host/xhci.h", i32 2584, i32 47}
!463 = !{ptr @.str.217, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/usb/host/xhci.h", i32 2585, i32 29}
!465 = !{ptr @.str.218, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/usb/host/xhci.h", i32 2585, i32 41}
!467 = !{ptr @.str.219, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/usb/host/xhci.h", i32 2590, i32 29}
!469 = !{ptr @.str.220, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/usb/host/xhci.h", i32 2592, i32 29}
!471 = !{ptr @.str.221, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/usb/host/xhci.h", i32 2594, i32 28}
!473 = !{ptr @.str.222, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/usb/host/xhci.h", i32 2596, i32 29}
!475 = !{ptr @.str.223, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/usb/host/xhci.h", i32 2598, i32 29}
!477 = !{ptr @.str.224, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/usb/host/xhci.h", i32 2600, i32 29}
!479 = !{ptr @.str.225, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/usb/host/xhci.h", i32 2602, i32 29}
!481 = !{ptr @.str.226, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/usb/host/xhci.h", i32 2604, i32 29}
!483 = !{ptr @.str.227, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/usb/host/xhci.h", i32 2606, i32 29}
!485 = !{ptr @.str.228, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/usb/host/xhci.h", i32 2608, i32 29}
!487 = !{ptr @.str.229, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/usb/host/xhci.h", i32 2610, i32 29}
!489 = !{ptr @.str.230, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/usb/host/xhci.h", i32 2612, i32 28}
!491 = !{ptr @.str.231, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/usb/host/xhci.h", i32 2614, i32 29}
!493 = !{ptr @.str.232, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/usb/host/xhci.h", i32 2616, i32 29}
!495 = !{ptr @.str.233, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/usb/host/xhci.h", i32 2618, i32 29}
!497 = !{ptr @.str.234, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/usb/host/xhci.h", i32 2547, i32 10}
!499 = !{ptr @.str.235, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/usb/host/xhci.h", i32 2549, i32 10}
!501 = !{ptr @.str.236, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/usb/host/xhci.h", i32 2551, i32 10}
!503 = !{ptr @.str.237, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/usb/host/xhci.h", i32 2553, i32 10}
!505 = !{ptr @.str.238, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/usb/host/xhci.h", i32 2557, i32 10}
!507 = !{ptr @.str.239, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/usb/host/xhci.h", i32 2559, i32 10}
!509 = !{ptr @.str.240, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/usb/host/xhci.h", i32 2561, i32 10}
!511 = !{ptr @.str.241, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/usb/host/xhci.h", i32 2563, i32 10}
!513 = !{ptr @.str.242, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/usb/host/xhci.h", i32 2565, i32 10}
!515 = !{ptr @.str.243, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/usb/host/xhci.h", i32 2567, i32 10}
!517 = !{ptr @.str.244, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/usb/host/xhci.h", i32 2569, i32 10}
!519 = !{ptr @.str.245, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/usb/host/xhci.h", i32 2571, i32 10}
!521 = !{ptr @.str.246, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/usb/host/xhci.h", i32 2575, i32 9}
!523 = !{!"sp"}
!524 = !{i32 1, !"wchar_size", i32 2}
!525 = !{i32 1, !"min_enum_size", i32 4}
!526 = !{i32 8, !"branch-target-enforcement", i32 0}
!527 = !{i32 8, !"sign-return-address", i32 0}
!528 = !{i32 8, !"sign-return-address-all", i32 0}
!529 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!530 = !{i32 7, !"uwtable", i32 1}
!531 = !{i32 7, !"frame-pointer", i32 2}
!532 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!533 = !{i64 4976899}
!534 = !{i64 2154125759}
!535 = !{i64 2154126689}
!536 = !{!"auto-init"}
!537 = !{i64 2154052330}
!538 = !{i64 2154052823}
!539 = !{i64 2154110484}
!540 = !{!"branch_weights", i32 2000, i32 1}
!541 = !{i64 2152105308, i64 2152105333}
!542 = !{i64 4600863}
!543 = !{i64 4601060}
!544 = !{i64 2152086293}
!545 = !{i64 2154117604}
!546 = !{i64 2154117870}
!547 = !{i64 4976481}
!548 = !{i64 2154114952}
