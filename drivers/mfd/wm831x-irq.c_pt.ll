; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm831x-irq.c_pt.bc'
source_filename = "../drivers/mfd/wm831x-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.lock_class_key = type { %union.anon.0 }
%union.anon.0 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.wm831x_irq_data = type { i32, i32, i32 }
%struct.atomic_t = type { i32 }
%struct.wm831x = type { %struct.mutex, ptr, ptr, %struct.wm831x_pdata, i32, i32, %struct.mutex, ptr, [5 x i32], [5 x i32], i8, i8, i32, [16 x i32], [16 x i8], [16 x i8], %struct.mutex, %struct.list_head, i16, ptr, %struct.mutex, i8 }
%struct.wm831x_pdata = type { i32, ptr, ptr, i8, i8, i8, i32, i32, [16 x i32], ptr, ptr, ptr, ptr, ptr, [2 x ptr], [4 x ptr], [2 x ptr], [11 x ptr], [2 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@wm831x_irq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&wm831x->irq_lock\00", [46 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 582, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Failed to allocate IRQs: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm831x_irq_init\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/wm831x-irq.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry_ptr = internal global ptr @wm831x_irq_init._entry, section ".printk_index", align 4
@wm831x_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @wm831x_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 602, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to allocate IRQ domain\0A\00", [33 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry_ptr.8 = internal global ptr @wm831x_irq_init._entry.6, section ".printk_index", align 4
@wm831x_irq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 627, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't enable IRQ as wake source: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry_ptr.11 = internal global ptr @wm831x_irq_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm831x\00", [25 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 635, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to request IRQ %d: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry_ptr.16 = internal global ptr @wm831x_irq_init._entry.13, section ".printk_index", align 4
@wm831x_irq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"No interrupt specified - functionality limited\0A\00", [48 x i8] zeroinitializer }, align 32
@wm831x_irq_init._entry_ptr.19 = internal global ptr @wm831x_irq_init._entry.17, section ".printk_index", align 4
@wm831x_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr @wm831x_irq_enable, ptr @wm831x_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wm831x_irq_set_type, ptr null, ptr @wm831x_irq_lock, ptr @wm831x_irq_sync_unlock, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@wm831x_irqs = internal constant { [58 x %struct.wm831x_irq_data], [168 x i8] } { [58 x %struct.wm831x_irq_data] [%struct.wm831x_irq_data { i32 16384, i32 1, i32 2 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 1 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 2 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 4 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 8 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 16 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 32 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 64 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 128 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 256 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 512 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 1024 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 2048 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 4096 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 8192 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 16384 }, %struct.wm831x_irq_data { i32 8192, i32 5, i32 32768 }, %struct.wm831x_irq_data { i32 4096, i32 1, i32 4096 }, %struct.wm831x_irq_data { i32 128, i32 1, i32 32768 }, %struct.wm831x_irq_data { i32 128, i32 1, i32 16384 }, %struct.wm831x_irq_data { i32 128, i32 1, i32 8192 }, %struct.wm831x_irq_data { i32 2048, i32 1, i32 2048 }, %struct.wm831x_irq_data { i32 32, i32 1, i32 8 }, %struct.wm831x_irq_data { i32 32, i32 1, i32 4 }, %struct.wm831x_irq_data { i32 4, i32 2, i32 32768 }, %struct.wm831x_irq_data { i32 4, i32 2, i32 16384 }, %struct.wm831x_irq_data { i32 4, i32 2, i32 8192 }, %struct.wm831x_irq_data { i32 4, i32 2, i32 4096 }, %struct.wm831x_irq_data zeroinitializer, %struct.wm831x_irq_data { i32 4, i32 2, i32 2048 }, %struct.wm831x_irq_data { i32 4, i32 2, i32 1024 }, %struct.wm831x_irq_data { i32 4, i32 2, i32 512 }, %struct.wm831x_irq_data { i32 4, i32 2, i32 256 }, %struct.wm831x_irq_data { i32 1024, i32 1, i32 1024 }, %struct.wm831x_irq_data { i32 512, i32 1, i32 512 }, %struct.wm831x_irq_data { i32 256, i32 1, i32 256 }, %struct.wm831x_irq_data { i32 256, i32 1, i32 16 }, %struct.wm831x_irq_data { i32 256, i32 1, i32 32 }, %struct.wm831x_irq_data { i32 256, i32 1, i32 64 }, %struct.wm831x_irq_data { i32 256, i32 1, i32 128 }, %struct.wm831x_irq_data { i32 64, i32 2, i32 64 }, %struct.wm831x_irq_data { i32 64, i32 2, i32 128 }, %struct.wm831x_irq_data { i32 2, i32 4, i32 256 }, %struct.wm831x_irq_data { i32 2, i32 4, i32 512 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 1 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 2 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 4 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 8 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 16 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 32 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 64 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 128 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 256 }, %struct.wm831x_irq_data { i32 1, i32 3, i32 512 }, %struct.wm831x_irq_data { i32 1, i32 4, i32 1 }, %struct.wm831x_irq_data { i32 1, i32 4, i32 2 }, %struct.wm831x_irq_data { i32 1, i32 4, i32 4 }, %struct.wm831x_irq_data { i32 1, i32 4, i32 8 }], [168 x i8] zeroinitializer }, align 32
@wm831x_irq_sync_unlock.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 89, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wm831x_irq_sync_unlock\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"IRQ mask sync: %x = %x\0A\00", [40 x i8] zeroinitializer }, align 32
@wm831x_irq_thread._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 461, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to read system interrupt: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"wm831x_irq_thread\00", [46 x i8] zeroinitializer }, align 32
@wm831x_irq_thread._entry_ptr = internal global ptr @wm831x_irq_thread._entry, section ".printk_index", align 4
@wm831x_irq_thread._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.3, i32 495, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to read IRQ status: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@wm831x_irq_thread._entry_ptr.26 = internal global ptr @wm831x_irq_thread._entry.24, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.27 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 566, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 581, i32 4 }
@___asan_gen_.51 = private unnamed_addr constant [22 x i8] c"wm831x_irq_domain_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 555, i32 36 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 602, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 625, i32 4 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 632, i32 9 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 634, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 639, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [16 x i8] c"wm831x_irq_chip\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 438, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant [12 x i8] c"wm831x_irqs\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 31, i32 31 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 355, i32 4 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 460, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [28 x i8] c"../drivers/mfd/wm831x-irq.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 493, i32 5 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @wm831x_irq_init._entry, ptr @wm831x_irq_init._entry.13, ptr @wm831x_irq_init._entry.17, ptr @wm831x_irq_init._entry.6, ptr @wm831x_irq_init._entry.9, ptr @wm831x_irq_init._entry_ptr, ptr @wm831x_irq_init._entry_ptr.11, ptr @wm831x_irq_init._entry_ptr.16, ptr @wm831x_irq_init._entry_ptr.19, ptr @wm831x_irq_init._entry_ptr.8, ptr @wm831x_irq_thread._entry, ptr @wm831x_irq_thread._entry.24, ptr @wm831x_irq_thread._entry_ptr, ptr @wm831x_irq_thread._entry_ptr.26, ptr @wm831x_irq_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @wm831x_irq_domain_ops, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @wm831x_irq_chip, ptr @wm831x_irqs, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irqs to i32), i32 696, i32 864, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_thread._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm831x_irq_thread._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm831x_irq_init(ptr noundef %wm831x, i32 noundef %irq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 6
  tail call void @__mutex_init(ptr noundef %irq_lock, ptr noundef nonnull @.str, ptr noundef nonnull @wm831x_irq_init.__key) #5
  %arrayidx = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 8, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 65535, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 9, i32 0
  %1 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 65535, ptr %arrayidx2, align 4
  %call = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16409, i16 noundef zeroext -1) #5
  %arrayidx.1 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 8, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 65535, ptr %arrayidx.1, align 4
  %arrayidx2.1 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %arrayidx2.1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 65535, ptr %arrayidx2.1, align 4
  %call.1 = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16410, i16 noundef zeroext -1) #5
  %arrayidx.2 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 65535, ptr %arrayidx.2, align 4
  %arrayidx2.2 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 9, i32 2
  %5 = ptrtoint ptr %arrayidx2.2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 65535, ptr %arrayidx2.2, align 4
  %call.2 = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16411, i16 noundef zeroext -1) #5
  %arrayidx.3 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 8, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 65535, ptr %arrayidx.3, align 4
  %arrayidx2.3 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 9, i32 3
  %7 = ptrtoint ptr %arrayidx2.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 65535, ptr %arrayidx2.3, align 4
  %call.3 = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16412, i16 noundef zeroext -1) #5
  %arrayidx.4 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 8, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 65535, ptr %arrayidx.4, align 4
  %arrayidx2.4 = getelementptr %struct.wm831x, ptr %wm831x, i32 0, i32 9, i32 4
  %9 = ptrtoint ptr %arrayidx2.4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 65535, ptr %arrayidx2.4, align 4
  %call.4 = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16413, i16 noundef zeroext -1) #5
  %irq_base3 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 3, i32 6
  %10 = ptrtoint ptr %irq_base3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_base3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %entry.if.else17_crit_edge, label %if.then

entry.if.else17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else17

if.then:                                          ; preds = %entry
  %call5 = tail call i32 @__irq_alloc_descs(i32 noundef %11, i32 noundef 0, i32 noundef 58, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.end11, label %if.end12

do.end11:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %13, ptr noundef nonnull @.str.1, i32 noundef %call5) #8
  br label %if.else17

if.end12:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool13.not = icmp eq i32 %call5, 0
  br i1 %tobool13.not, label %if.end12.if.else17_crit_edge, label %if.then14

if.end12.if.else17_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else17

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  %dev15 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %14 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev15, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 27
  %16 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %of_node, align 8
  %call16 = tail call ptr @irq_domain_add_legacy(ptr noundef %17, i32 noundef 58, i32 noundef %call5, i32 noundef 0, ptr noundef nonnull @wm831x_irq_domain_ops, ptr noundef %wm831x) #5
  br label %if.end21

if.else17:                                        ; preds = %if.end12.if.else17_crit_edge, %do.end11, %entry.if.else17_crit_edge
  %dev18 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %18 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev18, align 4
  %of_node19 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 27
  %20 = ptrtoint ptr %of_node19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %of_node19, align 8
  %tobool.not.i.i = icmp eq ptr %21, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %21, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef 58, i32 noundef 58, i32 noundef 0, ptr noundef nonnull @wm831x_irq_domain_ops, ptr noundef %wm831x) #5
  br label %if.end21

if.end21:                                         ; preds = %if.else17, %if.then14
  %domain.0 = phi ptr [ %call16, %if.then14 ], [ %call1.i, %if.else17 ]
  %tobool22.not = icmp eq ptr %domain.0, null
  br i1 %tobool22.not, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %dev27 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %22 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev27, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %23, ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %irq_cmos = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 3, i32 3
  %24 = ptrtoint ptr %irq_cmos to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %irq_cmos, align 4, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool29.not = icmp eq i8 %25, 0
  %. = select i1 %tobool29.not, i16 2, i16 0
  %call34 = tail call i32 @wm831x_set_bits(ptr noundef %wm831x, i16 noundef zeroext 16407, i16 noundef zeroext 2, i16 noundef zeroext %.) #5
  %irq35 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 5
  %26 = ptrtoint ptr %irq35 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %irq, ptr %irq35, align 4
  %irq_domain = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 7
  %27 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %domain.0, ptr %irq_domain, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq)
  %tobool36.not = icmp eq i32 %irq, 0
  br i1 %tobool36.not, label %do.end59, label %if.then37

if.then37:                                        ; preds = %if.end28
  %call.i = tail call i32 @irq_set_irq_wake(i32 noundef %irq, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39.not = icmp eq i32 %call.i, 0
  br i1 %cmp39.not, label %if.then37.if.end46_crit_edge, label %do.end44

if.then37.if.end46_crit_edge:                     ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.end44:                                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #7
  %dev45 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %28 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev45, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %29, ptr noundef nonnull @.str.10, i32 noundef %call.i) #8
  br label %if.end46

if.end46:                                         ; preds = %do.end44, %if.then37.if.end46_crit_edge
  %call47 = tail call i32 @request_threaded_irq(i32 noundef %irq, ptr noundef null, ptr noundef nonnull @wm831x_irq_thread, i32 noundef 8200, ptr noundef nonnull @.str.12, ptr noundef %wm831x) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48.not = icmp eq i32 %call47, 0
  br i1 %cmp48.not, label %if.end46.if.end61_crit_edge, label %do.end53

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %dev54 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %30 = ptrtoint ptr %dev54 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev54, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.14, i32 noundef %irq, i32 noundef %call47) #8
  br label %cleanup

do.end59:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  %dev60 = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 1
  %32 = ptrtoint ptr %dev60 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev60, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.18) #8
  br label %if.end61

if.end61:                                         ; preds = %do.end59, %if.end46.if.end61_crit_edge
  %call62 = tail call i32 @wm831x_reg_write(ptr noundef %wm831x, i16 noundef zeroext 16408, i16 noundef zeroext 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end61, %do.end53, %do.end26
  %retval.0 = phi i32 [ %call47, %do.end53 ], [ 0, %if.end61 ], [ -22, %do.end26 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_set_bits(ptr noundef, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_irq_thread(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  %irq.i153 = alloca i32, align 4
  %irq.i147 = alloca i32, align 4
  %irq.i141 = alloca i32, align 4
  %irq.i135 = alloca i32, align 4
  %irq.i = alloca i32, align 4
  %status_regs = alloca [5 x i32], align 4
  %read = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status_regs) #5
  %0 = call ptr @memset(ptr %status_regs, i32 0, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %read) #5
  %1 = call ptr @memset(ptr %read, i32 0, i32 20)
  %call = tail call i32 @wm831x_reg_read(ptr noundef %data, i16 noundef zeroext 16400) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wm831x, ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %call) #8
  br label %cleanup82

if.end:                                           ; preds = %entry
  %and = and i32 %call, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end3_crit_edge, label %if.then1

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then1:                                         ; preds = %if.end
  %irq_domain = getelementptr inbounds %struct.wm831x, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_domain, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %6 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %irq.i, align 4, !annotation !59
  %call.i = call ptr @__irq_resolve_mapping(ptr noundef %5, i32 noundef 34, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then1.irq_find_mapping.exit_crit_edge, label %if.then.i

if.then1.irq_find_mapping.exit_crit_edge:         ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %if.then1
  call void @__sanitizer_cov_trace_pc() #7
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %if.then1.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ 0, %if.then1.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i) #5
  br label %if.end3

if.end3:                                          ; preds = %irq_find_mapping.exit, %if.end.if.end3_crit_edge
  %and4 = and i32 %call, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end3.if.end9_crit_edge, label %if.then6

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then6:                                         ; preds = %if.end3
  %irq_domain7 = getelementptr inbounds %struct.wm831x, ptr %data, i32 0, i32 7
  %9 = ptrtoint ptr %irq_domain7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_domain7, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i135) #5
  %11 = ptrtoint ptr %irq.i135 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %irq.i135, align 4, !annotation !59
  %call.i136 = call ptr @__irq_resolve_mapping(ptr noundef %10, i32 noundef 33, ptr noundef nonnull %irq.i135) #5
  %tobool.not.i137 = icmp eq ptr %call.i136, null
  br i1 %tobool.not.i137, label %if.then6.irq_find_mapping.exit140_crit_edge, label %if.then.i138

if.then6.irq_find_mapping.exit140_crit_edge:      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit140

if.then.i138:                                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %irq.i135 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i135, align 4
  br label %irq_find_mapping.exit140

irq_find_mapping.exit140:                         ; preds = %if.then.i138, %if.then6.irq_find_mapping.exit140_crit_edge
  %retval.0.i139 = phi i32 [ %13, %if.then.i138 ], [ 0, %if.then6.irq_find_mapping.exit140_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i135) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i139) #5
  br label %if.end9

if.end9:                                          ; preds = %irq_find_mapping.exit140, %if.end3.if.end9_crit_edge
  %and10 = and i32 %call, -1537
  %irq_domain44 = getelementptr inbounds %struct.wm831x, ptr %data, i32 0, i32 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8192, i32 %and10)
  %cmp47 = icmp eq i32 %and10, 8192
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end9
  %i.0164 = phi i32 [ 0, %if.end9 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [58 x %struct.wm831x_irq_data], ptr @wm831x_irqs, i32 0, i32 %i.0164
  %reg = getelementptr [58 x %struct.wm831x_irq_data], ptr @wm831x_irqs, i32 0, i32 %i.0164, i32 1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %sub = add i32 %15, -1
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %and14 = and i32 %17, %and10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %for.body.for.inc_crit_edge, label %if.end17

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end17:                                         ; preds = %for.body
  %arrayidx18 = getelementptr [5 x i32], ptr %status_regs, i32 0, i32 %sub
  %arrayidx19 = getelementptr [5 x i32], ptr %read, i32 0, i32 %sub
  %18 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool20.not = icmp eq i32 %19, 0
  br i1 %tobool20.not, label %if.then21, label %if.end17.if.end39_crit_edge

if.end17.if.end39_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end39

if.then21:                                        ; preds = %if.end17
  %20 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %reg, align 4
  %22 = trunc i32 %21 to i16
  %conv = add i16 %22, 16400
  %call24 = call i32 @wm831x_reg_read(ptr noundef %data, i16 noundef zeroext %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %cleanup, label %if.end32

if.end32:                                         ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx19, align 4
  %arrayidx34 = getelementptr %struct.wm831x, ptr %data, i32 0, i32 8, i32 %sub
  %24 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx34, align 4
  %neg = xor i32 %25, -1
  %and35 = and i32 %call24, %neg
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %and35, ptr %arrayidx18, align 4
  %conv37 = trunc i32 %and35 to i16
  %call38 = call i32 @wm831x_reg_write(ptr noundef %data, i16 noundef zeroext %conv, i16 noundef zeroext %conv37) #5
  br label %if.end39

if.end39:                                         ; preds = %if.end32, %if.end17.if.end39_crit_edge
  %27 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx18, align 4
  %mask = getelementptr [58 x %struct.wm831x_irq_data], ptr @wm831x_irqs, i32 0, i32 %i.0164, i32 2
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask, align 4
  %and41 = and i32 %30, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  br i1 %tobool42.not, label %if.end39.if.end46_crit_edge, label %if.then43

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  %31 = ptrtoint ptr %irq_domain44 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %irq_domain44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i141) #5
  %33 = ptrtoint ptr %irq.i141 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 -1, ptr %irq.i141, align 4, !annotation !59
  %call.i142 = call ptr @__irq_resolve_mapping(ptr noundef %32, i32 noundef %i.0164, ptr noundef nonnull %irq.i141) #5
  %tobool.not.i143 = icmp eq ptr %call.i142, null
  br i1 %tobool.not.i143, label %if.then43.irq_find_mapping.exit146_crit_edge, label %if.then.i144

if.then43.irq_find_mapping.exit146_crit_edge:     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit146

if.then.i144:                                     ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #7
  %34 = ptrtoint ptr %irq.i141 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq.i141, align 4
  br label %irq_find_mapping.exit146

irq_find_mapping.exit146:                         ; preds = %if.then.i144, %if.then43.irq_find_mapping.exit146_crit_edge
  %retval.0.i145 = phi i32 [ %35, %if.then.i144 ], [ 0, %if.then43.irq_find_mapping.exit146_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i141) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i145) #5
  br label %if.end46

if.end46:                                         ; preds = %irq_find_mapping.exit146, %if.end39.if.end46_crit_edge
  br i1 %cmp47, label %land.lhs.true, label %if.end46.for.inc_crit_edge

if.end46.for.inc_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end46
  %sub49 = add nsw i32 %i.0164, -1
  %arrayidx50 = getelementptr %struct.wm831x, ptr %data, i32 0, i32 14, i32 %sub49
  %36 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx50, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool51.not = icmp eq i8 %37, 0
  br i1 %tobool51.not, label %land.lhs.true.land.lhs.true64_crit_edge, label %if.then53

land.lhs.true.land.lhs.true64_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true64

if.then53:                                        ; preds = %land.lhs.true
  %call54 = call i32 @wm831x_reg_read(ptr noundef %data, i16 noundef zeroext 16396) #5
  %shl = shl nuw i32 1, %sub49
  %and56160 = and i32 %call54, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56160)
  %tobool57.not161 = icmp eq i32 %and56160, 0
  br i1 %tobool57.not161, label %if.then53.land.lhs.true64_crit_edge, label %if.then53.while.body_crit_edge

if.then53.while.body_crit_edge:                   ; preds = %if.then53
  br label %while.body

if.then53.land.lhs.true64_crit_edge:              ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true64

while.body:                                       ; preds = %irq_find_mapping.exit152.while.body_crit_edge, %if.then53.while.body_crit_edge
  %38 = ptrtoint ptr %irq_domain44 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_domain44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i147) #5
  %40 = ptrtoint ptr %irq.i147 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -1, ptr %irq.i147, align 4, !annotation !59
  %call.i148 = call ptr @__irq_resolve_mapping(ptr noundef %39, i32 noundef %i.0164, ptr noundef nonnull %irq.i147) #5
  %tobool.not.i149 = icmp eq ptr %call.i148, null
  br i1 %tobool.not.i149, label %while.body.irq_find_mapping.exit152_crit_edge, label %if.then.i150

while.body.irq_find_mapping.exit152_crit_edge:    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit152

if.then.i150:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %41 = ptrtoint ptr %irq.i147 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %irq.i147, align 4
  br label %irq_find_mapping.exit152

irq_find_mapping.exit152:                         ; preds = %if.then.i150, %while.body.irq_find_mapping.exit152_crit_edge
  %retval.0.i151 = phi i32 [ %42, %if.then.i150 ], [ 0, %while.body.irq_find_mapping.exit152_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i147) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i151) #5
  %call60 = call i32 @wm831x_reg_read(ptr noundef %data, i16 noundef zeroext 16396) #5
  %and56 = and i32 %call60, %shl
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %irq_find_mapping.exit152.land.lhs.true64_crit_edge, label %irq_find_mapping.exit152.while.body_crit_edge

irq_find_mapping.exit152.while.body_crit_edge:    ; preds = %irq_find_mapping.exit152
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

irq_find_mapping.exit152.land.lhs.true64_crit_edge: ; preds = %irq_find_mapping.exit152
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true64

land.lhs.true64:                                  ; preds = %irq_find_mapping.exit152.land.lhs.true64_crit_edge, %if.then53.land.lhs.true64_crit_edge, %land.lhs.true.land.lhs.true64_crit_edge
  %arrayidx66 = getelementptr %struct.wm831x, ptr %data, i32 0, i32 15, i32 %sub49
  %43 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %arrayidx66, align 1, !range !58
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool67.not = icmp eq i8 %44, 0
  br i1 %tobool67.not, label %land.lhs.true64.for.inc_crit_edge, label %if.then69

land.lhs.true64.for.inc_crit_edge:                ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then69:                                        ; preds = %land.lhs.true64
  %call70 = call i32 @wm831x_reg_read(ptr noundef %data, i16 noundef zeroext 16396) #5
  %shl73 = shl nuw i32 1, %sub49
  %and74162 = and i32 %call70, %shl73
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and74162)
  %tobool75.not163 = icmp eq i32 %and74162, 0
  br i1 %tobool75.not163, label %if.then69.while.body76_crit_edge, label %if.then69.for.inc_crit_edge

if.then69.for.inc_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then69.while.body76_crit_edge:                 ; preds = %if.then69
  br label %while.body76

while.body76:                                     ; preds = %irq_find_mapping.exit158.while.body76_crit_edge, %if.then69.while.body76_crit_edge
  %45 = ptrtoint ptr %irq_domain44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %irq_domain44, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i153) #5
  %47 = ptrtoint ptr %irq.i153 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 -1, ptr %irq.i153, align 4, !annotation !59
  %call.i154 = call ptr @__irq_resolve_mapping(ptr noundef %46, i32 noundef %i.0164, ptr noundef nonnull %irq.i153) #5
  %tobool.not.i155 = icmp eq ptr %call.i154, null
  br i1 %tobool.not.i155, label %while.body76.irq_find_mapping.exit158_crit_edge, label %if.then.i156

while.body76.irq_find_mapping.exit158_crit_edge:  ; preds = %while.body76
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit158

if.then.i156:                                     ; preds = %while.body76
  call void @__sanitizer_cov_trace_pc() #7
  %48 = ptrtoint ptr %irq.i153 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq.i153, align 4
  br label %irq_find_mapping.exit158

irq_find_mapping.exit158:                         ; preds = %if.then.i156, %while.body76.irq_find_mapping.exit158_crit_edge
  %retval.0.i157 = phi i32 [ %49, %if.then.i156 ], [ 0, %while.body76.irq_find_mapping.exit158_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i153) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i157) #5
  %call79 = call i32 @wm831x_reg_read(ptr noundef %data, i16 noundef zeroext 16396) #5
  %and74 = and i32 %call79, %shl73
  %tobool75.not = icmp eq i32 %and74, 0
  br i1 %tobool75.not, label %irq_find_mapping.exit158.while.body76_crit_edge, label %irq_find_mapping.exit158.for.inc_crit_edge

irq_find_mapping.exit158.for.inc_crit_edge:       ; preds = %irq_find_mapping.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

irq_find_mapping.exit158.while.body76_crit_edge:  ; preds = %irq_find_mapping.exit158
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body76

cleanup:                                          ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #7
  %dev31 = getelementptr inbounds %struct.wm831x, ptr %data, i32 0, i32 1
  %50 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev31, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.25, i32 noundef %call24) #8
  br label %cleanup82

for.inc:                                          ; preds = %irq_find_mapping.exit158.for.inc_crit_edge, %if.then69.for.inc_crit_edge, %land.lhs.true64.for.inc_crit_edge, %if.end46.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0164, 1
  %exitcond.not = icmp eq i32 %inc, 58
  br i1 %exitcond.not, label %for.inc.cleanup82_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup82_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup82

cleanup82:                                        ; preds = %for.inc.cleanup82_crit_edge, %cleanup, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %read) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status_regs) #5
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wm831x_irq_exit(ptr noundef %wm831x) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wm831x, ptr %wm831x, i32 0, i32 5
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call ptr @free_irq(i32 noundef %1, ptr noundef %wm831x) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm831x_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @wm831x_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #5
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wm831x_irq_enable(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %mask = getelementptr [58 x %struct.wm831x_irq_data], ptr @wm831x_irqs, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %neg = xor i32 %5, -1
  %reg = getelementptr [58 x %struct.wm831x_irq_data], ptr @wm831x_irqs, i32 0, i32 %3, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr %struct.wm831x, ptr %1, i32 0, i32 8, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wm831x_irq_disable(ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %mask = getelementptr [58 x %struct.wm831x_irq_data], ptr @wm831x_irqs, i32 0, i32 %3, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %reg = getelementptr [58 x %struct.wm831x_irq_data], ptr @wm831x_irqs, i32 0, i32 %3, i32 1
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %sub = add i32 %7, -1
  %arrayidx = getelementptr %struct.wm831x, ptr %1, i32 0, i32 8, i32 %sub
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %or = or i32 %9, %5
  store i32 %or, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wm831x_irq_set_type(ptr nocapture noundef readonly %data, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = add i32 %3, -12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %4)
  %5 = icmp ult i32 %4, -11
  br i1 %5, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 58, i32 %3)
  %6 = icmp ult i32 %3, 58
  %spec.select = select i1 %6, i32 0, i32 -22
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add nsw i32 %3, -1
  %arrayidx = getelementptr %struct.wm831x, ptr %1, i32 0, i32 15, i32 %sub
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx, align 1
  %arrayidx5 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 14, i32 %sub
  %8 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %arrayidx5, align 1
  %9 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %if.end.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb7
    i32 2, label %sw.bb10
    i32 4, label %sw.bb13
    i32 8, label %sw.bb18
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx6 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 13, i32 %sub
  %10 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 69632, ptr %arrayidx6, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx9 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 13, i32 %sub
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 66560, ptr %arrayidx9, align 4
  br label %cleanup

sw.bb10:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx12 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 13, i32 %sub
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 65536, ptr %arrayidx12, align 4
  br label %cleanup

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx15 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 13, i32 %sub
  %13 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 66560, ptr %arrayidx15, align 4
  %14 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %arrayidx5, align 1
  br label %cleanup

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx20 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 13, i32 %sub
  %15 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 65536, ptr %arrayidx20, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %arrayidx, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb13, %sw.bb10, %sw.bb7, %sw.bb, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -22, %if.end.cleanup_crit_edge ], [ 0, %sw.bb18 ], [ 0, %sw.bb13 ], [ 0, %sw.bb10 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ], [ %spec.select, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_irq_lock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %irq_lock = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 6
  tail call void @mutex_lock_nested(ptr noundef %irq_lock, i32 noundef 0) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wm831x_irq_sync_unlock(ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  br label %for.body

for.cond7.preheader:                              ; preds = %for.inc
  %dev = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 1
  br label %for.body10

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.067 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.wm831x, ptr %1, i32 0, i32 13, i32 %i.067
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = trunc i32 %i.067 to i16
  %conv = add nuw nsw i16 %4, 16440
  %conv3 = trunc i32 %3 to i16
  %call4 = tail call i32 @wm831x_set_bits(ptr noundef %1, i16 noundef zeroext %conv, i16 noundef zeroext 5120, i16 noundef zeroext %conv3) #5
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.cond7.preheader, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body10:                                       ; preds = %for.inc36.for.body10_crit_edge, %for.cond7.preheader
  %i.169 = phi i32 [ 0, %for.cond7.preheader ], [ %inc37, %for.inc36.for.body10_crit_edge ]
  %arrayidx11 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 8, i32 %i.169
  %6 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx11, align 4
  %arrayidx12 = getelementptr %struct.wm831x, ptr %1, i32 0, i32 9, i32 %i.169
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp13.not = icmp eq i32 %7, %9
  br i1 %cmp13.not, label %for.body10.for.inc36_crit_edge, label %do.body

for.body10.for.inc36_crit_edge:                   ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc36

do.body:                                          ; preds = %for.body10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @wm831x_irq_sync_unlock.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@wm831x_irq_sync_unlock, %if.then20)) #5
          to label %do.end [label %if.then20], !srcloc !60

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev, align 4
  %add21 = add nuw nsw i32 %i.169, 16409
  %12 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx11, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @wm831x_irq_sync_unlock.__UNIQUE_ID_ddebug288, ptr noundef %11, ptr noundef nonnull @.str.21, i32 noundef %add21, i32 noundef %13) #5
  br label %do.end

do.end:                                           ; preds = %if.then20, %do.body
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %16 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx12, align 4
  %17 = trunc i32 %i.169 to i16
  %conv30 = add nuw nsw i16 %17, 16409
  %conv33 = trunc i32 %15 to i16
  %call34 = tail call i32 @wm831x_reg_write(ptr noundef %1, i16 noundef zeroext %conv30, i16 noundef zeroext %conv33) #5
  br label %for.inc36

for.inc36:                                        ; preds = %do.end, %for.body10.for.inc36_crit_edge
  %inc37 = add nuw nsw i32 %i.169, 1
  %exitcond71.not = icmp eq i32 %inc37, 5
  br i1 %exitcond71.not, label %for.end38, label %for.inc36.for.body10_crit_edge

for.inc36.for.body10_crit_edge:                   ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body10

for.end38:                                        ; preds = %for.inc36
  call void @__sanitizer_cov_trace_pc() #7
  %irq_lock = getelementptr inbounds %struct.wm831x, ptr %1, i32 0, i32 6
  tail call void @mutex_unlock(ptr noundef %irq_lock) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wm831x_reg_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !10, !11, !13, !14, !15, !17, !18, !19, !21, !23, !24, !25, !26, !28, !29, !30, !32, !34, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @wm831x_irq_init.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm831x-irq.c", i32 566, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/mfd/wm831x-irq.c", i32 581, i32 4}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !4, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @wm831x_irq_init._entry, !4, !"_entry", i1 false, i1 false}
!10 = !{ptr @wm831x_irq_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/mfd/wm831x-irq.c", i32 602, i32 3}
!13 = !{ptr @wm831x_irq_init._entry.6, !12, !"_entry", i1 false, i1 false}
!14 = !{ptr @wm831x_irq_init._entry_ptr.8, !12, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/mfd/wm831x-irq.c", i32 625, i32 4}
!17 = !{ptr @wm831x_irq_init._entry.9, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @wm831x_irq_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/wm831x-irq.c", i32 632, i32 9}
!21 = !{ptr @.str.14, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/mfd/wm831x-irq.c", i32 634, i32 4}
!23 = !{ptr @.str.15, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @wm831x_irq_init._entry.13, !22, !"_entry", i1 false, i1 false}
!25 = !{ptr @wm831x_irq_init._entry_ptr.16, !22, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/mfd/wm831x-irq.c", i32 639, i32 3}
!28 = !{ptr @wm831x_irq_init._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @wm831x_irq_init._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @wm831x_irq_domain_ops, !31, !"wm831x_irq_domain_ops", i1 false, i1 false}
!31 = !{!"../drivers/mfd/wm831x-irq.c", i32 555, i32 36}
!32 = !{ptr @wm831x_irq_chip, !33, !"wm831x_irq_chip", i1 false, i1 false}
!33 = !{!"../drivers/mfd/wm831x-irq.c", i32 438, i32 24}
!34 = !{ptr @wm831x_irqs, !35, !"wm831x_irqs", i1 false, i1 false}
!35 = !{!"../drivers/mfd/wm831x-irq.c", i32 31, i32 31}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/mfd/wm831x-irq.c", i32 355, i32 4}
!38 = !{ptr @.str.21, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @wm831x_irq_sync_unlock.__UNIQUE_ID_ddebug288, !37, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!40 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/mfd/wm831x-irq.c", i32 460, i32 3}
!42 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @wm831x_irq_thread._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @wm831x_irq_thread._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.25, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/mfd/wm831x-irq.c", i32 493, i32 5}
!47 = !{ptr @wm831x_irq_thread._entry.24, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @wm831x_irq_thread._entry_ptr.26, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{i8 0, i8 2}
!59 = !{!"auto-init"}
!60 = !{i64 2148704985, i64 2148704990, i64 2148705003, i64 2148705047, i64 2148705081, i64 2148705102}
