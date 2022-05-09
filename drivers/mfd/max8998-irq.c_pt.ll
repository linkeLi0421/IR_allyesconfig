; ModuleID = '/llk/IR_all_yes/drivers/mfd/max8998-irq.c_pt.bc'
source_filename = "../drivers/mfd/max8998-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.max8998_irq_data = type { i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.max8998_dev = type { ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, i32, ptr, i32, i32, [4 x i8], [4 x i8], i32, i8 }
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

@max8998_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No interrupt specified, no interrupts\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max8998_irq_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/max8998-irq.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max8998_irq_init._entry_ptr = internal global ptr @max8998_irq_init._entry, section ".printk_index", align 4
@max8998_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&max8998->irqlock\00", [46 x i8] zeroinitializer }, align 32
@max8998_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @max8998_irq_domain_map, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@max8998_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 236, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"could not create irq domain\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@max8998_irq_init._entry_ptr.9 = internal global ptr @max8998_irq_init._entry.6, section ".printk_index", align 4
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8998-irq\00", [20 x i8] zeroinitializer }, align 32
@max8998_irq_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 246, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@max8998_irq_init._entry_ptr.13 = internal global ptr @max8998_irq_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"max8998-ono\00", [20 x i8] zeroinitializer }, align 32
@max8998_irq_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 258, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@max8998_irq_init._entry_ptr.16 = internal global ptr @max8998_irq_init._entry.15, section ".printk_index", align 4
@max8998_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 162, ptr @.str.8, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Failed to read interrupt register: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"max8998_irq_thread\00", [45 x i8] zeroinitializer }, align 32
@max8998_irq_thread._entry_ptr = internal global ptr @max8998_irq_thread._entry, section ".printk_index", align 4
@max8998_irqs = internal constant { [18 x %struct.max8998_irq_data], [48 x i8] } { [18 x %struct.max8998_irq_data] [%struct.max8998_irq_data { i32 1, i32 4 }, %struct.max8998_irq_data { i32 1, i32 8 }, %struct.max8998_irq_data { i32 1, i32 16 }, %struct.max8998_irq_data { i32 1, i32 32 }, %struct.max8998_irq_data { i32 1, i32 64 }, %struct.max8998_irq_data { i32 1, i32 128 }, %struct.max8998_irq_data { i32 2, i32 1 }, %struct.max8998_irq_data { i32 2, i32 2 }, %struct.max8998_irq_data { i32 2, i32 4 }, %struct.max8998_irq_data { i32 2, i32 8 }, %struct.max8998_irq_data { i32 3, i32 1 }, %struct.max8998_irq_data { i32 3, i32 4 }, %struct.max8998_irq_data { i32 3, i32 8 }, %struct.max8998_irq_data { i32 3, i32 16 }, %struct.max8998_irq_data { i32 3, i32 32 }, %struct.max8998_irq_data { i32 3, i32 128 }, %struct.max8998_irq_data { i32 4, i32 1 }, %struct.max8998_irq_data { i32 4, i32 2 }], [48 x i8] zeroinitializer }, align 32
@max8998_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.19, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_irq_mask, ptr null, ptr @max8998_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @max8998_irq_lock, ptr @max8998_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"max8998\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 216, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 221, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [23 x i8] c"max8998_irq_domain_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 205, i32 36 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 236, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 243, i32 8 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 245, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 255, i32 22 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 257, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 161, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"max8998_irqs\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 19, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"max8998_irq_chip\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 143, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [29 x i8] c"../drivers/mfd/max8998-irq.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 144, i32 10 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @max8998_irq_init._entry, ptr @max8998_irq_init._entry.11, ptr @max8998_irq_init._entry.15, ptr @max8998_irq_init._entry.6, ptr @max8998_irq_init._entry_ptr, ptr @max8998_irq_init._entry_ptr.13, ptr @max8998_irq_init._entry_ptr.16, ptr @max8998_irq_init._entry_ptr.9, ptr @max8998_irq_thread._entry, ptr @max8998_irq_thread._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @max8998_irq_init.__key, ptr @.str.5, ptr @max8998_irq_domain_ops, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @max8998_irqs, ptr @max8998_irq_chip, ptr @.str.19], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irqs to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max8998_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8998_irq_resume(ptr nocapture noundef readonly %max8998) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 8
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
  %irq_domain = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 7
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
  %call = tail call i32 @max8998_irq_thread(i32 noundef %1, ptr noundef %max8998)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_irq_thread(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  %irq_reg = alloca [4 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq_reg) #5
  %i2c = getelementptr inbounds %struct.max8998_dev, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %irq_reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %irq_reg, align 4
  %1 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %i2c, align 4
  %call = call i32 @max8998_bulk_read(ptr noundef %2, i8 noundef zeroext 0, i32 noundef 4, ptr noundef nonnull %irq_reg) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %3 = getelementptr inbounds [4 x i8], ptr %irq_reg, i32 0, i32 3
  %4 = getelementptr inbounds [4 x i8], ptr %irq_reg, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i8], ptr %irq_reg, i32 0, i32 1
  %arrayidx = getelementptr %struct.max8998_dev, ptr %data, i32 0, i32 10, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %neg = xor i8 %7, -1
  %8 = ptrtoint ptr %irq_reg to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq_reg, align 4
  %and = and i8 %9, %neg
  store i8 %and, ptr %irq_reg, align 4
  %arrayidx.1 = getelementptr %struct.max8998_dev, ptr %data, i32 0, i32 10, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx.1, align 1
  %neg.1 = xor i8 %11, -1
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %5, align 1
  %and.1 = and i8 %13, %neg.1
  store i8 %and.1, ptr %5, align 1
  %arrayidx.2 = getelementptr %struct.max8998_dev, ptr %data, i32 0, i32 10, i32 2
  %14 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx.2, align 1
  %neg.2 = xor i8 %15, -1
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %4, align 2
  %and.2 = and i8 %17, %neg.2
  store i8 %and.2, ptr %4, align 2
  %arrayidx.3 = getelementptr %struct.max8998_dev, ptr %data, i32 0, i32 10, i32 3
  %18 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx.3, align 1
  %neg.3 = xor i8 %19, -1
  %20 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %3, align 1
  %and.3 = and i8 %21, %neg.3
  store i8 %and.3, ptr %3, align 1
  %irq_domain = getelementptr inbounds %struct.max8998_dev, ptr %data, i32 0, i32 7
  br label %for.body8

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef %call) #8
  br label %cleanup

for.body8:                                        ; preds = %for.inc47.for.body8_crit_edge, %for.body.preheader
  %i.171 = phi i32 [ 0, %for.body.preheader ], [ %inc48, %for.inc47.for.body8_crit_edge ]
  %arrayidx9 = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %i.171
  %24 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx9, align 4
  %sub = add i32 %25, -1
  %arrayidx10 = getelementptr [4 x i8], ptr %irq_reg, i32 0, i32 %sub
  %26 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx10, align 1
  %conv11 = zext i8 %27 to i32
  %mask = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %i.171, i32 1
  %28 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask, align 4
  %and13 = and i32 %29, %conv11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool.not = icmp eq i32 %and13, 0
  br i1 %tobool.not, label %for.body8.for.inc47_crit_edge, label %if.then14

for.body8.for.inc47_crit_edge:                    ; preds = %for.body8
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc47

if.then14:                                        ; preds = %for.body8
  %30 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %32 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -1, ptr %irq.i, align 4, !annotation !49
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %31, i32 noundef %i.171, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %irq_find_mapping.exit.thread, label %irq_find_mapping.exit

irq_find_mapping.exit.thread:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  br label %do.end29

irq_find_mapping.exit:                            ; preds = %if.then14
  %33 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool16.not = icmp eq i32 %34, 0
  br i1 %tobool16.not, label %irq_find_mapping.exit.do.end29_crit_edge, label %if.end45, !prof !50

irq_find_mapping.exit.do.end29_crit_edge:         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end29

do.end29:                                         ; preds = %irq_find_mapping.exit.do.end29_crit_edge, %irq_find_mapping.exit.thread
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 174, i32 noundef 9, ptr noundef null) #5
  %irq44 = getelementptr inbounds %struct.max8998_dev, ptr %data, i32 0, i32 8
  %35 = ptrtoint ptr %irq44 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq44, align 4
  call void @disable_irq_nosync(i32 noundef %36) #5
  br label %cleanup

if.end45:                                         ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  call void @handle_nested_irq(i32 noundef %34) #5
  br label %for.inc47

for.inc47:                                        ; preds = %if.end45, %for.body8.for.inc47_crit_edge
  %inc48 = add nuw nsw i32 %i.171, 1
  %exitcond.not = icmp eq i32 %inc48, 18
  br i1 %exitcond.not, label %for.inc47.cleanup_crit_edge, label %for.inc47.for.body8_crit_edge

for.inc47.for.body8_crit_edge:                    ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body8

for.inc47.cleanup_crit_edge:                      ; preds = %for.inc47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc47.cleanup_crit_edge, %do.end29, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end29 ], [ 1, %for.inc47.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq_reg) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @max8998_irq_init(ptr noundef %max8998) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 8
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %max8998 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %max8998, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str) #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %irqlock = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %irqlock, ptr noundef nonnull @.str.5, ptr noundef nonnull @max8998_irq_init.__key) #5
  %i2c = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 2
  %arrayidx = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 10, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %arrayidx, align 1
  %arrayidx4 = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 11, i32 0
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 -1, ptr %arrayidx4, align 1
  %6 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2c, align 4
  %call = tail call i32 @max8998_write_reg(ptr noundef %7, i8 noundef zeroext 4, i8 noundef zeroext -1) #5
  %arrayidx.1 = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 10, i32 1
  %8 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 -1, ptr %arrayidx.1, align 1
  %arrayidx4.1 = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 11, i32 1
  %9 = ptrtoint ptr %arrayidx4.1 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 -1, ptr %arrayidx4.1, align 1
  %10 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %i2c, align 4
  %call.1 = tail call i32 @max8998_write_reg(ptr noundef %11, i8 noundef zeroext 5, i8 noundef zeroext -1) #5
  %arrayidx.2 = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 10, i32 2
  %12 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -1, ptr %arrayidx.2, align 1
  %arrayidx4.2 = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 11, i32 2
  %13 = ptrtoint ptr %arrayidx4.2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %arrayidx4.2, align 1
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %call.2 = tail call i32 @max8998_write_reg(ptr noundef %15, i8 noundef zeroext 6, i8 noundef zeroext -1) #5
  %arrayidx.3 = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 10, i32 3
  %16 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 -1, ptr %arrayidx.3, align 1
  %arrayidx4.3 = getelementptr %struct.max8998_dev, ptr %max8998, i32 0, i32 11, i32 3
  %17 = ptrtoint ptr %arrayidx4.3 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 -1, ptr %arrayidx4.3, align 1
  %18 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %i2c, align 4
  %call.3 = tail call i32 @max8998_write_reg(ptr noundef %19, i8 noundef zeroext 7, i8 noundef zeroext -1) #5
  %20 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %i2c, align 4
  %call6 = tail call i32 @max8998_write_reg(ptr noundef %21, i8 noundef zeroext 10, i8 noundef zeroext -1) #5
  %22 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %i2c, align 4
  %call8 = tail call i32 @max8998_write_reg(ptr noundef %23, i8 noundef zeroext 11, i8 noundef zeroext -1) #5
  %irq_base = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 6
  %24 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %irq_base, align 4
  %call1.i = tail call ptr @irq_domain_create_simple(ptr noundef null, i32 noundef 18, i32 noundef %25, ptr noundef nonnull @max8998_irq_domain_ops, ptr noundef %max8998) #5
  %tobool10.not = icmp eq ptr %call1.i, null
  br i1 %tobool10.not, label %do.end14, label %if.end16

do.end14:                                         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #7
  %26 = ptrtoint ptr %max8998 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %max8998, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end16:                                         ; preds = %do.body1
  %irq_domain = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 7
  %28 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call1.i, ptr %irq_domain, align 4
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call18 = tail call i32 @request_threaded_irq(i32 noundef %30, ptr noundef null, ptr noundef nonnull @max8998_irq_thread, i32 noundef 8194, ptr noundef nonnull @.str.10, ptr noundef %max8998) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end26, label %do.end23

do.end23:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %max8998 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %max8998, align 4
  %33 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %32, ptr noundef nonnull @.str.12, i32 noundef %34, i32 noundef %call18) #8
  br label %cleanup

if.end26:                                         ; preds = %if.end16
  %ono = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 9
  %35 = ptrtoint ptr %ono to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ono, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool27.not = icmp eq i32 %36, 0
  br i1 %tobool27.not, label %if.end26.cleanup_crit_edge, label %if.end29

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end29:                                         ; preds = %if.end26
  %call31 = tail call i32 @request_threaded_irq(i32 noundef %36, ptr noundef null, ptr noundef nonnull @max8998_irq_thread, i32 noundef 8195, ptr noundef nonnull @.str.14, ptr noundef %max8998) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end29.cleanup_crit_edge, label %do.end36

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  %37 = ptrtoint ptr %max8998 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %max8998, align 4
  %39 = ptrtoint ptr %ono to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ono, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.12, i32 noundef %40, i32 noundef %call31) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end36, %if.end29.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.end23, %do.end14, %do.end
  %retval.0 = phi i32 [ %call18, %do.end23 ], [ -19, %do.end14 ], [ 0, %do.end ], [ 0, %if.end26.cleanup_crit_edge ], [ 0, %do.end36 ], [ 0, %if.end29.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_write_reg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @max8998_irq_exit(ptr noundef %max8998) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ono = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 9
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
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %max8998) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %irq = getelementptr inbounds %struct.max8998_dev, ptr %max8998, i32 0, i32 8
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
  %call5 = tail call ptr @free_irq(i32 noundef %3, ptr noundef %max8998) #5
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @max8998_bulk_read(ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max8998_irq_domain_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @max8998_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #5
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
define internal void @max8998_irq_mask(ptr nocapture noundef readonly %data) #4 align 64 {
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
  %arrayidx.i = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %3
  %mask = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = trunc i32 %5 to i8
  %conv2 = or i8 %9, %10
  store i8 %conv2, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @max8998_irq_unmask(ptr nocapture noundef readonly %data) #4 align 64 {
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
  %arrayidx.i = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %3
  %mask = getelementptr [18 x %struct.max8998_irq_data], ptr @max8998_irqs, i32 0, i32 %3, i32 1
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx, align 1
  %10 = trunc i32 %5 to i8
  %11 = xor i8 %10, -1
  %conv2 = and i8 %9, %11
  store i8 %conv2, ptr %arrayidx, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8998_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irqlock = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %irqlock, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @max8998_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %i2c = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 2
  %arrayidx = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 0
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  %arrayidx1 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 11, i32 0
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp3.not = icmp eq i8 %3, %5
  br i1 %cmp3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %3, ptr %arrayidx1, align 1
  %7 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %i2c, align 4
  %call12 = tail call i32 @max8998_write_reg(ptr noundef %8, i8 noundef zeroext 4, i8 noundef zeroext %3) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.1, align 1
  %arrayidx1.1 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 11, i32 1
  %11 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx1.1, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp3.not.1 = icmp eq i8 %10, %12
  br i1 %cmp3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %10, ptr %arrayidx1.1, align 1
  %14 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %i2c, align 4
  %call12.1 = tail call i32 @max8998_write_reg(ptr noundef %15, i8 noundef zeroext 5, i8 noundef zeroext %10) #5
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 2
  %16 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.2, align 1
  %arrayidx1.2 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 11, i32 2
  %18 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %arrayidx1.2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %17, i8 %19)
  %cmp3.not.2 = icmp eq i8 %17, %19
  br i1 %cmp3.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %arrayidx1.2 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %arrayidx1.2, align 1
  %21 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %i2c, align 4
  %call12.2 = tail call i32 @max8998_write_reg(ptr noundef %22, i8 noundef zeroext 6, i8 noundef zeroext %17) #5
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 10, i32 3
  %23 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.3, align 1
  %arrayidx1.3 = getelementptr %struct.max8998_dev, ptr %1, i32 0, i32 11, i32 3
  %25 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx1.3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %24, i8 %26)
  %cmp3.not.3 = icmp eq i8 %24, %26
  br i1 %cmp3.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %arrayidx1.3 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %24, ptr %arrayidx1.3, align 1
  %28 = ptrtoint ptr %i2c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %i2c, align 4
  %call12.3 = tail call i32 @max8998_write_reg(ptr noundef %29, i8 noundef zeroext 7, i8 noundef zeroext %24) #5
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %irqlock = getelementptr inbounds %struct.max8998_dev, ptr %1, i32 0, i32 5
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

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !29, !30, !31, !32, !34, !36, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/max8998-irq.c", i32 216, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @max8998_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @max8998_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @max8998_irq_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mfd/max8998-irq.c", i32 221, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/max8998-irq.c", i32 236, i32 3}
!13 = !{ptr @.str.8, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @max8998_irq_init._entry.6, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @max8998_irq_init._entry_ptr.9, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/max8998-irq.c", i32 243, i32 8}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mfd/max8998-irq.c", i32 245, i32 3}
!20 = !{ptr @max8998_irq_init._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @max8998_irq_init._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/mfd/max8998-irq.c", i32 255, i32 22}
!24 = !{ptr @max8998_irq_init._entry.15, !25, !"_entry", i1 false, i1 false}
!25 = !{!"../drivers/mfd/max8998-irq.c", i32 257, i32 3}
!26 = !{ptr @max8998_irq_init._entry_ptr.16, !25, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.17, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/max8998-irq.c", i32 161, i32 3}
!29 = !{ptr @.str.18, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @max8998_irq_thread._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @max8998_irq_thread._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @max8998_irqs, !33, !"max8998_irqs", i1 false, i1 false}
!33 = !{!"../drivers/mfd/max8998-irq.c", i32 19, i32 32}
!34 = !{ptr @max8998_irq_domain_ops, !35, !"max8998_irq_domain_ops", i1 false, i1 false}
!35 = !{!"../drivers/mfd/max8998-irq.c", i32 205, i32 36}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/max8998-irq.c", i32 144, i32 10}
!38 = !{ptr @max8998_irq_chip, !39, !"max8998_irq_chip", i1 false, i1 false}
!39 = !{!"../drivers/mfd/max8998-irq.c", i32 143, i32 24}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{!"auto-init"}
!50 = !{!"branch_weights", i32 1, i32 2000}
