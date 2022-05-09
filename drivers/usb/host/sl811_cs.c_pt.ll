; ModuleID = '/llk/IR_all_yes/drivers/usb/host/sl811_cs.c_pt.bc'
source_filename = "../drivers/usb/host/sl811_cs.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.sl811_platform_data = type { i8, i8, i8, ptr, ptr }
%struct.pcmcia_device = type { ptr, ptr, i8, i8, ptr, %struct.list_head, i32, [6 x ptr], i32, i32, i32, i32, i32, i32, i32, i16, i8, i16, i16, [4 x ptr], i64, %struct.device, ptr, i32 }

@__UNIQUE_ID_author240 = internal constant [34 x i8] c"sl811_cs.author=Botond Botyanszki\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [53 x i8] c"sl811_cs.description=REX-CFU1U PCMCIA driver for 2.6\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [40 x i8] c"sl811_cs.file=drivers/usb/host/sl811_cs\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [21 x i8] c"sl811_cs.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_sl811_cs__248_203_sl811_cs_driver_init6 = internal global ptr @sl811_cs_driver_init, section ".initcall6.init", align 4
@sl811_cs_driver = internal global { %struct.pcmcia_driver, [52 x i8] } { %struct.pcmcia_driver { ptr @.str, ptr @sl811_cs_probe, ptr @sl811_cs_detach, ptr null, ptr null, ptr null, ptr @sl811_ids, %struct.device_driver zeroinitializer, %struct.pcmcia_dynids zeroinitializer }, [52 x i8] zeroinitializer }, align 32
@__exitcall_sl811_cs_driver_exit = internal global ptr @sl811_cs_driver_exit, section ".exitcall.exit", align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sl811_cs\00", [23 x i8] zeroinitializer }, align 32
@sl811_ids = internal constant { [2 x %struct.pcmcia_device_id], [56 x i8] } { [2 x %struct.pcmcia_device_id] [%struct.pcmcia_device_id { i16 3, i16 -16363, i16 1, i8 0, i8 0, i8 0, [4 x i32] zeroinitializer, [4 x ptr] zeroinitializer, i32 0, ptr null }, %struct.pcmcia_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sl811_cs_config.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sl811_cs_config\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/usb/host/sl811_cs.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sl811_cs_config\0A\00", [47 x i8] zeroinitializer }, align 32
@sl811_cs_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\014sl811_cs_config failed\0A\00", [38 x i8] zeroinitializer }, align 32
@sl811_cs_config._entry_ptr = internal global ptr @sl811_cs_config._entry, section ".printk_index", align 4
@platform_dev = internal global { %struct.platform_device, [224 x i8] } { %struct.platform_device { ptr null, i32 -1, i8 0, %struct.device { %struct.kobject zeroinitializer, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @platform_data, ptr null, %struct.mutex zeroinitializer, %struct.mutex zeroinitializer, %struct.dev_links_info zeroinitializer, %struct.dev_pm_info zeroinitializer, ptr null, ptr null, ptr null, %struct.dev_msi_info zeroinitializer, ptr null, ptr null, i64 0, i64 0, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, ptr null, %struct.dev_archdata zeroinitializer, ptr null, ptr null, i32 0, i32 0, %struct.spinlock zeroinitializer, %struct.list_head zeroinitializer, ptr null, ptr null, ptr @release_platform_dev, ptr null, ptr null, i32 0, i8 0 }, i64 0, %struct.device_dma_parameters zeroinitializer, i32 3, ptr @resources, ptr null, ptr null, ptr null, %struct.pdev_archdata zeroinitializer }, [224 x i8] zeroinitializer }, align 32
@resources = internal global { [3 x %struct.resource], [32 x i8] } { [3 x %struct.resource] [%struct.resource { i32 0, i32 0, ptr null, i32 1024, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 256, i32 0, ptr null, ptr null, ptr null }, %struct.resource { i32 0, i32 0, ptr null, i32 256, i32 0, ptr null, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@sl811h_driver = external dso_local local_unnamed_addr global %struct.platform_driver, align 4
@platform_data = internal global { %struct.sl811_platform_data, [20 x i8] } { %struct.sl811_platform_data { i8 0, i8 100, i8 50, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@release_platform_dev.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.5, ptr @.str.2, ptr @.str.6, i8 0, i8 13, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"release_platform_dev\00", [43 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"sl811_cs platform_dev release\0A\00", [33 x i8] zeroinitializer }, align 32
@sl811_cs_release.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.7, ptr @.str.2, ptr @.str.8, i8 0, i8 32, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sl811_cs_release\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sl811_cs_release\0A\00", [46 x i8] zeroinitializer }, align 32
@sl811_cs_detach.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sl811_cs_detach\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sl811_cs_detach\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"sl811_cs_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 196, i32 29 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 198, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [10 x i8] c"sl811_ids\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 190, i32 38 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 148, i32 2 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 170, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant [13 x i8] c"platform_dev\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 80, i32 31 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"resources\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 64, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"platform_data\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 58, i32 35 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 54, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 128, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [31 x i8] c"../drivers/usb/host/sl811_cs.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 118, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_sl811_cs_driver_exit, ptr @__initcall__kmod_sl811_cs__248_203_sl811_cs_driver_init6, ptr @sl811_cs_config._entry, ptr @sl811_cs_config._entry_ptr, ptr @sl811_cs_driver_exit, ptr @sl811_cs_driver, ptr @.str, ptr @sl811_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @platform_dev, ptr @resources, ptr @platform_data, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811_cs_driver to i32), i32 204, i32 256, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811_ids to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sl811_cs_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_dev to i32), i32 992, i32 1216, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @resources to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @platform_data to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811_cs_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pcmcia_register_driver(ptr noundef nonnull @sl811_cs_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sl811_cs_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @pcmcia_unregister_driver(ptr noundef nonnull @sl811_cs_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_unregister_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_register_driver(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811_cs_probe(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 4) #8
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %link, ptr %call7.i.i, align 8
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %priv, align 8
  %call1 = tail call fastcc i32 @sl811_cs_config(ptr noundef %link)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sl811_cs_detach(ptr noundef %link) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811_cs_detach.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811_cs_detach, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811_cs_detach.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.10) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811_cs_release.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811_cs_detach, %if.then.i)) #5
          to label %sl811_cs_release.exit [label %if.then.i], !srcloc !52

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811_cs_release.__UNIQUE_ID_ddebug246, ptr noundef %dev.i, ptr noundef nonnull @.str.8) #5
  br label %sl811_cs_release.exit

sl811_cs_release.exit:                            ; preds = %if.then.i, %do.end
  tail call void @pcmcia_disable_device(ptr noundef %link) #5
  tail call void @platform_device_unregister(ptr noundef nonnull @platform_dev) #5
  %priv = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 22
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  tail call void @kfree(ptr noundef %1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sl811_cs_config(ptr noundef %link) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811_cs_config.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811_cs_config, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811_cs_config.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.3) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %config_flags = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 10
  %0 = ptrtoint ptr %config_flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_flags, align 4
  %or = or i32 %1, 2817
  store i32 %or, ptr %config_flags, align 4
  %call4 = tail call i32 @pcmcia_loop_config(ptr noundef %link, ptr noundef nonnull @sl811_cs_config_check, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %do.end.do.end26_crit_edge

do.end.do.end26_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end7:                                          ; preds = %do.end
  %resource = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 7
  %2 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %resource, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %3, align 4
  %sub.i = add i32 %5, 1
  %add.i = sub i32 %sub.i, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %add.i)
  %cmp = icmp ult i32 %add.i, 2
  br i1 %cmp, label %if.end7.do.end26_crit_edge, label %if.end10

if.end7.do.end26_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end10:                                         ; preds = %if.end7
  %irq = getelementptr inbounds %struct.pcmcia_device, ptr %link, i32 0, i32 6
  %8 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %irq, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool11.not = icmp eq i32 %9, 0
  br i1 %tobool11.not, label %if.end10.do.end26_crit_edge, label %if.end13

if.end10.do.end26_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end13:                                         ; preds = %if.end10
  %call14 = tail call i32 @pcmcia_enable_device(ptr noundef %link) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.do.end26_crit_edge

if.end13.do.end26_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

if.end17:                                         ; preds = %if.end13
  %10 = load ptr, ptr getelementptr inbounds (%struct.platform_device, ptr @platform_dev, i32 0, i32 3, i32 1), align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %sl811_hc_init.exit, label %if.end17.do.end26_crit_edge

if.end17.do.end26_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

sl811_hc_init.exit:                               ; preds = %if.end17
  %11 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq, align 8
  %13 = ptrtoint ptr %resource to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %resource, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %14, align 4
  store ptr %dev, ptr getelementptr inbounds (%struct.platform_device, ptr @platform_dev, i32 0, i32 3, i32 1), align 8
  store i32 %12, ptr @resources, align 4
  store i32 %16, ptr getelementptr inbounds ([3 x %struct.resource], ptr @resources, i32 0, i32 1), align 4
  store i32 %16, ptr getelementptr inbounds ([3 x %struct.resource], ptr @resources, i32 0, i32 1, i32 1), align 4
  %add.i40 = add i32 %16, 1
  store i32 %add.i40, ptr getelementptr inbounds ([3 x %struct.resource], ptr @resources, i32 0, i32 2), align 4
  store i32 %add.i40, ptr getelementptr inbounds ([3 x %struct.resource], ptr @resources, i32 0, i32 2, i32 1), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.platform_driver, ptr @sl811h_driver, i32 0, i32 5) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.platform_driver, ptr @sl811h_driver, i32 0, i32 5), align 4
  store ptr %17, ptr @platform_dev, align 8
  %call.i = tail call i32 @platform_device_register(ptr noundef nonnull @platform_dev) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp22 = icmp slt i32 %call.i, 0
  br i1 %cmp22, label %sl811_hc_init.exit.do.end26_crit_edge, label %sl811_hc_init.exit.cleanup_crit_edge

sl811_hc_init.exit.cleanup_crit_edge:             ; preds = %sl811_hc_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sl811_hc_init.exit.do.end26_crit_edge:            ; preds = %sl811_hc_init.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end26

do.end26:                                         ; preds = %sl811_hc_init.exit.do.end26_crit_edge, %if.end17.do.end26_crit_edge, %if.end13.do.end26_crit_edge, %if.end10.do.end26_crit_edge, %if.end7.do.end26_crit_edge, %do.end.do.end26_crit_edge
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sl811_cs_release.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sl811_cs_config, %if.then.i)) #5
          to label %sl811_cs_release.exit [label %if.then.i], !srcloc !52

if.then.i:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sl811_cs_release.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.8) #5
  br label %sl811_cs_release.exit

sl811_cs_release.exit:                            ; preds = %if.then.i, %do.end26
  tail call void @pcmcia_disable_device(ptr noundef %link) #5
  tail call void @platform_device_unregister(ptr noundef nonnull @platform_dev) #5
  br label %cleanup

cleanup:                                          ; preds = %sl811_cs_release.exit, %sl811_hc_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %sl811_cs_release.exit ], [ 0, %sl811_hc_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_loop_config(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sl811_cs_config_check(ptr noundef %p_dev, ptr nocapture noundef readnone %priv_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %config_index = getelementptr inbounds %struct.pcmcia_device, ptr %p_dev, i32 0, i32 12
  %0 = ptrtoint ptr %config_index to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %config_index, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @pcmcia_request_io(ptr noundef %p_dev) #5
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_enable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcmcia_request_io(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @release_platform_dev(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @release_platform_dev.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@release_platform_dev, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !52

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @release_platform_dev.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.6) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %parent = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %parent, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pcmcia_disable_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !29, !30, !31, !33, !35, !36, !37, !39, !40, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__UNIQUE_ID_author240, !1, !"__UNIQUE_ID_author240", i1 false, i1 false}
!1 = !{!"../drivers/usb/host/sl811_cs.c", i32 29, i32 1}
!2 = !{ptr @__UNIQUE_ID_description241, !3, !"__UNIQUE_ID_description241", i1 false, i1 false}
!3 = !{!"../drivers/usb/host/sl811_cs.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_file242, !5, !"__UNIQUE_ID_file242", i1 false, i1 false}
!5 = !{!"../drivers/usb/host/sl811_cs.c", i32 31, i32 1}
!6 = !{ptr @__UNIQUE_ID_license243, !5, !"__UNIQUE_ID_license243", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_sl811_cs__248_203_sl811_cs_driver_init6, !8, !"__initcall__kmod_sl811_cs__248_203_sl811_cs_driver_init6", i1 false, i1 false}
!8 = !{!"../drivers/usb/host/sl811_cs.c", i32 203, i32 1}
!9 = !{ptr @__exitcall_sl811_cs_driver_exit, !8, !"__exitcall_sl811_cs_driver_exit", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/usb/host/sl811_cs.c", i32 198, i32 11}
!12 = !{ptr @sl811_cs_driver, !13, !"sl811_cs_driver", i1 false, i1 false}
!13 = !{!"../drivers/usb/host/sl811_cs.c", i32 196, i32 29}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/usb/host/sl811_cs.c", i32 148, i32 2}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sl811_cs_config.__UNIQUE_ID_ddebug247, !15, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/usb/host/sl811_cs.c", i32 170, i32 3}
!21 = !{ptr @sl811_cs_config._entry, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @sl811_cs_config._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @platform_dev, !24, !"platform_dev", i1 false, i1 false}
!24 = !{!"../drivers/usb/host/sl811_cs.c", i32 80, i32 31}
!25 = !{ptr @platform_data, !26, !"platform_data", i1 false, i1 false}
!26 = !{!"../drivers/usb/host/sl811_cs.c", i32 58, i32 35}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/usb/host/sl811_cs.c", i32 54, i32 2}
!29 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @release_platform_dev.__UNIQUE_ID_ddebug244, !28, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!31 = !{ptr @resources, !32, !"resources", i1 false, i1 false}
!32 = !{!"../drivers/usb/host/sl811_cs.c", i32 64, i32 24}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/usb/host/sl811_cs.c", i32 128, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @sl811_cs_release.__UNIQUE_ID_ddebug246, !34, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!37 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/usb/host/sl811_cs.c", i32 118, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sl811_cs_detach.__UNIQUE_ID_ddebug245, !38, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!41 = !{ptr @sl811_ids, !42, !"sl811_ids", i1 false, i1 false}
!42 = !{!"../drivers/usb/host/sl811_cs.c", i32 190, i32 38}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148694449, i64 2148694454, i64 2148694467, i64 2148694511, i64 2148694545, i64 2148694566}
