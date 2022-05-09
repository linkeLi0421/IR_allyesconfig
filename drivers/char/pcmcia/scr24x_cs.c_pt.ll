; ModuleID = '/llk/IR_all_yes/drivers/char/pcmcia/scr24x_cs.c_pt.bc'
source_filename = "../drivers/char/pcmcia/scr24x_cs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pcmcia_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, %struct.pcmcia_dynids }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pcmcia_dynids = type { %struct.mutex, %struct.list_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcmcia_device_id = type { i16, i16, i16, i8, i8, i8, [4 x i32], [4 x ptr], i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.scr24x_dev = type { ptr, %struct.cdev, [271 x i8], i32, %struct.mutex, %struct.kref, ptr }
%struct.cdev = type { %struct.kobject, ptr, ptr, %struct.list_head, i32, i32 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@scr24x_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @scr24x_probe, ptr @scr24x_remove, ptr null, ptr null, ptr null, ptr @scr24x_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@scr24x_devt = internal global { i32, [28 x i8] } zeroinitializer, align 32
@scr24x_class = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_scr24x_cs__236_354_scr24x_init6 = internal global ptr @scr24x_init, section ".initcall6.init", align 4
@__exitcall_scr24x_exit = internal global ptr @scr24x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author237 = internal constant [32 x i8] c"scr24x_cs.author=Lubomir Rintel\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [61 x i8] c"scr24x_cs.description=SCR24x PCMCIA Smart Card Reader Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [45 x i8] c"scr24x_cs.file=drivers/char/pcmcia/scr24x_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [22 x i8] c"scr24x_cs.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"scr24x_cs\00", [22 x i8] zeroinitializer }, align 32
@scr24x_ids = internal constant { [5 x %struct.pcmcia_device_id], [92 x i8] } { [5 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 48, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1405850873, i32 -1075869275, i32 0, i32 0], [4 x ptr] [ptr @.str.11, ptr @.str.12, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1651634083, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.13, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 542435550, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.14, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id { i16 16, i16 0, i16 0, i8 0, i8 0, i8 0, [4 x i32] [i32 1419982437, i32 0, i32 0, i32 0], [4 x ptr] [ptr @.str.15, ptr null, ptr null, ptr null], i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [92 x i8] zeroinitializer }, align 32
@scr24x_minors = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@scr24x_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&dev->lock\00", [21 x i8] zeroinitializer }, align 32
@scr24x_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 281, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SCR24x Chip Card Interface\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scr24x_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/char/pcmcia/scr24x_cs.c\00", [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@scr24x_probe._entry_ptr = internal global ptr @scr24x_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HP\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"PC Card Smart Card Reader\00", [38 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCR241 PCMCIA\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCR243 PCMCIA\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"SCR24x PCMCIA\00", [18 x i8] zeroinitializer }, align 32
@scr24x_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scr24x\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"scr24x_driver\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 316, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [12 x i8] c"scr24x_devt\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 48, i32 14 }
@___asan_gen_.23 = private unnamed_addr constant [13 x i8] c"scr24x_class\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 47, i32 22 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 318, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"scr24x_ids\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 306, i32 38 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"scr24x_minors\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 45, i32 8 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 247, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 281, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 307, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 309, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 310, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 311, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.77 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.78 = private constant [35 x i8] c"../drivers/char/pcmcia/scr24x_cs.c\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 328, i32 17 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_scr24x_exit, ptr @__initcall__kmod_scr24x_cs__236_354_scr24x_init6, ptr @scr24x_exit, ptr @scr24x_probe._entry, ptr @scr24x_probe._entry_ptr, ptr @scr24x_driver, ptr @scr24x_devt, ptr @scr24x_class, ptr @.str, ptr @scr24x_ids, ptr @scr24x_minors, ptr @scr24x_probe.__key, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @scr24x_init.__key, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_devt to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_class to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_ids to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_minors to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scr24x_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @scr24x_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @scr24x_driver) #5
  %0 = load i32, ptr @scr24x_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %0, i32 noundef 8) #5
  %1 = load ptr, ptr @scr24x_class, align 4
  tail call void @class_destroy(ptr noundef %1) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_chrdev_region(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @class_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @scr24x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__class_create(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull @scr24x_init.__key) #5
  store ptr %call, ptr @scr24x_class, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @alloc_chrdev_region(ptr noundef nonnull @scr24x_devt, i32 noundef 0, i32 noundef 8, ptr noundef nonnull @.str.16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = load ptr, ptr @scr24x_class, align 4
  tail call void @class_destroy(ptr noundef %1) #5
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @scr24x_driver) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.then8, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %2 = load i32, ptr @scr24x_devt, align 4
  tail call void @unregister_chrdev_region(i32 noundef %2, i32 noundef 8) #5
  %3 = load ptr, ptr @scr24x_class, align 4
  tail call void @class_destroy(ptr noundef %3) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end5.cleanup_crit_edge, %if.then4, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %call3, %if.then4 ], [ %call6, %if.then8 ], [ %call6, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scr24x_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 10), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 540) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @_find_first_zero_bit_be(ptr noundef nonnull @scr24x_minors, i32 noundef 8) #5
  %devno = getelementptr inbounds %struct.scr24x_dev, ptr %call7.i.i, i32 0, i32 3
  %1 = ptrtoint ptr %devno to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call1, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call1)
  %cmp = icmp sgt i32 %call1, 7
  br i1 %cmp, label %if.end.if.end46_crit_edge, label %do.body

if.end.if.end46_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body:                                          ; preds = %if.end
  %lock = getelementptr inbounds %struct.scr24x_dev, ptr %call7.i.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @scr24x_probe.__key) #5
  %refcnt = getelementptr inbounds %struct.scr24x_dev, ptr %call7.i.i, i32 0, i32 5
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #5
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile i32 1, ptr %refcnt, align 4
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %3 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %priv, align 8
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %4 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %config_flags, align 4
  %or = or i32 %5, 2049
  store i32 %or, ptr %config_flags, align 4
  %call5 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @scr24x_config_check, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %do.body.err_crit_edge, label %if.end8

do.body.err_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end8:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev9 = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  %6 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev9, ptr %call7.i.i, align 8
  %regs = getelementptr inbounds %struct.scr24x_dev, ptr %call7.i.i, i32 0, i32 6
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %regs, align 8
  br label %err

err:                                              ; preds = %if.end8, %do.body.err_crit_edge
  %ret.0.ph = phi i32 [ -5, %if.end8 ], [ %call5, %do.body.err_crit_edge ]
  %8 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pr = load i32, ptr %devno, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %.pr)
  %cmp43 = icmp slt i32 %.pr, 8
  br i1 %cmp43, label %if.then44, label %err.if.end46_crit_edge

err.if.end46_crit_edge:                           ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

if.then44:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef %.pr, ptr noundef nonnull @scr24x_minors) #5
  br label %if.end46

if.end46:                                         ; preds = %if.then44, %err.if.end46_crit_edge, %if.end.if.end46_crit_edge
  %ret.079 = phi i32 [ %ret.0.ph, %if.then44 ], [ %ret.0.ph, %err.if.end46_crit_edge ], [ -16, %if.end.if.end46_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.079, %if.end46 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @scr24x_remove(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %2 = load ptr, ptr @scr24x_class, align 4
  %3 = load i32, ptr @scr24x_devt, align 4
  %shr = and i32 %3, -1048576
  %devno = getelementptr inbounds %struct.scr24x_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %devno, align 4
  %or = or i32 %shr, %5
  tail call void @device_destroy(ptr noundef %2, i32 noundef %or) #5
  %lock = getelementptr inbounds %struct.scr24x_dev, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #5
  tail call void @pcmcia_disable_device(ptr noundef %link) #5
  %c_dev = getelementptr inbounds %struct.scr24x_dev, ptr %1, i32 0, i32 1
  tail call void @cdev_del(ptr noundef %c_dev) #5
  %6 = ptrtoint ptr %devno to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %devno, align 4
  tail call void @_clear_bit(i32 noundef %7, ptr noundef nonnull @scr24x_minors) #5
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %1, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #5
  %refcnt = getelementptr inbounds %struct.scr24x_dev, ptr %1, i32 0, i32 5
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !67
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #5
  %9 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #5, !srcloc !68
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %9, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.kref_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !69

if.end5.i.i.i.i.kref_put.exit_crit_edge:          ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %kref_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #5
  br label %kref_put.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #5, !srcloc !70
  tail call void @kfree(ptr noundef %1) #5
  br label %kref_put.exit

kref_put.exit:                                    ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.kref_put.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @scr24x_config_check(ptr noundef %link, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %0 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %resource, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %add.i)
  %cmp.not = icmp eq i32 %add.i, 17
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call1 = tail call i32 @pcmcia_request_io(ptr noundef %link) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -19, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @device_destroy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @cdev_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__class_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @alloc_chrdev_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !27, !28, !29, !30, !31, !32, !34, !36, !38, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56}
!llvm.named.register.sp = !{!57}
!llvm.module.flags = !{!58, !59, !60, !61, !62, !63, !64, !65}
!llvm.ident = !{!66}

!0 = !{ptr @__initcall__kmod_scr24x_cs__236_354_scr24x_init6, !1, !"__initcall__kmod_scr24x_cs__236_354_scr24x_init6", i1 false, i1 false}
!1 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 354, i32 1}
!2 = !{ptr @__exitcall_scr24x_exit, !3, !"__exitcall_scr24x_exit", i1 false, i1 false}
!3 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 355, i32 1}
!4 = !{ptr @__UNIQUE_ID_author237, !5, !"__UNIQUE_ID_author237", i1 false, i1 false}
!5 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 357, i32 1}
!6 = !{ptr @__UNIQUE_ID_description238, !7, !"__UNIQUE_ID_description238", i1 false, i1 false}
!7 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 358, i32 1}
!8 = !{ptr @__UNIQUE_ID_file239, !9, !"__UNIQUE_ID_file239", i1 false, i1 false}
!9 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 359, i32 1}
!10 = !{ptr @__UNIQUE_ID_license240, !9, !"__UNIQUE_ID_license240", i1 false, i1 false}
!11 = !{ptr @scr24x_class, !12, !"scr24x_class", i1 false, i1 false}
!12 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 47, i32 22}
!13 = !{ptr @scr24x_devt, !14, !"scr24x_devt", i1 false, i1 false}
!14 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 48, i32 14}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 318, i32 11}
!17 = !{ptr @scr24x_driver, !18, !"scr24x_driver", i1 false, i1 false}
!18 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 316, i32 29}
!19 = !{ptr @scr24x_probe.__key, !20, !"__key", i1 false, i1 false}
!20 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 247, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 279, i32 15}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 281, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @scr24x_probe._entry, !25, !"_entry", i1 false, i1 false}
!31 = !{ptr @scr24x_probe._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @scr24x_minors, !33, !"scr24x_minors", i1 false, i1 false}
!33 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 45, i32 8}
!34 = distinct !{null, !35, !"scr24x_fops", i1 false, i1 false}
!35 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 216, i32 37}
!36 = distinct !{null, !37, !"__already_done", i1 false, i1 false}
!37 = !{!"../include/linux/thread_info.h", i32 230, i32 6}
!38 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../include/linux/thread_info.h", i32 214, i32 2}
!41 = distinct !{null, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../include/linux/uaccess.h", i32 174, i32 2}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 307, i32 2}
!45 = !{ptr @.str.12, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 309, i32 2}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 310, i32 2}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 311, i32 2}
!52 = !{ptr @scr24x_ids, !53, !"scr24x_ids", i1 false, i1 false}
!53 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 306, i32 38}
!54 = !{ptr @scr24x_init.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../drivers/char/pcmcia/scr24x_cs.c", i32 328, i32 17}
!56 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!57 = !{!"sp"}
!58 = !{i32 1, !"wchar_size", i32 2}
!59 = !{i32 1, !"min_enum_size", i32 4}
!60 = !{i32 8, !"branch-target-enforcement", i32 0}
!61 = !{i32 8, !"sign-return-address", i32 0}
!62 = !{i32 8, !"sign-return-address-all", i32 0}
!63 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!64 = !{i32 7, !"uwtable", i32 1}
!65 = !{i32 7, !"frame-pointer", i32 2}
!66 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!67 = !{i64 2148559418}
!68 = !{i64 2148473882, i64 2148473914, i64 2148473943, i64 2148473977, i64 2148474008, i64 2148474031}
!69 = !{!"branch_weights", i32 2000, i32 1}
!70 = !{i64 2149605388}
