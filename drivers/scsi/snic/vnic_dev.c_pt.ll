; ModuleID = '/llk/IR_all_yes/drivers/scsi/snic/vnic_dev.c_pt.bc'
source_filename = "../drivers/scsi/snic/vnic_dev.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.vnic_dev = type { ptr, ptr, [25 x %struct.vnic_res], i32, ptr, ptr, %struct.vnic_devcmd_notify, i32, ptr, i32, ptr, i32, ptr, i32, [15 x i64], ptr, ptr }
%struct.vnic_res = type { ptr, i32 }
%struct.vnic_devcmd_notify = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnic_dev_ring = type { ptr, i32, i32, i32, ptr, i32, i32, i32, i32, i32 }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.70, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.hlist_head = type { ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.pci_vpd = type { %struct.mutex, i32, i8 }
%union.anon.70 = type { ptr }
%struct.devcmd2_controller = type { ptr, %struct.vnic_dev_ring, %struct.vnic_wq, ptr, ptr, i16, i16, i32 }
%struct.vnic_wq = type { i32, ptr, ptr, %struct.vnic_dev_ring, [64 x ptr], ptr, ptr, i32 }
%struct.vnic_dev_bar = type { ptr, i32, i32 }
%struct.vnic_resource_header = type { i32, i32 }
%struct.vnic_resource = type { i8, i8, [2 x i8], i32, i32 }
%struct.vnic_wq_ctrl = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vnic_devcmd2 = type { i16, i16, i32, [15 x i64] }
%struct.devcmd2_result = type { [15 x i64], i32, i16, i8, i8 }

@svnic_dev_alloc_desc_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 233, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Failed to allocate ring (size=%d), aborting\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"svnic_dev_alloc_desc_ring\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/snic/vnic_dev.c\00", [35 x i8] zeroinitializer }, align 32
@svnic_dev_alloc_desc_ring._entry_ptr = internal global ptr @svnic_dev_alloc_desc_ring._entry, section ".printk_index", align 4
@svnic_dev_cmd_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 760, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013DEVCMD2 resource not found.\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"svnic_dev_cmd_init\00", [45 x i8] zeroinitializer }, align 32
@svnic_dev_cmd_init._entry_ptr = internal global ptr @svnic_dev_cmd_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@vnic_dev_discover_res._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013vNIC BAR0 res hdr length error\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vnic_dev_discover_res\00", [42 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr = internal global ptr @vnic_dev_discover_res._entry, section ".printk_index", align 4
@vnic_dev_discover_res._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013vNIC BAR0 res hdr not mem-mapped\0A\00", [60 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr.9 = internal global ptr @vnic_dev_discover_res._entry.7, section ".printk_index", align 4
@vnic_dev_discover_res._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\013vNIC BAR0 res magic/version error exp (%lx/%lx) curr (%x/%x)\0A\00", [32 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr.12 = internal global ptr @vnic_dev_discover_res._entry.10, section ".printk_index", align 4
@vnic_dev_discover_res._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 142, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [80 x i8], [48 x i8] } { [80 x i8] c"\013vNIC BAR0 resource %d out-of-bounds, offset 0x%x + size 0x%x > bar len 0x%lx\0A\00", [48 x i8] zeroinitializer }, align 32
@vnic_dev_discover_res._entry_ptr.15 = internal global ptr @vnic_dev_discover_res._entry.13, section ".printk_index", align 4
@svnic_dev_init_devcmd2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 416, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016DEVCMD2 Initialized.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"svnic_dev_init_devcmd2\00", [41 x i8] zeroinitializer }, align 32
@svnic_dev_init_devcmd2._entry_ptr = internal global ptr @svnic_dev_init_devcmd2._entry, section ".printk_index", align 4
@_svnic_dev_cmd2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [86 x i8], [42 x i8] } { [86 x i8] c"\013%s: wq is full while issuing devcmd2 command %d, fetch index: %u, posted index: %u\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"_svnic_dev_cmd2\00", [16 x i8] zeroinitializer }, align 32
@_svnic_dev_cmd2._entry_ptr = internal global ptr @_svnic_dev_cmd2._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@_svnic_dev_cmd2._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 337, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Error %d devcmd %d\0A\00", [42 x i8] zeroinitializer }, align 32
@_svnic_dev_cmd2._entry_ptr.22 = internal global ptr @_svnic_dev_cmd2._entry.20, section ".printk_index", align 4
@_svnic_dev_cmd2._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 350, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013Timed out devcmd %d\0A\00", [41 x i8] zeroinitializer }, align 32
@_svnic_dev_cmd2._entry_ptr.25 = internal global ptr @_svnic_dev_cmd2._entry.23, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 10]
@__sancov_gen_cov_switch_values.26 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.27 = internal global [9 x i64] [i64 7, i64 8, i64 1, i64 2, i64 3, i64 10, i64 13, i64 16, i64 24]
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 232, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 760, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 93, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 100, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 107, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 139, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 416, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 289, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 336, i32 6 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.104 = private constant [32 x i8] c"../drivers/scsi/snic/vnic_dev.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 350, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @_svnic_dev_cmd2._entry, ptr @_svnic_dev_cmd2._entry.20, ptr @_svnic_dev_cmd2._entry.23, ptr @_svnic_dev_cmd2._entry_ptr, ptr @_svnic_dev_cmd2._entry_ptr.22, ptr @_svnic_dev_cmd2._entry_ptr.25, ptr @svnic_dev_alloc_desc_ring._entry, ptr @svnic_dev_alloc_desc_ring._entry_ptr, ptr @svnic_dev_cmd_init._entry, ptr @svnic_dev_cmd_init._entry_ptr, ptr @svnic_dev_init_devcmd2._entry, ptr @svnic_dev_init_devcmd2._entry_ptr, ptr @vnic_dev_discover_res._entry, ptr @vnic_dev_discover_res._entry.10, ptr @vnic_dev_discover_res._entry.13, ptr @vnic_dev_discover_res._entry.7, ptr @vnic_dev_discover_res._entry_ptr, ptr @vnic_dev_discover_res._entry_ptr.12, ptr @vnic_dev_discover_res._entry_ptr.15, ptr @vnic_dev_discover_res._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svnic_dev_alloc_desc_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svnic_dev_cmd_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vnic_dev_discover_res._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @svnic_dev_init_devcmd2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_svnic_dev_cmd2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 86, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_svnic_dev_cmd2._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_svnic_dev_cmd2._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @svnic_dev_priv(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vdev, align 8
  ret ptr %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @svnic_dev_get_res_count(ptr nocapture noundef readonly %vdev, i32 noundef %type) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %count = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 2, i32 %type, i32 1
  %0 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %count, align 4
  ret i32 %1
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @svnic_dev_get_res(ptr nocapture noundef readonly %vdev, i32 noundef %type, i32 noundef %index) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 2, i32 %type
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end:                                           ; preds = %entry
  %2 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.return_crit_edge [
    i32 1, label %if.end.sw.bb_crit_edge
    i32 2, label %if.end.sw.bb_crit_edge12
    i32 3, label %if.end.sw.bb_crit_edge13
    i32 10, label %if.end.sw.bb_crit_edge14
  ]

if.end.sw.bb_crit_edge14:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge13:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge12:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge12, %if.end.sw.bb_crit_edge13, %if.end.sw.bb_crit_edge14
  %mul = shl i32 %index, 7
  %add.ptr = getelementptr i8, ptr %1, i32 %mul
  br label %return

return:                                           ; preds = %sw.bb, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %sw.bb ], [ null, %entry.return_crit_edge ], [ %1, %if.end.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @svnic_dev_desc_ring_size(ptr nocapture noundef %ring, i32 noundef %desc_count, i32 noundef %desc_size) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_align = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %base_align to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 512, ptr %base_align, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_count)
  %cmp = icmp eq i32 %desc_count, 0
  %desc_count.op = add i32 %desc_count, 31
  %desc_count.op.op = and i32 %desc_count.op, -32
  %and = select i1 %cmp, i32 4096, i32 %desc_count.op.op
  %desc_count2 = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 8
  %1 = ptrtoint ptr %desc_count2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and, ptr %desc_count2, align 4
  %add4 = add i32 %desc_size, 15
  %and7 = and i32 %add4, -16
  %desc_size8 = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %desc_size8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and7, ptr %desc_size8, align 4
  %mul = mul i32 %and, %and7
  %size = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul, ptr %size, align 4
  %add13 = add i32 %mul, 512
  %size_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %size_unaligned to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add13, ptr %size_unaligned, align 4
  ret i32 %add13
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @svnic_dev_clear_desc_ring(ptr nocapture noundef readonly %ring) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %size = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 1
  %2 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %size, align 4
  %4 = call ptr @memset(ptr %1, i32 0, i32 %3)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_alloc_desc_ring(ptr nocapture noundef readonly %vdev, ptr noundef %ring, i32 noundef %desc_count, i32 noundef %desc_size) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base_align.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 3
  %0 = ptrtoint ptr %base_align.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 512, ptr %base_align.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_count)
  %cmp.i = icmp eq i32 %desc_count, 0
  %desc_count.op.i = add i32 %desc_count, 31
  %desc_count.op.op.i = and i32 %desc_count.op.i, -32
  %and.i = select i1 %cmp.i, i32 4096, i32 %desc_count.op.op.i
  %desc_count2.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 8
  %1 = ptrtoint ptr %desc_count2.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %and.i, ptr %desc_count2.i, align 4
  %add4.i = add i32 %desc_size, 15
  %and7.i = and i32 %add4.i, -16
  %desc_size8.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 7
  %2 = ptrtoint ptr %desc_size8.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and7.i, ptr %desc_size8.i, align 4
  %mul.i = mul i32 %and.i, %and7.i
  %size.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 1
  %3 = ptrtoint ptr %size.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %mul.i, ptr %size.i, align 4
  %add13.i = add i32 %mul.i, 512
  %size_unaligned.i = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %size_unaligned.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %add13.i, ptr %size_unaligned.i, align 4
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %base_addr_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 6
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %add13.i, ptr noundef %base_addr_unaligned, i32 noundef 3264, i32 noundef 0) #10
  %descs_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 4
  %7 = ptrtoint ptr %descs_unaligned to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %descs_unaligned, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %size.i, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %9) #13
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %base_addr_unaligned to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base_addr_unaligned, align 4
  %12 = ptrtoint ptr %base_align.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %base_align.i, align 4
  %sub = add i32 %11, -1
  %add = add i32 %sub, %13
  %neg = sub i32 0, %13
  %and = and i32 %add, %neg
  %base_addr = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 2
  %14 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %and, ptr %base_addr, align 4
  %sub10 = sub i32 %and, %11
  %add.ptr = getelementptr i8, ptr %call.i, i32 %sub10
  %15 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr, ptr %ring, align 4
  %16 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size.i, align 4
  %18 = call ptr @memset(ptr %add.ptr, i32 0, i32 %17)
  %19 = ptrtoint ptr %desc_count2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_count2.i, align 4
  %sub12 = add i32 %20, -1
  %desc_avail = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 9
  %21 = ptrtoint ptr %desc_avail to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub12, ptr %desc_avail, align 4
  br label %return

return:                                           ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_dev_free_desc_ring(ptr nocapture noundef readonly %vdev, ptr nocapture noundef %ring) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ring to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ring, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %size_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 5
  %4 = ptrtoint ptr %size_unaligned to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size_unaligned, align 4
  %descs_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 4
  %6 = ptrtoint ptr %descs_unaligned to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %descs_unaligned, align 4
  %base_addr_unaligned = getelementptr inbounds %struct.vnic_dev_ring, ptr %ring, i32 0, i32 6
  %8 = ptrtoint ptr %base_addr_unaligned to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base_addr_unaligned, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %5, ptr noundef %7, i32 noundef %9, i32 noundef 0) #10
  %10 = ptrtoint ptr %ring to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %ring, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_cmd(ptr noundef %vdev, i32 noundef %cmd, ptr nocapture noundef %a0, ptr nocapture noundef %a1, i32 noundef %wait) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %0 = call ptr @memset(ptr %args, i32 0, i32 120)
  %1 = ptrtoint ptr %a0 to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %a0, align 8
  %3 = ptrtoint ptr %args to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %args, align 8
  %4 = ptrtoint ptr %a1 to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %a1, align 8
  %arrayidx3 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %5, ptr %arrayidx3, align 8
  %devcmd_rtn = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %7 = ptrtoint ptr %devcmd_rtn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %devcmd_rtn, align 4
  %call = tail call i32 %8(ptr noundef %vdev, i32 noundef %cmd, i32 noundef %wait) #10
  %9 = ptrtoint ptr %args to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %args, align 8
  %11 = ptrtoint ptr %a0 to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %10, ptr %a0, align 8
  %12 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx3, align 8
  %14 = ptrtoint ptr %a1 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %13, ptr %a1, align 8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_fw_info(ptr noundef %vdev, ptr nocapture noundef writeonly %fw_info) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %fw_info1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 12
  %0 = ptrtoint ptr %fw_info1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fw_info1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end8_crit_edge

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %fw_info_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 13
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 128, ptr noundef %fw_info_pa, i32 noundef 3264, i32 noundef 0) #10
  %4 = ptrtoint ptr %fw_info1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %fw_info1, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %fw_info_pa to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %fw_info_pa, align 8
  %conv = zext i32 %6 to i64
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %7 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 104)
  %9 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %args.i, align 8
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %arrayidx3.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %11 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i20 = tail call i32 %12(ptr noundef %vdev, i32 noundef 1073856513, i32 noundef 10000) #10
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %err.0 = phi i32 [ 0, %entry.if.end8_crit_edge ], [ %call.i20, %if.end ]
  %13 = ptrtoint ptr %fw_info1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fw_info1, align 4
  %15 = ptrtoint ptr %fw_info to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %fw_info, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %if.end8 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_spec(ptr noundef %vdev, i32 noundef %offset, i32 noundef %size, ptr nocapture noundef writeonly %value) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %offset to i64
  %conv1 = zext i32 %size to i64
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %0 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 104)
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %args.i, align 8
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %conv1, ptr %arrayidx3.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %4 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %5(ptr noundef %vdev, i32 noundef -1073627134, i32 noundef 10000) #10
  %6 = ptrtoint ptr %args.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %args.i, align 8
  %8 = zext i32 %size to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %size, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb3
    i32 4, label %sw.bb5
    i32 8, label %sw.bb7
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv2 = trunc i64 %7 to i8
  %9 = ptrtoint ptr %value to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv2, ptr %value, align 1
  br label %sw.epilog

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv4 = trunc i64 %7 to i16
  %10 = ptrtoint ptr %value to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv4, ptr %value, align 2
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %conv6 = trunc i64 %7 to i32
  %11 = ptrtoint ptr %value to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv6, ptr %value, align 4
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %value to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %7, ptr %value, align 8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/scsi/snic/vnic_dev.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 515, 0\0A.popsection", ""() #10, !srcloc !55
  unreachable

sw.epilog:                                        ; preds = %sw.bb7, %sw.bb5, %sw.bb3, %sw.bb
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_stats_clear(ptr noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %0 = call ptr @memset(ptr %args.i, i32 0, i32 120)
  %1 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %2(ptr noundef %vdev, i32 noundef 16891907, i32 noundef 10000) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_stats_dump(ptr noundef %vdev, ptr nocapture noundef writeonly %stats) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 10
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %stats1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %stats_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 11
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %stats_pa, i32 noundef 3264, i32 noundef 0) #10
  %4 = ptrtoint ptr %stats1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %stats1, align 4
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %5 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %stats1, align 4
  %7 = ptrtoint ptr %stats to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %stats, align 4
  %stats_pa8 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 11
  %8 = ptrtoint ptr %stats_pa8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stats_pa8, align 8
  %conv = zext i32 %9 to i64
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %10 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %11 = call ptr @memset(ptr %10, i32 0, i32 104)
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %conv, ptr %args.i, align 8
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %13 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 512, ptr %arrayidx3.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %14 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i19 = tail call i32 %15(ptr noundef %vdev, i32 noundef 1073856516, i32 noundef 10000) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i19, %if.end6 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_close(ptr noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %0 = call ptr @memset(ptr %args.i, i32 0, i32 120)
  %1 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %2(ptr noundef %vdev, i32 noundef 114713, i32 noundef 10000) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_enable_wait(ptr noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %0 = call ptr @memset(ptr %args.i, i32 0, i32 120)
  %1 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %2(ptr noundef %vdev, i32 noundef 1073856540, i32 noundef 10000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 5
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %arrayidx3.i, align 8
  %5 = ptrtoint ptr %args.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %args.i, align 8
  %7 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 104)
  store i64 %6, ptr %args.i, align 8
  store i64 %4, ptr %arrayidx3.i, align 8
  %9 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i11 = tail call i32 %10(ptr noundef %vdev, i32 noundef 1090633756, i32 noundef 10000) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i11, %if.then ], [ %call.i, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_disable(ptr noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %0 = call ptr @memset(ptr %args.i, i32 0, i32 120)
  %1 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %2(ptr noundef %vdev, i32 noundef 114717, i32 noundef 10000) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_open(ptr noundef %vdev, i32 noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %arg to i64
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %0 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 104)
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %args.i, align 8
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %arrayidx3.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %4 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %5(ptr noundef %vdev, i32 noundef 1090633751, i32 noundef 10000) #10
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_open_done(ptr noundef %vdev, ptr nocapture noundef writeonly %done) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %done, align 4
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %1 = call ptr @memset(ptr %args.i, i32 0, i32 120)
  %2 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %3(ptr noundef %vdev, i32 noundef -2147368936, i32 noundef 10000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %args.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %args.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %5)
  %cmp = icmp eq i64 %5, 0
  %conv = zext i1 %cmp to i32
  %6 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %done, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_notify_set(ptr noundef %vdev, i16 noundef zeroext %intr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %notify = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then:                                          ; preds = %entry
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %notify_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 7
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 36, ptr noundef %notify_pa, i32 noundef 3264, i32 noundef 0) #10
  %4 = ptrtoint ptr %notify to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %notify, align 8
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then.cleanup_crit_edge, label %if.then.if.end5_crit_edge

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end5

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  %notify_pa6 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 7
  %5 = ptrtoint ptr %notify_pa6 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %notify_pa6, align 8
  %conv = zext i32 %6 to i64
  %conv7 = zext i16 %intr to i64
  %shl = shl nuw nsw i64 %conv7, 32
  %add = or i64 %shl, 36
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %7 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %8 = call ptr @memset(ptr %7, i32 0, i32 104)
  %9 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv, ptr %args.i, align 8
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add, ptr %arrayidx3.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %11 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i17 = tail call i32 %12(ptr noundef %vdev, i32 noundef -1073627115, i32 noundef 10000) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i17, %if.end5 ], [ -12, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_dev_notify_unset(ptr noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %0 = call ptr @memset(ptr %args.i, i32 0, i32 120)
  %1 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %1)
  store i64 281470681743396, ptr %arrayidx3.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %2 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %3(ptr noundef %vdev, i32 noundef -1073627115, i32 noundef 10000) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_init(ptr noundef %vdev, i32 noundef %arg) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %arg to i64
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %0 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %1 = call ptr @memset(ptr %0, i32 0, i32 104)
  %2 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %conv, ptr %args.i, align 8
  %arrayidx3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %3 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %arrayidx3.i, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %4 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %devcmd_rtn.i, align 4
  %call.i = tail call i32 %5(ptr noundef %vdev, i32 noundef -2130591718, i32 noundef 10000) #10
  ret i32 %call.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_link_status(ptr nocapture noundef %vdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %linkstatus = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %0 = ptrtoint ptr %linkstatus to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %linkstatus, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.return.sink.split_crit_edge

entry.return.sink.split_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

if.end:                                           ; preds = %entry
  %notify.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %2 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %notify.i, align 8
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.return_crit_edge, label %do.body.preheader.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body.preheader.i:                              ; preds = %if.end
  %notify_copy.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 1
  %arrayidx.1.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 2
  %arrayidx.2.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 3
  %arrayidx.3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 4
  %arrayidx.4.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 5
  %arrayidx.5.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 6
  %arrayidx.6.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 7
  %arrayidx.7.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %4 = call ptr @memcpy(ptr %notify_copy.i, ptr %3, i32 36)
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %7 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %8, %6
  %9 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %add.1.i, %10
  %11 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = add i32 %add.2.i, %12
  %13 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.4.i, align 4
  %add.4.i = add i32 %add.3.i, %14
  %15 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.5.i, align 4
  %add.5.i = add i32 %add.4.i, %16
  %17 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.6.i, align 4
  %add.6.i = add i32 %add.5.i, %18
  %19 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx.7.i, align 4
  %add.7.i = add i32 %add.6.i, %20
  %21 = ptrtoint ptr %notify_copy.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %notify_copy.i, align 4
  %cmp4.not.i = icmp eq i32 %add.7.i, %22
  br i1 %cmp4.not.i, label %do.body.i.return.sink.split_crit_edge, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

do.body.i.return.sink.split_crit_edge:            ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return.sink.split

return.sink.split:                                ; preds = %do.body.i.return.sink.split_crit_edge, %entry.return.sink.split_crit_edge
  %arrayidx.i.sink = phi ptr [ %1, %entry.return.sink.split_crit_edge ], [ %arrayidx.i, %do.body.i.return.sink.split_crit_edge ]
  %23 = ptrtoint ptr %arrayidx.i.sink to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i.sink, align 4
  br label %return

return:                                           ; preds = %return.sink.split, %if.end.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.return_crit_edge ], [ %24, %return.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_link_down_cnt(ptr nocapture noundef %vdev) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %notify.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %notify.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.return_crit_edge, label %do.body.preheader.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

do.body.preheader.i:                              ; preds = %entry
  %notify_copy.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 6
  %arrayidx.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 1
  %arrayidx.1.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 2
  %arrayidx.2.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 3
  %arrayidx.3.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 4
  %arrayidx.4.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 5
  %arrayidx.5.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 6
  %arrayidx.6.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 7
  %arrayidx.7.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 6, i32 8
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %do.body.preheader.i
  %2 = call ptr @memcpy(ptr %notify_copy.i, ptr %1, i32 36)
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i, align 4
  %5 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.1.i, align 4
  %add.1.i = add i32 %6, %4
  %7 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.2.i, align 4
  %add.2.i = add i32 %add.1.i, %8
  %9 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.3.i, align 4
  %add.3.i = add i32 %add.2.i, %10
  %11 = ptrtoint ptr %arrayidx.4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.4.i, align 4
  %add.4.i = add i32 %add.3.i, %12
  %13 = ptrtoint ptr %arrayidx.5.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.5.i, align 4
  %add.5.i = add i32 %add.4.i, %14
  %15 = ptrtoint ptr %arrayidx.6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.6.i, align 4
  %add.6.i = add i32 %add.5.i, %16
  %17 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.7.i, align 4
  %add.7.i = add i32 %add.6.i, %18
  %19 = ptrtoint ptr %notify_copy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %notify_copy.i, align 4
  %cmp4.not.i = icmp eq i32 %add.7.i, %20
  br i1 %cmp4.not.i, label %if.end, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i

if.end:                                           ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %arrayidx.7.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.7.i, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %22, %if.end ], [ 0, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define dso_local void @svnic_dev_set_intr_mode(ptr nocapture noundef writeonly %vdev, i32 noundef %intr_mode) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode1 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %intr_mode1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %intr_mode, ptr %intr_mode1, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @svnic_dev_get_intr_mode(ptr nocapture noundef readonly %vdev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %intr_mode = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 3
  %0 = ptrtoint ptr %intr_mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intr_mode, align 8
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @svnic_dev_unregister(ptr noundef %vdev) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %entry.if.end25_crit_edge, label %if.then

entry.if.end25_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then:                                          ; preds = %entry
  %notify = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 5
  %0 = ptrtoint ptr %notify to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %notify, align 8
  %tobool1.not = icmp eq ptr %1, null
  br i1 %tobool1.not, label %if.then.if.end_crit_edge, label %if.then2

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.pci_dev, ptr %3, i32 0, i32 44
  %notify_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 7
  %4 = ptrtoint ptr %notify_pa to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %notify_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 36, ptr noundef nonnull %1, i32 noundef %5, i32 noundef 0) #10
  br label %if.end

if.end:                                           ; preds = %if.then2, %if.then.if.end_crit_edge
  %linkstatus = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 8
  %6 = ptrtoint ptr %linkstatus to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %linkstatus, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %pdev6 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %8 = ptrtoint ptr %pdev6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pdev6, align 4
  %dev7 = getelementptr inbounds %struct.pci_dev, ptr %9, i32 0, i32 44
  %linkstatus_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 9
  %10 = ptrtoint ptr %linkstatus_pa to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %linkstatus_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev7, i32 noundef 4, ptr noundef nonnull %7, i32 noundef %11, i32 noundef 0) #10
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %stats = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 10
  %12 = ptrtoint ptr %stats to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %stats, align 4
  %tobool10.not = icmp eq ptr %13, null
  br i1 %tobool10.not, label %if.end9.if.end15_crit_edge, label %if.then11

if.end9.if.end15_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then11:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %pdev12 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %14 = ptrtoint ptr %pdev12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pdev12, align 4
  %dev13 = getelementptr inbounds %struct.pci_dev, ptr %15, i32 0, i32 44
  %stats_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 11
  %16 = ptrtoint ptr %stats_pa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %stats_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev13, i32 noundef 512, ptr noundef nonnull %13, i32 noundef %17, i32 noundef 0) #10
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end9.if.end15_crit_edge
  %fw_info = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 12
  %18 = ptrtoint ptr %fw_info to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fw_info, align 4
  %tobool16.not = icmp eq ptr %19, null
  br i1 %tobool16.not, label %if.end15.if.end21_crit_edge, label %if.then17

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %pdev18 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %20 = ptrtoint ptr %pdev18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdev18, align 4
  %dev19 = getelementptr inbounds %struct.pci_dev, ptr %21, i32 0, i32 44
  %fw_info_pa = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 13
  %22 = ptrtoint ptr %fw_info_pa to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %fw_info_pa, align 8
  tail call void @dma_free_attrs(ptr noundef %dev19, i32 noundef 128, ptr noundef nonnull %19, i32 noundef %23, i32 noundef 0) #10
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %if.end15.if.end21_crit_edge
  %devcmd2 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 15
  %24 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %devcmd2, align 8
  %tobool22.not = icmp eq ptr %25, null
  br i1 %tobool22.not, label %if.end21.if.end24_crit_edge, label %if.then23

if.end21.if.end24_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then23:                                        ; preds = %if.end21
  %26 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %devcmd2, align 8
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %27 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %devcmd_rtn.i, align 4
  %results_ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %results_ring.i, align 4
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.then23.vnic_dev_deinit_devcmd2.exit_crit_edge, label %if.then.i.i

if.then23.vnic_dev_deinit_devcmd2.exit_crit_edge: ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %vnic_dev_deinit_devcmd2.exit

if.then.i.i:                                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %pdev.i.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %30 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %31, i32 0, i32 44
  %size_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %25, i32 0, i32 1, i32 5
  %32 = ptrtoint ptr %size_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %size_unaligned.i.i, align 4
  %descs_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %25, i32 0, i32 1, i32 4
  %34 = ptrtoint ptr %descs_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %descs_unaligned.i.i, align 4
  %base_addr_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %25, i32 0, i32 1, i32 6
  %36 = ptrtoint ptr %base_addr_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base_addr_unaligned.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i.i, i32 noundef %33, ptr noundef %35, i32 noundef %37, i32 noundef 0) #10
  %38 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr null, ptr %results_ring.i, align 4
  br label %vnic_dev_deinit_devcmd2.exit

vnic_dev_deinit_devcmd2.exit:                     ; preds = %if.then.i.i, %if.then23.vnic_dev_deinit_devcmd2.exit_crit_edge
  %wq.i = getelementptr inbounds %struct.devcmd2_controller, ptr %25, i32 0, i32 2
  %call.i = tail call i32 @svnic_wq_disable(ptr noundef %wq.i) #10
  tail call void @svnic_wq_free(ptr noundef %wq.i) #10
  tail call void @kfree(ptr noundef nonnull %25) #10
  br label %if.end24

if.end24:                                         ; preds = %vnic_dev_deinit_devcmd2.exit, %if.end21.if.end24_crit_edge
  tail call void @kfree(ptr noundef nonnull %vdev) #10
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %entry.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @svnic_dev_alloc_discover(ptr noundef %vdev, ptr noundef %priv, ptr noundef %pdev, ptr nocapture noundef readonly %bar, i32 noundef %num_bars) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %vdev, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 416) #14
  %tobool1.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool1.not, label %if.then.return_crit_edge, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end3:                                          ; preds = %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %vdev.addr.0 = phi ptr [ %vdev, %entry.if.end3_crit_edge ], [ %call7.i.i, %if.then.if.end3_crit_edge ]
  %1 = ptrtoint ptr %vdev.addr.0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %priv, ptr %vdev.addr.0, align 8
  %pdev5 = getelementptr inbounds %struct.vnic_dev, ptr %vdev.addr.0, i32 0, i32 1
  %2 = ptrtoint ptr %pdev5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %pdev, ptr %pdev5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_bars)
  %cmp.i = icmp eq i32 %num_bars, 0
  br i1 %cmp.i, label %if.end3.err_out_crit_edge, label %if.end.i

if.end3.err_out_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_out

if.end.i:                                         ; preds = %if.end3
  %len.i = getelementptr inbounds %struct.vnic_dev_bar, ptr %bar, i32 0, i32 2
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 308, i32 %4)
  %cmp1.i = icmp ult i32 %4, 308
  br i1 %cmp1.i, label %do.end.i, label %if.end3.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #13
  br label %err_out

if.end3.i:                                        ; preds = %if.end.i
  %5 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %bar, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #13
  br label %err_out

if.end10.i:                                       ; preds = %if.end3.i
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 1667853942, i32 %7)
  %cmp12.not.i = icmp eq i32 %7, 1667853942
  br i1 %cmp12.not.i, label %lor.lhs.false.i, label %if.end10.i.do.end18.i_crit_edge

if.end10.i.do.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18.i

lor.lhs.false.i:                                  ; preds = %if.end10.i
  %version.i = getelementptr inbounds %struct.vnic_resource_header, ptr %6, i32 0, i32 1
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version.i) #10, !srcloc !56
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp14.not.i = icmp eq i32 %8, 0
  br i1 %cmp14.not.i, label %if.end25.i, label %lor.lhs.false.i.do.end18.i_crit_edge

lor.lhs.false.i.do.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end18.i

do.end18.i:                                       ; preds = %lor.lhs.false.i.do.end18.i_crit_edge, %if.end10.i.do.end18.i_crit_edge
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %6) #10, !srcloc !56
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %version22.i = getelementptr inbounds %struct.vnic_resource_header, ptr %6, i32 0, i32 1
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %version22.i) #10, !srcloc !56
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %call24.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef 1986947427, i32 noundef 0, i32 noundef %10, i32 noundef %12) #13
  br label %err_out

if.end25.i:                                       ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr %struct.vnic_resource_header, ptr %6, i32 1
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %cmp28.not112.i = icmp eq i8 %13, 0
  br i1 %cmp28.not112.i, label %if.end25.i.return_crit_edge, label %if.end25.i.while.body.i_crit_edge

if.end25.i.while.body.i_crit_edge:                ; preds = %if.end25.i
  br label %while.body.i

if.end25.i.return_crit_edge:                      ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %if.end25.i.while.body.i_crit_edge
  %14 = phi i8 [ %31, %cleanup.i.while.body.i_crit_edge ], [ %13, %if.end25.i.while.body.i_crit_edge ]
  %r.0113.i = phi ptr [ %incdec.ptr.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr.i, %if.end25.i.while.body.i_crit_edge ]
  %conv114.i = zext i8 %14 to i32
  %bar30.i = getelementptr inbounds %struct.vnic_resource, ptr %r.0113.i, i32 0, i32 1
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %bar30.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %bar_offset32.i = getelementptr inbounds %struct.vnic_resource, ptr %r.0113.i, i32 0, i32 3
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %bar_offset32.i) #10, !srcloc !56
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %count34.i = getelementptr inbounds %struct.vnic_resource, ptr %r.0113.i, i32 0, i32 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %count34.i) #10, !srcloc !56
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  %incdec.ptr.i = getelementptr %struct.vnic_resource, ptr %r.0113.i, i32 1
  %conv37.i = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv37.i, i32 %num_bars)
  %cmp38.not.i = icmp ult i32 %conv37.i, %num_bars
  br i1 %cmp38.not.i, label %if.end41.i, label %while.body.i.cleanup.i_crit_edge

while.body.i.cleanup.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end41.i:                                       ; preds = %while.body.i
  %len42.i = getelementptr %struct.vnic_dev_bar, ptr %bar, i32 %conv37.i, i32 2
  %20 = ptrtoint ptr %len42.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len42.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool43.not.i = icmp eq i32 %21, 0
  br i1 %tobool43.not.i, label %if.end41.i.cleanup.i_crit_edge, label %lor.lhs.false44.i

if.end41.i.cleanup.i_crit_edge:                   ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

lor.lhs.false44.i:                                ; preds = %if.end41.i
  %arrayidx.i = getelementptr %struct.vnic_dev_bar, ptr %bar, i32 %conv37.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx.i, align 4
  %tobool48.not.i = icmp eq ptr %23, null
  br i1 %tobool48.not.i, label %lor.lhs.false44.i.cleanup.i_crit_edge, label %if.end50.i

lor.lhs.false44.i.cleanup.i_crit_edge:            ; preds = %lor.lhs.false44.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

if.end50.i:                                       ; preds = %lor.lhs.false44.i
  %24 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.27)
  switch i8 %14, label %if.end50.i.cleanup.i_crit_edge [
    i8 1, label %if.end50.i.sw.bb.i_crit_edge
    i8 2, label %if.end50.i.sw.bb.i_crit_edge36
    i8 3, label %if.end50.i.sw.bb.i_crit_edge37
    i8 10, label %if.end50.i.sw.bb.i_crit_edge38
    i8 13, label %if.end50.i.sw.epilog.i_crit_edge
    i8 16, label %if.end50.i.sw.epilog.i_crit_edge39
    i8 24, label %if.end50.i.sw.epilog.i_crit_edge40
  ]

if.end50.i.sw.epilog.i_crit_edge40:               ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end50.i.sw.epilog.i_crit_edge39:               ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end50.i.sw.epilog.i_crit_edge:                 ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

if.end50.i.sw.bb.i_crit_edge38:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end50.i.sw.bb.i_crit_edge37:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end50.i.sw.bb.i_crit_edge36:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end50.i.sw.bb.i_crit_edge:                     ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb.i

if.end50.i.cleanup.i_crit_edge:                   ; preds = %if.end50.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.i

sw.bb.i:                                          ; preds = %if.end50.i.sw.bb.i_crit_edge, %if.end50.i.sw.bb.i_crit_edge36, %if.end50.i.sw.bb.i_crit_edge37, %if.end50.i.sw.bb.i_crit_edge38
  %mul.i = shl i32 %19, 7
  %add.i = add i32 %mul.i, %17
  %25 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %26)
  %cmp53.i = icmp ugt i32 %add.i, %26
  br i1 %cmp53.i, label %cleanup.thread.i, label %sw.bb.i.sw.epilog.i_crit_edge

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog.i

cleanup.thread.i:                                 ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #12
  %call62.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %conv114.i, i32 noundef %17, i32 noundef %mul.i, i32 noundef %26) #13
  br label %err_out

sw.epilog.i:                                      ; preds = %sw.bb.i.sw.epilog.i_crit_edge, %if.end50.i.sw.epilog.i_crit_edge, %if.end50.i.sw.epilog.i_crit_edge39, %if.end50.i.sw.epilog.i_crit_edge40
  %arrayidx66.i = getelementptr %struct.vnic_dev, ptr %vdev.addr.0, i32 0, i32 2, i32 %conv114.i
  %count67.i = getelementptr %struct.vnic_dev, ptr %vdev.addr.0, i32 0, i32 2, i32 %conv114.i, i32 1
  %27 = ptrtoint ptr %count67.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %19, ptr %count67.i, align 4
  %28 = ptrtoint ptr %bar to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bar, align 4
  %add.ptr69.i = getelementptr i8, ptr %29, i32 %17
  %30 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr69.i, ptr %arrayidx66.i, align 8
  br label %cleanup.i

cleanup.i:                                        ; preds = %sw.epilog.i, %if.end50.i.cleanup.i_crit_edge, %lor.lhs.false44.i.cleanup.i_crit_edge, %if.end41.i.cleanup.i_crit_edge, %while.body.i.cleanup.i_crit_edge
  %31 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %incdec.ptr.i) #10, !srcloc !58
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !59
  %cmp28.not.i = icmp eq i8 %31, 0
  br i1 %cmp28.not.i, label %cleanup.i.return_crit_edge, label %cleanup.i.while.body.i_crit_edge

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

cleanup.i.return_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

err_out:                                          ; preds = %cleanup.thread.i, %do.end18.i, %do.end7.i, %do.end.i, %if.end3.err_out_crit_edge
  tail call void @svnic_dev_unregister(ptr noundef %vdev.addr.0)
  br label %return

return:                                           ; preds = %err_out, %cleanup.i.return_crit_edge, %if.end25.i.return_crit_edge, %if.then.return_crit_edge
  %retval.0 = phi ptr [ null, %err_out ], [ null, %if.then.return_crit_edge ], [ %vdev.addr.0, %if.end25.i.return_crit_edge ], [ %vdev.addr.0, %cleanup.i.return_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @svnic_dev_cmd_init(ptr noundef %vdev, i32 noundef %fallback) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 2, i32 24
  %0 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %do.end, label %if.then

if.then:                                          ; preds = %entry
  %devcmd2.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 15
  %2 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %devcmd2.i, align 8
  %tobool.not.i4 = icmp eq ptr %3, null
  br i1 %tobool.not.i4, label %if.end3.i, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3.i:                                        ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 380) #14
  %tobool5.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool5.not.i, label %if.end3.i.if.end_crit_edge, label %if.end7.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end7.i:                                        ; preds = %if.end3.i
  %5 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i.i, ptr %devcmd2.i, align 8
  %color.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 7
  %6 = ptrtoint ptr %color.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %color.i, align 8
  %result_size.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %result_size.i to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 32, ptr %result_size.i, align 2
  %wq.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 2
  %call9.i = tail call i32 @vnic_wq_devcmd2_alloc(ptr noundef %vdev, ptr noundef %wq.i, i32 noundef 32, i32 noundef 128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end12.i, label %if.end7.i.err_free_devcmd2.i_crit_edge

if.end7.i.err_free_devcmd2.i_crit_edge:           ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_devcmd2.i

if.end12.i:                                       ; preds = %if.end7.i
  %ctrl.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 2, i32 2
  %8 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl.i, align 4
  %fetch_index.i = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %9, i32 0, i32 11
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fetch_index.i) #10, !srcloc !56
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %10)
  %cmp.i = icmp eq i32 %10, -1
  %spec.store.select.i = select i1 %cmp.i, i32 0, i32 %11
  tail call void @vnic_wq_init_start(ptr noundef %wq.i, i32 noundef 0, i32 noundef %spec.store.select.i, i32 noundef %spec.store.select.i, i32 noundef 0, i32 noundef 0) #10
  tail call void @svnic_wq_enable(ptr noundef %wq.i) #10
  %results_ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1
  %base_align.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %base_align.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 512, ptr %base_align.i.i.i, align 8
  %desc_count2.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 8
  %13 = ptrtoint ptr %desc_count2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %desc_count2.i.i.i, align 4
  %desc_size8.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 7
  %14 = ptrtoint ptr %desc_size8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 128, ptr %desc_size8.i.i.i, align 8
  %size.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 4096, ptr %size.i.i.i, align 8
  %size_unaligned.i.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 5
  %16 = ptrtoint ptr %size_unaligned.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4608, ptr %size_unaligned.i.i.i, align 8
  %pdev.i.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %17 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pdev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.pci_dev, ptr %18, i32 0, i32 44
  %base_addr_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 6
  %call.i.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i.i, i32 noundef 4608, ptr noundef %base_addr_unaligned.i.i, i32 noundef 3264, i32 noundef 0) #10
  %descs_unaligned.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %19 = ptrtoint ptr %descs_unaligned.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i.i.i, ptr %descs_unaligned.i.i, align 4
  %tobool.not.i80.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i80.i, label %svnic_dev_alloc_desc_ring.exit.i, label %if.end22.i

svnic_dev_alloc_desc_ring.exit.i:                 ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size.i.i.i, align 8
  %call3.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %21) #13
  br label %err_free_wq.i

if.end22.i:                                       ; preds = %if.end12.i
  %22 = ptrtoint ptr %base_addr_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base_addr_unaligned.i.i, align 4
  %24 = ptrtoint ptr %base_align.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %base_align.i.i.i, align 8
  %sub.i.i = add i32 %23, -1
  %add.i.i = add i32 %sub.i.i, %25
  %neg.i.i = sub i32 0, %25
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %base_addr.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %26 = ptrtoint ptr %base_addr.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and.i.i, ptr %base_addr.i.i, align 4
  %sub10.i.i = sub i32 %and.i.i, %23
  %add.ptr.i.i = getelementptr i8, ptr %call.i.i.i, i32 %sub10.i.i
  %27 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i.i, ptr %results_ring.i, align 4
  %28 = ptrtoint ptr %size.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %size.i.i.i, align 8
  %30 = call ptr @memset(ptr %add.ptr.i.i, i32 0, i32 %29)
  %31 = ptrtoint ptr %desc_count2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc_count2.i.i.i, align 4
  %sub12.i.i = add i32 %32, -1
  %desc_avail.i.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 1, i32 9
  %33 = ptrtoint ptr %desc_avail.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %sub12.i.i, ptr %desc_avail.i.i, align 8
  %34 = load ptr, ptr %results_ring.i, align 4
  %result.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 4
  %35 = ptrtoint ptr %result.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %result.i, align 8
  %ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 2, i32 3
  %36 = ptrtoint ptr %ring.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ring.i, align 8
  %cmd_ring.i = getelementptr inbounds %struct.devcmd2_controller, ptr %call7.i.i.i, i32 0, i32 3
  %38 = ptrtoint ptr %cmd_ring.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %cmd_ring.i, align 4
  %39 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ctrl.i, align 4
  %41 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %call7.i.i.i, align 8
  %42 = load i32, ptr %base_addr.i.i, align 4
  %conv.i = zext i32 %42 to i64
  %args.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 14
  %43 = ptrtoint ptr %args.i to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv.i, ptr %args.i, align 8
  %arrayidx30.i = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %44 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 32, ptr %arrayidx30.i, align 8
  %call31.i = tail call i32 @_svnic_dev_cmd2(ptr noundef %vdev, i32 noundef 1073856569, i32 noundef 10000) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31.i)
  %cmp32.i = icmp slt i32 %call31.i, 0
  br i1 %cmp32.i, label %err_free_desc_ring.i, label %if.end35.i

if.end35.i:                                       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %devcmd_rtn.i = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 16
  %45 = ptrtoint ptr %devcmd_rtn.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @_svnic_dev_cmd2, ptr %devcmd_rtn.i, align 4
  %call36.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #13
  br label %if.end

err_free_desc_ring.i:                             ; preds = %if.end22.i
  %46 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %results_ring.i, align 4
  %tobool.not.i7 = icmp eq ptr %47, null
  br i1 %tobool.not.i7, label %err_free_desc_ring.i.err_free_wq.i_crit_edge, label %if.then.i

err_free_desc_ring.i.err_free_wq.i_crit_edge:     ; preds = %err_free_desc_ring.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_free_wq.i

if.then.i:                                        ; preds = %err_free_desc_ring.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pdev.i.i, align 4
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %49, i32 0, i32 44
  %50 = ptrtoint ptr %size_unaligned.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %size_unaligned.i.i.i, align 8
  %52 = ptrtoint ptr %descs_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %descs_unaligned.i.i, align 4
  %54 = ptrtoint ptr %base_addr_unaligned.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %base_addr_unaligned.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef %51, ptr noundef %53, i32 noundef %55, i32 noundef 0) #10
  %56 = ptrtoint ptr %results_ring.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %results_ring.i, align 4
  br label %err_free_wq.i

err_free_wq.i:                                    ; preds = %if.then.i, %err_free_desc_ring.i.err_free_wq.i_crit_edge, %svnic_dev_alloc_desc_ring.exit.i
  %ret.0.i = phi i32 [ -12, %svnic_dev_alloc_desc_ring.exit.i ], [ %call31.i, %err_free_desc_ring.i.err_free_wq.i_crit_edge ], [ %call31.i, %if.then.i ]
  %call39.i = tail call i32 @svnic_wq_disable(ptr noundef %wq.i) #10
  tail call void @svnic_wq_free(ptr noundef %wq.i) #10
  br label %err_free_devcmd2.i

err_free_devcmd2.i:                               ; preds = %err_free_wq.i, %if.end7.i.err_free_devcmd2.i_crit_edge
  %ret.1.i = phi i32 [ %call9.i, %if.end7.i.err_free_devcmd2.i_crit_edge ], [ %ret.0.i, %err_free_wq.i ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  %57 = ptrtoint ptr %devcmd2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %devcmd2.i, align 8
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %err_free_devcmd2.i, %if.end35.i, %if.end3.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %err.0 = phi i32 [ -19, %do.end ], [ %ret.1.i, %err_free_devcmd2.i ], [ %call31.i, %if.end35.i ], [ 0, %if.then.if.end_crit_edge ], [ -12, %if.end3.i.if.end_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @svnic_wq_disable(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_wq_free(ptr noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vnic_wq_devcmd2_alloc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @vnic_wq_init_start(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @svnic_wq_enable(ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_svnic_dev_cmd2(ptr nocapture noundef %vdev, i32 noundef %cmd, i32 noundef %wait) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %devcmd2 = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 15
  %0 = ptrtoint ptr %devcmd2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %devcmd2, align 8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %fetch_index = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %3, i32 0, i32 11
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %fetch_index) #10, !srcloc !56
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %cmp = icmp eq i32 %4, -1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %posted_index = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %7, i32 0, i32 3
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %posted_index) #10, !srcloc !56
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !57
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %cmp3 = icmp eq i32 %8, -1
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %add = add nuw i32 %9, 1
  %rem = and i32 %add, 31
  call void @__sanitizer_cov_trace_cmp4(i32 %rem, i32 %5)
  %cmp6 = icmp eq i32 %rem, %5
  br i1 %cmp6, label %do.end, label %if.end10

do.end:                                           ; preds = %if.end5
  %pdev = getelementptr inbounds %struct.vnic_dev, ptr %vdev, i32 0, i32 1
  %10 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pdev, align 4
  %init_name.i.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.pci_name.exit_crit_edge

do.end.pci_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %pci_name.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.pci_dev, ptr %11, i32 0, i32 44
  %14 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i, align 4
  br label %pci_name.exit

pci_name.exit:                                    ; preds = %if.end.i.i, %do.end.pci_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %do.end.pci_name.exit_crit_edge ]
  %and = and i32 %cmd, 16383
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef %retval.0.i.i, i32 noundef %and, i32 noundef %5, i32 noundef %9) #13
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %cmd_ring = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cmd_ring, align 4
  %cmd11 = getelementptr %struct.vnic_devcmd2, ptr %17, i32 %9, i32 2
  %18 = ptrtoint ptr %cmd11 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %cmd, ptr %cmd11, align 4
  %19 = load ptr, ptr %cmd_ring, align 4
  %flags = getelementptr %struct.vnic_devcmd2, ptr %19, i32 %9, i32 1
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 0, ptr %flags, align 2
  %21 = and i32 %cmd, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %if.end10.if.end22_crit_edge, label %if.then17

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end22

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cmd_ring, align 4
  %flags20 = getelementptr %struct.vnic_devcmd2, ptr %23, i32 %9, i32 1
  %24 = ptrtoint ptr %flags20 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %flags20, align 2
  %26 = or i16 %25, 1
  store i16 %26, ptr %flags20, align 2
  br label %if.end22

if.end22:                                         ; preds = %if.then17, %if.end10.if.end22_crit_edge
  %27 = and i32 %cmd, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool26.not = icmp eq i32 %27, 0
  br i1 %tobool26.not, label %if.end22.do.body36_crit_edge, label %for.body.preheader

if.end22.do.body36_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body36

for.body.preheader:                               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx30 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 0
  %28 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %arrayidx30, align 8
  %30 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34 = getelementptr %struct.vnic_devcmd2, ptr %31, i32 %9, i32 3, i32 0
  %32 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %29, ptr %arrayidx34, align 8
  %arrayidx30.1 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %33 = ptrtoint ptr %arrayidx30.1 to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %arrayidx30.1, align 8
  %35 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.1 = getelementptr %struct.vnic_devcmd2, ptr %35, i32 %9, i32 3, i32 1
  %36 = ptrtoint ptr %arrayidx34.1 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %34, ptr %arrayidx34.1, align 8
  %arrayidx30.2 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %37 = ptrtoint ptr %arrayidx30.2 to i32
  call void @__asan_load8_noabort(i32 %37)
  %38 = load i64, ptr %arrayidx30.2, align 8
  %39 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.2 = getelementptr %struct.vnic_devcmd2, ptr %39, i32 %9, i32 3, i32 2
  %40 = ptrtoint ptr %arrayidx34.2 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %38, ptr %arrayidx34.2, align 8
  %arrayidx30.3 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 3
  %41 = ptrtoint ptr %arrayidx30.3 to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %arrayidx30.3, align 8
  %43 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.3 = getelementptr %struct.vnic_devcmd2, ptr %43, i32 %9, i32 3, i32 3
  %44 = ptrtoint ptr %arrayidx34.3 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %42, ptr %arrayidx34.3, align 8
  %arrayidx30.4 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 4
  %45 = ptrtoint ptr %arrayidx30.4 to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %arrayidx30.4, align 8
  %47 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.4 = getelementptr %struct.vnic_devcmd2, ptr %47, i32 %9, i32 3, i32 4
  %48 = ptrtoint ptr %arrayidx34.4 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %46, ptr %arrayidx34.4, align 8
  %arrayidx30.5 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 5
  %49 = ptrtoint ptr %arrayidx30.5 to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %arrayidx30.5, align 8
  %51 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.5 = getelementptr %struct.vnic_devcmd2, ptr %51, i32 %9, i32 3, i32 5
  %52 = ptrtoint ptr %arrayidx34.5 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %50, ptr %arrayidx34.5, align 8
  %arrayidx30.6 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 6
  %53 = ptrtoint ptr %arrayidx30.6 to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %arrayidx30.6, align 8
  %55 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.6 = getelementptr %struct.vnic_devcmd2, ptr %55, i32 %9, i32 3, i32 6
  %56 = ptrtoint ptr %arrayidx34.6 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %54, ptr %arrayidx34.6, align 8
  %arrayidx30.7 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 7
  %57 = ptrtoint ptr %arrayidx30.7 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %arrayidx30.7, align 8
  %59 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.7 = getelementptr %struct.vnic_devcmd2, ptr %59, i32 %9, i32 3, i32 7
  %60 = ptrtoint ptr %arrayidx34.7 to i32
  call void @__asan_store8_noabort(i32 %60)
  store i64 %58, ptr %arrayidx34.7, align 8
  %arrayidx30.8 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 8
  %61 = ptrtoint ptr %arrayidx30.8 to i32
  call void @__asan_load8_noabort(i32 %61)
  %62 = load i64, ptr %arrayidx30.8, align 8
  %63 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.8 = getelementptr %struct.vnic_devcmd2, ptr %63, i32 %9, i32 3, i32 8
  %64 = ptrtoint ptr %arrayidx34.8 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %62, ptr %arrayidx34.8, align 8
  %arrayidx30.9 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 9
  %65 = ptrtoint ptr %arrayidx30.9 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %arrayidx30.9, align 8
  %67 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.9 = getelementptr %struct.vnic_devcmd2, ptr %67, i32 %9, i32 3, i32 9
  %68 = ptrtoint ptr %arrayidx34.9 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %66, ptr %arrayidx34.9, align 8
  %arrayidx30.10 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 10
  %69 = ptrtoint ptr %arrayidx30.10 to i32
  call void @__asan_load8_noabort(i32 %69)
  %70 = load i64, ptr %arrayidx30.10, align 8
  %71 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.10 = getelementptr %struct.vnic_devcmd2, ptr %71, i32 %9, i32 3, i32 10
  %72 = ptrtoint ptr %arrayidx34.10 to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %70, ptr %arrayidx34.10, align 8
  %arrayidx30.11 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 11
  %73 = ptrtoint ptr %arrayidx30.11 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %arrayidx30.11, align 8
  %75 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.11 = getelementptr %struct.vnic_devcmd2, ptr %75, i32 %9, i32 3, i32 11
  %76 = ptrtoint ptr %arrayidx34.11 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %74, ptr %arrayidx34.11, align 8
  %arrayidx30.12 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 12
  %77 = ptrtoint ptr %arrayidx30.12 to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %arrayidx30.12, align 8
  %79 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.12 = getelementptr %struct.vnic_devcmd2, ptr %79, i32 %9, i32 3, i32 12
  %80 = ptrtoint ptr %arrayidx34.12 to i32
  call void @__asan_store8_noabort(i32 %80)
  store i64 %78, ptr %arrayidx34.12, align 8
  %arrayidx30.13 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 13
  %81 = ptrtoint ptr %arrayidx30.13 to i32
  call void @__asan_load8_noabort(i32 %81)
  %82 = load i64, ptr %arrayidx30.13, align 8
  %83 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.13 = getelementptr %struct.vnic_devcmd2, ptr %83, i32 %9, i32 3, i32 13
  %84 = ptrtoint ptr %arrayidx34.13 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %82, ptr %arrayidx34.13, align 8
  %arrayidx30.14 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 14
  %85 = ptrtoint ptr %arrayidx30.14 to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %arrayidx30.14, align 8
  %87 = load ptr, ptr %cmd_ring, align 4
  %arrayidx34.14 = getelementptr %struct.vnic_devcmd2, ptr %87, i32 %9, i32 3, i32 14
  %88 = ptrtoint ptr %arrayidx34.14 to i32
  call void @__asan_store8_noabort(i32 %88)
  store i64 %86, ptr %arrayidx34.14, align 8
  br label %do.body36

do.body36:                                        ; preds = %for.body.preheader, %if.end22.do.body36_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !60
  tail call void @arm_heavy_mb() #10
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %posted_index40 = getelementptr inbounds %struct.vnic_wq_ctrl, ptr %90, i32 0, i32 3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !61
  tail call void @arm_heavy_mb() #10
  %91 = shl nuw nsw i32 %rem, 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %posted_index40, i32 %91) #10, !srcloc !62
  %92 = ptrtoint ptr %cmd_ring to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %cmd_ring, align 4
  %flags43 = getelementptr %struct.vnic_devcmd2, ptr %93, i32 %9, i32 1
  %94 = ptrtoint ptr %flags43 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %flags43, align 2
  %96 = and i16 %95, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %96)
  %tobool46.not = icmp eq i16 %96, 0
  br i1 %tobool46.not, label %if.end48, label %do.body36.cleanup_crit_edge

do.body36.cleanup_crit_edge:                      ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end48:                                         ; preds = %do.body36
  %result49 = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 4
  %97 = ptrtoint ptr %result49 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %result49, align 4
  %next_result = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 5
  %99 = ptrtoint ptr %next_result to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %next_result, align 4
  %conv50 = zext i16 %100 to i32
  %add.ptr = getelementptr %struct.devcmd2_result, ptr %98, i32 %conv50
  %color51 = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 7
  %101 = ptrtoint ptr %color51 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %color51, align 4
  %inc54 = add i16 %100, 1
  store i16 %inc54, ptr %next_result, align 4
  %result_size = getelementptr inbounds %struct.devcmd2_controller, ptr %1, i32 0, i32 6
  %103 = ptrtoint ptr %result_size to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %result_size, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %inc54, i16 %104)
  %cmp58 = icmp eq i16 %inc54, %104
  br i1 %cmp58, label %if.then60, label %if.end48.if.end65_crit_edge

if.end48.if.end65_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end65

if.then60:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %next_result to i32
  call void @__asan_store2_noabort(i32 %105)
  store i16 0, ptr %next_result, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %102)
  %tobool63.not = icmp eq i32 %102, 0
  %cond = zext i1 %tobool63.not to i32
  %106 = ptrtoint ptr %color51 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %cond, ptr %color51, align 4
  br label %if.end65

if.end65:                                         ; preds = %if.then60, %if.end48.if.end65_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wait)
  %cmp67179 = icmp sgt i32 %wait, 0
  br i1 %cmp67179, label %for.body69.lr.ph, label %if.end65.do.end116_crit_edge

if.end65.do.end116_crit_edge:                     ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

for.body69.lr.ph:                                 ; preds = %if.end65
  %color70 = getelementptr %struct.devcmd2_result, ptr %98, i32 %conv50, i32 4
  %107 = trunc i32 %102 to i8
  br label %for.body69

for.cond66:                                       ; preds = %for.body69
  %inc112 = add nuw nsw i32 %delay.0180, 1
  %exitcond.not = icmp eq i32 %inc112, %wait
  br i1 %exitcond.not, label %for.cond66.do.end116_crit_edge, label %for.cond66.for.body69_crit_edge

for.cond66.for.body69_crit_edge:                  ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body69

for.cond66.do.end116_crit_edge:                   ; preds = %for.cond66
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end116

for.body69:                                       ; preds = %for.cond66.for.body69_crit_edge, %for.body69.lr.ph
  %delay.0180 = phi i32 [ 0, %for.body69.lr.ph ], [ %inc112, %for.cond66.for.body69_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %108(i32 noundef 21474800) #10
  %109 = ptrtoint ptr %color70 to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %color70, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %110, i8 %107)
  %cmp73 = icmp eq i8 %110, %107
  br i1 %cmp73, label %if.then75, label %for.cond66

if.then75:                                        ; preds = %for.body69
  %error = getelementptr %struct.devcmd2_result, ptr %98, i32 %conv50, i32 3
  %111 = ptrtoint ptr %error to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %error, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool76.not = icmp eq i8 %112, 0
  br i1 %tobool76.not, label %if.end93, label %if.then77

if.then77:                                        ; preds = %if.then75
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %112)
  %cmp80.not = icmp eq i8 %112, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073627100, i32 %cmd)
  %cmp82.not = icmp eq i32 %cmd, -1073627100
  %or.cond = and i1 %cmp82.not, %cmp80.not
  br i1 %or.cond, label %if.then77.cleanup_crit_edge, label %do.end87

if.then77.cleanup_crit_edge:                      ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end87:                                         ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #12
  %conv79 = zext i8 %112 to i32
  %and90 = and i32 %cmd, 16383
  %call91 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, i32 noundef %conv79, i32 noundef %and90) #13
  br label %cleanup

if.end93:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cmd)
  %tobool97.not = icmp sgt i32 %cmd, -1
  br i1 %tobool97.not, label %if.end93.cleanup_crit_edge, label %for.body102.preheader

if.end93.cleanup_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body102.preheader:                            ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load8_noabort(i32 %113)
  %114 = load i64, ptr %add.ptr, align 8
  %arrayidx105 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 0
  %115 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_store8_noabort(i32 %115)
  store i64 %114, ptr %arrayidx105, align 8
  %arrayidx103.1 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 1
  %116 = ptrtoint ptr %arrayidx103.1 to i32
  call void @__asan_load8_noabort(i32 %116)
  %117 = load i64, ptr %arrayidx103.1, align 8
  %arrayidx105.1 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 1
  %118 = ptrtoint ptr %arrayidx105.1 to i32
  call void @__asan_store8_noabort(i32 %118)
  store i64 %117, ptr %arrayidx105.1, align 8
  %arrayidx103.2 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 2
  %119 = ptrtoint ptr %arrayidx103.2 to i32
  call void @__asan_load8_noabort(i32 %119)
  %120 = load i64, ptr %arrayidx103.2, align 8
  %arrayidx105.2 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 2
  %121 = ptrtoint ptr %arrayidx105.2 to i32
  call void @__asan_store8_noabort(i32 %121)
  store i64 %120, ptr %arrayidx105.2, align 8
  %arrayidx103.3 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 3
  %122 = ptrtoint ptr %arrayidx103.3 to i32
  call void @__asan_load8_noabort(i32 %122)
  %123 = load i64, ptr %arrayidx103.3, align 8
  %arrayidx105.3 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 3
  %124 = ptrtoint ptr %arrayidx105.3 to i32
  call void @__asan_store8_noabort(i32 %124)
  store i64 %123, ptr %arrayidx105.3, align 8
  %arrayidx103.4 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 4
  %125 = ptrtoint ptr %arrayidx103.4 to i32
  call void @__asan_load8_noabort(i32 %125)
  %126 = load i64, ptr %arrayidx103.4, align 8
  %arrayidx105.4 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 4
  %127 = ptrtoint ptr %arrayidx105.4 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %126, ptr %arrayidx105.4, align 8
  %arrayidx103.5 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 5
  %128 = ptrtoint ptr %arrayidx103.5 to i32
  call void @__asan_load8_noabort(i32 %128)
  %129 = load i64, ptr %arrayidx103.5, align 8
  %arrayidx105.5 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 5
  %130 = ptrtoint ptr %arrayidx105.5 to i32
  call void @__asan_store8_noabort(i32 %130)
  store i64 %129, ptr %arrayidx105.5, align 8
  %arrayidx103.6 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 6
  %131 = ptrtoint ptr %arrayidx103.6 to i32
  call void @__asan_load8_noabort(i32 %131)
  %132 = load i64, ptr %arrayidx103.6, align 8
  %arrayidx105.6 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 6
  %133 = ptrtoint ptr %arrayidx105.6 to i32
  call void @__asan_store8_noabort(i32 %133)
  store i64 %132, ptr %arrayidx105.6, align 8
  %arrayidx103.7 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 7
  %134 = ptrtoint ptr %arrayidx103.7 to i32
  call void @__asan_load8_noabort(i32 %134)
  %135 = load i64, ptr %arrayidx103.7, align 8
  %arrayidx105.7 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 7
  %136 = ptrtoint ptr %arrayidx105.7 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %arrayidx105.7, align 8
  %arrayidx103.8 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 8
  %137 = ptrtoint ptr %arrayidx103.8 to i32
  call void @__asan_load8_noabort(i32 %137)
  %138 = load i64, ptr %arrayidx103.8, align 8
  %arrayidx105.8 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 8
  %139 = ptrtoint ptr %arrayidx105.8 to i32
  call void @__asan_store8_noabort(i32 %139)
  store i64 %138, ptr %arrayidx105.8, align 8
  %arrayidx103.9 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 9
  %140 = ptrtoint ptr %arrayidx103.9 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %arrayidx103.9, align 8
  %arrayidx105.9 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 9
  %142 = ptrtoint ptr %arrayidx105.9 to i32
  call void @__asan_store8_noabort(i32 %142)
  store i64 %141, ptr %arrayidx105.9, align 8
  %arrayidx103.10 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 10
  %143 = ptrtoint ptr %arrayidx103.10 to i32
  call void @__asan_load8_noabort(i32 %143)
  %144 = load i64, ptr %arrayidx103.10, align 8
  %arrayidx105.10 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 10
  %145 = ptrtoint ptr %arrayidx105.10 to i32
  call void @__asan_store8_noabort(i32 %145)
  store i64 %144, ptr %arrayidx105.10, align 8
  %arrayidx103.11 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 11
  %146 = ptrtoint ptr %arrayidx103.11 to i32
  call void @__asan_load8_noabort(i32 %146)
  %147 = load i64, ptr %arrayidx103.11, align 8
  %arrayidx105.11 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 11
  %148 = ptrtoint ptr %arrayidx105.11 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %147, ptr %arrayidx105.11, align 8
  %arrayidx103.12 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 12
  %149 = ptrtoint ptr %arrayidx103.12 to i32
  call void @__asan_load8_noabort(i32 %149)
  %150 = load i64, ptr %arrayidx103.12, align 8
  %arrayidx105.12 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 12
  %151 = ptrtoint ptr %arrayidx105.12 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %150, ptr %arrayidx105.12, align 8
  %arrayidx103.13 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 13
  %152 = ptrtoint ptr %arrayidx103.13 to i32
  call void @__asan_load8_noabort(i32 %152)
  %153 = load i64, ptr %arrayidx103.13, align 8
  %arrayidx105.13 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 13
  %154 = ptrtoint ptr %arrayidx105.13 to i32
  call void @__asan_store8_noabort(i32 %154)
  store i64 %153, ptr %arrayidx105.13, align 8
  %arrayidx103.14 = getelementptr [15 x i64], ptr %add.ptr, i32 0, i32 14
  %155 = ptrtoint ptr %arrayidx103.14 to i32
  call void @__asan_load8_noabort(i32 %155)
  %156 = load i64, ptr %arrayidx103.14, align 8
  %arrayidx105.14 = getelementptr %struct.vnic_dev, ptr %vdev, i32 0, i32 14, i32 14
  %157 = ptrtoint ptr %arrayidx105.14 to i32
  call void @__asan_store8_noabort(i32 %157)
  store i64 %156, ptr %arrayidx105.14, align 8
  br label %cleanup

do.end116:                                        ; preds = %for.cond66.do.end116_crit_edge, %if.end65.do.end116_crit_edge
  %and119 = and i32 %cmd, 16383
  %call120 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %and119) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end116, %for.body102.preheader, %if.end93.cleanup_crit_edge, %do.end87, %if.then77.cleanup_crit_edge, %do.body36.cleanup_crit_edge, %pci_name.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %pci_name.exit ], [ -110, %do.end116 ], [ -19, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ 0, %do.body36.cleanup_crit_edge ], [ 5, %if.then77.cleanup_crit_edge ], [ %conv79, %do.end87 ], [ 0, %if.end93.cleanup_crit_edge ], [ 0, %for.body102.preheader ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !44, !45}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 232, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @svnic_dev_alloc_desc_ring._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @svnic_dev_alloc_desc_ring._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 760, i32 3}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @svnic_dev_cmd_init._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @svnic_dev_cmd_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 93, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @vnic_dev_discover_res._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @vnic_dev_discover_res._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 100, i32 3}
!18 = !{ptr @vnic_dev_discover_res._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @vnic_dev_discover_res._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 107, i32 3}
!22 = !{ptr @vnic_dev_discover_res._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @vnic_dev_discover_res._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 139, i32 5}
!26 = !{ptr @vnic_dev_discover_res._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @vnic_dev_discover_res._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 416, i32 2}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @svnic_dev_init_devcmd2._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @svnic_dev_init_devcmd2._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 289, i32 3}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @_svnic_dev_cmd2._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @_svnic_dev_cmd2._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 336, i32 6}
!40 = !{ptr @_svnic_dev_cmd2._entry.20, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @_svnic_dev_cmd2._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/scsi/snic/vnic_dev.c", i32 350, i32 2}
!44 = !{ptr @_svnic_dev_cmd2._entry.23, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @_svnic_dev_cmd2._entry_ptr.25, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{i64 2155170746, i64 2155171239, i64 2155170783, i64 2155170839, i64 2155170873, i64 2155170897, i64 2155170938, i64 2155170959, i64 2155170987, i64 2155171021}
!56 = !{i64 4995523}
!57 = !{i64 2152535872}
!58 = !{i64 4995303}
!59 = !{i64 2152534648}
!60 = !{i64 2155164577}
!61 = !{i64 2152537227}
!62 = !{i64 4995105}
