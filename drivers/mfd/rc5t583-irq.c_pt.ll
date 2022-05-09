; ModuleID = '/llk/IR_all_yes/drivers/mfd/rc5t583-irq.c_pt.bc'
source_filename = "../drivers/mfd/rc5t583-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.rc5t583_irq_data = type { i8, i8, i8, i8, i32 }
%struct.rc5t583 = type { ptr, ptr, i32, i32, %struct.mutex, [5 x i32], i8, [8 x i8], [2 x i8] }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@rc5t583_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 328, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"No interrupt support on IRQ base\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"rc5t583_irq_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/mfd/rc5t583-irq.c\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry_ptr = internal global ptr @rc5t583_irq_init._entry, section ".printk_index", align 4
@rc5t583_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&rc5t583->irq_lock\00", [45 x i8] zeroinitializer }, align 32
@irq_en_add = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 25, i32 29, i32 65, i32 237, i32 144, i32 145, i32 146, i32 168], [32 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error in writing reg 0x%02x error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry_ptr.8 = internal global ptr @rc5t583_irq_init._entry.6, section ".printk_index", align 4
@rc5t583_irq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 350, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry_ptr.10 = internal global ptr @rc5t583_irq_init._entry.9, section ".printk_index", align 4
@rc5t583_irq_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 357, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry_ptr.12 = internal global ptr @rc5t583_irq_init._entry.11, section ".printk_index", align 4
@irq_clr_add = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 26, i32 30, i32 66, i32 238, i32 148, i32 149, i32 150, i32 170, i32 169], [60 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 365, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry_ptr.14 = internal global ptr @rc5t583_irq_init._entry.13, section ".printk_index", align 4
@rc5t583_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rc5t583_irq_mask, ptr null, ptr @rc5t583_irq_unmask, ptr null, ptr null, ptr null, ptr @rc5t583_irq_set_type, ptr @rc5t583_irq_set_wake, ptr @rc5t583_irq_lock, ptr @rc5t583_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rc5t583\00", [24 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.1, ptr @.str.2, i32 384, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error in registering interrupt error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@rc5t583_irq_init._entry_ptr.19 = internal global ptr @rc5t583_irq_init._entry.16, section ".printk_index", align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc5t583-irq\00", [20 x i8] zeroinitializer }, align 32
@rc5t583_irqs = internal constant { [39 x %struct.rc5t583_irq_data], [72 x i8] } { [39 x %struct.rc5t583_irq_data] [%struct.rc5t583_irq_data { i8 1, i8 0, i8 0, i8 0, i32 0 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 1, i8 0, i32 1 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 2, i8 0, i32 2 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 3, i8 0, i32 3 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 4, i8 0, i32 4 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 5, i8 0, i32 5 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 7, i8 0, i32 7 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 0, i8 1, i32 8 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 1, i8 1, i32 9 }, %struct.rc5t583_irq_data { i8 1, i8 0, i8 2, i8 1, i32 10 }, %struct.rc5t583_irq_data { i8 2, i8 1, i8 0, i8 2, i32 0 }, %struct.rc5t583_irq_data { i8 2, i8 1, i8 1, i8 2, i32 1 }, %struct.rc5t583_irq_data { i8 2, i8 1, i8 2, i8 2, i32 2 }, %struct.rc5t583_irq_data { i8 2, i8 1, i8 3, i8 2, i32 3 }, %struct.rc5t583_irq_data { i8 4, i8 2, i8 0, i8 3, i32 0 }, %struct.rc5t583_irq_data { i8 4, i8 2, i8 5, i8 3, i32 5 }, %struct.rc5t583_irq_data { i8 4, i8 2, i8 6, i8 3, i32 6 }, %struct.rc5t583_irq_data { i8 4, i8 2, i8 7, i8 3, i32 7 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 0, i8 4, i32 0 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 1, i8 4, i32 1 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 2, i8 4, i32 2 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 3, i8 4, i32 3 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 4, i8 4, i32 4 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 5, i8 4, i32 5 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 0, i8 5, i32 6 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 1, i8 5, i32 7 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 2, i8 5, i32 8 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 3, i8 5, i32 9 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 4, i8 5, i32 10 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 5, i8 5, i32 11 }, %struct.rc5t583_irq_data { i8 8, i8 3, i8 0, i8 6, i32 12 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 0, i8 7, i32 0 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 1, i8 7, i32 1 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 2, i8 7, i32 2 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 3, i8 7, i32 3 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 4, i8 7, i32 4 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 5, i8 7, i32 5 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 6, i8 7, i32 6 }, %struct.rc5t583_irq_data { i8 16, i8 4, i8 7, i8 7, i32 7 }], [72 x i8] zeroinitializer }, align 32
@rc5t583_irq_sync_unlock._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.21, ptr @.str.2, i32 210, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rc5t583_irq_sync_unlock\00", [40 x i8] zeroinitializer }, align 32
@rc5t583_irq_sync_unlock._entry_ptr = internal global ptr @rc5t583_irq_sync_unlock._entry, section ".printk_index", align 4
@rc5t583_irq_sync_unlock._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.21, ptr @.str.2, i32 219, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_irq_sync_unlock._entry_ptr.23 = internal global ptr @rc5t583_irq_sync_unlock._entry.22, section ".printk_index", align 4
@rc5t583_irq_sync_unlock._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.21, ptr @.str.2, i32 227, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_irq_sync_unlock._entry_ptr.25 = internal global ptr @rc5t583_irq_sync_unlock._entry.24, section ".printk_index", align 4
@rc5t583_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 258, ptr @.str.18, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Error in reading reg 0x%02x error: %d\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rc5t583_irq\00", [20 x i8] zeroinitializer }, align 32
@rc5t583_irq._entry_ptr = internal global ptr @rc5t583_irq._entry, section ".printk_index", align 4
@main_int_type = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 1, i32 1, i32 2, i32 4, i32 8, i32 8, i32 8, i32 16, i32 16], [60 x i8] zeroinitializer }, align 32
@irq_mon_add = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 27, i32 31, i32 67, i32 238, i32 148, i32 149, i32 150, i32 170, i32 169], [60 x i8] zeroinitializer }, align 32
@rc5t583_irq._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 270, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_irq._entry_ptr.29 = internal global ptr @rc5t583_irq._entry.28, section ".printk_index", align 4
@rc5t583_irq._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 292, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@rc5t583_irq._entry_ptr.31 = internal global ptr @rc5t583_irq._entry.30, section ".printk_index", align 4
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 328, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 332, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [11 x i8] c"irq_en_add\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 29, i32 12 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 339, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 348, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 355, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [12 x i8] c"irq_clr_add\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 52, i32 12 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 363, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"rc5t583_irq_chip\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 313, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 381, i32 20 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 383, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 314, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant [13 x i8] c"rc5t583_irqs\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 94, i32 38 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 208, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 217, i32 4 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 225, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 256, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant [14 x i8] c"main_int_type\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 64, i32 12 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"irq_mon_add\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 40, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 268, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.129 = private constant [29 x i8] c"../drivers/mfd/rc5t583-irq.c\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.129, i32 290, i32 4 }
@llvm.compiler.used = appending global [45 x ptr] [ptr @rc5t583_irq._entry, ptr @rc5t583_irq._entry.28, ptr @rc5t583_irq._entry.30, ptr @rc5t583_irq._entry_ptr, ptr @rc5t583_irq._entry_ptr.29, ptr @rc5t583_irq._entry_ptr.31, ptr @rc5t583_irq_init._entry, ptr @rc5t583_irq_init._entry.11, ptr @rc5t583_irq_init._entry.13, ptr @rc5t583_irq_init._entry.16, ptr @rc5t583_irq_init._entry.6, ptr @rc5t583_irq_init._entry.9, ptr @rc5t583_irq_init._entry_ptr, ptr @rc5t583_irq_init._entry_ptr.10, ptr @rc5t583_irq_init._entry_ptr.12, ptr @rc5t583_irq_init._entry_ptr.14, ptr @rc5t583_irq_init._entry_ptr.19, ptr @rc5t583_irq_init._entry_ptr.8, ptr @rc5t583_irq_sync_unlock._entry, ptr @rc5t583_irq_sync_unlock._entry.22, ptr @rc5t583_irq_sync_unlock._entry.24, ptr @rc5t583_irq_sync_unlock._entry_ptr, ptr @rc5t583_irq_sync_unlock._entry_ptr.23, ptr @rc5t583_irq_sync_unlock._entry_ptr.25, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @rc5t583_irq_init.__key, ptr @.str.5, ptr @irq_en_add, ptr @.str.7, ptr @irq_clr_add, ptr @rc5t583_irq_chip, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @rc5t583_irqs, ptr @.str.21, ptr @.str.26, ptr @.str.27, ptr @main_int_type, ptr @irq_mon_add], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_en_add to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_clr_add to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irqs to i32), i32 312, i32 384, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_sync_unlock._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_sync_unlock._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq_sync_unlock._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @main_int_type to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_mon_add to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rc5t583_irq._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @rc5t583_irq_init(ptr noundef %rc5t583, i32 noundef %irq, i32 noundef %irq_base) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_base)
  %tobool.not = icmp eq i32 %irq_base, 0
  br i1 %tobool.not, label %do.end, label %do.body1

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rc5t583, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %1, ptr noundef nonnull @.str) #8
  br label %cleanup

do.body1:                                         ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.rc5t583, ptr %rc5t583, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.5, ptr noundef nonnull @rc5t583_irq_init.__key) #5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.body1
  %i.0148 = phi i32 [ 0, %do.body1 ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rc5t583, align 4
  %arrayidx = getelementptr [8 x i32], ptr @irq_en_add, i32 0, i32 %i.0148
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %arrayidx5 = getelementptr %struct.rc5t583, ptr %rc5t583, i32 0, i32 7, i32 %i.0148
  %6 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx5, align 1
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rc5t583, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap.i, align 4
  %conv.i = and i32 %5, 255
  %conv1.i = zext i8 %7 to i32
  %call2.i = tail call i32 @regmap_write(ptr noundef %11, i32 noundef %conv.i, i32 noundef %conv1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp6 = icmp slt i32 %call2.i, 0
  br i1 %cmp6, label %do.end11, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end11:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rc5t583, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.7, i32 noundef %5, i32 noundef %call2.i) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end11, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0148, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.body18.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body18.preheader:                             ; preds = %for.inc
  %14 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %rc5t583, align 4
  %arrayidx22 = getelementptr %struct.rc5t583, ptr %rc5t583, i32 0, i32 8, i32 0
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx22, align 1
  %driver_data.i.i136 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 8
  %18 = ptrtoint ptr %driver_data.i.i136 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %driver_data.i.i136, align 4
  %regmap.i137 = getelementptr inbounds %struct.rc5t583, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %regmap.i137 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap.i137, align 4
  %conv1.i139 = zext i8 %17 to i32
  %call2.i140 = tail call i32 @regmap_write(ptr noundef %21, i32 noundef 167, i32 noundef %conv1.i139) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i140)
  %cmp24 = icmp slt i32 %call2.i140, 0
  br i1 %cmp24, label %do.end29, label %for.body18.preheader.for.inc33_crit_edge

for.body18.preheader.for.inc33_crit_edge:         ; preds = %for.body18.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33

do.end29:                                         ; preds = %for.body18.preheader
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %rc5t583, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.7, i32 noundef 167, i32 noundef %call2.i140) #8
  br label %for.inc33

for.inc33:                                        ; preds = %do.end29, %for.body18.preheader.for.inc33_crit_edge
  %24 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %rc5t583, align 4
  %arrayidx22.1 = getelementptr %struct.rc5t583, ptr %rc5t583, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx22.1 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx22.1, align 1
  %driver_data.i.i136.1 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i136.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i136.1, align 4
  %regmap.i137.1 = getelementptr inbounds %struct.rc5t583, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i137.1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i137.1, align 4
  %conv1.i139.1 = zext i8 %27 to i32
  %call2.i140.1 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 167, i32 noundef %conv1.i139.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i140.1)
  %cmp24.1 = icmp slt i32 %call2.i140.1, 0
  br i1 %cmp24.1, label %do.end29.1, label %for.inc33.for.inc33.1_crit_edge

for.inc33.for.inc33.1_crit_edge:                  ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc33.1

do.end29.1:                                       ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %rc5t583, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef 167, i32 noundef %call2.i140.1) #8
  br label %for.inc33.1

for.inc33.1:                                      ; preds = %do.end29.1, %for.inc33.for.inc33.1_crit_edge
  %34 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %rc5t583, align 4
  %driver_data.i.i141 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  %36 = ptrtoint ptr %driver_data.i.i141 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %driver_data.i.i141, align 4
  %regmap.i142 = getelementptr inbounds %struct.rc5t583, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %regmap.i142 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regmap.i142, align 4
  %call2.i143 = tail call i32 @regmap_write(ptr noundef %39, i32 noundef 174, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i143)
  %cmp38 = icmp slt i32 %call2.i143, 0
  br i1 %cmp38, label %do.end43, label %for.inc33.1.for.body49.preheader_crit_edge

for.inc33.1.for.body49.preheader_crit_edge:       ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body49.preheader

do.end43:                                         ; preds = %for.inc33.1
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %rc5t583, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.7, i32 noundef 174, i32 noundef %call2.i143) #8
  br label %for.body49.preheader

for.body49.preheader:                             ; preds = %do.end43, %for.inc33.1.for.body49.preheader_crit_edge
  br label %for.body49

for.body49:                                       ; preds = %for.inc63.for.body49_crit_edge, %for.body49.preheader
  %i.2150 = phi i32 [ %inc64, %for.inc63.for.body49_crit_edge ], [ 0, %for.body49.preheader ]
  %42 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %rc5t583, align 4
  %arrayidx51 = getelementptr [9 x i32], ptr @irq_clr_add, i32 0, i32 %i.2150
  %44 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx51, align 4
  %driver_data.i.i144 = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i144 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i144, align 4
  %regmap.i145 = getelementptr inbounds %struct.rc5t583, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %regmap.i145 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i145, align 4
  %conv.i146 = and i32 %45, 255
  %call2.i147 = tail call i32 @regmap_write(ptr noundef %49, i32 noundef %conv.i146, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i147)
  %cmp54 = icmp slt i32 %call2.i147, 0
  br i1 %cmp54, label %do.end59, label %for.body49.for.inc63_crit_edge

for.body49.for.inc63_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc63

do.end59:                                         ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %rc5t583, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.7, i32 noundef %45, i32 noundef %call2.i147) #8
  br label %for.inc63

for.inc63:                                        ; preds = %do.end59, %for.body49.for.inc63_crit_edge
  %inc64 = add nuw nsw i32 %i.2150, 1
  %exitcond152.not = icmp eq i32 %inc64, 9
  br i1 %exitcond152.not, label %for.end65, label %for.inc63.for.body49_crit_edge

for.inc63.for.body49_crit_edge:                   ; preds = %for.inc63
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body49

for.end65:                                        ; preds = %for.inc63
  %irq_base66 = getelementptr inbounds %struct.rc5t583, ptr %rc5t583, i32 0, i32 3
  %52 = ptrtoint ptr %irq_base66 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %irq_base, ptr %irq_base66, align 4
  %chip_irq = getelementptr inbounds %struct.rc5t583, ptr %rc5t583, i32 0, i32 2
  %53 = ptrtoint ptr %chip_irq to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %irq, ptr %chip_irq, align 4
  br label %for.body70

for.body70:                                       ; preds = %for.body70.for.body70_crit_edge, %for.end65
  %i.3151 = phi i32 [ 0, %for.end65 ], [ %inc74, %for.body70.for.body70_crit_edge ]
  %54 = ptrtoint ptr %irq_base66 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq_base66, align 4
  %add = add i32 %55, %i.3151
  %call72 = tail call i32 @irq_set_chip_data(i32 noundef %add, ptr noundef %rc5t583) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %add, ptr noundef nonnull @rc5t583_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %add, i32 noundef 0, i32 noundef 32768) #5
  tail call void @irq_modify_status(i32 noundef %add, i32 noundef 2048, i32 noundef 0) #5
  %inc74 = add nuw nsw i32 %i.3151, 1
  %exitcond153.not = icmp eq i32 %inc74, 39
  br i1 %exitcond153.not, label %for.end75, label %for.body70.for.body70_crit_edge

for.body70.for.body70_crit_edge:                  ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body70

for.end75:                                        ; preds = %for.body70
  %56 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %rc5t583, align 4
  %call77 = tail call i32 @devm_request_threaded_irq(ptr noundef %57, i32 noundef %irq, ptr noundef null, ptr noundef nonnull @rc5t583_irq, i32 noundef 8192, ptr noundef nonnull @.str.15, ptr noundef %rc5t583) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call77)
  %cmp78 = icmp slt i32 %call77, 0
  br i1 %cmp78, label %do.end83, label %for.end75.cleanup_crit_edge

for.end75.cleanup_crit_edge:                      ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end83:                                         ; preds = %for.end75
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %rc5t583 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %rc5t583, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %59, ptr noundef nonnull @.str.17, i32 noundef %call77) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end83, %for.end75.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call77, %do.end83 ], [ %call77, %for.end75.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %ival.i158 = alloca i32, align 4
  %ival.i = alloca i32, align 4
  %int_sts = alloca [9 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 9, ptr nonnull %int_sts) #5
  %0 = getelementptr inbounds [9 x i8], ptr %int_sts, i32 0, i32 7
  %1 = getelementptr inbounds [9 x i8], ptr %int_sts, i32 0, i32 8
  %2 = call ptr @memset(ptr %int_sts, i32 0, i32 9)
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ival.i) #5
  %7 = ptrtoint ptr %ival.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %ival.i, align 4, !annotation !77
  %regmap.i = getelementptr inbounds %struct.rc5t583, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %call1.i = call i32 @regmap_read(ptr noundef %9, i32 noundef 175, ptr noundef nonnull %ival.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %rc5t583_read.exit.thread, label %rc5t583_read.exit

rc5t583_read.exit.thread:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %ival.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ival.i, align 4
  %phi.cast = and i32 %11, 255
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i) #5
  br label %for.body5.preheader

rc5t583_read.exit:                                ; preds = %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp1 = icmp slt i32 %call1.i, 0
  br i1 %cmp1, label %do.end, label %rc5t583_read.exit.for.body5.preheader_crit_edge

rc5t583_read.exit.for.body5.preheader_crit_edge:  ; preds = %rc5t583_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5.preheader

for.body5.preheader:                              ; preds = %rc5t583_read.exit.for.body5.preheader_crit_edge, %rc5t583_read.exit.thread
  %master_int.0179 = phi i32 [ %phi.cast, %rc5t583_read.exit.thread ], [ 0, %rc5t583_read.exit.for.body5.preheader_crit_edge ]
  br label %for.body5

do.end:                                           ; preds = %rc5t583_read.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.26, i32 noundef 175, i32 noundef %call1.i) #8
  br label %cleanup

for.body5:                                        ; preds = %for.inc79.for.body5_crit_edge, %for.body5.preheader
  %rtc_int_sts.0173 = phi i32 [ %rtc_int_sts.5, %for.inc79.for.body5_crit_edge ], [ 0, %for.body5.preheader ]
  %i.1171 = phi i32 [ %inc80, %for.inc79.for.body5_crit_edge ], [ 0, %for.body5.preheader ]
  %arrayidx6 = getelementptr [9 x i32], ptr @main_int_type, i32 0, i32 %i.1171
  %14 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6, align 4
  %and = and i32 %15, %master_int.0179
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body5.for.inc79_crit_edge, label %if.end8

for.body5.for.inc79_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79

if.end8:                                          ; preds = %for.body5
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %arrayidx10 = getelementptr [9 x i32], ptr @irq_mon_add, i32 0, i32 %i.1171
  %18 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx10, align 4
  %arrayidx12 = getelementptr [9 x i8], ptr %int_sts, i32 0, i32 %i.1171
  %driver_data.i.i159 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 8
  %20 = ptrtoint ptr %driver_data.i.i159 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i159, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ival.i158) #5
  %22 = ptrtoint ptr %ival.i158 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %ival.i158, align 4, !annotation !77
  %regmap.i160 = getelementptr inbounds %struct.rc5t583, ptr %21, i32 0, i32 1
  %23 = ptrtoint ptr %regmap.i160 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regmap.i160, align 4
  %conv.i = and i32 %19, 255
  %call1.i161 = call i32 @regmap_read(ptr noundef %24, i32 noundef %conv.i, ptr noundef nonnull %ival.i158) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i161)
  %tobool.not.i162 = icmp eq i32 %call1.i161, 0
  br i1 %tobool.not.i162, label %rc5t583_read.exit165.thread, label %rc5t583_read.exit165

rc5t583_read.exit165.thread:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %ival.i158 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ival.i158, align 4
  %conv2.i163 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv2.i163, ptr %arrayidx12, align 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i158) #5
  br label %if.end23

rc5t583_read.exit165:                             ; preds = %if.end8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ival.i158) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i161)
  %cmp14 = icmp slt i32 %call1.i161, 0
  br i1 %cmp14, label %do.end19, label %rc5t583_read.exit165.if.end23_crit_edge

rc5t583_read.exit165.if.end23_crit_edge:          ; preds = %rc5t583_read.exit165
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

do.end19:                                         ; preds = %rc5t583_read.exit165
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.26, i32 noundef %19, i32 noundef %call1.i161) #8
  br label %for.inc79.sink.split

if.end23:                                         ; preds = %rc5t583_read.exit165.if.end23_crit_edge, %rc5t583_read.exit165.thread
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %i.1171)
  %tobool26.not.not = icmp eq i32 %i.1171, 3
  br i1 %tobool26.not.not, label %if.then27, label %if.end23.if.end55_crit_edge

if.end23.if.end55_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end55

if.then27:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %30 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx12, align 1
  %32 = shl i8 %31, 6
  %33 = lshr i8 %31, 2
  %34 = and i8 %33, 1
  %35 = or i8 %32, %34
  %36 = shl i8 %31, 2
  %37 = and i8 %36, 32
  %38 = or i8 %35, %37
  %39 = zext i8 %38 to i32
  br label %if.end55

if.end55:                                         ; preds = %if.then27, %if.end23.if.end55_crit_edge
  %rtc_int_sts.4 = phi i32 [ %rtc_int_sts.0173, %if.end23.if.end55_crit_edge ], [ %39, %if.then27 ]
  %40 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %data, align 4
  %arrayidx57 = getelementptr [9 x i32], ptr @irq_clr_add, i32 0, i32 %i.1171
  %42 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx57, align 4
  %44 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %arrayidx12, align 1
  %neg = xor i8 %45, -1
  %driver_data.i.i166 = getelementptr inbounds %struct.device, ptr %41, i32 0, i32 8
  %46 = ptrtoint ptr %driver_data.i.i166 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %driver_data.i.i166, align 4
  %regmap.i167 = getelementptr inbounds %struct.rc5t583, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %regmap.i167 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regmap.i167, align 4
  %conv.i168 = and i32 %43, 255
  %conv1.i = zext i8 %neg to i32
  %call2.i = call i32 @regmap_write(ptr noundef %49, i32 noundef %conv.i168, i32 noundef %conv1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp63 = icmp slt i32 %call2.i, 0
  br i1 %cmp63, label %do.end68, label %if.end55.if.end71_crit_edge

if.end55.if.end71_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

do.end68:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #7
  %50 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %51, ptr noundef nonnull @.str.26, i32 noundef %43, i32 noundef %call2.i) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end68, %if.end55.if.end71_crit_edge
  br i1 %tobool26.not.not, label %if.then75, label %if.end71.for.inc79_crit_edge

if.end71.for.inc79_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc79

if.then75:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #7
  %conv76 = trunc i32 %rtc_int_sts.4 to i8
  br label %for.inc79.sink.split

for.inc79.sink.split:                             ; preds = %if.then75, %do.end19
  %conv76.sink = phi i8 [ %conv76, %if.then75 ], [ 0, %do.end19 ]
  %rtc_int_sts.5.ph = phi i32 [ %rtc_int_sts.4, %if.then75 ], [ %rtc_int_sts.0173, %do.end19 ]
  %52 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %conv76.sink, ptr %arrayidx12, align 1
  br label %for.inc79

for.inc79:                                        ; preds = %for.inc79.sink.split, %if.end71.for.inc79_crit_edge, %for.body5.for.inc79_crit_edge
  %rtc_int_sts.5 = phi i32 [ %rtc_int_sts.4, %if.end71.for.inc79_crit_edge ], [ %rtc_int_sts.0173, %for.body5.for.inc79_crit_edge ], [ %rtc_int_sts.5.ph, %for.inc79.sink.split ]
  %inc80 = add nuw nsw i32 %i.1171, 1
  %exitcond.not = icmp eq i32 %inc80, 9
  br i1 %exitcond.not, label %for.end81, label %for.inc79.for.body5_crit_edge

for.inc79.for.body5_crit_edge:                    ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body5

for.end81:                                        ; preds = %for.inc79
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %1, align 1
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %0, align 1
  %or86156 = or i8 %56, %54
  store i8 %or86156, ptr %0, align 1
  %irq_base = getelementptr inbounds %struct.rc5t583, ptr %data, i32 0, i32 3
  br label %for.body91

for.body91:                                       ; preds = %if.end105.for.body91_crit_edge, %for.end81
  %i.2174 = phi i32 [ 0, %for.end81 ], [ %inc107, %if.end105.for.body91_crit_edge ]
  %mask_reg_index = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %i.2174, i32 3
  %57 = ptrtoint ptr %mask_reg_index to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %mask_reg_index, align 1
  %idxprom = zext i8 %58 to i32
  %arrayidx94 = getelementptr [9 x i8], ptr %int_sts, i32 0, i32 %idxprom
  %59 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %arrayidx94, align 1
  %conv95 = zext i8 %60 to i32
  %int_en_bit = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %i.2174, i32 2
  %61 = ptrtoint ptr %int_en_bit to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %int_en_bit, align 2
  %conv96 = zext i8 %62 to i32
  %shl = shl nuw i32 1, %conv96
  %and97 = and i32 %shl, %conv95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and97)
  %tobool98.not = icmp eq i32 %and97, 0
  br i1 %tobool98.not, label %for.body91.if.end105_crit_edge, label %land.lhs.true

for.body91.if.end105_crit_edge:                   ; preds = %for.body91
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

land.lhs.true:                                    ; preds = %for.body91
  %master_bit = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %i.2174, i32 1
  %63 = ptrtoint ptr %master_bit to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %master_bit, align 1
  %idxprom99 = zext i8 %64 to i32
  %arrayidx100 = getelementptr %struct.rc5t583, ptr %data, i32 0, i32 5, i32 %idxprom99
  %65 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx100, align 4
  %grp_index = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %i.2174, i32 4
  %67 = ptrtoint ptr %grp_index to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %grp_index, align 4
  %shl101 = shl nuw i32 1, %68
  %and102 = and i32 %shl101, %66
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %land.lhs.true.if.end105_crit_edge, label %if.then104

land.lhs.true.if.end105_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then104:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq_base, align 4
  %add = add i32 %70, %i.2174
  call void @handle_nested_irq(i32 noundef %add) #5
  br label %if.end105

if.end105:                                        ; preds = %if.then104, %land.lhs.true.if.end105_crit_edge, %for.body91.if.end105_crit_edge
  %inc107 = add nuw nsw i32 %i.2174, 1
  %exitcond176.not = icmp eq i32 %inc107, 39
  br i1 %exitcond176.not, label %if.end105.cleanup_crit_edge, label %if.end105.for.body91_crit_edge

if.end105.for.body91_crit_edge:                   ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body91

if.end105.cleanup_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end105.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 9, ptr nonnull %int_sts) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rc5t583_irq_mask(ptr nocapture noundef readonly %irq_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  %grp_index = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 4
  %6 = ptrtoint ptr %grp_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grp_index, align 4
  %shl = shl nuw i32 1, %7
  %neg = xor i32 %shl, -1
  %arrayidx2 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 5, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %arrayidx2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %master_bit = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 1
  %10 = ptrtoint ptr %master_bit to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %master_bit, align 1
  %conv = zext i8 %11 to i32
  %shl6 = shl nuw i32 1, %conv
  %intc_inten_reg = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %intc_inten_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %intc_inten_reg, align 4
  %14 = trunc i32 %shl6 to i8
  %15 = xor i8 %14, -1
  %conv10 = and i8 %13, %15
  store i8 %conv10, ptr %intc_inten_reg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %int_en_bit = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 2
  %16 = ptrtoint ptr %int_en_bit to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %int_en_bit, align 2
  %conv11 = zext i8 %17 to i32
  %shl12 = shl nuw i32 1, %conv11
  %mask_reg_index = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 3
  %18 = ptrtoint ptr %mask_reg_index to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %mask_reg_index, align 1
  %idxprom = zext i8 %19 to i32
  %arrayidx14 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 7, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx14, align 1
  %22 = trunc i32 %shl12 to i8
  %23 = xor i8 %22, -1
  %conv17 = and i8 %21, %23
  store i8 %conv17, ptr %arrayidx14, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @rc5t583_irq_unmask(ptr nocapture noundef readonly %irq_data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  %grp_index = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 4
  %6 = ptrtoint ptr %grp_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %grp_index, align 4
  %shl = shl nuw i32 1, %7
  %arrayidx2 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 5, i32 %7
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx2, align 4
  %or = or i32 %9, %shl
  store i32 %or, ptr %arrayidx2, align 4
  %master_bit = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 1
  %10 = ptrtoint ptr %master_bit to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %master_bit, align 1
  %conv = zext i8 %11 to i32
  %shl3 = shl nuw i32 1, %conv
  %intc_inten_reg = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %intc_inten_reg to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %intc_inten_reg, align 4
  %14 = trunc i32 %shl3 to i8
  %conv6 = or i8 %13, %14
  store i8 %conv6, ptr %intc_inten_reg, align 4
  %int_en_bit = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 2
  %15 = ptrtoint ptr %int_en_bit to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %int_en_bit, align 2
  %conv7 = zext i8 %16 to i32
  %shl8 = shl nuw i32 1, %conv7
  %mask_reg_index = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 3
  %17 = ptrtoint ptr %mask_reg_index to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %mask_reg_index, align 1
  %idxprom = zext i8 %18 to i32
  %arrayidx9 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 7, i32 %idxprom
  %19 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx9, align 1
  %21 = trunc i32 %shl8 to i8
  %conv12 = or i8 %20, %21
  store i8 %conv12, ptr %arrayidx9, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rc5t583_irq_set_type(ptr nocapture noundef readonly %irq_data, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 1
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %irq_base = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %3, %5
  %arrayidx = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 4
  %8 = and i8 %7, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %and1 = and i32 %type, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2.not = icmp eq i32 %and1, 0
  %or.cond = or i1 %tobool2.not, %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %int_en_bit = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub, i32 2
  %9 = ptrtoint ptr %int_en_bit to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %int_en_bit, align 2
  %conv3 = zext i8 %10 to i32
  %div42 = lshr i32 %conv3, 2
  %rem = and i32 %conv3, 3
  %shl = shl nuw nsw i32 3, %rem
  %arrayidx14 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 8, i32 %div42
  %11 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx14, align 1
  %13 = trunc i32 %shl to i8
  %14 = xor i8 %13, -1
  %conv17 = and i8 %12, %14
  %shl18 = shl nuw nsw i32 %and1, %rem
  %15 = trunc i32 %shl18 to i8
  %conv23 = or i8 %conv17, %15
  store i8 %conv23, ptr %arrayidx14, align 1
  %16 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chip_data.i, align 4
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  %irq_base.i = getelementptr inbounds %struct.rc5t583, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %irq_base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_base.i, align 4
  %sub.i = sub i32 %19, %21
  %grp_index.i = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub.i, i32 4
  %22 = ptrtoint ptr %grp_index.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %grp_index.i, align 4
  %shl.i = shl nuw i32 1, %23
  %arrayidx2.i = getelementptr %struct.rc5t583, ptr %17, i32 0, i32 5, i32 %23
  %24 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %25, %shl.i
  store i32 %or.i, ptr %arrayidx2.i, align 4
  %master_bit.i = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub.i, i32 1
  %26 = ptrtoint ptr %master_bit.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %master_bit.i, align 1
  %conv.i = zext i8 %27 to i32
  %shl3.i = shl nuw i32 1, %conv.i
  %intc_inten_reg.i = getelementptr inbounds %struct.rc5t583, ptr %17, i32 0, i32 6
  %28 = ptrtoint ptr %intc_inten_reg.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %intc_inten_reg.i, align 4
  %30 = trunc i32 %shl3.i to i8
  %conv6.i = or i8 %29, %30
  store i8 %conv6.i, ptr %intc_inten_reg.i, align 4
  %int_en_bit.i = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub.i, i32 2
  %31 = ptrtoint ptr %int_en_bit.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %int_en_bit.i, align 2
  %conv7.i = zext i8 %32 to i32
  %shl8.i = shl nuw i32 1, %conv7.i
  %mask_reg_index.i = getelementptr [39 x %struct.rc5t583_irq_data], ptr @rc5t583_irqs, i32 0, i32 %sub.i, i32 3
  %33 = ptrtoint ptr %mask_reg_index.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mask_reg_index.i, align 1
  %idxprom.i = zext i8 %34 to i32
  %arrayidx9.i = getelementptr %struct.rc5t583, ptr %17, i32 0, i32 7, i32 %idxprom.i
  %35 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx9.i, align 1
  %37 = trunc i32 %shl8.i to i8
  %conv12.i = or i8 %36, %37
  store i8 %conv12.i, ptr %arrayidx9.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rc5t583_irq_set_wake(ptr nocapture noundef readonly %irq_data, i32 noundef %on) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %chip_irq = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %chip_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chip_irq, align 4
  %call1 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %on) #5
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rc5t583_irq_lock(ptr nocapture noundef readonly %irq_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rc5t583_irq_sync_unlock(ptr nocapture noundef readonly %irq_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %arrayidx1 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 8, i32 0
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx1, align 1
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i.i, align 4
  %regmap.i = getelementptr inbounds %struct.rc5t583, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap.i, align 4
  %conv1.i = zext i8 %5 to i32
  %call2.i = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 167, i32 noundef %conv1.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3 = icmp slt i32 %call2.i, 0
  br i1 %cmp3, label %do.end, label %entry.for.inc_crit_edge

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.7, i32 noundef 167, i32 noundef %call2.i) #8
  br label %for.inc

for.inc:                                          ; preds = %do.end, %entry.for.inc_crit_edge
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %arrayidx1.1 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 8, i32 1
  %14 = ptrtoint ptr %arrayidx1.1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx1.1, align 1
  %driver_data.i.i.1 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 8
  %16 = ptrtoint ptr %driver_data.i.i.1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %driver_data.i.i.1, align 4
  %regmap.i.1 = getelementptr inbounds %struct.rc5t583, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %regmap.i.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regmap.i.1, align 4
  %conv1.i.1 = zext i8 %15 to i32
  %call2.i.1 = tail call i32 @regmap_write(ptr noundef %19, i32 noundef 167, i32 noundef %conv1.i.1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.1)
  %cmp3.1 = icmp slt i32 %call2.i.1, 0
  br i1 %cmp3.1, label %do.end.1, label %for.inc.for.body10.preheader_crit_edge

for.inc.for.body10.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10.preheader

do.end.1:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.7, i32 noundef 167, i32 noundef %call2.i.1) #8
  br label %for.body10.preheader

for.body10.preheader:                             ; preds = %do.end.1, %for.inc.for.body10.preheader_crit_edge
  br label %for.body10

for.body10:                                       ; preds = %for.inc25.for.body10_crit_edge, %for.body10.preheader
  %i.171 = phi i32 [ %inc26, %for.inc25.for.body10_crit_edge ], [ 0, %for.body10.preheader ]
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %arrayidx12 = getelementptr [8 x i32], ptr @irq_en_add, i32 0, i32 %i.171
  %24 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx12, align 4
  %arrayidx14 = getelementptr %struct.rc5t583, ptr %1, i32 0, i32 7, i32 %i.171
  %26 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx14, align 1
  %driver_data.i.i61 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 8
  %28 = ptrtoint ptr %driver_data.i.i61 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %driver_data.i.i61, align 4
  %regmap.i62 = getelementptr inbounds %struct.rc5t583, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %regmap.i62 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap.i62, align 4
  %conv.i63 = and i32 %25, 255
  %conv1.i64 = zext i8 %27 to i32
  %call2.i65 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef %conv.i63, i32 noundef %conv1.i64) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i65)
  %cmp16 = icmp slt i32 %call2.i65, 0
  br i1 %cmp16, label %do.end21, label %for.body10.for.inc25_crit_edge

for.body10.for.inc25_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc25

do.end21:                                         ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.7, i32 noundef %25, i32 noundef %call2.i65) #8
  br label %for.inc25

for.inc25:                                        ; preds = %do.end21, %for.body10.for.inc25_crit_edge
  %inc26 = add nuw nsw i32 %i.171, 1
  %exitcond.not = icmp eq i32 %inc26, 8
  br i1 %exitcond.not, label %for.end27, label %for.inc25.for.body10_crit_edge

for.inc25.for.body10_crit_edge:                   ; preds = %for.inc25
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10

for.end27:                                        ; preds = %for.inc25
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %intc_inten_reg = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 6
  %36 = ptrtoint ptr %intc_inten_reg to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %intc_inten_reg, align 4
  %driver_data.i.i66 = getelementptr inbounds %struct.device, ptr %35, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i.i66 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %driver_data.i.i66, align 4
  %regmap.i67 = getelementptr inbounds %struct.rc5t583, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %regmap.i67 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap.i67, align 4
  %conv1.i68 = zext i8 %37 to i32
  %call2.i69 = tail call i32 @regmap_write(ptr noundef %41, i32 noundef 174, i32 noundef %conv1.i68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i69)
  %cmp30 = icmp slt i32 %call2.i69, 0
  br i1 %cmp30, label %do.end35, label %for.end27.if.end37_crit_edge

for.end27.if.end37_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end37

do.end35:                                         ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %43, ptr noundef nonnull @.str.7, i32 noundef 174, i32 noundef %call2.i69) #8
  br label %if.end37

if.end37:                                         ; preds = %do.end35, %for.end27.if.end37_crit_edge
  %irq_lock = getelementptr inbounds %struct.rc5t583, ptr %1, i32 0, i32 4
  tail call void @mutex_unlock(ptr noundef %irq_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !13, !14, !15, !17, !18, !20, !21, !23, !24, !26, !28, !29, !30, !31, !33, !35, !37, !39, !41, !43, !45, !46, !47, !49, !50, !52, !53, !55, !56, !57, !58, !60, !61, !63, !64, !66}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75}
!llvm.ident = !{!76}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/rc5t583-irq.c", i32 328, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @rc5t583_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @rc5t583_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @rc5t583_irq_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/mfd/rc5t583-irq.c", i32 332, i32 2}
!10 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/rc5t583-irq.c", i32 339, i32 4}
!13 = !{ptr @rc5t583_irq_init._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @rc5t583_irq_init._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @rc5t583_irq_init._entry.9, !16, !"_entry", i1 false, i1 false}
!16 = !{!"../drivers/mfd/rc5t583-irq.c", i32 348, i32 4}
!17 = !{ptr @rc5t583_irq_init._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @rc5t583_irq_init._entry.11, !19, !"_entry", i1 false, i1 false}
!19 = !{!"../drivers/mfd/rc5t583-irq.c", i32 355, i32 3}
!20 = !{ptr @rc5t583_irq_init._entry_ptr.12, !19, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @rc5t583_irq_init._entry.13, !22, !"_entry", i1 false, i1 false}
!22 = !{!"../drivers/mfd/rc5t583-irq.c", i32 363, i32 4}
!23 = !{ptr @rc5t583_irq_init._entry_ptr.14, !22, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.15, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/mfd/rc5t583-irq.c", i32 381, i32 20}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/rc5t583-irq.c", i32 383, i32 3}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @rc5t583_irq_init._entry.16, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @rc5t583_irq_init._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @irq_en_add, !32, !"irq_en_add", i1 false, i1 false}
!32 = !{!"../drivers/mfd/rc5t583-irq.c", i32 29, i32 12}
!33 = distinct !{null, !34, !"gpedge_add", i1 false, i1 false}
!34 = !{!"../drivers/mfd/rc5t583-irq.c", i32 24, i32 12}
!35 = !{ptr @irq_clr_add, !36, !"irq_clr_add", i1 false, i1 false}
!36 = !{!"../drivers/mfd/rc5t583-irq.c", i32 52, i32 12}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/mfd/rc5t583-irq.c", i32 314, i32 10}
!39 = !{ptr @rc5t583_irq_chip, !40, !"rc5t583_irq_chip", i1 false, i1 false}
!40 = !{!"../drivers/mfd/rc5t583-irq.c", i32 313, i32 24}
!41 = !{ptr @rc5t583_irqs, !42, !"rc5t583_irqs", i1 false, i1 false}
!42 = !{!"../drivers/mfd/rc5t583-irq.c", i32 94, i32 38}
!43 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/mfd/rc5t583-irq.c", i32 208, i32 4}
!45 = !{ptr @rc5t583_irq_sync_unlock._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @rc5t583_irq_sync_unlock._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @rc5t583_irq_sync_unlock._entry.22, !48, !"_entry", i1 false, i1 false}
!48 = !{!"../drivers/mfd/rc5t583-irq.c", i32 217, i32 4}
!49 = !{ptr @rc5t583_irq_sync_unlock._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @rc5t583_irq_sync_unlock._entry.24, !51, !"_entry", i1 false, i1 false}
!51 = !{!"../drivers/mfd/rc5t583-irq.c", i32 225, i32 3}
!52 = !{ptr @rc5t583_irq_sync_unlock._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.26, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/mfd/rc5t583-irq.c", i32 256, i32 3}
!55 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @rc5t583_irq._entry, !54, !"_entry", i1 false, i1 false}
!57 = !{ptr @rc5t583_irq._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @rc5t583_irq._entry.28, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/mfd/rc5t583-irq.c", i32 268, i32 4}
!60 = !{ptr @rc5t583_irq._entry_ptr.29, !59, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @rc5t583_irq._entry.30, !62, !"_entry", i1 false, i1 false}
!62 = !{!"../drivers/mfd/rc5t583-irq.c", i32 290, i32 4}
!63 = !{ptr @rc5t583_irq._entry_ptr.31, !62, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @main_int_type, !65, !"main_int_type", i1 false, i1 false}
!65 = !{!"../drivers/mfd/rc5t583-irq.c", i32 64, i32 12}
!66 = !{ptr @irq_mon_add, !67, !"irq_mon_add", i1 false, i1 false}
!67 = !{!"../drivers/mfd/rc5t583-irq.c", i32 40, i32 12}
!68 = !{i32 1, !"wchar_size", i32 2}
!69 = !{i32 1, !"min_enum_size", i32 4}
!70 = !{i32 8, !"branch-target-enforcement", i32 0}
!71 = !{i32 8, !"sign-return-address", i32 0}
!72 = !{i32 8, !"sign-return-address-all", i32 0}
!73 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!74 = !{i32 7, !"uwtable", i32 1}
!75 = !{i32 7, !"frame-pointer", i32 2}
!76 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!77 = !{!"auto-init"}
