; ModuleID = '/llk/IR_all_yes/drivers/mfd/max8997-irq.c_pt.bc'
source_filename = "../drivers/mfd/max8997-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max8997_irq_data = type { i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.max8997_dev = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, i32, ptr, i32, i32, ptr, %struct.mutex, [11 x i32], [11 x i32], [187 x i8], [12 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@max8997_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 300, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No interrupt specified.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max8997_irq_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/max8997-irq.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8997_irq_init._entry_ptr = internal global ptr @max8997_irq_init._entry, section ".printk_index", align 4
@max8997_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&max8997->irqlock\00", [46 x i8] zeroinitializer }, align 32
@max8997_mask_reg = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\08\09\0A\0B\FF\07\08\09\FF\FF\FF", [21 x i8] zeroinitializer }, align 32
@max8997_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @max8997_irq_domain_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max8997_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 333, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not create irq domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max8997_irq_init._entry_ptr.9 = internal global ptr @max8997_irq_init._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8997-irq\00", [20 x i8] zeroinitializer }, align 32
@max8997_irq_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 344, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max8997_irq_init._entry_ptr.13 = internal global ptr @max8997_irq_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8997-ono\00", [20 x i8] zeroinitializer }, align 32
@max8997_irq_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 357, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to request ono-IRQ %d: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@max8997_irq_init._entry_ptr.17 = internal global ptr @max8997_irq_init._entry.15, section ".printk_index", align 4
@max8997_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 176, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read interrupt source: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8997_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@max8997_irq_thread._entry_ptr = internal global ptr @max8997_irq_thread._entry, section ".printk_index", align 4
@max8997_irqs = internal constant { [35 x %struct.max8997_irq_data], [72 x i8] } { [35 x %struct.max8997_irq_data] [%struct.max8997_irq_data { i32 1, i32 0 }, %struct.max8997_irq_data { i32 2, i32 0 }, %struct.max8997_irq_data { i32 8, i32 0 }, %struct.max8997_irq_data { i32 16, i32 0 }, %struct.max8997_irq_data { i32 32, i32 0 }, %struct.max8997_irq_data { i32 64, i32 0 }, %struct.max8997_irq_data { i32 128, i32 0 }, %struct.max8997_irq_data { i32 1, i32 1 }, %struct.max8997_irq_data { i32 2, i32 1 }, %struct.max8997_irq_data { i32 4, i32 1 }, %struct.max8997_irq_data { i32 8, i32 1 }, %struct.max8997_irq_data { i32 16, i32 1 }, %struct.max8997_irq_data { i32 32, i32 1 }, %struct.max8997_irq_data { i32 64, i32 1 }, %struct.max8997_irq_data { i32 1, i32 2 }, %struct.max8997_irq_data { i32 2, i32 2 }, %struct.max8997_irq_data { i32 4, i32 2 }, %struct.max8997_irq_data { i32 8, i32 2 }, %struct.max8997_irq_data { i32 32, i32 2 }, %struct.max8997_irq_data { i32 128, i32 2 }, %struct.max8997_irq_data { i32 1, i32 3 }, %struct.max8997_irq_data { i32 2, i32 3 }, %struct.max8997_irq_data { i32 4, i32 3 }, %struct.max8997_irq_data { i32 8, i32 3 }, %struct.max8997_irq_data { i32 16, i32 3 }, %struct.max8997_irq_data { i32 32, i32 3 }, %struct.max8997_irq_data { i32 4, i32 5 }, %struct.max8997_irq_data { i32 2, i32 5 }, %struct.max8997_irq_data { i32 1, i32 5 }, %struct.max8997_irq_data { i32 16, i32 6 }, %struct.max8997_irq_data { i32 8, i32 6 }, %struct.max8997_irq_data { i32 4, i32 6 }, %struct.max8997_irq_data { i32 2, i32 6 }, %struct.max8997_irq_data { i32 1, i32 6 }, %struct.max8997_irq_data { i32 4, i32 7 }], [72 x i8] zeroinitializer }, align 32
@max8997_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_irq_mask, ptr null, ptr @max8997_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8997_irq_lock, ptr @max8997_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8997\00", [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 32, i64 48]
@__sancov_gen_cov_switch_values.21 = internal global [12 x i64] [i64 10, i64 32, i64 0, i64 1, i64 2, i64 3, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.22 = internal global [13 x i64] [i64 11, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 300, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 304, i32 2 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"max8997_mask_reg\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 16, i32 17 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"max8997_irq_domain_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 288, i32 36 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 333, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 340, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 343, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 353, i32 18 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 356, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 175, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"max8997_irqs\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 56, i32 38 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"max8997_irq_chip\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 152, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private constant [29 x i8] c"../drivers/mfd/max8997-irq.c\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 153, i32 12 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @max8997_irq_init._entry, ptr @max8997_irq_init._entry.11, ptr @max8997_irq_init._entry.15, ptr @max8997_irq_init._entry.6, ptr @max8997_irq_init._entry_ptr, ptr @max8997_irq_init._entry_ptr.13, ptr @max8997_irq_init._entry_ptr.17, ptr @max8997_irq_init._entry_ptr.9, ptr @max8997_irq_thread._entry, ptr @max8997_irq_thread._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @max8997_irq_init.__key, ptr @.str.5, ptr @max8997_mask_reg, ptr @max8997_irq_domain_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @max8997_irqs, ptr @max8997_irq_chip, ptr @.str.20], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_mask_reg to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irqs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8997_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8997_irq_resume(ptr nocapture noundef readonly %max8997) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 9
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %irq_domain = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 11
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @max8997_irq_thread(i32 noundef 0, ptr noundef %max8997)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %irq_reg = alloca [11 x i8], align 1
  %irq_src = alloca i8, align 1
  %gpio_info = alloca [12 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 11, ptr nonnull %irq_reg) #5
  %0 = call ptr @memset(ptr %irq_reg, i32 0, i32 11)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %irq_src) #5
  %1 = ptrtoint ptr %irq_src to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 -1, ptr %irq_src, align 1, !annotation !52
  %i2c = getelementptr inbounds %struct.max8997_dev, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %i2c, align 4
  %call = call i32 @max8997_read_reg(ptr noundef %3, i8 noundef zeroext 2, ptr noundef nonnull %irq_src) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.18, i32 noundef %call) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %irq_src to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %irq_src, align 1
  %8 = and i8 %7, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end.if.end4_crit_edge, label %if.then1

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c, align 4
  %call3 = call i32 @max8997_bulk_read(ptr noundef %10, i8 noundef zeroext 3, i32 noundef 4, ptr noundef nonnull %irq_reg) #5
  br label %if.end4

if.end4:                                          ; preds = %if.then1, %if.end.if.end4_crit_edge
  %11 = ptrtoint ptr %irq_src to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %irq_src, align 1
  %13 = and i8 %12, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool7.not = icmp eq i8 %13, 0
  br i1 %tobool7.not, label %if.end4.if.end10_crit_edge, label %if.then8

if.end4.if.end10_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then8:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 4
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %arrayidx9, align 1
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end4.if.end10_crit_edge
  %15 = and i8 %12, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool13.not = icmp eq i8 %15, 0
  br i1 %tobool13.not, label %if.end10.if.end17_crit_edge, label %if.then14

if.end10.if.end17_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then14:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  %muic = getelementptr inbounds %struct.max8997_dev, ptr %data, i32 0, i32 5
  %16 = ptrtoint ptr %muic to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %muic, align 4
  %arrayidx15 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 5
  %call16 = call i32 @max8997_bulk_read(ptr noundef %17, i8 noundef zeroext 1, i32 noundef 3, ptr noundef %arrayidx15) #5
  br label %if.end17

if.end17:                                         ; preds = %if.then14, %if.end10.if.end17_crit_edge
  %18 = ptrtoint ptr %irq_src to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %irq_src, align 1
  %20 = and i8 %19, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool20.not = icmp eq i8 %20, 0
  br i1 %tobool20.not, label %if.end17.if.end86_crit_edge, label %if.then21

if.end17.if.end86_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then21:                                        ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %gpio_info) #5
  %arrayidx22 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 8
  %21 = call ptr @memset(ptr %gpio_info, i32 255, i32 12)
  %22 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx22, align 1
  %arrayidx23 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 9
  %23 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %arrayidx23, align 1
  %24 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %i2c, align 4
  %call25 = call i32 @max8997_bulk_read(ptr noundef %25, i8 noundef zeroext 112, i32 noundef 12, ptr noundef nonnull %gpio_info) #5
  %26 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load1_noabort(i32 %26)
  %arrayidx23.promoted = load i8, ptr %arrayidx23, align 1
  %27 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %27)
  %arrayidx22.promoted = load i8, ptr %arrayidx22, align 1
  br label %for.body

for.body:                                         ; preds = %if.end85.for.body_crit_edge, %if.then21
  %i.0177 = phi i32 [ 0, %if.then21 ], [ %inc, %if.end85.for.body_crit_edge ]
  %conv83172176 = phi i8 [ %arrayidx23.promoted, %if.then21 ], [ %conv83171, %if.end85.for.body_crit_edge ]
  %conv78174175 = phi i8 [ %arrayidx22.promoted, %if.then21 ], [ %conv78173, %if.end85.for.body_crit_edge ]
  %arrayidx28 = getelementptr [12 x i8], ptr %gpio_info, i32 0, i32 %i.0177
  %28 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %29 to i32
  %and30 = and i32 %conv29, 48
  %30 = zext i32 %and30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and30, label %for.body.if.end85_crit_edge [
    i32 48, label %sw.bb
    i32 32, label %sw.bb40
    i32 16, label %sw.bb55
  ]

for.body.if.end85_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

sw.bb:                                            ; preds = %for.body
  %arrayidx31 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 16, i32 %i.0177
  %31 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx31, align 1, !range !53
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %29)
  %cmp36.not.not = icmp eq i8 %32, %29
  br i1 %cmp36.not.not, label %sw.bb.if.end85_crit_edge, label %sw.bb.if.then72_crit_edge

sw.bb.if.then72_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then72

sw.bb.if.end85_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

sw.bb40:                                          ; preds = %for.body
  %arrayidx42 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 16, i32 %i.0177
  %33 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx42, align 1, !range !53
  call void @__sanitizer_cov_trace_cmp1(i8 %34, i8 %29)
  %cmp47.not = icmp eq i8 %34, %29
  %and51 = and i32 %conv29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %or.cond = select i1 %cmp47.not, i1 true, i1 %tobool52.not
  br i1 %or.cond, label %sw.bb40.if.end85_crit_edge, label %sw.bb40.if.then72_crit_edge

sw.bb40.if.then72_crit_edge:                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then72

sw.bb40.if.end85_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

sw.bb55:                                          ; preds = %for.body
  %arrayidx57 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 16, i32 %i.0177
  %35 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx57, align 1, !range !53
  call void @__sanitizer_cov_trace_cmp1(i8 %36, i8 %29)
  %cmp62.not = icmp ne i8 %36, %29
  %and67 = and i32 %conv29, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and67)
  %tobool68.not = icmp eq i32 %and67, 0
  %or.cond165 = select i1 %cmp62.not, i1 %tobool68.not, i1 false
  br i1 %or.cond165, label %sw.bb55.if.then72_crit_edge, label %sw.bb55.if.end85_crit_edge

sw.bb55.if.end85_crit_edge:                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end85

sw.bb55.if.then72_crit_edge:                      ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then72

if.then72:                                        ; preds = %sw.bb55.if.then72_crit_edge, %sw.bb40.if.then72_crit_edge, %sw.bb.if.then72_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %i.0177)
  %cmp73 = icmp ult i32 %i.0177, 8
  br i1 %cmp73, label %if.then75, label %if.else

if.then75:                                        ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw nsw i32 1, %i.0177
  %37 = trunc i32 %shl to i8
  %conv78 = or i8 %conv78174175, %37
  %38 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv78, ptr %arrayidx22, align 1
  br label %if.end85

if.else:                                          ; preds = %if.then72
  call void @__sanitizer_cov_trace_pc() #7
  %sub = add nsw i32 %i.0177, -8
  %shl79 = shl nuw nsw i32 1, %sub
  %39 = trunc i32 %shl79 to i8
  %conv83 = or i8 %conv83172176, %39
  %40 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv83, ptr %arrayidx23, align 1
  br label %if.end85

if.end85:                                         ; preds = %if.else, %if.then75, %sw.bb55.if.end85_crit_edge, %sw.bb40.if.end85_crit_edge, %sw.bb.if.end85_crit_edge, %for.body.if.end85_crit_edge
  %conv78173 = phi i8 [ %conv78174175, %sw.bb40.if.end85_crit_edge ], [ %conv78174175, %sw.bb55.if.end85_crit_edge ], [ %conv78174175, %for.body.if.end85_crit_edge ], [ %conv78, %if.then75 ], [ %conv78174175, %if.else ], [ %conv78174175, %sw.bb.if.end85_crit_edge ]
  %conv83171 = phi i8 [ %conv83172176, %sw.bb40.if.end85_crit_edge ], [ %conv83172176, %sw.bb55.if.end85_crit_edge ], [ %conv83172176, %for.body.if.end85_crit_edge ], [ %conv83172176, %if.then75 ], [ %conv83, %if.else ], [ %conv83172176, %sw.bb.if.end85_crit_edge ]
  %inc = add nuw nsw i32 %i.0177, 1
  %exitcond.not = icmp eq i32 %inc, 12
  br i1 %exitcond.not, label %for.end, label %if.end85.for.body_crit_edge

if.end85.for.body_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %gpio_info) #5
  br label %if.end86

if.end86:                                         ; preds = %for.end, %if.end17.if.end86_crit_edge
  %41 = ptrtoint ptr %irq_src to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %irq_src, align 1
  %43 = and i8 %42, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool89.not = icmp eq i8 %43, 0
  br i1 %tobool89.not, label %if.end86.if.end94_crit_edge, label %if.then90

if.end86.if.end94_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end94

if.then90:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %i2c, align 4
  %arrayidx92 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 10
  %call93 = call i32 @max8997_read_reg(ptr noundef %45, i8 noundef zeroext 109, ptr noundef %arrayidx92) #5
  br label %if.end94

if.end94:                                         ; preds = %if.then90, %if.end86.if.end94_crit_edge
  %arrayidx99 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 0
  %46 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx99, align 4
  %48 = ptrtoint ptr %irq_reg to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %irq_reg, align 1
  %50 = trunc i32 %47 to i8
  %51 = xor i8 %50, -1
  %conv103 = and i8 %49, %51
  store i8 %conv103, ptr %irq_reg, align 1
  %arrayidx99.1 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 1
  %52 = ptrtoint ptr %arrayidx99.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx99.1, align 4
  %arrayidx100.1 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 1
  %54 = ptrtoint ptr %arrayidx100.1 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %arrayidx100.1, align 1
  %56 = trunc i32 %53 to i8
  %57 = xor i8 %56, -1
  %conv103.1 = and i8 %55, %57
  store i8 %conv103.1, ptr %arrayidx100.1, align 1
  %arrayidx99.2 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 2
  %58 = ptrtoint ptr %arrayidx99.2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx99.2, align 4
  %arrayidx100.2 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 2
  %60 = ptrtoint ptr %arrayidx100.2 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %arrayidx100.2, align 1
  %62 = trunc i32 %59 to i8
  %63 = xor i8 %62, -1
  %conv103.2 = and i8 %61, %63
  store i8 %conv103.2, ptr %arrayidx100.2, align 1
  %arrayidx99.3 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 3
  %64 = ptrtoint ptr %arrayidx99.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx99.3, align 4
  %arrayidx100.3 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 3
  %66 = ptrtoint ptr %arrayidx100.3 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %arrayidx100.3, align 1
  %68 = trunc i32 %65 to i8
  %69 = xor i8 %68, -1
  %conv103.3 = and i8 %67, %69
  store i8 %conv103.3, ptr %arrayidx100.3, align 1
  %arrayidx99.4 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 4
  %70 = ptrtoint ptr %arrayidx99.4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx99.4, align 4
  %arrayidx100.4 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 4
  %72 = ptrtoint ptr %arrayidx100.4 to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %arrayidx100.4, align 1
  %74 = trunc i32 %71 to i8
  %75 = xor i8 %74, -1
  %conv103.4 = and i8 %73, %75
  store i8 %conv103.4, ptr %arrayidx100.4, align 1
  %arrayidx99.5 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 5
  %76 = ptrtoint ptr %arrayidx99.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx99.5, align 4
  %arrayidx100.5 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 5
  %78 = ptrtoint ptr %arrayidx100.5 to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx100.5, align 1
  %80 = trunc i32 %77 to i8
  %81 = xor i8 %80, -1
  %conv103.5 = and i8 %79, %81
  store i8 %conv103.5, ptr %arrayidx100.5, align 1
  %arrayidx99.6 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 6
  %82 = ptrtoint ptr %arrayidx99.6 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx99.6, align 4
  %arrayidx100.6 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 6
  %84 = ptrtoint ptr %arrayidx100.6 to i32
  call void @__asan_load1_noabort(i32 %84)
  %85 = load i8, ptr %arrayidx100.6, align 1
  %86 = trunc i32 %83 to i8
  %87 = xor i8 %86, -1
  %conv103.6 = and i8 %85, %87
  store i8 %conv103.6, ptr %arrayidx100.6, align 1
  %arrayidx99.7 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 7
  %88 = ptrtoint ptr %arrayidx99.7 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx99.7, align 4
  %arrayidx100.7 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 7
  %90 = ptrtoint ptr %arrayidx100.7 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %arrayidx100.7, align 1
  %92 = trunc i32 %89 to i8
  %93 = xor i8 %92, -1
  %conv103.7 = and i8 %91, %93
  store i8 %conv103.7, ptr %arrayidx100.7, align 1
  %arrayidx99.8 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 8
  %94 = ptrtoint ptr %arrayidx99.8 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %arrayidx99.8, align 4
  %arrayidx100.8 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 8
  %96 = ptrtoint ptr %arrayidx100.8 to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %arrayidx100.8, align 1
  %98 = trunc i32 %95 to i8
  %99 = xor i8 %98, -1
  %conv103.8 = and i8 %97, %99
  store i8 %conv103.8, ptr %arrayidx100.8, align 1
  %arrayidx99.9 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 9
  %100 = ptrtoint ptr %arrayidx99.9 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx99.9, align 4
  %arrayidx100.9 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 9
  %102 = ptrtoint ptr %arrayidx100.9 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %arrayidx100.9, align 1
  %104 = trunc i32 %101 to i8
  %105 = xor i8 %104, -1
  %conv103.9 = and i8 %103, %105
  store i8 %conv103.9, ptr %arrayidx100.9, align 1
  %arrayidx99.10 = getelementptr %struct.max8997_dev, ptr %data, i32 0, i32 13, i32 10
  %106 = ptrtoint ptr %arrayidx99.10 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx99.10, align 4
  %arrayidx100.10 = getelementptr inbounds [11 x i8], ptr %irq_reg, i32 0, i32 10
  %108 = ptrtoint ptr %arrayidx100.10 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %arrayidx100.10, align 1
  %110 = trunc i32 %107 to i8
  %111 = xor i8 %110, -1
  %conv103.10 = and i8 %109, %111
  store i8 %conv103.10, ptr %arrayidx100.10, align 1
  %irq_domain = getelementptr inbounds %struct.max8997_dev, ptr %data, i32 0, i32 11
  br label %for.body110

for.body110:                                      ; preds = %for.inc123.for.body110_crit_edge, %if.end94
  %i.2180 = phi i32 [ 0, %if.end94 ], [ %inc124, %for.inc123.for.body110_crit_edge ]
  %arrayidx111 = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %i.2180
  %group = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %i.2180, i32 1
  %112 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %group, align 4
  %arrayidx112 = getelementptr [11 x i8], ptr %irq_reg, i32 0, i32 %113
  %114 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %arrayidx112, align 1
  %conv113 = zext i8 %115 to i32
  %116 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx111, align 4
  %and115 = and i32 %117, %conv113
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and115)
  %tobool116.not = icmp eq i32 %and115, 0
  br i1 %tobool116.not, label %for.body110.for.inc123_crit_edge, label %if.then117

for.body110.for.inc123_crit_edge:                 ; preds = %for.body110
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123

if.then117:                                       ; preds = %for.body110
  %118 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %120 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -1, ptr %irq.i, align 4, !annotation !52
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %119, i32 noundef %i.2180, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  br label %for.inc123

irq_find_mapping.exit:                            ; preds = %if.then117
  %121 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %tobool119.not = icmp eq i32 %122, 0
  br i1 %tobool119.not, label %irq_find_mapping.exit.for.inc123_crit_edge, label %if.then120

irq_find_mapping.exit.for.inc123_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc123

if.then120:                                       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @handle_nested_irq(i32 noundef %122) #5
  br label %for.inc123

for.inc123:                                       ; preds = %if.then120, %irq_find_mapping.exit.for.inc123_crit_edge, %irq_find_mapping.exit.thread, %for.body110.for.inc123_crit_edge
  %inc124 = add nuw nsw i32 %i.2180, 1
  %exitcond183.not = icmp eq i32 %inc124, 35
  br i1 %exitcond183.not, label %for.inc123.cleanup_crit_edge, label %for.inc123.for.body110_crit_edge

for.inc123.for.body110_crit_edge:                 ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body110

for.inc123.cleanup_crit_edge:                     ; preds = %for.inc123
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc123.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 1, %for.inc123.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %irq_src) #5
  call void @llvm.lifetime.end.p0(i64 11, ptr nonnull %irq_reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8997_irq_init(ptr noundef %max8997) local_unnamed_addr #0 align 64 {
entry:
  %val = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %val, align 1, !annotation !52
  %irq = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 9
  %1 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %max8997 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %max8997, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %4, ptr noundef nonnull @.str) #8
  br label %cleanup59

do.body1:                                         ; preds = %entry
  %irqlock = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 12
  tail call void @__mutex_init(ptr noundef %irqlock, ptr noundef nonnull @.str.5, ptr noundef nonnull @max8997_irq_init.__key) #5
  %i2c4.i = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 2
  %muic.i = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 5
  br label %for.body

for.cond15.preheader:                             ; preds = %cleanup
  %5 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %i2c4.i, align 4
  %call21 = call i32 @max8997_read_reg(ptr noundef %6, i8 noundef zeroext 112, ptr noundef nonnull %val) #5
  %arrayidx24 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 0
  %7 = trunc i32 %call21 to i8
  %8 = lshr i8 %7, 2
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %arrayidx24, align 1
  %11 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %i2c4.i, align 4
  %call21.1 = call i32 @max8997_read_reg(ptr noundef %12, i8 noundef zeroext 113, ptr noundef nonnull %val) #5
  %arrayidx24.1 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 1
  %13 = trunc i32 %call21.1 to i8
  %14 = lshr i8 %13, 2
  %15 = and i8 %14, 1
  %16 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %arrayidx24.1, align 1
  %17 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %i2c4.i, align 4
  %call21.2 = call i32 @max8997_read_reg(ptr noundef %18, i8 noundef zeroext 114, ptr noundef nonnull %val) #5
  %arrayidx24.2 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 2
  %19 = trunc i32 %call21.2 to i8
  %20 = lshr i8 %19, 2
  %21 = and i8 %20, 1
  %22 = ptrtoint ptr %arrayidx24.2 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %arrayidx24.2, align 1
  %23 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %i2c4.i, align 4
  %call21.3 = call i32 @max8997_read_reg(ptr noundef %24, i8 noundef zeroext 115, ptr noundef nonnull %val) #5
  %arrayidx24.3 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 3
  %25 = trunc i32 %call21.3 to i8
  %26 = lshr i8 %25, 2
  %27 = and i8 %26, 1
  %28 = ptrtoint ptr %arrayidx24.3 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %arrayidx24.3, align 1
  %29 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %i2c4.i, align 4
  %call21.4 = call i32 @max8997_read_reg(ptr noundef %30, i8 noundef zeroext 116, ptr noundef nonnull %val) #5
  %arrayidx24.4 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 4
  %31 = trunc i32 %call21.4 to i8
  %32 = lshr i8 %31, 2
  %33 = and i8 %32, 1
  %34 = ptrtoint ptr %arrayidx24.4 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %33, ptr %arrayidx24.4, align 1
  %35 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %i2c4.i, align 4
  %call21.5 = call i32 @max8997_read_reg(ptr noundef %36, i8 noundef zeroext 117, ptr noundef nonnull %val) #5
  %arrayidx24.5 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 5
  %37 = trunc i32 %call21.5 to i8
  %38 = lshr i8 %37, 2
  %39 = and i8 %38, 1
  %40 = ptrtoint ptr %arrayidx24.5 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %arrayidx24.5, align 1
  %41 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %i2c4.i, align 4
  %call21.6 = call i32 @max8997_read_reg(ptr noundef %42, i8 noundef zeroext 118, ptr noundef nonnull %val) #5
  %arrayidx24.6 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 6
  %43 = trunc i32 %call21.6 to i8
  %44 = lshr i8 %43, 2
  %45 = and i8 %44, 1
  %46 = ptrtoint ptr %arrayidx24.6 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 %45, ptr %arrayidx24.6, align 1
  %47 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %i2c4.i, align 4
  %call21.7 = call i32 @max8997_read_reg(ptr noundef %48, i8 noundef zeroext 119, ptr noundef nonnull %val) #5
  %arrayidx24.7 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 7
  %49 = trunc i32 %call21.7 to i8
  %50 = lshr i8 %49, 2
  %51 = and i8 %50, 1
  %52 = ptrtoint ptr %arrayidx24.7 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %arrayidx24.7, align 1
  %53 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %i2c4.i, align 4
  %call21.8 = call i32 @max8997_read_reg(ptr noundef %54, i8 noundef zeroext 120, ptr noundef nonnull %val) #5
  %arrayidx24.8 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 8
  %55 = trunc i32 %call21.8 to i8
  %56 = lshr i8 %55, 2
  %57 = and i8 %56, 1
  %58 = ptrtoint ptr %arrayidx24.8 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %arrayidx24.8, align 1
  %59 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %i2c4.i, align 4
  %call21.9 = call i32 @max8997_read_reg(ptr noundef %60, i8 noundef zeroext 121, ptr noundef nonnull %val) #5
  %arrayidx24.9 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 9
  %61 = trunc i32 %call21.9 to i8
  %62 = lshr i8 %61, 2
  %63 = and i8 %62, 1
  %64 = ptrtoint ptr %arrayidx24.9 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 %63, ptr %arrayidx24.9, align 1
  %65 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %i2c4.i, align 4
  %call21.10 = call i32 @max8997_read_reg(ptr noundef %66, i8 noundef zeroext 122, ptr noundef nonnull %val) #5
  %arrayidx24.10 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 10
  %67 = trunc i32 %call21.10 to i8
  %68 = lshr i8 %67, 2
  %69 = and i8 %68, 1
  %70 = ptrtoint ptr %arrayidx24.10 to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %arrayidx24.10, align 1
  %71 = ptrtoint ptr %i2c4.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %i2c4.i, align 4
  %call21.11 = call i32 @max8997_read_reg(ptr noundef %72, i8 noundef zeroext 123, ptr noundef nonnull %val) #5
  %arrayidx24.11 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 16, i32 11
  %73 = trunc i32 %call21.11 to i8
  %74 = lshr i8 %73, 2
  %75 = and i8 %74, 1
  %76 = ptrtoint ptr %arrayidx24.11 to i32
  call void @__asan_store1_noabort(i32 %76)
  store i8 %75, ptr %arrayidx24.11, align 1
  %call1.i = call ptr @__irq_domain_add(ptr noundef null, i32 noundef 35, i32 noundef 35, i32 noundef 0, ptr noundef nonnull @max8997_irq_domain_ops, ptr noundef %max8997) #5
  %tobool29.not = icmp eq ptr %call1.i, null
  br i1 %tobool29.not, label %do.end33, label %if.end35

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.body1
  %i.0102 = phi i32 [ 0, %do.body1 ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 13, i32 %i.0102
  %77 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 255, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr %struct.max8997_dev, ptr %max8997, i32 0, i32 14, i32 %i.0102
  %78 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 255, ptr %arrayidx4, align 4
  %79 = zext i32 %i.0102 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %i.0102, label %for.body.cleanup_crit_edge [
    i32 0, label %for.body.get_i2c.exit_crit_edge
    i32 1, label %for.body.get_i2c.exit_crit_edge106
    i32 2, label %for.body.get_i2c.exit_crit_edge107
    i32 3, label %for.body.get_i2c.exit_crit_edge108
    i32 10, label %for.body.get_i2c.exit_crit_edge109
    i32 5, label %for.body.sw.bb2.i_crit_edge
    i32 6, label %for.body.sw.bb2.i_crit_edge110
    i32 7, label %for.body.sw.bb2.i_crit_edge111
    i32 8, label %for.body.get_i2c.exit_crit_edge112
    i32 9, label %for.body.get_i2c.exit_crit_edge113
  ]

for.body.get_i2c.exit_crit_edge113:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.get_i2c.exit_crit_edge112:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.sw.bb2.i_crit_edge111:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge110:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

for.body.get_i2c.exit_crit_edge109:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.get_i2c.exit_crit_edge108:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.get_i2c.exit_crit_edge107:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.get_i2c.exit_crit_edge106:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.get_i2c.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb2.i:                                         ; preds = %for.body.sw.bb2.i_crit_edge, %for.body.sw.bb2.i_crit_edge110, %for.body.sw.bb2.i_crit_edge111
  br label %get_i2c.exit

get_i2c.exit:                                     ; preds = %sw.bb2.i, %for.body.get_i2c.exit_crit_edge, %for.body.get_i2c.exit_crit_edge106, %for.body.get_i2c.exit_crit_edge107, %for.body.get_i2c.exit_crit_edge108, %for.body.get_i2c.exit_crit_edge109, %for.body.get_i2c.exit_crit_edge112, %for.body.get_i2c.exit_crit_edge113
  %retval.0.i.in = phi ptr [ %muic.i, %sw.bb2.i ], [ %i2c4.i, %for.body.get_i2c.exit_crit_edge ], [ %i2c4.i, %for.body.get_i2c.exit_crit_edge106 ], [ %i2c4.i, %for.body.get_i2c.exit_crit_edge107 ], [ %i2c4.i, %for.body.get_i2c.exit_crit_edge108 ], [ %i2c4.i, %for.body.get_i2c.exit_crit_edge109 ], [ %i2c4.i, %for.body.get_i2c.exit_crit_edge112 ], [ %i2c4.i, %for.body.get_i2c.exit_crit_edge113 ]
  %80 = ptrtoint ptr %retval.0.i.in to i32
  call void @__asan_load4_noabort(i32 %80)
  %retval.0.i = load ptr, ptr %retval.0.i.in, align 4
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %get_i2c.exit.cleanup_crit_edge, label %if.end7

get_i2c.exit.cleanup_crit_edge:                   ; preds = %get_i2c.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %get_i2c.exit
  %81 = lshr i32 1808, %i.0102
  %82 = and i32 %81, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %82)
  %cmp9.not = icmp eq i32 %82, 0
  br i1 %cmp9.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx8 = getelementptr [11 x i8], ptr @max8997_mask_reg, i32 0, i32 %i.0102
  %83 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %arrayidx8, align 1
  %call14 = tail call i32 @max8997_write_reg(ptr noundef nonnull %retval.0.i, i8 noundef zeroext %84, i8 noundef zeroext -1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge, %get_i2c.exit.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.cond15.preheader, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.end33:                                         ; preds = %for.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %85 = ptrtoint ptr %max8997 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %max8997, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.7) #8
  br label %cleanup59

if.end35:                                         ; preds = %for.cond15.preheader
  %irq_domain = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 11
  %87 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call1.i, ptr %irq_domain, align 4
  %88 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq, align 4
  %call37 = call i32 @request_threaded_irq(i32 noundef %89, ptr noundef null, ptr noundef nonnull @max8997_irq_thread, i32 noundef 8194, ptr noundef nonnull @.str.10, ptr noundef %max8997) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end45, label %do.end42

do.end42:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  %90 = ptrtoint ptr %max8997 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %max8997, align 4
  %92 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %irq, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %91, ptr noundef nonnull @.str.12, i32 noundef %93, i32 noundef %call37) #8
  br label %cleanup59

if.end45:                                         ; preds = %if.end35
  %ono = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 10
  %94 = ptrtoint ptr %ono to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %ono, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool46.not = icmp eq i32 %95, 0
  br i1 %tobool46.not, label %if.end45.cleanup59_crit_edge, label %if.end48

if.end45.cleanup59_crit_edge:                     ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

if.end48:                                         ; preds = %if.end45
  %call50 = call i32 @request_threaded_irq(i32 noundef %95, ptr noundef null, ptr noundef nonnull @max8997_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.14, ptr noundef %max8997) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end48.cleanup59_crit_edge, label %do.end55

if.end48.cleanup59_crit_edge:                     ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup59

do.end55:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %max8997 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %max8997, align 4
  %98 = ptrtoint ptr %ono to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %ono, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.16, i32 noundef %99, i32 noundef %call50) #8
  br label %cleanup59

cleanup59:                                        ; preds = %do.end55, %if.end48.cleanup59_crit_edge, %if.end45.cleanup59_crit_edge, %do.end42, %do.end33, %do.end
  %retval.0 = phi i32 [ %call37, %do.end42 ], [ -19, %do.end33 ], [ 0, %do.end ], [ 0, %if.end45.cleanup59_crit_edge ], [ 0, %do.end55 ], [ 0, %if.end48.cleanup59_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_read_reg(ptr noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @max8997_irq_exit(ptr noundef %max8997) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ono = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 10
  %0 = ptrtoint ptr %ono to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ono, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %max8997) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.max8997_dev, ptr %max8997, i32 0, i32 9
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call5 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %max8997) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8997_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8997_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @max8997_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 32768) #5
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max8997_irq_mask(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %arrayidx.i = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %group = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %3, i32 1
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %group, align 4
  %arrayidx = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %or = or i32 %9, %5
  store i32 %or, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max8997_irq_unmask(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %arrayidx.i = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %neg = xor i32 %5, -1
  %group = getelementptr [35 x %struct.max8997_irq_data], ptr @max8997_irqs, i32 0, i32 %3, i32 1
  %6 = ptrtoint ptr %group to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %group, align 4
  %arrayidx = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 %7
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irqlock = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 12
  tail call void @mutex_lock_nested(ptr noundef %irqlock, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8997_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %i2c6.i = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 2
  %muic.i = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.026 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [11 x i8], ptr @max8997_mask_reg, i32 0, i32 %i.026
  %2 = zext i32 %i.026 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %i.026, label %sw.default.i [
    i32 0, label %for.body.sw.bb.i_crit_edge
    i32 1, label %for.body.sw.bb.i_crit_edge28
    i32 2, label %for.body.sw.bb.i_crit_edge29
    i32 3, label %for.body.sw.bb.i_crit_edge30
    i32 4, label %for.body.get_i2c.exit_crit_edge
    i32 5, label %for.body.sw.bb2.i_crit_edge
    i32 6, label %for.body.sw.bb2.i_crit_edge31
    i32 7, label %for.body.sw.bb2.i_crit_edge32
    i32 8, label %for.body.sw.bb3.i_crit_edge
    i32 9, label %for.body.sw.bb3.i_crit_edge33
    i32 10, label %sw.bb5.i
  ]

for.body.sw.bb3.i_crit_edge33:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

for.body.sw.bb3.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb3.i

for.body.sw.bb2.i_crit_edge32:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge31:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

for.body.sw.bb2.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb2.i

for.body.get_i2c.exit_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

for.body.sw.bb.i_crit_edge30:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge29:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge28:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

for.body.sw.bb.i_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb.i

sw.bb.i:                                          ; preds = %for.body.sw.bb.i_crit_edge, %for.body.sw.bb.i_crit_edge28, %for.body.sw.bb.i_crit_edge29, %for.body.sw.bb.i_crit_edge30
  %3 = ptrtoint ptr %i2c6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %i2c6.i, align 4
  br label %get_i2c.exit

sw.bb2.i:                                         ; preds = %for.body.sw.bb2.i_crit_edge, %for.body.sw.bb2.i_crit_edge31, %for.body.sw.bb2.i_crit_edge32
  %5 = ptrtoint ptr %muic.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %muic.i, align 4
  br label %get_i2c.exit

sw.bb3.i:                                         ; preds = %for.body.sw.bb3.i_crit_edge, %for.body.sw.bb3.i_crit_edge33
  %7 = ptrtoint ptr %i2c6.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c6.i, align 4
  br label %get_i2c.exit

sw.bb5.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %i2c6.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %i2c6.i, align 4
  br label %get_i2c.exit

sw.default.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %get_i2c.exit

get_i2c.exit:                                     ; preds = %sw.default.i, %sw.bb5.i, %sw.bb3.i, %sw.bb2.i, %sw.bb.i, %for.body.get_i2c.exit_crit_edge
  %retval.0.i = phi ptr [ inttoptr (i32 -22 to ptr), %sw.default.i ], [ %10, %sw.bb5.i ], [ %8, %sw.bb3.i ], [ %6, %sw.bb2.i ], [ %4, %sw.bb.i ], [ null, %for.body.get_i2c.exit_crit_edge ]
  %11 = lshr i32 1808, %i.026
  %12 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2.not = icmp eq i32 %12, 0
  br i1 %cmp2.not, label %lor.lhs.false, label %get_i2c.exit.cleanup_crit_edge

get_i2c.exit.cleanup_crit_edge:                   ; preds = %get_i2c.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %get_i2c.exit
  %tobool.not.i = icmp eq ptr %retval.0.i, null
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i, %cmp.i
  br i1 %spec.select.i, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 13, i32 %i.026
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx6, align 4
  %arrayidx7 = getelementptr %struct.max8997_dev, ptr %1, i32 0, i32 14, i32 %i.026
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx7, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx, align 1
  %conv11 = trunc i32 %14 to i8
  %call12 = tail call i32 @max8997_write_reg(ptr noundef nonnull %retval.0.i, i8 noundef zeroext %17, i8 noundef zeroext %conv11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %get_i2c.exit.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.026, 1
  %exitcond.not = icmp eq i32 %inc, 11
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  %irqlock = getelementptr inbounds %struct.max8997_dev, ptr %1, i32 0, i32 12
  tail call void @mutex_unlock(ptr noundef %irqlock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max8997-irq.c", i32 300, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @max8997_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @max8997_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @max8997_irq_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max8997-irq.c", i32 304, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/max8997-irq.c", i32 333, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @max8997_irq_init._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @max8997_irq_init._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/max8997-irq.c", i32 340, i32 4}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/max8997-irq.c", i32 343, i32 3}
!20 = !{ptr @max8997_irq_init._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @max8997_irq_init._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/max8997-irq.c", i32 353, i32 18}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/max8997-irq.c", i32 356, i32 3}
!26 = !{ptr @max8997_irq_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @max8997_irq_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/mfd/max8997-irq.c", i32 175, i32 3}
!30 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @max8997_irq_thread._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @max8997_irq_thread._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @max8997_irqs, !34, !"max8997_irqs", i1 false, i1 false}
!34 = !{!"../drivers/mfd/max8997-irq.c", i32 56, i32 38}
!35 = !{ptr @max8997_mask_reg, !36, !"max8997_mask_reg", i1 false, i1 false}
!36 = !{!"../drivers/mfd/max8997-irq.c", i32 16, i32 17}
!37 = !{ptr @max8997_irq_domain_ops, !38, !"max8997_irq_domain_ops", i1 false, i1 false}
!38 = !{!"../drivers/mfd/max8997-irq.c", i32 288, i32 36}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/max8997-irq.c", i32 153, i32 12}
!41 = !{ptr @max8997_irq_chip, !42, !"max8997_irq_chip", i1 false, i1 false}
!42 = !{!"../drivers/mfd/max8997-irq.c", i32 152, i32 24}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{!"auto-init"}
!53 = !{i8 0, i8 2}
