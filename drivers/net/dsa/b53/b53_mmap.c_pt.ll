; ModuleID = '/llk/IR_all_yes/drivers/net/dsa/b53/b53_mmap.c_pt.bc'
source_filename = "../drivers/net/dsa/b53/b53_mmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.b53_io_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.b53_platform_data = type { %struct.dsa_chip_data, i32, i16, i8, ptr }
%struct.dsa_chip_data = type { ptr, i32, [12 x ptr], i32, ptr, [12 x ptr], [12 x ptr], [4 x i8] }
%struct.b53_device = type { ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.mutex, ptr, i32, i8, [3 x i8], i8, i8, i8, i32, i8, i16, i32, i16, i32, i8, ptr, i8, ptr, ptr, i8, i32, ptr, i8, i32, ptr }

@__initcall__kmod_b53_mmap__497_353_b53_mmap_driver_init6 = internal global ptr @b53_mmap_driver_init, section ".initcall6.init", align 4
@b53_mmap_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @b53_mmap_probe, ptr @b53_mmap_remove, ptr @b53_mmap_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @b53_mmap_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_b53_mmap_driver_exit = internal global ptr @b53_mmap_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author498 = internal constant [48 x i8] c"b53_mmap.author=Jonas Gorski <jogo@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description499 = internal constant [44 x i8] c"b53_mmap.description=B53 MMAP access driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file500 = internal constant [43 x i8] c"b53_mmap.file=drivers/net/dsa/b53/b53_mmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license501 = internal constant [30 x i8] c"b53_mmap.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"b53-switch\00", [21 x i8] zeroinitializer }, align 32
@b53_mmap_of_table = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm3384-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6328-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm6368-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm63xx-switch\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@b53_mmap_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 287, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"OF probe error\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"b53_mmap_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/net/dsa/b53/b53_mmap.c\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@b53_mmap_probe._entry_ptr = internal global ptr @b53_mmap_probe._entry, section ".printk_index", align 4
@b53_mmap_ops = internal constant { %struct.b53_io_ops, [48 x i8] } { %struct.b53_io_ops { ptr @b53_mmap_read8, ptr @b53_mmap_read16, ptr @b53_mmap_read32, ptr @b53_mmap_read48, ptr @b53_mmap_read64, ptr @b53_mmap_write8, ptr @b53_mmap_write16, ptr @b53_mmap_write32, ptr @b53_mmap_write48, ptr @b53_mmap_write64, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ports\00", [26 x i8] zeroinitializer }, align 32
@b53_mmap_probe_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 256, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no ports child node found\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"b53_mmap_probe_of\00", [46 x i8] zeroinitializer }, align 32
@b53_mmap_probe_of._entry_ptr = internal global ptr @b53_mmap_probe_of._entry, section ".printk_index", align 4
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [16 x i8] c"b53_mmap_driver\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 343, i32 31 }
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 348, i32 11 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"b53_mmap_of_table\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 334, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 287, i32 4 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"b53_mmap_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 219, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 252, i32 48 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 254, i32 38 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 256, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private constant [34 x i8] c"../drivers/net/dsa/b53/b53_mmap.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 263, i32 37 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author498, ptr @__UNIQUE_ID_description499, ptr @__UNIQUE_ID_file500, ptr @__UNIQUE_ID_license501, ptr @__exitcall_b53_mmap_driver_exit, ptr @__initcall__kmod_b53_mmap__497_353_b53_mmap_driver_init6, ptr @b53_mmap_driver_exit, ptr @b53_mmap_probe._entry, ptr @b53_mmap_probe._entry_ptr, ptr @b53_mmap_probe_of._entry, ptr @b53_mmap_probe_of._entry_ptr, ptr @b53_mmap_driver, ptr @.str, ptr @b53_mmap_of_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @b53_mmap_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mmap_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mmap_of_table to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mmap_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mmap_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b53_mmap_probe_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @b53_mmap_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @b53_mmap_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @b53_mmap_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %2 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %platform_data, align 8
  %tobool.not = icmp ne ptr %3, null
  %tobool3.not = icmp eq ptr %1, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %entry.if.end7_crit_edge, label %if.then

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %b53_mmap_probe_of.exit, label %if.end.i

if.end.i:                                         ; preds = %if.then
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 176, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.do.end_crit_edge, label %if.end7.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end7.i:                                        ; preds = %if.end.i
  %regs.i = getelementptr inbounds %struct.b53_platform_data, ptr %call.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call.i, ptr %regs.i, align 4
  %chip_id.i = getelementptr inbounds %struct.b53_platform_data, ptr %call.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %chip_id.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 25344, ptr %chip_id.i, align 4
  %call.i48.i = tail call ptr @of_find_property(ptr noundef nonnull %1, ptr noundef nonnull @.str.6, ptr noundef null) #6
  %tobool.i.not.i = icmp eq ptr %call.i48.i, null
  %big_endian.i = getelementptr inbounds %struct.b53_platform_data, ptr %call.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %big_endian.i, align 2
  %bf.shl.i = select i1 %tobool.i.not.i, i8 0, i8 -128
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %big_endian.i, align 2
  %call9.i = tail call ptr @of_get_child_by_name(ptr noundef nonnull %1, ptr noundef nonnull @.str.7) #6
  %tobool10.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #9
  br label %do.end

if.end12.i:                                       ; preds = %if.end7.i
  %call13.i = tail call ptr @of_get_next_available_child(ptr noundef nonnull %call9.i, ptr noundef null) #6
  %cmp.not49.i = icmp eq ptr %call13.i, null
  br i1 %cmp.not49.i, label %if.end12.i.b53_mmap_probe_of.exit.thread47_crit_edge, label %for.body.lr.ph.i

if.end12.i.b53_mmap_probe_of.exit.thread47_crit_edge: ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b53_mmap_probe_of.exit.thread47

for.body.lr.ph.i:                                 ; preds = %if.end12.i
  %enabled_ports.i = getelementptr inbounds %struct.b53_platform_data, ptr %call.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %of_port.050.i = phi ptr [ %call13.i, %for.body.lr.ph.i ], [ %call25.i, %cleanup.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #6
  %7 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %reg.i, align 4, !annotation !46
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %of_port.050.i, ptr noundef nonnull @.str.10, ptr noundef nonnull %reg.i, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool16.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool16.not.i, label %if.end18.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.end18.i:                                       ; preds = %for.body.i
  %8 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %reg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp19.i = icmp ult i32 %9, 8
  br i1 %cmp19.i, label %if.then21.i, label %if.end18.i.cleanup.i_crit_edge

if.end18.i.cleanup.i_crit_edge:                   ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i

if.then21.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 1, %9
  %10 = ptrtoint ptr %enabled_ports.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %enabled_ports.i, align 4
  %12 = trunc i32 %shl.i to i16
  %conv23.i = or i16 %11, %12
  store i16 %conv23.i, ptr %enabled_ports.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then21.i, %if.end18.i.cleanup.i_crit_edge, %for.body.i.cleanup.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #6
  %call25.i = call ptr @of_get_next_available_child(ptr noundef nonnull %call9.i, ptr noundef nonnull %of_port.050.i) #6
  %cmp.not.i = icmp eq ptr %call25.i, null
  br i1 %cmp.not.i, label %cleanup.i.b53_mmap_probe_of.exit.thread47_crit_edge, label %cleanup.i.for.body.i_crit_edge

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup.i.b53_mmap_probe_of.exit.thread47_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %b53_mmap_probe_of.exit.thread47

b53_mmap_probe_of.exit.thread47:                  ; preds = %cleanup.i.b53_mmap_probe_of.exit.thread47_crit_edge, %if.end12.i.b53_mmap_probe_of.exit.thread47_crit_edge
  call void @of_node_put(ptr noundef nonnull %call9.i) #6
  br label %if.end7

b53_mmap_probe_of.exit:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %call.i to i32
  br label %do.end

do.end:                                           ; preds = %b53_mmap_probe_of.exit, %do.end.i, %if.end.i.do.end_crit_edge
  %retval.0.i46 = phi i32 [ %13, %b53_mmap_probe_of.exit ], [ -12, %if.end.i.do.end_crit_edge ], [ -22, %do.end.i ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end7:                                          ; preds = %b53_mmap_probe_of.exit.thread47, %entry.if.end7_crit_edge
  %pdata.1 = phi ptr [ %3, %entry.if.end7_crit_edge ], [ %call.i.i, %b53_mmap_probe_of.exit.thread47 ]
  %tobool8.not = icmp eq ptr %pdata.1, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %call.i40 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #6
  %tobool13.not = icmp eq ptr %call.i40, null
  br i1 %tobool13.not, label %if.end10.cleanup_crit_edge, label %if.end15

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %if.end10
  %regs = getelementptr inbounds %struct.b53_platform_data, ptr %pdata.1, i32 0, i32 4
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %16 = ptrtoint ptr %call.i40 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %call.i40, align 4
  %call18 = call ptr @b53_switch_alloc(ptr noundef %dev, ptr noundef nonnull @b53_mmap_ops, ptr noundef nonnull %call.i40) #6
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %if.end15.cleanup_crit_edge, label %if.end21

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end21:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  %pdata22 = getelementptr inbounds %struct.b53_device, ptr %call18, i32 0, i32 1
  %17 = ptrtoint ptr %pdata22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %pdata.1, ptr %pdata22, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call18, ptr %driver_data.i.i, align 4
  %call23 = call i32 @b53_switch_register(ptr noundef nonnull %call18) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end15.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call23, %if.end21 ], [ %retval.0.i46, %do.end ], [ -22, %if.end7.cleanup_crit_edge ], [ -12, %if.end10.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_remove(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_unregister_switch(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @b53_mmap_shutdown(ptr nocapture noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void @dsa_switch_shutdown(ptr noundef %3) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %driver_data.i.i, align 4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @b53_switch_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @b53_switch_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_child_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_read8(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %conv3 = zext i8 %reg to i32
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %conv3
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr4) #6, !srcloc !47
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !48
  %5 = ptrtoint ptr %val to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %val, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_read16(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %reg to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 47, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %pdata = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end24.if.else_crit_edge, label %land.lhs.true

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %big_endian = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %big_endian, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %land.lhs.true.if.else_crit_edge, label %if.then28

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv29 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %conv
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr31) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !51
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end24.if.else_crit_edge
  %conv34 = zext i8 %page to i32
  %shl35 = shl nuw nsw i32 %conv34, 8
  %add.ptr36 = getelementptr i8, ptr %3, i32 %shl35
  %add.ptr38 = getelementptr i8, ptr %add.ptr36, i32 %conv
  %8 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr38) #6, !srcloc !50
  %9 = tail call i16 @llvm.bswap.i16(i16 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !52
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then28
  %storemerge = phi i16 [ %9, %if.else ], [ %7, %if.then28 ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %storemerge, ptr %val, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_read32(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %reg to i32
  %rem = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 63, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %pdata = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end24.if.else_crit_edge, label %land.lhs.true

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %big_endian = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %big_endian, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %land.lhs.true.if.else_crit_edge, label %if.then28

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv29 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %conv
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  br label %if.end42

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end24.if.else_crit_edge
  %conv34 = zext i8 %page to i32
  %shl35 = shl nuw nsw i32 %conv34, 8
  %add.ptr36 = getelementptr i8, ptr %3, i32 %shl35
  %add.ptr38 = getelementptr i8, ptr %add.ptr36, i32 %conv
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr38) #6, !srcloc !53
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !55
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then28
  %storemerge = phi i32 [ %9, %if.else ], [ %7, %if.then28 ]
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %storemerge, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end42 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_read48(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %reg to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 79, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %rem26 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem26)
  %tobool27.not = icmp eq i32 %rem26, 0
  %pdata73 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata73 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata73, align 4
  %tobool74.not = icmp eq ptr %5, null
  br i1 %tobool27.not, label %if.else70, label %if.then28

if.then28:                                        ; preds = %if.end24
  br i1 %tobool74.not, label %if.then28.if.else_crit_edge, label %land.lhs.true

if.then28.if.else_crit_edge:                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.then28
  %big_endian = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %big_endian, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool31.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool31.not, label %land.lhs.true.if.else_crit_edge, label %if.then32

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then32:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv33 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv33, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %add.ptr35 = getelementptr i8, ptr %add.ptr, i32 %conv
  %7 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr35) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %add.ptr43 = getelementptr i8, ptr %add.ptr35, i32 2
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr43) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  br label %if.end66

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.then28.if.else_crit_edge
  %conv47 = zext i8 %page to i32
  %shl48 = shl nuw nsw i32 %conv47, 8
  %add.ptr49 = getelementptr i8, ptr %3, i32 %shl48
  %add.ptr51 = getelementptr i8, ptr %add.ptr49, i32 %conv
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr51) #6, !srcloc !50
  %10 = tail call i16 @llvm.bswap.i16(i16 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  %add.ptr62 = getelementptr i8, ptr %add.ptr51, i32 2
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #6, !srcloc !53
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  br label %if.end66

if.end66:                                         ; preds = %if.else, %if.then32
  %hi.0 = phi i32 [ %8, %if.then32 ], [ %12, %if.else ]
  %lo.0 = phi i16 [ %7, %if.then32 ], [ %10, %if.else ]
  %conv67 = zext i32 %hi.0 to i64
  %shl68 = shl nuw nsw i64 %conv67, 16
  %conv69 = zext i16 %lo.0 to i64
  %or = or i64 %shl68, %conv69
  br label %if.end127

if.else70:                                        ; preds = %if.end24
  br i1 %tobool74.not, label %if.else70.if.else100_crit_edge, label %land.lhs.true75

if.else70.if.else100_crit_edge:                   ; preds = %if.else70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else100

land.lhs.true75:                                  ; preds = %if.else70
  %big_endian77 = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %big_endian77 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load78 = load i8, ptr %big_endian77, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load78)
  %tobool81.not = icmp sgt i8 %bf.load78, -1
  br i1 %tobool81.not, label %land.lhs.true75.if.else100_crit_edge, label %if.then82

land.lhs.true75.if.else100_crit_edge:             ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else100

if.then82:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #8
  %conv84 = zext i8 %page to i32
  %shl85 = shl nuw nsw i32 %conv84, 8
  %add.ptr86 = getelementptr i8, ptr %3, i32 %shl85
  %add.ptr88 = getelementptr i8, ptr %add.ptr86, i32 %conv
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr88) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  %add.ptr97 = getelementptr i8, ptr %add.ptr88, i32 4
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr97) #6, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  br label %if.end122

if.else100:                                       ; preds = %land.lhs.true75.if.else100_crit_edge, %if.else70.if.else100_crit_edge
  %conv103 = zext i8 %page to i32
  %shl104 = shl nuw nsw i32 %conv103, 8
  %add.ptr105 = getelementptr i8, ptr %3, i32 %shl104
  %add.ptr107 = getelementptr i8, ptr %add.ptr105, i32 %conv
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr107) #6, !srcloc !53
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  %add.ptr118 = getelementptr i8, ptr %add.ptr107, i32 4
  %18 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr118) #6, !srcloc !50
  %19 = tail call i16 @llvm.bswap.i16(i16 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  br label %if.end122

if.end122:                                        ; preds = %if.else100, %if.then82
  %hi72.0 = phi i16 [ %15, %if.then82 ], [ %19, %if.else100 ]
  %lo71.0 = phi i32 [ %14, %if.then82 ], [ %17, %if.else100 ]
  %conv123 = zext i16 %hi72.0 to i64
  %shl124 = shl nuw nsw i64 %conv123, 32
  %conv125 = zext i32 %lo71.0 to i64
  %or126 = or i64 %shl124, %conv125
  br label %if.end127

if.end127:                                        ; preds = %if.end122, %if.end66
  %storemerge = phi i64 [ %or126, %if.end122 ], [ %or, %if.end66 ]
  %20 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %storemerge, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end127, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end127 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_read64(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %reg to i32
  %rem = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 119, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %pdata = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end24.if.else_crit_edge, label %land.lhs.true

if.end24.if.else_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %if.end24
  %big_endian = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %big_endian, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %land.lhs.true.if.else_crit_edge, label %if.then28

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %conv29 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv29, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %add.ptr31 = getelementptr i8, ptr %add.ptr, i32 %conv
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  %add.ptr39 = getelementptr i8, ptr %add.ptr31, i32 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #6, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  br label %if.end62

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end24.if.else_crit_edge
  %conv43 = zext i8 %page to i32
  %shl44 = shl nuw nsw i32 %conv43, 8
  %add.ptr45 = getelementptr i8, ptr %3, i32 %shl44
  %add.ptr47 = getelementptr i8, ptr %add.ptr45, i32 %conv
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #6, !srcloc !53
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  %add.ptr58 = getelementptr i8, ptr %add.ptr47, i32 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr58) #6, !srcloc !53
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  br label %if.end62

if.end62:                                         ; preds = %if.else, %if.then28
  %lo.0 = phi i32 [ %7, %if.then28 ], [ %10, %if.else ]
  %hi.0 = phi i32 [ %8, %if.then28 ], [ %12, %if.else ]
  %conv63 = zext i32 %hi.0 to i64
  %shl64 = shl nuw i64 %conv63, 32
  %conv65 = zext i32 %lo.0 to i64
  %or = or i64 %shl64, %conv65
  %13 = ptrtoint ptr %val to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %or, ptr %val, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end62 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_write8(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i8 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %conv = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %conv3 = zext i8 %reg to i32
  %add.ptr4 = getelementptr i8, ptr %add.ptr, i32 %conv3
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr4, i8 %value) #6, !srcloc !69
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_write16(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i16 noundef zeroext %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %reg to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 151, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %pdata = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end24.do.body35_crit_edge, label %land.lhs.true

if.end24.do.body35_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

land.lhs.true:                                    ; preds = %if.end24
  %big_endian = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %big_endian, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %land.lhs.true.do.body35_crit_edge, label %do.body29

land.lhs.true.do.body35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

do.body29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %conv32 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv32, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %add.ptr34 = getelementptr i8, ptr %add.ptr, i32 %conv
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34, i16 %value) #6, !srcloc !71
  br label %cleanup

do.body35:                                        ; preds = %land.lhs.true.do.body35_crit_edge, %if.end24.do.body35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %7 = tail call i16 @llvm.bswap.i16(i16 %value)
  %conv38 = zext i8 %page to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %add.ptr40 = getelementptr i8, ptr %3, i32 %shl39
  %add.ptr42 = getelementptr i8, ptr %add.ptr40, i32 %conv
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42, i16 %7) #6, !srcloc !71
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %do.body29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body35 ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_write32(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %conv = zext i8 %reg to i32
  %rem = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end24, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24:                                         ; preds = %entry
  %pdata = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata, align 4
  %tobool25.not = icmp eq ptr %5, null
  br i1 %tobool25.not, label %if.end24.do.body35_crit_edge, label %land.lhs.true

if.end24.do.body35_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

land.lhs.true:                                    ; preds = %if.end24
  %big_endian = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load = load i8, ptr %big_endian, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool27.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool27.not, label %land.lhs.true.do.body35_crit_edge, label %do.body29

land.lhs.true.do.body35_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

do.body29:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %conv32 = zext i8 %page to i32
  %shl = shl nuw nsw i32 %conv32, 8
  %add.ptr = getelementptr i8, ptr %3, i32 %shl
  %add.ptr34 = getelementptr i8, ptr %add.ptr, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %value) #6, !srcloc !74
  br label %cleanup

do.body35:                                        ; preds = %land.lhs.true.do.body35_crit_edge, %if.end24.do.body35_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %value)
  %conv38 = zext i8 %page to i32
  %shl39 = shl nuw nsw i32 %conv38, 8
  %add.ptr40 = getelementptr i8, ptr %3, i32 %shl39
  %add.ptr42 = getelementptr i8, ptr %add.ptr40, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %7) #6, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %do.body35, %do.body29, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body35 ], [ 0, %do.body29 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_write48(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i64 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %reg to i32
  %rem = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end22, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 182, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end22:                                         ; preds = %entry
  %rem24 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem24)
  %tobool25.not = icmp eq i32 %rem24, 0
  br i1 %tobool25.not, label %if.end24.i88, label %if.end24.i

if.end24.i:                                       ; preds = %if.end22
  %shr = lshr i64 %value, 16
  %conv27 = trunc i64 %shr to i32
  %conv28 = trunc i64 %value to i16
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %pdata.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %4 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pdata.i, align 4
  %tobool25.not.i = icmp eq ptr %5, null
  br i1 %tobool25.not.i, label %if.end24.i.do.body35.i_crit_edge, label %land.lhs.true.i

if.end24.i.do.body35.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %big_endian.i = getelementptr inbounds %struct.b53_platform_data, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %bf.load.i = load i8, ptr %big_endian.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool27.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool27.not.i, label %land.lhs.true.i.do.body35.i_crit_edge, label %do.body29.i

land.lhs.true.i.do.body35.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i

do.body29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %conv32.i = zext i8 %page to i32
  %shl.i = shl nuw nsw i32 %conv32.i, 8
  %add.ptr.i = getelementptr i8, ptr %3, i32 %shl.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr.i, i32 %conv
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34.i, i16 %conv28) #6, !srcloc !71
  br label %b53_mmap_write16.exit

do.body35.i:                                      ; preds = %land.lhs.true.i.do.body35.i_crit_edge, %if.end24.i.do.body35.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %7 = tail call i16 @llvm.bswap.i16(i16 %conv28) #6
  %conv38.i = zext i8 %page to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 8
  %add.ptr40.i = getelementptr i8, ptr %3, i32 %shl39.i
  %add.ptr42.i = getelementptr i8, ptr %add.ptr40.i, i32 %conv
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42.i, i16 %7) #6, !srcloc !71
  br label %b53_mmap_write16.exit

b53_mmap_write16.exit:                            ; preds = %do.body35.i, %do.body29.i
  %add = add i8 %reg, 2
  %8 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %priv1.i, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %conv.i59 = zext i8 %add to i32
  %rem.i60 = and i32 %conv.i59, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i60)
  %tobool.not.i61 = icmp eq i32 %rem.i60, 0
  br i1 %tobool.not.i61, label %if.end24.i65, label %do.end.i62, !prof !49

do.end.i62:                                       ; preds = %b53_mmap_write16.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end24.i65:                                     ; preds = %b53_mmap_write16.exit
  %12 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pdata.i, align 4
  %tobool25.not.i64 = icmp eq ptr %13, null
  br i1 %tobool25.not.i64, label %if.end24.i65.do.body35.i79_crit_edge, label %land.lhs.true.i69

if.end24.i65.do.body35.i79_crit_edge:             ; preds = %if.end24.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i79

land.lhs.true.i69:                                ; preds = %if.end24.i65
  %big_endian.i66 = getelementptr inbounds %struct.b53_platform_data, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %big_endian.i66 to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load.i67 = load i8, ptr %big_endian.i66, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i67)
  %tobool27.not.i68 = icmp sgt i8 %bf.load.i67, -1
  br i1 %tobool27.not.i68, label %land.lhs.true.i69.do.body35.i79_crit_edge, label %do.body29.i74

land.lhs.true.i69.do.body35.i79_crit_edge:        ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i79

do.body29.i74:                                    ; preds = %land.lhs.true.i69
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %conv32.i70 = zext i8 %page to i32
  %shl.i71 = shl nuw nsw i32 %conv32.i70, 8
  %add.ptr.i72 = getelementptr i8, ptr %11, i32 %shl.i71
  %add.ptr34.i73 = getelementptr i8, ptr %add.ptr.i72, i32 %conv.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i73, i32 %conv27) #6, !srcloc !74
  br label %return

do.body35.i79:                                    ; preds = %land.lhs.true.i69.do.body35.i79_crit_edge, %if.end24.i65.do.body35.i79_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %15 = tail call i32 @llvm.bswap.i32(i32 %conv27) #6
  %conv38.i75 = zext i8 %page to i32
  %shl39.i76 = shl nuw nsw i32 %conv38.i75, 8
  %add.ptr40.i77 = getelementptr i8, ptr %11, i32 %shl39.i76
  %add.ptr42.i78 = getelementptr i8, ptr %add.ptr40.i77, i32 %conv.i59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i78, i32 %15) #6, !srcloc !74
  br label %return

if.end24.i88:                                     ; preds = %if.end22
  %shr33 = lshr i64 %value, 32
  %conv34 = trunc i64 %shr33 to i16
  %conv36 = trunc i64 %value to i32
  %priv1.i81 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %16 = ptrtoint ptr %priv1.i81 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %priv1.i81, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %pdata.i86 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %20 = ptrtoint ptr %pdata.i86 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pdata.i86, align 4
  %tobool25.not.i87 = icmp eq ptr %21, null
  br i1 %tobool25.not.i87, label %if.end24.i88.do.body35.i102_crit_edge, label %land.lhs.true.i92

if.end24.i88.do.body35.i102_crit_edge:            ; preds = %if.end24.i88
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i102

land.lhs.true.i92:                                ; preds = %if.end24.i88
  %big_endian.i89 = getelementptr inbounds %struct.b53_platform_data, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %big_endian.i89 to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i90 = load i8, ptr %big_endian.i89, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i90)
  %tobool27.not.i91 = icmp sgt i8 %bf.load.i90, -1
  br i1 %tobool27.not.i91, label %land.lhs.true.i92.do.body35.i102_crit_edge, label %do.body29.i97

land.lhs.true.i92.do.body35.i102_crit_edge:       ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i102

do.body29.i97:                                    ; preds = %land.lhs.true.i92
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %conv32.i93 = zext i8 %page to i32
  %shl.i94 = shl nuw nsw i32 %conv32.i93, 8
  %add.ptr.i95 = getelementptr i8, ptr %19, i32 %shl.i94
  %add.ptr34.i96 = getelementptr i8, ptr %add.ptr.i95, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i96, i32 %conv36) #6, !srcloc !74
  br label %b53_mmap_write32.exit104

do.body35.i102:                                   ; preds = %land.lhs.true.i92.do.body35.i102_crit_edge, %if.end24.i88.do.body35.i102_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %23 = tail call i32 @llvm.bswap.i32(i32 %conv36) #6
  %conv38.i98 = zext i8 %page to i32
  %shl39.i99 = shl nuw nsw i32 %conv38.i98, 8
  %add.ptr40.i100 = getelementptr i8, ptr %19, i32 %shl39.i99
  %add.ptr42.i101 = getelementptr i8, ptr %add.ptr40.i100, i32 %conv
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i101, i32 %23) #6, !srcloc !74
  br label %b53_mmap_write32.exit104

b53_mmap_write32.exit104:                         ; preds = %do.body35.i102, %do.body29.i97
  %add39 = add i8 %reg, 4
  %24 = ptrtoint ptr %priv1.i81 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %priv1.i81, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %25, align 4
  %conv.i106 = zext i8 %add39 to i32
  %rem.i107 = and i32 %conv.i106, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i107)
  %tobool.not.i108 = icmp eq i32 %rem.i107, 0
  br i1 %tobool.not.i108, label %if.end24.i112, label %do.end.i109, !prof !49

do.end.i109:                                      ; preds = %b53_mmap_write32.exit104
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 151, i32 noundef 9, ptr noundef null) #6
  br label %return

if.end24.i112:                                    ; preds = %b53_mmap_write32.exit104
  %28 = ptrtoint ptr %pdata.i86 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pdata.i86, align 4
  %tobool25.not.i111 = icmp eq ptr %29, null
  br i1 %tobool25.not.i111, label %if.end24.i112.do.body35.i126_crit_edge, label %land.lhs.true.i116

if.end24.i112.do.body35.i126_crit_edge:           ; preds = %if.end24.i112
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i126

land.lhs.true.i116:                               ; preds = %if.end24.i112
  %big_endian.i113 = getelementptr inbounds %struct.b53_platform_data, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %big_endian.i113 to i32
  call void @__asan_load1_noabort(i32 %30)
  %bf.load.i114 = load i8, ptr %big_endian.i113, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i114)
  %tobool27.not.i115 = icmp sgt i8 %bf.load.i114, -1
  br i1 %tobool27.not.i115, label %land.lhs.true.i116.do.body35.i126_crit_edge, label %do.body29.i121

land.lhs.true.i116.do.body35.i126_crit_edge:      ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i126

do.body29.i121:                                   ; preds = %land.lhs.true.i116
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %conv32.i117 = zext i8 %page to i32
  %shl.i118 = shl nuw nsw i32 %conv32.i117, 8
  %add.ptr.i119 = getelementptr i8, ptr %27, i32 %shl.i118
  %add.ptr34.i120 = getelementptr i8, ptr %add.ptr.i119, i32 %conv.i106
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr34.i120, i16 %conv34) #6, !srcloc !71
  br label %return

do.body35.i126:                                   ; preds = %land.lhs.true.i116.do.body35.i126_crit_edge, %if.end24.i112.do.body35.i126_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  tail call void @arm_heavy_mb() #6
  %31 = tail call i16 @llvm.bswap.i16(i16 %conv34) #6
  %conv38.i122 = zext i8 %page to i32
  %shl39.i123 = shl nuw nsw i32 %conv38.i122, 8
  %add.ptr40.i124 = getelementptr i8, ptr %27, i32 %shl39.i123
  %add.ptr42.i125 = getelementptr i8, ptr %add.ptr40.i124, i32 %conv.i106
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr42.i125, i16 %31) #6, !srcloc !71
  br label %return

return:                                           ; preds = %do.body35.i126, %do.body29.i121, %do.end.i109, %do.body35.i79, %do.body29.i74, %do.end.i62, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end.i62 ], [ 0, %do.body29.i74 ], [ 0, %do.body35.i79 ], [ 0, %do.end.i109 ], [ 0, %do.body29.i121 ], [ 0, %do.body35.i126 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @b53_mmap_write64(ptr nocapture noundef readonly %dev, i8 noundef zeroext %page, i8 noundef zeroext %reg, i64 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i64 %value, 32
  %conv = trunc i64 %shr to i32
  %conv2 = trunc i64 %value to i32
  %0 = and i8 %reg, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.end25, label %do.end, !prof !49

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 210, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25:                                         ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 23
  %1 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %priv1.i, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %conv.i = zext i8 %reg to i32
  %rem.i = and i32 %conv.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end24.i, label %do.end.i, !prof !49

do.end.i:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %b53_mmap_write32.exit

if.end24.i:                                       ; preds = %if.end25
  %pdata.i = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %5 = ptrtoint ptr %pdata.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdata.i, align 4
  %tobool25.not.i = icmp eq ptr %6, null
  br i1 %tobool25.not.i, label %if.end24.i.do.body35.i_crit_edge, label %land.lhs.true.i

if.end24.i.do.body35.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i

land.lhs.true.i:                                  ; preds = %if.end24.i
  %big_endian.i = getelementptr inbounds %struct.b53_platform_data, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %big_endian.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool27.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool27.not.i, label %land.lhs.true.i.do.body35.i_crit_edge, label %do.body29.i

land.lhs.true.i.do.body35.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i

do.body29.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %conv32.i = zext i8 %page to i32
  %shl.i = shl nuw nsw i32 %conv32.i, 8
  %add.ptr.i = getelementptr i8, ptr %4, i32 %shl.i
  %add.ptr34.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i, i32 %conv2) #6, !srcloc !74
  br label %b53_mmap_write32.exit

do.body35.i:                                      ; preds = %land.lhs.true.i.do.body35.i_crit_edge, %if.end24.i.do.body35.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %8 = tail call i32 @llvm.bswap.i32(i32 %conv2) #6
  %conv38.i = zext i8 %page to i32
  %shl39.i = shl nuw nsw i32 %conv38.i, 8
  %add.ptr40.i = getelementptr i8, ptr %4, i32 %shl39.i
  %add.ptr42.i = getelementptr i8, ptr %add.ptr40.i, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i, i32 %8) #6, !srcloc !74
  br label %b53_mmap_write32.exit

b53_mmap_write32.exit:                            ; preds = %do.body35.i, %do.body29.i, %do.end.i
  %add = add i8 %reg, 4
  %9 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %priv1.i, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %conv.i37 = zext i8 %add to i32
  %rem.i38 = and i32 %conv.i37, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i38)
  %tobool.not.i39 = icmp eq i32 %rem.i38, 0
  br i1 %tobool.not.i39, label %if.end24.i43, label %do.end.i40, !prof !49

do.end.i40:                                       ; preds = %b53_mmap_write32.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 168, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end24.i43:                                     ; preds = %b53_mmap_write32.exit
  %pdata.i41 = getelementptr inbounds %struct.b53_device, ptr %dev, i32 0, i32 1
  %13 = ptrtoint ptr %pdata.i41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pdata.i41, align 4
  %tobool25.not.i42 = icmp eq ptr %14, null
  br i1 %tobool25.not.i42, label %if.end24.i43.do.body35.i57_crit_edge, label %land.lhs.true.i47

if.end24.i43.do.body35.i57_crit_edge:             ; preds = %if.end24.i43
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i57

land.lhs.true.i47:                                ; preds = %if.end24.i43
  %big_endian.i44 = getelementptr inbounds %struct.b53_platform_data, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %big_endian.i44 to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i45 = load i8, ptr %big_endian.i44, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i45)
  %tobool27.not.i46 = icmp sgt i8 %bf.load.i45, -1
  br i1 %tobool27.not.i46, label %land.lhs.true.i47.do.body35.i57_crit_edge, label %do.body29.i52

land.lhs.true.i47.do.body35.i57_crit_edge:        ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35.i57

do.body29.i52:                                    ; preds = %land.lhs.true.i47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %conv32.i48 = zext i8 %page to i32
  %shl.i49 = shl nuw nsw i32 %conv32.i48, 8
  %add.ptr.i50 = getelementptr i8, ptr %12, i32 %shl.i49
  %add.ptr34.i51 = getelementptr i8, ptr %add.ptr.i50, i32 %conv.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34.i51, i32 %conv) #6, !srcloc !74
  br label %cleanup

do.body35.i57:                                    ; preds = %land.lhs.true.i47.do.body35.i57_crit_edge, %if.end24.i43.do.body35.i57_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  tail call void @arm_heavy_mb() #6
  %16 = tail call i32 @llvm.bswap.i32(i32 %conv) #6
  %conv38.i53 = zext i8 %page to i32
  %shl39.i54 = shl nuw nsw i32 %conv38.i53, 8
  %add.ptr40.i55 = getelementptr i8, ptr %12, i32 %shl39.i54
  %add.ptr42.i56 = getelementptr i8, ptr %add.ptr40.i55, i32 %conv.i37
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42.i56, i32 %16) #6, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %do.body35.i57, %do.body29.i52, %do.end.i40, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.end.i40 ], [ 0, %do.body29.i52 ], [ 0, %do.body35.i57 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_unregister_switch(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dsa_switch_shutdown(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_b53_mmap__497_353_b53_mmap_driver_init6, !1, !"__initcall__kmod_b53_mmap__497_353_b53_mmap_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 353, i32 1}
!2 = !{ptr @__exitcall_b53_mmap_driver_exit, !1, !"__exitcall_b53_mmap_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author498, !4, !"__UNIQUE_ID_author498", i1 false, i1 false}
!4 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 354, i32 1}
!5 = !{ptr @__UNIQUE_ID_description499, !6, !"__UNIQUE_ID_description499", i1 false, i1 false}
!6 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 355, i32 1}
!7 = !{ptr @__UNIQUE_ID_file500, !8, !"__UNIQUE_ID_file500", i1 false, i1 false}
!8 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 356, i32 1}
!9 = !{ptr @__UNIQUE_ID_license501, !8, !"__UNIQUE_ID_license501", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 348, i32 11}
!12 = !{ptr @b53_mmap_driver, !13, !"b53_mmap_driver", i1 false, i1 false}
!13 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 343, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 287, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @b53_mmap_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @b53_mmap_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 252, i32 48}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 254, i32 38}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 256, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @b53_mmap_probe_of._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @b53_mmap_probe_of._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.10, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 263, i32 37}
!33 = !{ptr @b53_mmap_ops, !34, !"b53_mmap_ops", i1 false, i1 false}
!34 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 219, i32 32}
!35 = !{ptr @b53_mmap_of_table, !36, !"b53_mmap_of_table", i1 false, i1 false}
!36 = !{!"../drivers/net/dsa/b53/b53_mmap.c", i32 334, i32 34}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"auto-init"}
!47 = !{i64 4042038}
!48 = !{i64 2158013796}
!49 = !{!"branch_weights", i32 2000, i32 1}
!50 = !{i64 4041420}
!51 = !{i64 2158014613}
!52 = !{i64 2158015127}
!53 = !{i64 4042258}
!54 = !{i64 2158015944}
!55 = !{i64 2158016458}
!56 = !{i64 2158017275}
!57 = !{i64 2158017597}
!58 = !{i64 2158018111}
!59 = !{i64 2158018641}
!60 = !{i64 2158018955}
!61 = !{i64 2158019277}
!62 = !{i64 2158019791}
!63 = !{i64 2158020321}
!64 = !{i64 2158021139}
!65 = !{i64 2158021461}
!66 = !{i64 2158021975}
!67 = !{i64 2158022505}
!68 = !{i64 2158022728}
!69 = !{i64 4041643}
!70 = !{i64 2158023544}
!71 = !{i64 4041220}
!72 = !{i64 2158023829}
!73 = !{i64 2158024771}
!74 = !{i64 4041840}
!75 = !{i64 2158025056}
