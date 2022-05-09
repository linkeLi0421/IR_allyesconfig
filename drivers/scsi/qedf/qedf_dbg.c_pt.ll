; ModuleID = '/llk/IR_all_yes/drivers/scsi/qedf/qedf_dbg.c_pt.bc'
source_filename = "../drivers/scsi/qedf/qedf_dbg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.__va_list = type { ptr }
%struct.va_format = type { ptr, ptr }
%struct.qedf_dbg_ctx = type { i32, ptr, ptr }
%struct.pci_dev = type <{ %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, i16, i16, i32, i8, i8, i16, ptr, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i16, ptr, ptr, i64, %struct.device_dma_parameters, i32, i8, i8, i24, [2 x i8], i32, i32, ptr, i8, i8, i16, i8, [3 x i8], i32, %struct.device, i32, i32, [17 x %struct.resource], i8, [5 x i8], i16, %struct.atomic_t, [16 x i32], %struct.hlist_head, i32, [17 x ptr], [17 x ptr], i8, i8, [2 x i8], ptr, %struct.raw_spinlock, %struct.pci_vpd, i16, i8, i8, %union.anon.107, i16, i8, i8, i16, [2 x i8], i32, i8, i8, i16, i16, i16, i32, i32, ptr, i32, [7 x i8], i8 }>
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
%union.anon.107 = type { ptr }
%struct.qed_common_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Scsi_Host = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.spinlock, ptr, %struct.mutex, %struct.list_head, %struct.list_head, ptr, ptr, %struct.wait_queue_head, ptr, ptr, %struct.blk_mq_tag_set, %struct.atomic_t, i32, i32, i32, i32, i32, i32, i32, i64, i32, i16, i32, i32, i16, i16, i16, i32, i32, i32, i32, i32, i32, i16, [20 x i8], ptr, ptr, i32, i32, i8, i32, i32, i8, i8, i32, i32, %struct.device, %struct.device, ptr, ptr, [0 x i32] }
%struct.blk_mq_tag_set = type { [3 x %struct.blk_mq_queue_map], i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, %struct.mutex, %struct.list_head }
%struct.blk_mq_queue_map = type { ptr, i32, i32 }
%struct.sysfs_bin_attrs = type { ptr, ptr }

@qedf_dbg_err._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 23, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013[%s]:[%s:%d]:%d: %pV\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qedf_dbg_err\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/scsi/qedf/qedf_dbg.c\00", [35 x i8] zeroinitializer }, align 32
@qedf_dbg_err._entry_ptr = internal global ptr @qedf_dbg_err._entry, section ".printk_index", align 4
@qedf_dbg_err._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 25, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013[0000:00:00.0]:[%s:%d]: %pV\00", [34 x i8] zeroinitializer }, align 32
@qedf_dbg_err._entry_ptr.5 = internal global ptr @qedf_dbg_err._entry.3, section ".printk_index", align 4
@qedf_debug = external dso_local local_unnamed_addr global i32, align 4
@qedf_dbg_warn._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 47, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\014[%s]:[%s:%d]:%d: %pV\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qedf_dbg_warn\00", [18 x i8] zeroinitializer }, align 32
@qedf_dbg_warn._entry_ptr = internal global ptr @qedf_dbg_warn._entry, section ".printk_index", align 4
@qedf_dbg_warn._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014[0000:00:00.0]:[%s:%d]: %pV\00", [34 x i8] zeroinitializer }, align 32
@qedf_dbg_warn._entry_ptr.10 = internal global ptr @qedf_dbg_warn._entry.8, section ".printk_index", align 4
@qedf_dbg_notice._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 73, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\015[%s]:[%s:%d]:%d: %pV\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"qedf_dbg_notice\00", [16 x i8] zeroinitializer }, align 32
@qedf_dbg_notice._entry_ptr = internal global ptr @qedf_dbg_notice._entry, section ".printk_index", align 4
@qedf_dbg_notice._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 75, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\015[0000:00:00.0]:[%s:%d]: %pV\00", [34 x i8] zeroinitializer }, align 32
@qedf_dbg_notice._entry_ptr.15 = internal global ptr @qedf_dbg_notice._entry.13, section ".printk_index", align 4
@qedf_dbg_info._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 98, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016[%s]:[%s:%d]:%d: %pV\00", [41 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"qedf_dbg_info\00", [18 x i8] zeroinitializer }, align 32
@qedf_dbg_info._entry_ptr = internal global ptr @qedf_dbg_info._entry, section ".printk_index", align 4
@qedf_dbg_info._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 100, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016[0000:00:00.0]:[%s:%d]: %pV\00", [34 x i8] zeroinitializer }, align 32
@qedf_dbg_info._entry_ptr.20 = internal global ptr @qedf_dbg_info._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"GRCDUMP=%u\00", [21 x i8] zeroinitializer }, align 32
@qedf_create_sysfs_attr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013Unable to create sysfs %s attr, err(%d).\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"qedf_create_sysfs_attr\00", [41 x i8] zeroinitializer }, align 32
@qedf_create_sysfs_attr._entry_ptr = internal global ptr @qedf_create_sysfs_attr._entry, section ".printk_index", align 4
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 22, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 25, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 46, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 49, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 71, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 75, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 97, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 100, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 145, i32 26 }
@___asan_gen_.90 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.97 = private constant [32 x i8] c"../drivers/scsi/qedf/qedf_dbg.c\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 164, i32 4 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @qedf_create_sysfs_attr._entry, ptr @qedf_create_sysfs_attr._entry_ptr, ptr @qedf_dbg_err._entry, ptr @qedf_dbg_err._entry.3, ptr @qedf_dbg_err._entry_ptr, ptr @qedf_dbg_err._entry_ptr.5, ptr @qedf_dbg_info._entry, ptr @qedf_dbg_info._entry.18, ptr @qedf_dbg_info._entry_ptr, ptr @qedf_dbg_info._entry_ptr.20, ptr @qedf_dbg_notice._entry, ptr @qedf_dbg_notice._entry.13, ptr @qedf_dbg_notice._entry_ptr, ptr @qedf_dbg_notice._entry_ptr.15, ptr @qedf_dbg_warn._entry, ptr @qedf_dbg_warn._entry.8, ptr @qedf_dbg_warn._entry_ptr, ptr @qedf_dbg_warn._entry_ptr.10, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_err._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_err._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_warn._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_warn._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_notice._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_notice._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_info._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_dbg_info._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qedf_create_sysfs_attr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_err(ptr noundef readonly %qedf, ptr noundef %func, i32 noundef %line, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %va = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #7
  %0 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %va)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %va, ptr %1, align 4
  %tobool.not = icmp eq ptr %qedf, null
  br i1 %tobool.not, label %entry.do.end16_crit_edge, label %land.lhs.true, !prof !54

entry.do.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

land.lhs.true:                                    ; preds = %entry
  %pdev = getelementptr inbounds %struct.qedf_dbg_ctx, ptr %qedf, i32 0, i32 1
  %4 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdev, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %land.lhs.true.do.end16_crit_edge, label %do.end, !prof !54

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end16

do.end:                                           ; preds = %land.lhs.true
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %5, i32 0, i32 44
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %do.end.dev_name.exit_crit_edge ]
  %10 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %qedf, align 4
  %call13 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %retval.0.i, ptr noundef %func, i32 noundef %line, i32 noundef %11, ptr noundef nonnull %vaf) #10
  br label %if.end

do.end16:                                         ; preds = %land.lhs.true.do.end16_crit_edge, %entry.do.end16_crit_edge
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %func, i32 noundef %line, ptr noundef nonnull %vaf) #10
  br label %if.end

if.end:                                           ; preds = %do.end16, %dev_name.exit
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_warn(ptr noundef readonly %qedf, ptr noundef %func, i32 noundef %line, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %va = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #7
  %0 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %va)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %va, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_debug to i32))
  %4 = load i32, ptr @qedf_debug, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %4)
  %tobool.not = icmp sgt i32 %4, -1
  br i1 %tobool.not, label %entry.ret_crit_edge, label %if.end

entry.ret_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %qedf, null
  br i1 %tobool3.not, label %if.end.do.end18_crit_edge, label %land.lhs.true, !prof !54

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end
  %pdev = getelementptr inbounds %struct.qedf_dbg_ctx, ptr %qedf, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.do.end18_crit_edge, label %do.end, !prof !54

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end:                                           ; preds = %land.lhs.true
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %11 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qedf, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %retval.0.i, ptr noundef %func, i32 noundef %line, i32 noundef %12, ptr noundef nonnull %vaf) #10
  br label %ret

do.end18:                                         ; preds = %land.lhs.true.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %func, i32 noundef %line, ptr noundef nonnull %vaf) #10
  br label %ret

ret:                                              ; preds = %do.end18, %dev_name.exit, %entry.ret_crit_edge
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_notice(ptr noundef readonly %qedf, ptr noundef %func, i32 noundef %line, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %va = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #7
  %0 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %va)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %va, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_debug to i32))
  %4 = load i32, ptr @qedf_debug, align 4
  %and = and i32 %4, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.ret_crit_edge, label %if.end

entry.ret_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %qedf, null
  br i1 %tobool3.not, label %if.end.do.end18_crit_edge, label %land.lhs.true, !prof !54

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end
  %pdev = getelementptr inbounds %struct.qedf_dbg_ctx, ptr %qedf, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.do.end18_crit_edge, label %do.end, !prof !54

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end:                                           ; preds = %land.lhs.true
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %11 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qedf, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %retval.0.i, ptr noundef %func, i32 noundef %line, i32 noundef %12, ptr noundef nonnull %vaf) #10
  br label %ret

do.end18:                                         ; preds = %land.lhs.true.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %func, i32 noundef %line, ptr noundef nonnull %vaf) #10
  br label %ret

ret:                                              ; preds = %do.end18, %dev_name.exit, %entry.ret_crit_edge
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_dbg_info(ptr noundef readonly %qedf, ptr noundef %func, i32 noundef %line, i32 noundef %level, ptr noundef %fmt, ...) local_unnamed_addr #0 align 64 {
entry:
  %va = alloca %struct.__va_list, align 4
  %vaf = alloca %struct.va_format, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %va) #7
  %0 = ptrtoint ptr %va to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %va, align 4, !annotation !53
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %vaf) #7
  %1 = getelementptr inbounds %struct.va_format, ptr %vaf, i32 0, i32 1
  call void @llvm.va_start(ptr nonnull %va)
  %2 = ptrtoint ptr %vaf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fmt, ptr %vaf, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %va, ptr %1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @qedf_debug to i32))
  %4 = load i32, ptr @qedf_debug, align 4
  %and = and i32 %4, %level
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.ret_crit_edge, label %if.end

entry.ret_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %ret

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %qedf, null
  br i1 %tobool3.not, label %if.end.do.end18_crit_edge, label %land.lhs.true, !prof !54

if.end.do.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

land.lhs.true:                                    ; preds = %if.end
  %pdev = getelementptr inbounds %struct.qedf_dbg_ctx, ptr %qedf, i32 0, i32 1
  %5 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev, align 4
  %tobool6.not = icmp eq ptr %6, null
  br i1 %tobool6.not, label %land.lhs.true.do.end18_crit_edge, label %do.end, !prof !54

land.lhs.true.do.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end18

do.end:                                           ; preds = %land.lhs.true
  %init_name.i = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44, i32 3
  %7 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.pci_dev, ptr %6, i32 0, i32 44
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %10, %if.end.i ], [ %8, %do.end.dev_name.exit_crit_edge ]
  %11 = ptrtoint ptr %qedf to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %qedf, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %retval.0.i, ptr noundef %func, i32 noundef %line, i32 noundef %12, ptr noundef nonnull %vaf) #10
  br label %ret

do.end18:                                         ; preds = %land.lhs.true.do.end18_crit_edge, %if.end.do.end18_crit_edge
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %func, i32 noundef %line, ptr noundef nonnull %vaf) #10
  br label %ret

ret:                                              ; preds = %do.end18, %dev_name.exit, %entry.ret_crit_edge
  call void @llvm.va_end(ptr nonnull %va)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %vaf) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %va) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_alloc_grc_dump_buf(ptr nocapture noundef writeonly %buf, i32 noundef %len) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call noalias ptr @vzalloc(i32 noundef %len) #11
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %buf, align 4
  %tobool.not = icmp eq ptr %call, null
  %. = select i1 %tobool.not, i32 -12, i32 0
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vzalloc(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_free_grc_dump_buf(ptr nocapture noundef %buf) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  tail call void @vfree(ptr noundef %1) #7
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %buf, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_get_grc_dump(ptr noundef %cdev, ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %buf, ptr nocapture noundef readnone %grcsize) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %buf, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dbg_all_data = getelementptr inbounds %struct.qed_common_ops, ptr %common, i32 0, i32 16
  %2 = ptrtoint ptr %dbg_all_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dbg_all_data, align 4
  %call = tail call i32 %3(ptr noundef %cdev, ptr noundef nonnull %1) #7
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_uevent_emit(ptr noundef %shost, i32 noundef %code, ptr noundef %msg) local_unnamed_addr #0 align 64 {
entry:
  %event_string = alloca [40 x i8], align 1
  %envp = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %event_string) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %envp) #7
  %0 = getelementptr inbounds [2 x ptr], ptr %envp, i32 0, i32 1
  %1 = ptrtoint ptr %envp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %event_string, ptr %envp, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %0, align 4
  %3 = call ptr @memset(ptr %event_string, i32 0, i32 40)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %code)
  %cond = icmp eq i32 %code, 0
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %tobool.not = icmp eq ptr %msg, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %call = call i32 @strscpy(ptr noundef nonnull %event_string, ptr noundef nonnull %msg, i32 noundef 40) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %host_no = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 17
  %4 = ptrtoint ptr %host_no to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %host_no, align 4
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %event_string, ptr noundef nonnull @.str.21, i32 noundef %5)
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else, %if.then, %entry.sw.epilog_crit_edge
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  %call6 = call i32 @kobject_uevent_env(ptr noundef %shost_gendev, i32 noundef 2, ptr noundef nonnull %envp) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %envp) #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %event_string) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @qedf_create_sysfs_attr(ptr noundef %shost, ptr nocapture noundef readonly %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 4
  %tobool.not9 = icmp eq ptr %1, null
  br i1 %tobool.not9, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %iter.addr.010 = phi ptr [ %iter, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %attr = getelementptr inbounds %struct.sysfs_bin_attrs, ptr %iter.addr.010, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  %call = tail call i32 @sysfs_create_bin_file(ptr noundef %shost_gendev, ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %iter.addr.010 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iter.addr.010, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %5, i32 noundef %call) #10
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %incdec.ptr = getelementptr %struct.sysfs_bin_attrs, ptr %iter.addr.010, i32 1
  %6 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %call, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sysfs_create_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @qedf_remove_sysfs_attr(ptr noundef %shost, ptr nocapture noundef readonly %iter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %iter to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iter, align 4
  %tobool.not3 = icmp eq ptr %1, null
  br i1 %tobool.not3, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %shost_gendev = getelementptr inbounds %struct.Scsi_Host, ptr %shost, i32 0, i32 49
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %iter.addr.04 = phi ptr [ %iter, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %attr = getelementptr inbounds %struct.sysfs_bin_attrs, ptr %iter.addr.04, i32 0, i32 1
  %2 = ptrtoint ptr %attr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %attr, align 4
  tail call void @sysfs_remove_bin_file(ptr noundef %shost_gendev, ptr noundef %3) #7
  %incdec.ptr = getelementptr %struct.sysfs_bin_attrs, ptr %iter.addr.04, i32 1
  %4 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %incdec.ptr, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sysfs_remove_bin_file(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43}
!llvm.module.flags = !{!44, !45, !46, !47, !48, !49, !50, !51}
!llvm.ident = !{!52}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 22, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @qedf_dbg_err._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @qedf_dbg_err._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 25, i32 3}
!8 = !{ptr @qedf_dbg_err._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @qedf_dbg_err._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 46, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @qedf_dbg_warn._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @qedf_dbg_warn._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 49, i32 3}
!17 = !{ptr @qedf_dbg_warn._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @qedf_dbg_warn._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 71, i32 3}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @qedf_dbg_notice._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @qedf_dbg_notice._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 75, i32 3}
!26 = !{ptr @qedf_dbg_notice._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @qedf_dbg_notice._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 97, i32 3}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @qedf_dbg_info._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @qedf_dbg_info._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 100, i32 3}
!35 = !{ptr @qedf_dbg_info._entry.18, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @qedf_dbg_info._entry_ptr.20, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 145, i32 26}
!39 = !{ptr @.str.22, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/scsi/qedf/qedf_dbg.c", i32 164, i32 4}
!41 = !{ptr @.str.23, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @qedf_create_sysfs_attr._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @qedf_create_sysfs_attr._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{i32 1, !"wchar_size", i32 2}
!45 = !{i32 1, !"min_enum_size", i32 4}
!46 = !{i32 8, !"branch-target-enforcement", i32 0}
!47 = !{i32 8, !"sign-return-address", i32 0}
!48 = !{i32 8, !"sign-return-address-all", i32 0}
!49 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!50 = !{i32 7, !"uwtable", i32 1}
!51 = !{i32 7, !"frame-pointer", i32 2}
!52 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!53 = !{!"auto-init"}
!54 = !{!"branch_weights", i32 1, i32 2000}
