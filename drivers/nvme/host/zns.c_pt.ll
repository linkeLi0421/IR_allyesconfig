; ModuleID = '/llk/IR_all_yes/drivers/nvme/host/zns.c_pt.bc'
source_filename = "../drivers/nvme/host/zns.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvme_ns = type { %struct.list_head, ptr, ptr, ptr, i32, i32, %struct.list_head, %struct.kref, ptr, i32, i16, i16, i32, i8, i64, i32, i32, %struct.cdev, %struct.device, %struct.nvme_fault_inject }
%struct.list_head = type { ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
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
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.nvme_fault_inject = type { %struct.fault_attr, ptr, i8, i16 }
%struct.fault_attr = type { i32, i32, %struct.atomic_t, %struct.atomic_t, i32, i8, i32, i32, i32, i32, i32, i32, %struct.ratelimit_state, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.nvme_ctrl = type { i8, i32, i8, %struct.spinlock, %struct.mutex, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, %struct.list_head, %struct.rw_semaphore, %struct.device, ptr, ptr, %struct.cdev, %struct.work_struct, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.list_head, ptr, [12 x i8], i16, i32, i16, i32, i64, i32, i32, i32, i32, i32, i32, i32, [3 x i16], i16, i16, i16, i16, i16, i32, %struct.atomic_t, i8, i32, i32, i16, i8, i8, i16, i16, i32, i32, i32, i32, i32, i8, i32, [32 x %struct.nvme_id_power_state], ptr, %struct.xarray, %struct.work_struct, %struct.work_struct, %struct.delayed_work, %struct.delayed_work, %struct.nvme_command, %struct.work_struct, i32, i8, i8, i32, i32, %struct.mutex, ptr, i32, %struct.timer_list, %struct.work_struct, i64, i8, i32, i32, i32, i16, i32, i32, i16, i16, i32, i32, ptr, ptr, i32, %struct.nvme_fault_inject }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.nvme_id_power_state = type { i16, i8, i8, i32, i32, i8, i8, i8, i8, i16, i8, i8, i16, i8, [9 x i8] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.nvme_command = type { %union.anon.83 }
%union.anon.83 = type { %struct.nvme_common_command }
%struct.nvme_common_command = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i32, i32, i32, i32, i32, i32 }
%union.nvme_data_ptr = type { %struct.anon.84 }
%struct.anon.84 = type { i64, i64 }
%struct.nvme_ns_head = type { %struct.list_head, %struct.srcu_struct, ptr, i32, %struct.nvme_ns_ids, %struct.list_head, %struct.kref, i8, i32, ptr, %struct.cdev, %struct.device, ptr, %struct.bio_list, %struct.spinlock, %struct.work_struct, %struct.mutex, i32, [0 x ptr] }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.nvme_ns_ids = type { [8 x i8], [16 x i8], %struct.uuid_t, i8 }
%struct.uuid_t = type { [16 x i8] }
%struct.bio_list = type { ptr, ptr }
%struct.nvme_effects_log = type { [256 x i32], [256 x i32], [2048 x i8] }
%struct.nvme_identify = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i8, i8, i16, [3 x i8], i8, [4 x i32] }
%struct.nvme_id_ns_zns = type { i16, i16, i32, i32, i32, i32, [2796 x i8], [16 x %struct.nvme_zns_lbafe], [768 x i8], [256 x i8] }
%struct.nvme_zns_lbafe = type { i64, i8, [7 x i8] }
%struct.request_queue = type { ptr, ptr, %struct.percpu_ref, ptr, ptr, ptr, ptr, i32, ptr, i32, ptr, i32, %struct.atomic_t, i32, %struct.spinlock, ptr, %struct.kobject, ptr, %struct.blk_integrity, ptr, i32, i32, i32, i32, ptr, i32, i32, ptr, ptr, %struct.timer_list, %struct.work_struct, %struct.atomic_t, ptr, %struct.list_head, [1 x i32], ptr, %struct.list_head, %struct.queue_limits, i32, i32, ptr, ptr, i32, i32, i32, %struct.mutex, ptr, ptr, %struct.list_head, %struct.spinlock, %struct.delayed_work, %struct.mutex, %struct.mutex, %struct.list_head, %struct.spinlock, i32, ptr, %struct.callback_head, %struct.wait_queue_head, %struct.mutex, i32, ptr, %struct.list_head, %struct.bio_set, ptr, ptr, ptr, i8, [5 x i64], ptr, [0 x %struct.srcu_struct] }
%struct.percpu_ref = type { i32, ptr }
%struct.blk_integrity = type { ptr, i8, i8, i8, i8 }
%struct.queue_limits = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16, i16, i16, i8, i8, i8, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.bio_set = type { ptr, i32, ptr, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, %struct.mempool_s, i32, %struct.spinlock, %struct.bio_list, %struct.work_struct, ptr, %struct.hlist_node }
%struct.mempool_s = type { %struct.spinlock, i32, i32, ptr, ptr, ptr, ptr, %struct.wait_queue_head }
%struct.blk_zone = type { i64, i64, i64, i8, i8, i8, i8, [4 x i8], i64, [24 x i8] }
%struct.gendisk = type { i32, i32, i32, [32 x i8], i16, i16, %struct.xarray, ptr, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, ptr, %struct.kobject, ptr, i32, ptr, %struct.lockdep_map, i64 }
%struct.block_device = type { i64, i64, ptr, i32, i8, i32, i32, ptr, ptr, ptr, %struct.device, ptr, i32, i8, ptr, i8, %struct.spinlock, ptr, ptr, i32, %struct.mutex, ptr, ptr, i8 }
%struct.nvme_zone_mgmt_recv_cmd = type { i8, i8, i16, i32, [2 x i64], %union.nvme_data_ptr, i64, i32, i8, i8, i8, i8, [2 x i32] }
%struct.nvme_zone_report = type { i64, [56 x i8], [0 x %struct.nvme_zone_descriptor] }
%struct.nvme_zone_descriptor = type { i8, i8, i8, [5 x i8], i64, i64, i64, [32 x i8] }
%struct.nvme_zone_mgmt_send_cmd = type { i8, i8, i16, i32, [2 x i32], i64, %union.nvme_data_ptr, i64, i32, i8, i8, [2 x i8], [2 x i32] }
%struct.request = type { ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i64, ptr, ptr, %union.anon.38, ptr, i64, i64, i64, i16, i16, i16, i16, ptr, ptr, i16, i16, i32, %struct.atomic_t, i32, %union.anon.39, %union.anon.40, %union.anon.41, %union.anon.46, ptr, ptr }
%union.anon.38 = type { %struct.list_head }
%union.anon.39 = type { %struct.hlist_node }
%union.anon.40 = type { %struct.rb_node }
%union.anon.41 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, %struct.list_head, ptr }
%union.anon.46 = type { i64, [8 x i8] }

@nvme_update_zone_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 63, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"Zone Append supported for zoned namespace:%d. Remove read-only mode\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_update_zone_info\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/nvme/host/zns.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@nvme_update_zone_info._entry_ptr = internal global ptr @nvme_update_zone_info._entry, section ".printk_index", align 4
@nvme_update_zone_info._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 68, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"Zone Append not supported for zoned namespace:%d. Forcing to read-only mode\0A\00", [51 x i8] zeroinitializer }, align 32
@nvme_update_zone_info._entry_ptr.7 = internal global ptr @nvme_update_zone_info._entry.5, section ".printk_index", align 4
@nvme_update_zone_info._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 98, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"zone operations:%x not supported for namespace:%u\0A\00", [45 x i8] zeroinitializer }, align 32
@nvme_update_zone_info._entry_ptr.10 = internal global ptr @nvme_update_zone_info._entry.8, section ".printk_index", align 4
@nvme_update_zone_info._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 107, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"invalid zone size:%llu for namespace:%u\0A\00", [55 x i8] zeroinitializer }, align 32
@nvme_update_zone_info._entry_ptr.13 = internal global ptr @nvme_update_zone_info._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@nvme_zone_parse_entry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 160, ptr @.str.16, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid zone type %#x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"nvme_zone_parse_entry\00", [42 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@nvme_zone_parse_entry._entry_ptr = internal global ptr @nvme_zone_parse_entry._entry, section ".printk_index", align 4
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 61, i32 4 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 66, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 96, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 105, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private constant [27 x i8] c"../drivers/nvme/host/zns.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 159, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @nvme_update_zone_info._entry, ptr @nvme_update_zone_info._entry.11, ptr @nvme_update_zone_info._entry.5, ptr @nvme_update_zone_info._entry.8, ptr @nvme_update_zone_info._entry_ptr, ptr @nvme_update_zone_info._entry_ptr.10, ptr @nvme_update_zone_info._entry_ptr.13, ptr @nvme_update_zone_info._entry_ptr.7, ptr @nvme_zone_parse_entry._entry, ptr @nvme_zone_parse_entry._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_update_zone_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_update_zone_info._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_update_zone_info._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_update_zone_info._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nvme_zone_parse_entry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_revalidate_zones(ptr nocapture noundef readonly %ns) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 2
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %disk = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 3
  %2 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %disk, align 8
  %call = tail call i32 @blk_revalidate_disk_zones(ptr noundef %3, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ctrl = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %4 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctrl, align 8
  %max_zone_append = getelementptr inbounds %struct.nvme_ctrl, ptr %5, i32 0, i32 38
  %6 = ptrtoint ptr %max_zone_append to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_zone_append, align 8
  tail call void @blk_queue_max_zone_append_sectors(ptr noundef %1, i32 noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @blk_revalidate_disk_zones(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_max_zone_append_sectors(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_update_zone_info(ptr noundef %ns, i32 noundef %lbaf) local_unnamed_addr #0 align 64 {
entry:
  %c.i = alloca %struct.nvme_command, align 8
  %c = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 8
  %effects = getelementptr inbounds %struct.nvme_ns_head, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %effects to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %effects, align 8
  %queue = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 2
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c) #8
  %6 = call ptr @memset(ptr %c, i32 0, i32 64)
  %arrayidx = getelementptr %struct.nvme_effects_log, ptr %3, i32 0, i32 1, i32 125
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  %flags4 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 16
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @_test_and_clear_bit(i32 noundef 3, ptr noundef %flags4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then.if.end12_crit_edge, label %if.then.if.end12.sink.split_crit_edge

if.then.if.end12.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12.sink.split

if.then.if.end12_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_set_bit(i32 noundef 3, ptr noundef %flags4) #8
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.else, %if.then.if.end12.sink.split_crit_edge
  %.str.sink = phi ptr [ @.str.6, %if.else ], [ @.str, %if.then.if.end12.sink.split_crit_edge ]
  %ctrl = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %10 = ptrtoint ptr %ctrl to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ctrl, align 8
  %device = getelementptr inbounds %struct.nvme_ctrl, ptr %11, i32 0, i32 17
  %12 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %device, align 8
  %14 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head, align 8
  %ns_id = getelementptr inbounds %struct.nvme_ns_head, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %ns_id to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ns_id, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull %.str.sink, i32 noundef %17) #11
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.then.if.end12_crit_edge
  %ctrl13 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %18 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl13, align 8
  %max_zone_append = getelementptr inbounds %struct.nvme_ctrl, ptr %19, i32 0, i32 38
  %20 = ptrtoint ptr %max_zone_append to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_zone_append, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool14.not = icmp eq i32 %21, 0
  br i1 %tobool14.not, label %if.then15, label %if.end12.if.end21_crit_edge

if.end12.if.end21_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then15:                                        ; preds = %if.end12
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c.i) #8
  %22 = call ptr @memset(ptr %c.i, i32 0, i32 64)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %23 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %23, i32 noundef 3520, i32 noundef 4096) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %nvme_set_max_append.exit.thread, label %if.end.i

nvme_set_max_append.exit.thread:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then15
  %24 = ptrtoint ptr %c.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 6, ptr %c.i, align 8
  %cns.i = getelementptr inbounds %struct.nvme_identify, ptr %c.i, i32 0, i32 6
  %25 = ptrtoint ptr %cns.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 6, ptr %cns.i, align 8
  %csi.i = getelementptr inbounds %struct.nvme_identify, ptr %c.i, i32 0, i32 10
  %26 = ptrtoint ptr %csi.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 2, ptr %csi.i, align 1
  %admin_q.i = getelementptr inbounds %struct.nvme_ctrl, ptr %19, i32 0, i32 6
  %27 = ptrtoint ptr %admin_q.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %admin_q.i, align 8
  %call1.i = call i32 @nvme_submit_sync_cmd(ptr noundef %28, ptr noundef nonnull %c.i, ptr noundef nonnull %call7.i.i.i, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %nvme_set_max_append.exit

if.end4.i:                                        ; preds = %if.end.i
  %29 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %call7.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool5.not.i = icmp eq i8 %30, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i = zext i8 %30 to i32
  %shl.i = shl i32 8, %conv.i
  br label %nvme_set_max_append.exit.thread100

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  %max_hw_sectors.i = getelementptr inbounds %struct.nvme_ctrl, ptr %19, i32 0, i32 32
  %31 = ptrtoint ptr %max_hw_sectors.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_hw_sectors.i, align 8
  br label %nvme_set_max_append.exit.thread100

nvme_set_max_append.exit.thread100:               ; preds = %if.else.i, %if.then6.i
  %shl.sink.i = phi i32 [ %32, %if.else.i ], [ %shl.i, %if.then6.i ]
  %33 = ptrtoint ptr %max_zone_append to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl.sink.i, ptr %max_zone_append, align 8
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #8
  br label %if.end21

nvme_set_max_append.exit:                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c.i) #8
  br label %cleanup

if.end21:                                         ; preds = %nvme_set_max_append.exit.thread100, %if.end12.if.end21_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %34 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %34, i32 noundef 3520, i32 noundef 4096) #12
  %tobool23.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool23.not, label %if.end21.cleanup_crit_edge, label %if.end25

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end25:                                         ; preds = %if.end21
  %35 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 6, ptr %c, align 8
  %36 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head, align 8
  %ns_id27 = getelementptr inbounds %struct.nvme_ns_head, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %ns_id27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ns_id27, align 4
  %40 = call i32 @llvm.bswap.i32(i32 %39)
  %nsid = getelementptr inbounds %struct.nvme_identify, ptr %c, i32 0, i32 3
  %41 = ptrtoint ptr %nsid to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %nsid, align 4
  %cns = getelementptr inbounds %struct.nvme_identify, ptr %c, i32 0, i32 6
  %42 = ptrtoint ptr %cns to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 5, ptr %cns, align 8
  %csi = getelementptr inbounds %struct.nvme_identify, ptr %c, i32 0, i32 10
  %43 = ptrtoint ptr %csi to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 2, ptr %csi, align 1
  %44 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ctrl13, align 8
  %admin_q = getelementptr inbounds %struct.nvme_ctrl, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %admin_q to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %admin_q, align 8
  %call29 = call i32 @nvme_submit_sync_cmd(ptr noundef %47, ptr noundef nonnull %c, ptr noundef nonnull %call7.i.i, i32 noundef 4096) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %if.end32, label %if.end25.free_data_crit_edge

if.end25.free_data_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_data

if.end32:                                         ; preds = %if.end25
  %48 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %49)
  %tobool33.not = icmp eq i16 %49, 0
  br i1 %tobool33.not, label %if.end43, label %do.end37

do.end37:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ctrl13, align 8
  %device39 = getelementptr inbounds %struct.nvme_ctrl, ptr %51, i32 0, i32 17
  %52 = ptrtoint ptr %device39 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %device39, align 8
  %54 = call i16 @llvm.bswap.i16(i16 %49)
  %conv = zext i16 %54 to i32
  %55 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head, align 8
  %ns_id42 = getelementptr inbounds %struct.nvme_ns_head, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %ns_id42 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ns_id42, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.9, i32 noundef %conv, i32 noundef %58) #11
  br label %free_data

if.end43:                                         ; preds = %if.end32
  %arrayidx44 = getelementptr %struct.nvme_id_ns_zns, ptr %call7.i.i, i32 0, i32 7, i32 %lbaf
  %59 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load8_noabort(i32 %59)
  %60 = load i64, ptr %arrayidx44, align 8
  %61 = call i64 @llvm.bswap.i64(i64 %60)
  %lba_shift.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 9
  %62 = ptrtoint ptr %lba_shift.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %lba_shift.i, align 4
  %sub.i = add i32 %63, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shl.i97 = shl i64 %61, %sh_prom.i
  %zsze46 = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 14
  %64 = ptrtoint ptr %zsze46 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %shl.i97, ptr %zsze46, align 8
  %conv48 = trunc i64 %shl.i97 to i32
  %65 = call i32 @llvm.ctpop.i32(i32 %conv48) #8, !range !35
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %65)
  %66 = icmp eq i32 %65, 1
  br i1 %66, label %if.end59, label %do.end53

do.end53:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %ctrl13 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %ctrl13, align 8
  %device55 = getelementptr inbounds %struct.nvme_ctrl, ptr %68, i32 0, i32 17
  %69 = ptrtoint ptr %device55 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %device55, align 8
  %71 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %head, align 8
  %ns_id58 = getelementptr inbounds %struct.nvme_ns_head, ptr %72, i32 0, i32 3
  %73 = ptrtoint ptr %ns_id58 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ns_id58, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %70, ptr noundef nonnull @.str.12, i64 noundef %shl.i97, i32 noundef %74) #11
  br label %free_data

if.end59:                                         ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %disk = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 3
  %75 = ptrtoint ptr %disk to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %disk, align 8
  call void @blk_queue_set_zoned(ptr noundef %76, i32 noundef 2) #8
  call void @blk_queue_flag_set(i32 noundef 26, ptr noundef %5) #8
  %mor = getelementptr inbounds %struct.nvme_id_ns_zns, ptr %call7.i.i, i32 0, i32 3
  %77 = ptrtoint ptr %mor to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mor, align 8
  %79 = call i32 @llvm.bswap.i32(i32 %78)
  %add = add i32 %79, 1
  %max_open_zones1.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 42
  %80 = ptrtoint ptr %max_open_zones1.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %add, ptr %max_open_zones1.i, align 8
  %mar = getelementptr inbounds %struct.nvme_id_ns_zns, ptr %call7.i.i, i32 0, i32 2
  %81 = ptrtoint ptr %mar to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mar, align 4
  %83 = call i32 @llvm.bswap.i32(i32 %82)
  %add60 = add i32 %83, 1
  %max_active_zones1.i = getelementptr inbounds %struct.request_queue, ptr %5, i32 0, i32 43
  %84 = ptrtoint ptr %max_active_zones1.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %add60, ptr %max_active_zones1.i, align 4
  br label %free_data

free_data:                                        ; preds = %if.end59, %do.end53, %do.end37, %if.end25.free_data_crit_edge
  %status.0 = phi i32 [ %call29, %if.end25.free_data_crit_edge ], [ -19, %do.end37 ], [ 0, %if.end59 ], [ -19, %do.end53 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %free_data, %if.end21.cleanup_crit_edge, %nvme_set_max_append.exit, %nvme_set_max_append.exit.thread
  %retval.0 = phi i32 [ %status.0, %free_data ], [ %call1.i, %nvme_set_max_append.exit ], [ -12, %if.end21.cleanup_crit_edge ], [ -12, %nvme_set_max_append.exit.thread ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c) #8
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nvme_submit_sync_cmd(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_set_zoned(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @blk_queue_flag_set(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nvme_ns_report_zones(ptr nocapture noundef readonly %ns, i64 noundef %sector, i32 noundef %nr_zones, ptr nocapture noundef readonly %cb, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %zone.i = alloca %struct.blk_zone, align 8
  %c = alloca %struct.nvme_command, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %c) #8
  %0 = call ptr @memset(ptr %c, i32 0, i32 64)
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %1 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %head, align 8
  %csi = getelementptr inbounds %struct.nvme_ns_head, ptr %2, i32 0, i32 4, i32 3
  %3 = ptrtoint ptr %csi to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %csi, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.not = icmp eq i8 %4, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %disk.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 3
  %5 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %disk.i, align 8
  %queue.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %queue.i, align 4
  %part0.i.i = getelementptr inbounds %struct.gendisk, ptr %6, i32 0, i32 7
  %9 = ptrtoint ptr %part0.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %part0.i.i, align 4
  %bd_nr_sectors.i.i.i = getelementptr inbounds %struct.block_device, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %bd_nr_sectors.i.i.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %bd_nr_sectors.i.i.i, align 8
  %zsze.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 14
  %13 = ptrtoint ptr %zsze.i to i32
  call void @__asan_load8_noabort(i32 %13)
  %14 = load i64, ptr %zsze.i, align 8
  %shr.i.i.i = lshr i64 %14, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %conv.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %15 = tail call i32 @llvm.ctlz.i32(i32 %conv.i.i.i, i1 true) #8, !range !35
  %add.i.i.i = sub nuw nsw i32 64, %15
  br label %cond.end8.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv1.i.i.i = trunc i64 %14 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv1.i.i.i)
  %tobool.not.i5.i.i.i = icmp eq i32 %conv1.i.i.i, 0
  %16 = tail call i32 @llvm.ctlz.i32(i32 %conv1.i.i.i, i1 true) #8, !range !35
  %sub.i6.i.i.i = sub nuw nsw i32 32, %16
  %cond.i7.i.i.i = select i1 %tobool.not.i5.i.i.i, i32 0, i32 %sub.i6.i.i.i
  br label %cond.end8.i

cond.end8.i:                                      ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %add.i.i.i, %if.then.i.i.i ], [ %cond.i7.i.i.i, %if.end.i.i.i ]
  %sub.i.i = add nsw i32 %retval.0.i.i.i, -1
  %sh_prom.i = zext i32 %sub.i.i to i64
  %shr.i = lshr i64 %12, %sh_prom.i
  %conv.i = trunc i64 %shr.i to i32
  %17 = tail call i32 @llvm.umin.i32(i32 %conv.i, i32 %nr_zones) #8
  %mul.i = shl i32 %17, 6
  %add.i = add i32 %mul.i, 64
  %max_hw_sectors.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 37, i32 3
  %18 = ptrtoint ptr %max_hw_sectors.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_hw_sectors.i.i, align 4
  %shl.i = shl i32 %19, 9
  %20 = tail call i32 @llvm.umin.i32(i32 %add.i, i32 %shl.i) #8
  %max_segments.i.i = getelementptr inbounds %struct.request_queue, ptr %8, i32 0, i32 37, i32 21
  %21 = ptrtoint ptr %max_segments.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_segments.i.i, align 4
  %conv25.i = zext i16 %22 to i32
  %shl26.i = shl nuw nsw i32 %conv25.i, 12
  %23 = tail call i32 @llvm.umin.i32(i32 %20, i32 %shl26.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %23)
  %cmp3461.i = icmp ugt i32 %23, 127
  br i1 %cmp3461.i, label %cond.end8.i.while.body.i_crit_edge, label %cond.end8.i.cleanup_crit_edge

cond.end8.i.cleanup_crit_edge:                    ; preds = %cond.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cond.end8.i.while.body.i_crit_edge:               ; preds = %cond.end8.i
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %cond.end8.i.while.body.i_crit_edge
  %bufsize.062.i = phi i32 [ %shr37.i, %if.end.i.while.body.i_crit_edge ], [ %23, %cond.end8.i.while.body.i_crit_edge ]
  %call36.i = tail call noalias ptr @__vmalloc(i32 noundef %bufsize.062.i, i32 noundef 68800) #13
  %tobool.not.i = icmp eq ptr %call36.i, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end3

if.end.i:                                         ; preds = %while.body.i
  %shr37.i = lshr i32 %bufsize.062.i, 1
  %cmp34.i = icmp ugt i32 %bufsize.062.i, 255
  br i1 %cmp34.i, label %if.end.i.while.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end3:                                          ; preds = %while.body.i
  %24 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 122, ptr %c, align 8
  %25 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %head, align 8
  %ns_id = getelementptr inbounds %struct.nvme_ns_head, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %ns_id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ns_id, align 4
  %29 = tail call i32 @llvm.bswap.i32(i32 %28)
  %nsid = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %c, i32 0, i32 3
  %30 = ptrtoint ptr %nsid to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %nsid, align 4
  %shr.i83 = lshr i32 %bufsize.062.i, 2
  %sub.i84 = add nsw i32 %shr.i83, -1
  %31 = tail call i32 @llvm.bswap.i32(i32 %sub.i84)
  %numd = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %c, i32 0, i32 7
  %32 = ptrtoint ptr %numd to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %numd, align 8
  %zra = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %c, i32 0, i32 8
  %33 = ptrtoint ptr %zra to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 0, ptr %zra, align 4
  %zrasf = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %c, i32 0, i32 9
  %34 = ptrtoint ptr %zrasf to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 0, ptr %zrasf, align 1
  %pr = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %c, i32 0, i32 10
  %35 = ptrtoint ptr %pr to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %pr, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_zones)
  %cmp6121.not = icmp eq i32 %nr_zones, 0
  br i1 %cmp6121.not, label %if.end3.out_free_crit_edge, label %land.rhs.lr.ph

if.end3.out_free_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

land.rhs.lr.ph:                                   ; preds = %if.end3
  %36 = ptrtoint ptr %zsze.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %zsze.i, align 8
  %neg = sub i64 0, %37
  %and = and i64 %neg, %sector
  %lba_shift.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 9
  %slba = getelementptr inbounds %struct.nvme_zone_mgmt_recv_cmd, ptr %c, i32 0, i32 6
  %queue = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 2
  %38 = getelementptr inbounds i8, ptr %zone.i, i32 24
  %cond.i = getelementptr inbounds %struct.blk_zone, ptr %zone.i, i32 0, i32 4
  %len.i = getelementptr inbounds %struct.blk_zone, ptr %zone.i, i32 0, i32 1
  %capacity.i = getelementptr inbounds %struct.blk_zone, ptr %zone.i, i32 0, i32 8
  %39 = getelementptr inbounds %struct.blk_zone, ptr %zone.i, i32 0, i32 2
  br label %land.rhs

land.rhs:                                         ; preds = %for.end.land.rhs_crit_edge, %land.rhs.lr.ph
  %zone_idx.0123 = phi i32 [ 0, %land.rhs.lr.ph ], [ %zone_idx.1.lcssa, %for.end.land.rhs_crit_edge ]
  %sector.addr.0122 = phi i64 [ %and, %land.rhs.lr.ph ], [ %add, %for.end.land.rhs_crit_edge ]
  %40 = ptrtoint ptr %disk.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %disk.i, align 8
  %part0.i = getelementptr inbounds %struct.gendisk, ptr %41, i32 0, i32 7
  %42 = ptrtoint ptr %part0.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %part0.i, align 4
  %bd_nr_sectors.i.i = getelementptr inbounds %struct.block_device, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %bd_nr_sectors.i.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %bd_nr_sectors.i.i, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %sector.addr.0122, i64 %45)
  %cmp9 = icmp ult i64 %sector.addr.0122, %45
  br i1 %cmp9, label %while.body, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body:                                       ; preds = %land.rhs
  %46 = call ptr @memset(ptr %call36.i, i32 0, i32 %bufsize.062.i)
  %47 = ptrtoint ptr %lba_shift.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %lba_shift.i, align 4
  %sub.i85 = add i32 %48, -9
  %sh_prom.i86 = zext i32 %sub.i85 to i64
  %shr.i87 = lshr i64 %sector.addr.0122, %sh_prom.i86
  %49 = call i64 @llvm.bswap.i64(i64 %shr.i87)
  %50 = ptrtoint ptr %slba to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 %49, ptr %slba, align 8
  %51 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %queue, align 4
  %call12 = call i32 @nvme_submit_sync_cmd(ptr noundef %52, ptr noundef nonnull %c, ptr noundef nonnull %call36.i, i32 noundef %bufsize.062.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end19, label %if.then14

if.then14:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp15 = icmp sgt i32 %call12, 0
  %spec.store.select = select i1 %cmp15, i32 -5, i32 %call12
  br label %out_free

if.end19:                                         ; preds = %while.body
  %53 = ptrtoint ptr %call36.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %call36.i, align 8
  %55 = call i64 @llvm.bswap.i64(i64 %54)
  %conv21 = trunc i64 %55 to i32
  %56 = call i32 @llvm.umin.i32(i32 %conv21, i32 %nr_zones)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool24.not = icmp eq i32 %56, 0
  br i1 %tobool24.not, label %if.end19.while.end_crit_edge, label %for.cond.preheader

if.end19.while.end_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.cond.preheader:                               ; preds = %if.end19
  call void @__sanitizer_cov_trace_cmp4(i32 %zone_idx.0123, i32 %nr_zones)
  %cmp30116 = icmp ult i32 %zone_idx.0123, %nr_zones
  br i1 %cmp30116, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end36.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0119 = phi i32 [ %inc37, %if.end36.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %zone_idx.1118 = phi i32 [ %inc, %if.end36.for.body_crit_edge ], [ %zone_idx.0123, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nvme_zone_report, ptr %call36.i, i32 0, i32 2, i32 %i.0119
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %zone.i) #8
  %57 = call ptr @memset(ptr %38, i32 0, i32 40)
  %58 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %arrayidx, align 8
  %60 = and i8 %59, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %60)
  %cmp.not.i = icmp eq i8 %60, 2
  br i1 %cmp.not.i, label %if.end.i91, label %nvme_zone_parse_entry.exit.thread

nvme_zone_parse_entry.exit.thread:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %conv.i88.le = zext i8 %59 to i32
  %ctrl.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 1
  %61 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ctrl.i, align 8
  %device.i = getelementptr inbounds %struct.nvme_ctrl, ptr %62, i32 0, i32 17
  %63 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %device.i, align 8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.14, i32 noundef %conv.i88.le) #11
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zone.i) #8
  br label %out_free

if.end.i91:                                       ; preds = %for.body
  %65 = ptrtoint ptr %38 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 2, ptr %38, align 8
  %zs.i = getelementptr %struct.nvme_zone_report, ptr %call36.i, i32 0, i32 2, i32 %i.0119, i32 1
  %66 = ptrtoint ptr %zs.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %zs.i, align 1
  %68 = lshr i8 %67, 4
  %69 = ptrtoint ptr %cond.i to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %68, ptr %cond.i, align 1
  %70 = ptrtoint ptr %zsze.i to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %zsze.i, align 8
  %72 = ptrtoint ptr %len.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %len.i, align 8
  %zcap.i = getelementptr %struct.nvme_zone_report, ptr %call36.i, i32 0, i32 2, i32 %i.0119, i32 4
  %73 = ptrtoint ptr %zcap.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %zcap.i, align 8
  %75 = call i64 @llvm.bswap.i64(i64 %74) #8
  %76 = ptrtoint ptr %lba_shift.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %lba_shift.i, align 4
  %sub.i.i90 = add i32 %77, -9
  %sh_prom.i.i = zext i32 %sub.i.i90 to i64
  %shl.i.i = shl i64 %75, %sh_prom.i.i
  %78 = ptrtoint ptr %capacity.i to i32
  call void @__asan_store8_noabort(i32 %78)
  store i64 %shl.i.i, ptr %capacity.i, align 8
  %zslba.i = getelementptr %struct.nvme_zone_report, ptr %call36.i, i32 0, i32 2, i32 %i.0119, i32 5
  %79 = ptrtoint ptr %zslba.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %zslba.i, align 8
  %81 = call i64 @llvm.bswap.i64(i64 %80) #8
  %shl.i32.i = shl i64 %81, %sh_prom.i.i
  %82 = ptrtoint ptr %zone.i to i32
  call void @__asan_store8_noabort(i32 %82)
  store i64 %shl.i32.i, ptr %zone.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %68)
  %cmp10.i = icmp eq i8 %68, 14
  br i1 %cmp10.i, label %if.then12.i, label %if.else.i

if.then12.i:                                      ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  %add.i92 = add i64 %shl.i32.i, %71
  br label %nvme_zone_parse_entry.exit

if.else.i:                                        ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #10
  %wp15.i = getelementptr %struct.nvme_zone_report, ptr %call36.i, i32 0, i32 2, i32 %i.0119, i32 6
  %83 = ptrtoint ptr %wp15.i to i32
  call void @__asan_load8_noabort(i32 %83)
  %84 = load i64, ptr %wp15.i, align 8
  %85 = call i64 @llvm.bswap.i64(i64 %84) #8
  %shl.i36.i = shl i64 %85, %sh_prom.i.i
  br label %nvme_zone_parse_entry.exit

nvme_zone_parse_entry.exit:                       ; preds = %if.else.i, %if.then12.i
  %shl.i36.sink.i = phi i64 [ %add.i92, %if.then12.i ], [ %shl.i36.i, %if.else.i ]
  %86 = ptrtoint ptr %39 to i32
  call void @__asan_store8_noabort(i32 %86)
  store i64 %shl.i36.sink.i, ptr %39, align 8
  %call19.i = call i32 %cb(ptr noundef nonnull %zone.i, i32 noundef %zone_idx.1118, ptr noundef %data) #8
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %zone.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19.i)
  %tobool34.not = icmp eq i32 %call19.i, 0
  br i1 %tobool34.not, label %if.end36, label %nvme_zone_parse_entry.exit.out_free_crit_edge

nvme_zone_parse_entry.exit.out_free_crit_edge:    ; preds = %nvme_zone_parse_entry.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free

if.end36:                                         ; preds = %nvme_zone_parse_entry.exit
  %inc = add nuw i32 %zone_idx.1118, 1
  %inc37 = add nuw i32 %i.0119, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc37, i32 %56)
  %cmp27 = icmp ult i32 %inc37, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %nr_zones)
  %cmp30 = icmp ult i32 %inc, %nr_zones
  %or.cond = select i1 %cmp27, i1 %cmp30, i1 false
  br i1 %or.cond, label %if.end36.for.body_crit_edge, label %if.end36.for.end_crit_edge

if.end36.for.end_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end36.for.body_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end36.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %zone_idx.1.lcssa = phi i32 [ %zone_idx.0123, %for.cond.preheader.for.end_crit_edge ], [ %inc, %if.end36.for.end_crit_edge ]
  %87 = ptrtoint ptr %zsze.i to i32
  call void @__asan_load8_noabort(i32 %87)
  %88 = load i64, ptr %zsze.i, align 8
  %conv39 = zext i32 %56 to i64
  %mul = mul i64 %88, %conv39
  %add = add i64 %mul, %sector.addr.0122
  %cmp6 = icmp ult i32 %zone_idx.1.lcssa, %nr_zones
  br i1 %cmp6, label %for.end.land.rhs_crit_edge, label %for.end.while.end_crit_edge

for.end.while.end_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

for.end.land.rhs_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.rhs

while.end:                                        ; preds = %for.end.while.end_crit_edge, %if.end19.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %zone_idx.0.lcssa = phi i32 [ %zone_idx.0123, %land.rhs.while.end_crit_edge ], [ %zone_idx.0123, %if.end19.while.end_crit_edge ], [ %zone_idx.1.lcssa, %for.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %zone_idx.0.lcssa)
  %cmp40 = icmp sgt i32 %zone_idx.0.lcssa, 0
  %spec.select = select i1 %cmp40, i32 %zone_idx.0.lcssa, i32 -22
  br label %out_free

out_free:                                         ; preds = %while.end, %nvme_zone_parse_entry.exit.out_free_crit_edge, %nvme_zone_parse_entry.exit.thread, %if.then14, %if.end3.out_free_crit_edge
  %ret.0 = phi i32 [ %spec.store.select, %if.then14 ], [ -22, %nvme_zone_parse_entry.exit.thread ], [ -22, %if.end3.out_free_crit_edge ], [ %spec.select, %while.end ], [ %call19.i, %nvme_zone_parse_entry.exit.out_free_crit_edge ]
  call void @kvfree(ptr noundef nonnull %call36.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free, %if.end.i.cleanup_crit_edge, %cond.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %out_free ], [ -22, %entry.cleanup_crit_edge ], [ -12, %cond.end8.i.cleanup_crit_edge ], [ -12, %if.end.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %c) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @nvme_setup_zone_mgmt_send(ptr nocapture noundef readonly %ns, ptr nocapture noundef readonly %req, ptr nocapture noundef writeonly %c, i32 noundef %action) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = call ptr @memset(ptr %c, i32 0, i32 64)
  %1 = ptrtoint ptr %c to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 121, ptr %c, align 8
  %head = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 8
  %2 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %head, align 8
  %ns_id = getelementptr inbounds %struct.nvme_ns_head, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %ns_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ns_id, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %nsid = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %c, i32 0, i32 3
  %7 = ptrtoint ptr %nsid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %nsid, align 4
  %__sector.i = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 9
  %8 = ptrtoint ptr %__sector.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %__sector.i, align 8
  %lba_shift.i = getelementptr inbounds %struct.nvme_ns, ptr %ns, i32 0, i32 9
  %10 = ptrtoint ptr %lba_shift.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lba_shift.i, align 4
  %sub.i = add i32 %11, -9
  %sh_prom.i = zext i32 %sub.i to i64
  %shr.i = lshr i64 %9, %sh_prom.i
  %12 = tail call i64 @llvm.bswap.i64(i64 %shr.i)
  %slba = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %c, i32 0, i32 7
  %13 = ptrtoint ptr %slba to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %slba, align 8
  %conv = trunc i32 %action to i8
  %zsa = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %c, i32 0, i32 9
  %14 = ptrtoint ptr %zsa to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %zsa, align 4
  %cmd_flags = getelementptr inbounds %struct.request, ptr %req, i32 0, i32 3
  %15 = ptrtoint ptr %cmd_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cmd_flags, align 4
  %and = and i32 %16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %and)
  %cmp = icmp eq i32 %and, 17
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %select_all = getelementptr inbounds %struct.nvme_zone_mgmt_send_cmd, ptr %c, i32 0, i32 10
  %17 = ptrtoint ptr %select_all to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %select_all, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i8 0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__vmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !25}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/nvme/host/zns.c", i32 61, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @nvme_update_zone_info._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @nvme_update_zone_info._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/nvme/host/zns.c", i32 66, i32 3}
!10 = !{ptr @nvme_update_zone_info._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @nvme_update_zone_info._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/nvme/host/zns.c", i32 96, i32 3}
!14 = !{ptr @nvme_update_zone_info._entry.8, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @nvme_update_zone_info._entry_ptr.10, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvme/host/zns.c", i32 105, i32 3}
!18 = !{ptr @nvme_update_zone_info._entry.11, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @nvme_update_zone_info._entry_ptr.13, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/nvme/host/zns.c", i32 159, i32 3}
!22 = !{ptr @.str.15, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.16, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @nvme_zone_parse_entry._entry, !21, !"_entry", i1 false, i1 false}
!25 = !{ptr @nvme_zone_parse_entry._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!35 = !{i32 0, i32 33}
