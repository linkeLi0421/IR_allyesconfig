; ModuleID = '/llk/IR_all_yes/drivers/usb/c67x00/c67x00-hcd.c_pt.bc'
source_filename = "../drivers/usb/c67x00/c67x00-hcd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.hc_driver = type { ptr, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.c67x00_sie = type { %struct.spinlock, ptr, ptr, ptr, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.c67x00_device = type { %struct.c67x00_hpi, [2 x %struct.c67x00_sie], ptr, ptr }
%struct.c67x00_hpi = type { ptr, i32, %struct.spinlock, %struct.c67x00_lcp }
%struct.c67x00_lcp = type { %struct.mutex, %struct.completion, i16 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.usb_hcd = type { %struct.usb_bus, %struct.kref, ptr, i32, [24 x i8], %struct.timer_list, ptr, %struct.work_struct, %struct.work_struct, ptr, ptr, ptr, i32, i32, i16, i32, ptr, i32, i32, i32, %struct.giveback_urb_bh, %struct.giveback_urb_bh, ptr, ptr, ptr, ptr, [4 x ptr], i32, ptr, [4 x i8], [0 x i32] }
%struct.usb_bus = type { ptr, ptr, i32, ptr, i8, i8, i8, i32, i32, %struct.mutex, %struct.usb_devmap, ptr, ptr, i32, i32, i32, i32, ptr, i32 }
%struct.usb_devmap = type { [4 x i32] }
%struct.giveback_urb_bh = type { i8, %struct.spinlock, %struct.list_head, %struct.tasklet_struct, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.68, i32 }
%union.anon.68 = type { ptr }
%struct.c67x00_hcd = type { %struct.spinlock, ptr, i32, i32, i32, [4 x %struct.list_head], i32, i32, %struct.list_head, i32, i16, i16, i16, i16, %struct.work_struct, %struct.completion, i16, i16 }

@c67x00_hc_driver = internal constant { %struct.hc_driver, [40 x i8] } { %struct.hc_driver { ptr @.str.6, ptr @.str.7, i32 224, ptr null, i32 17, ptr null, ptr @c67x00_hcd_start, ptr null, ptr null, ptr @c67x00_hcd_stop, ptr null, ptr @c67x00_hcd_get_frame, ptr @c67x00_urb_enqueue, ptr @c67x00_urb_dequeue, ptr null, ptr null, ptr @c67x00_endpoint_disable, ptr null, ptr @c67x00_hub_status_data, ptr @c67x00_hub_control, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"c67x00_sie\00", [21 x i8] zeroinitializer }, align 32
@c67x00_hcd_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&c67x00->lock\00", [18 x i8] zeroinitializer }, align 32
@c67x00_hcd_probe.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"c67x00\00", [25 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"c67x00_hcd_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/usb/c67x00/c67x00-hcd.c\00", [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: usb_add_hcd returned %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"c67x00-hcd\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Cypress C67X00 Host Controller\00", [33 x i8] zeroinitializer }, align 32
@c67x00_hcd_get_frame.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 72, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"c67x00_hcd_get_frame\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 32, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"c67x00_hub_control\00", [45 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SetPortFeature %d (SUSPEND)\0A\00", [35 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.12, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: SetPortFeature %d (0x%04x) Error!\0A\00", [57 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.13, i8 0, i8 41, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ClearPortFeature (%d): C_ENABLE\0A\00", [63 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.14, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ClearPortFeature (%d): SUSPEND\0A\00", [32 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.15, i8 0, i8 44, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ClearPortFeature (%d): C_SUSPEND\0A\00", [62 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.16, i8 0, i8 46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ClearPortFeature (%d): POWER\0A\00", [34 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.17, i8 0, i8 49, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ClearPortFeature (%d): OVER_CURRENT\0A\00", [59 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.18, i8 0, i8 50, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ClearPortFeature (%d): C_RESET\0A\00", [32 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.19, i8 0, i8 52, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: ClearPortFeature %d (0x%04x) Error!\0A\00", [55 x i8] zeroinitializer }, align 32
@c67x00_hub_des = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\09)\02\00\002\00\00\FF", [23 x i8] zeroinitializer }, align 32
@c67x00_hub_control.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.20, i8 0, i8 55, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%s: unknown\0A\00", [19 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@c67x00_hcd_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.4, i32 247, ptr @.str.24, ptr @.str.25 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unknown SIE msg flag(s): 0x%04x\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"c67x00_hcd_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@c67x00_hcd_irq._entry_ptr = internal global ptr @c67x00_hcd_irq._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 8193, i64 8195, i64 8961, i64 8963, i64 40960, i64 40966, i64 41728]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 16, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.27 = internal global [10 x i64] [i64 8, i64 16, i64 1, i64 2, i64 8, i64 16, i64 17, i64 18, i64 19, i64 20]
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"c67x00_hc_driver\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 294, i32 31 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 339, i32 56 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 346, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 368, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 295, i32 17 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 296, i32 18 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 288, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 130, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 146, i32 4 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 166, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 172, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 178, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 184, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 195, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 201, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 207, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"c67x00_hub_des\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 21, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 220, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.104 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 87, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [35 x i8] c"../drivers/usb/c67x00/c67x00-hcd.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 246, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @c67x00_hcd_irq._entry, ptr @c67x00_hcd_irq._entry_ptr, ptr @c67x00_hc_driver, ptr @.str, ptr @c67x00_hcd_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @c67x00_hub_des, ptr @.str.20, ptr @init_completion.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_hc_driver to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_hcd_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_hub_des to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c67x00_hcd_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @c67x00_hcd_probe(ptr noundef %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @usb_disabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %pdev = getelementptr inbounds %struct.c67x00_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %call3 = tail call ptr @usb_create_hcd(ptr noundef nonnull @c67x00_hc_driver, ptr noundef %dev2, ptr noundef nonnull @.str) #5
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hcd_priv.i = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 0, i32 30
  tail call void @__raw_spin_lock_init(ptr noundef %hcd_priv.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @c67x00_hcd_probe.__key, i16 noundef signext 3) #5
  %sie9 = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 1, i32 3
  %4 = ptrtoint ptr %sie9 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %sie, ptr %sie9, align 4
  %list = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 1, i32 4, i32 2
  %5 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 1, i32 4, i32 3
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %arrayidx11 = getelementptr %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 1, i32 4, i32 6
  %7 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %arrayidx11, ptr %arrayidx11, align 4
  %prev.i90 = getelementptr %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 1, i32 4, i32 7
  %8 = ptrtoint ptr %prev.i90 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %arrayidx11, ptr %prev.i90, align 4
  %arrayidx13 = getelementptr %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 2
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %arrayidx13, ptr %arrayidx13, align 4
  %prev.i91 = getelementptr %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 3
  %10 = ptrtoint ptr %prev.i91 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %arrayidx13, ptr %prev.i91, align 4
  %arrayidx15 = getelementptr %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %arrayidx15, ptr %arrayidx15, align 4
  %prev.i92 = getelementptr %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 4
  %12 = ptrtoint ptr %prev.i92 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx15, ptr %prev.i92, align 4
  %urb_count = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 1, i32 4, i32 1
  %13 = ptrtoint ptr %urb_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %urb_count, align 4
  %td_list = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 5, i32 1, i32 1
  %14 = ptrtoint ptr %td_list to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %td_list, ptr %td_list, align 4
  %prev.i93 = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 5, i32 2
  %15 = ptrtoint ptr %prev.i93 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %td_list, ptr %prev.i93, align 4
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %16 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool16.not = icmp eq i32 %17, 0
  %conv = select i1 %tobool16.not, i16 1280, i16 2816
  %td_base_addr = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 5, i32 6
  %18 = ptrtoint ptr %td_base_addr to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv, ptr %td_base_addr, align 4
  %19 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool18.not = icmp eq i32 %20, 0
  %conv22 = select i1 %tobool18.not, i16 1792, i16 3328
  %buf_base_addr = getelementptr inbounds %struct.c67x00_hcd, ptr %hcd_priv.i, i32 0, i32 11
  %21 = ptrtoint ptr %buf_base_addr to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv22, ptr %buf_base_addr, align 2
  %max_frame_bw = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 9, i32 5, i32 3
  %22 = ptrtoint ptr %max_frame_bw to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 9750, ptr %max_frame_bw, align 4
  tail call void @c67x00_ll_husb_init_host_port(ptr noundef %sie) #5
  %endpoint_disable = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 0, i32 18
  %23 = ptrtoint ptr %endpoint_disable to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %endpoint_disable, align 4
  %wait.i = getelementptr inbounds %struct.usb_hcd, ptr %call3, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @init_completion.__key) #5
  %call23 = tail call i32 @c67x00_sched_start_scheduler(ptr noundef %hcd_priv.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end6.err1_crit_edge

if.end6.err1_crit_edge:                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end26:                                         ; preds = %if.end6
  %call27 = tail call i32 @usb_add_hcd(ptr noundef nonnull %call3, i32 noundef 0, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end42, label %do.body30

do.body30:                                        ; preds = %if.end26
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hcd_probe.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hcd_probe, %if.then35)) #5
          to label %err2 [label %if.then35], !srcloc !73

if.then35:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  %pdev37 = getelementptr inbounds %struct.c67x00_device, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %pdev37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pdev37, align 4
  %dev38 = getelementptr inbounds %struct.platform_device, ptr %27, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hcd_probe.__UNIQUE_ID_ddebug245, ptr noundef %dev38, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.3, i32 noundef %call27) #5
  br label %err2

if.end42:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call3, align 8
  %call43 = tail call i32 @device_wakeup_enable(ptr noundef %29) #5
  %call50 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %sie) #5
  %private_data = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 1
  %30 = ptrtoint ptr %private_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %hcd_priv.i, ptr %private_data, align 4
  %irq = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 2
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @c67x00_hcd_irq, ptr %irq, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %sie, i32 noundef %call50) #5
  br label %cleanup

err2:                                             ; preds = %if.then35, %do.body30
  tail call void @c67x00_sched_stop_scheduler(ptr noundef %hcd_priv.i) #5
  br label %err1

err1:                                             ; preds = %err2, %if.end6.err1_crit_edge
  %retval1.0 = phi i32 [ %call23, %if.end6.err1_crit_edge ], [ %call27, %err2 ]
  tail call void @usb_put_hcd(ptr noundef nonnull %call3) #5
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end42, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end42 ], [ -19, %entry.cleanup_crit_edge ], [ %retval1.0, %err1 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_disabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @usb_create_hcd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_husb_init_host_port(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c67x00_sched_start_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_hcd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @c67x00_hcd_irq(ptr noundef %sie, i16 noundef zeroext %int_status, i16 noundef zeroext %msg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %msg)
  %tobool.not = icmp eq i16 %msg, 0
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.then:                                          ; preds = %entry
  %conv = zext i16 %msg to i32
  %and = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %do.end, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @c67x00_sched_kick(ptr noundef %1) #5
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str.22, i32 noundef %conv) #8
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then2, %entry.if.end5_crit_edge
  %state = getelementptr i8, ptr %1, i32 -12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %if.end5.cleanup_crit_edge, label %if.end10, !prof !74

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  %flags = getelementptr i8, ptr %1, i32 -244
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and11 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %conv15 = zext i16 %int_status to i32
  %sie_num = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 4
  %8 = ptrtoint ptr %sie_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sie_num, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool16.not = icmp eq i32 %9, 0
  %shl = select i1 %tobool16.not, i32 1024, i32 4096
  %and17 = and i32 %shl, %conv15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %if.then19

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then19:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @c67x00_ll_usb_clear_status(ptr noundef %sie, i16 noundef zeroext 512) #5
  tail call void @c67x00_sched_kick(ptr noundef %1) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_sched_stop_scheduler(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_put_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @c67x00_hcd_remove(ptr nocapture noundef readonly %sie) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -600
  tail call void @c67x00_sched_stop_scheduler(ptr noundef %1) #5
  tail call void @usb_remove_hcd(ptr noundef %add.ptr.i) #5
  tail call void @usb_put_hcd(ptr noundef %add.ptr.i) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_hcd(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_hcd_start(ptr noundef %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %uses_new_polling = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 14
  %0 = ptrtoint ptr %uses_new_polling to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %uses_new_polling, align 4
  %bf.set = or i16 %bf.load, 1024
  store i16 %bf.set, ptr %uses_new_polling, align 4
  %state = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 27
  %1 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 1, ptr %state, align 4
  %flags = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 0, i32 12
  tail call void @_set_bit(i32 noundef 2, ptr noundef %flags) #5
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @c67x00_hcd_stop(ptr nocapture noundef %hcd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_hcd_get_frame(ptr nocapture noundef readonly %hcd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hcd_get_frame.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hcd_get_frame, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !73

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hcd_get_frame.__UNIQUE_ID_ddebug244, ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %sie = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %2 = ptrtoint ptr %sie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sie, align 4
  %call5 = tail call zeroext i16 @c67x00_ll_husb_get_frame(ptr noundef %3) #5
  %4 = and i16 %call5, 2047
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool8.not = icmp eq i16 %4, 0
  %conv7 = zext i16 %4 to i32
  %sub = add nsw i32 %conv7, -1
  %cond = select i1 %tobool8.not, i32 2047, i32 %sub
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c67x00_urb_enqueue(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @c67x00_urb_dequeue(ptr noundef, ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_endpoint_disable(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_hub_status_data(ptr nocapture noundef readonly %hcd, ptr nocapture noundef %buf) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sie1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %sie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sie1, align 4
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %buf, align 1
  %call2 = tail call zeroext i16 @c67x00_ll_usb_get_status(ptr noundef %1) #5
  %conv = zext i16 %call2 to i32
  %and = and i32 %conv, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %buf, align 1
  %conv5 = or i8 %4, 1
  store i8 %conv5, ptr %buf, align 1
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %and.1 = and i32 %conv, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool3.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool3.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %buf, align 1
  %conv5.1 = or i8 %6, 2
  store i8 %conv5.1, ptr %buf, align 1
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %7 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %buf, align 1
  %shl7 = shl i8 %8, 1
  store i8 %shl7, ptr %buf, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %shl7)
  %tobool9 = icmp ne i8 %shl7, 0
  %lnot.ext = zext i1 %tobool9 to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @c67x00_hub_control(ptr nocapture noundef %hcd, i16 noundef zeroext %typeReq, i16 noundef zeroext %wValue, i16 noundef zeroext %wIndex, ptr nocapture noundef writeonly %buf, i16 noundef zeroext %wLength) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %sie1 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 3
  %0 = ptrtoint ptr %sie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sie1, align 4
  %conv = zext i16 %wIndex to i32
  %sub = add nsw i32 %conv, -1
  %2 = zext i16 %typeReq to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i16 %typeReq, label %do.body251 [
    i16 -24576, label %sw.bb
    i16 -23808, label %sw.bb3
    i16 8195, label %entry.sw.bb48_crit_edge
    i16 8193, label %entry.sw.bb48_crit_edge376
    i16 8963, label %sw.bb51
    i16 8961, label %sw.bb90
    i16 -24570, label %sw.bb244
  ]

entry.sw.bb48_crit_edge376:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb48

entry.sw.bb48_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb48

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %buf, align 4
  br label %sw.epilog270

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex)
  %cmp = icmp ugt i16 %wIndex, 2
  br i1 %cmp, label %sw.bb3.cleanup_crit_edge, label %if.end

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %sw.bb3
  %call6 = tail call zeroext i16 @c67x00_ll_usb_get_status(ptr noundef %1) #5
  %call7 = tail call zeroext i16 @c67x00_ll_get_usb_ctl(ptr noundef %1) #5
  %conv8 = zext i16 %call6 to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  %cond = select i1 %tobool.not, i32 16, i32 32
  %and = and i32 %cond, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool9.not = icmp eq i32 %and, 0
  %spec.select = select i1 %tobool9.not, i16 0, i16 256
  %cond16 = select i1 %tobool.not, i32 4, i32 8
  %and17 = and i32 %cond16, %conv8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  %wPortStatus.0 = select i1 %tobool18.not, i16 257, i16 256
  %conv24 = zext i16 %call7 to i32
  %cond26 = select i1 %tobool.not, i32 1024, i32 2048
  %and27 = and i32 %cond26, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = or i16 %wPortStatus.0, 512
  %shl = shl nuw i32 1, %sub
  %low_speed_ports = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %5 = ptrtoint ptr %low_speed_ports to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %low_speed_ports, align 4
  %or33 = or i32 %6, %shl
  store i32 %or33, ptr %low_speed_ports, align 4
  br label %if.end37

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl34 = shl nuw i32 1, %sub
  %neg = xor i32 %shl34, -1
  %low_speed_ports35 = getelementptr inbounds %struct.usb_hcd, ptr %hcd, i32 1, i32 0, i32 9, i32 1, i32 4
  %7 = ptrtoint ptr %low_speed_ports35 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %low_speed_ports35, align 4
  %and36 = and i32 %8, %neg
  store i32 %and36, ptr %low_speed_ports35, align 4
  br label %if.end37

if.end37:                                         ; preds = %if.else, %if.then29
  %wPortStatus.1 = phi i16 [ %4, %if.then29 ], [ %wPortStatus.0, %if.else ]
  %cond40 = select i1 %tobool.not, i32 1, i32 2
  %and41 = and i32 %cond40, %conv24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %9 = or i16 %wPortStatus.1, 2
  %spec.select329 = select i1 %tobool42.not, i16 %wPortStatus.1, i16 %9
  %10 = tail call i16 @llvm.bswap.i16(i16 %spec.select329)
  %11 = ptrtoint ptr %buf to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %buf, align 2
  %add.ptr = getelementptr i8, ptr %buf, i32 2
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %spec.select, ptr %add.ptr, align 2
  br label %sw.epilog270

sw.bb48:                                          ; preds = %entry.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge376
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wValue)
  %switch = icmp ult i16 %wValue, 2
  br i1 %switch, label %sw.bb48.sw.epilog270_crit_edge, label %sw.bb48.cleanup_crit_edge

sw.bb48.cleanup_crit_edge:                        ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb48.sw.epilog270_crit_edge:                   ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog270

sw.bb51:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex)
  %cmp53 = icmp ugt i16 %wIndex, 2
  br i1 %cmp53, label %sw.bb51.cleanup_crit_edge, label %if.end56

sw.bb51.cleanup_crit_edge:                        ; preds = %sw.bb51
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end56:                                         ; preds = %sw.bb51
  %conv57 = zext i16 %wValue to i32
  %13 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.26)
  switch i16 %wValue, label %do.body69 [
    i16 2, label %do.body
    i16 4, label %sw.bb66
    i16 8, label %if.end56.sw.epilog270_crit_edge
  ]

if.end56.sw.epilog270_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog270

do.body:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then63)) #5
          to label %sw.epilog270 [label %if.then63], !srcloc !73

if.then63:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug232, ptr noundef %15, ptr noundef nonnull @.str.11, i32 noundef %sub) #5
  br label %sw.epilog270

sw.bb66:                                          ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @c67x00_hub_reset_host_port(ptr noundef %1, i32 noundef %sub)
  br label %sw.epilog270

do.body69:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then81)) #5
          to label %cleanup [label %if.then81], !srcloc !73

if.then81:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #7
  %16 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug233, ptr noundef %17, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, i32 noundef %sub, i32 noundef %conv57) #5
  br label %cleanup

sw.bb90:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %wIndex)
  %cmp92 = icmp ugt i16 %wIndex, 2
  br i1 %cmp92, label %sw.bb90.cleanup_crit_edge, label %if.end95

sw.bb90.cleanup_crit_edge:                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end95:                                         ; preds = %sw.bb90
  %conv96 = zext i16 %wValue to i32
  %18 = zext i16 %wValue to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.27)
  switch i16 %wValue, label %do.body223 [
    i16 1, label %sw.bb97
    i16 17, label %do.body99
    i16 2, label %do.body119
    i16 18, label %do.body139
    i16 8, label %do.body159
    i16 16, label %sw.bb178
    i16 19, label %do.body183
    i16 20, label %do.body203
  ]

sw.bb97:                                          ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @c67x00_hub_reset_host_port(ptr noundef %1, i32 noundef %sub)
  br label %sw.epilog270

do.body99:                                        ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then111)) #5
          to label %sw.epilog270 [label %if.then111], !srcloc !73

if.then111:                                       ; preds = %do.body99
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug234, ptr noundef %20, ptr noundef nonnull @.str.13, i32 noundef %sub) #5
  br label %sw.epilog270

do.body119:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then131)) #5
          to label %sw.epilog270 [label %if.then131], !srcloc !73

if.then131:                                       ; preds = %do.body119
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug235, ptr noundef %22, ptr noundef nonnull @.str.14, i32 noundef %sub) #5
  br label %sw.epilog270

do.body139:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then151)) #5
          to label %sw.epilog270 [label %if.then151], !srcloc !73

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #7
  %23 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug236, ptr noundef %24, ptr noundef nonnull @.str.15, i32 noundef %sub) #5
  br label %sw.epilog270

do.body159:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then171)) #5
          to label %cleanup [label %if.then171], !srcloc !73

if.then171:                                       ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug237, ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef %sub) #5
  br label %cleanup

sw.bb178:                                         ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool179.not = icmp eq i32 %sub, 0
  %conv181 = select i1 %tobool179.not, i16 16, i16 32
  tail call void @c67x00_ll_usb_clear_status(ptr noundef %1, i16 noundef zeroext %conv181) #5
  br label %sw.epilog270

do.body183:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then195)) #5
          to label %sw.epilog270 [label %if.then195], !srcloc !73

if.then195:                                       ; preds = %do.body183
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug238, ptr noundef %28, ptr noundef nonnull @.str.17, i32 noundef %sub) #5
  br label %sw.epilog270

do.body203:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then215)) #5
          to label %sw.epilog270 [label %if.then215], !srcloc !73

if.then215:                                       ; preds = %do.body203
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug239, ptr noundef %30, ptr noundef nonnull @.str.18, i32 noundef %sub) #5
  br label %sw.epilog270

do.body223:                                       ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then235)) #5
          to label %cleanup [label %if.then235], !srcloc !73

if.then235:                                       ; preds = %do.body223
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug240, ptr noundef %32, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.10, i32 noundef %sub, i32 noundef %conv96) #5
  br label %cleanup

sw.bb244:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %33 = tail call i16 @llvm.umin.i16(i16 %wLength, i16 9)
  %cond249 = zext i16 %33 to i32
  %34 = call ptr @memcpy(ptr %buf, ptr @c67x00_hub_des, i32 %cond249)
  br label %sw.epilog270

do.body251:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @c67x00_hub_control.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@c67x00_hub_control, %if.then263)) #5
          to label %cleanup [label %if.then263], !srcloc !73

if.then263:                                       ; preds = %do.body251
  call void @__sanitizer_cov_trace_pc() #7
  %35 = ptrtoint ptr %hcd to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hcd, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @c67x00_hub_control.__UNIQUE_ID_ddebug243, ptr noundef %36, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.10) #5
  br label %cleanup

sw.epilog270:                                     ; preds = %sw.bb244, %if.then215, %do.body203, %if.then195, %do.body183, %sw.bb178, %if.then151, %do.body139, %if.then131, %do.body119, %if.then111, %do.body99, %sw.bb97, %sw.bb66, %if.then63, %do.body, %if.end56.sw.epilog270_crit_edge, %sw.bb48.sw.epilog270_crit_edge, %if.end37, %sw.bb
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog270, %if.then263, %do.body251, %if.then235, %do.body223, %if.then171, %do.body159, %sw.bb90.cleanup_crit_edge, %if.then81, %do.body69, %sw.bb51.cleanup_crit_edge, %sw.bb48.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog270 ], [ -32, %sw.bb3.cleanup_crit_edge ], [ -32, %sw.bb48.cleanup_crit_edge ], [ -32, %sw.bb51.cleanup_crit_edge ], [ -32, %if.then81 ], [ -32, %sw.bb90.cleanup_crit_edge ], [ -32, %if.then171 ], [ -32, %if.then235 ], [ -32, %if.then263 ], [ -32, %do.body69 ], [ -32, %do.body159 ], [ -32, %do.body223 ], [ -32, %do.body251 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @c67x00_ll_husb_get_frame(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @c67x00_ll_usb_get_status(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @c67x00_ll_get_usb_ctl(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @c67x00_hub_reset_host_port(ptr noundef %sie, i32 noundef %port) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %private_data = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 1
  %0 = ptrtoint ptr %private_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private_data, align 4
  tail call void @c67x00_ll_husb_reset(ptr noundef %sie, i32 noundef %port) #5
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #5
  tail call void @c67x00_ll_husb_reset_port(ptr noundef %sie, i32 noundef %port) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #5
  %dev = getelementptr inbounds %struct.c67x00_sie, ptr %sie, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void @c67x00_ll_set_husb_eot(ptr noundef %3, i16 noundef zeroext 2250) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_usb_clear_status(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_husb_reset(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_husb_reset_port(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_ll_set_husb_eot(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @c67x00_sched_kick(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !20, !21, !23, !24, !25, !27, !28, !30, !31, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !48, !49, !51, !52, !54, !56, !57, !59, !60, !61, !62, !63}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 339, i32 56}
!2 = !{ptr @c67x00_hcd_probe.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 346, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 368, i32 3}
!7 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.4, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.5, !6, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @c67x00_hcd_probe.__UNIQUE_ID_ddebug245, !6, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 295, i32 17}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 296, i32 18}
!15 = !{ptr @c67x00_hc_driver, !16, !"c67x00_hc_driver", i1 false, i1 false}
!16 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 294, i32 31}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 288, i32 2}
!19 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @c67x00_hcd_get_frame.__UNIQUE_ID_ddebug244, !18, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 130, i32 4}
!23 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug232, !22, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 146, i32 4}
!27 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug233, !26, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 166, i32 4}
!30 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug234, !29, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 172, i32 4}
!33 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug235, !32, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 178, i32 4}
!36 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug236, !35, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 184, i32 4}
!39 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug237, !38, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 195, i32 4}
!42 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug238, !41, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 201, i32 4}
!45 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug239, !44, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 207, i32 4}
!48 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug240, !47, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 220, i32 3}
!51 = !{ptr @c67x00_hub_control.__UNIQUE_ID_ddebug243, !50, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!52 = !{ptr @c67x00_hub_des, !53, !"c67x00_hub_des", i1 false, i1 false}
!53 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 21, i32 13}
!54 = !{ptr @init_completion.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/linux/completion.h", i32 87, i32 2}
!56 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.22, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/usb/c67x00/c67x00-hcd.c", i32 246, i32 4}
!59 = !{ptr @.str.23, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @c67x00_hcd_irq._entry, !58, !"_entry", i1 false, i1 false}
!63 = !{ptr @c67x00_hcd_irq._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 2148284835, i64 2148284840, i64 2148284853, i64 2148284897, i64 2148284931, i64 2148284952}
!74 = !{!"branch_weights", i32 1, i32 2000}
