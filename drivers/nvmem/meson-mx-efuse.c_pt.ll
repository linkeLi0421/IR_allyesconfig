; ModuleID = '/llk/IR_all_yes/drivers/nvmem/meson-mx-efuse.c_pt.bc'
source_filename = "../drivers/nvmem/meson-mx-efuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.meson_mx_efuse_platform_data = type { ptr, i32 }
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
%struct.meson_mx_efuse = type { ptr, ptr, ptr, %struct.nvmem_config }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }

@__initcall__kmod_nvmem_meson_mx_efuse__190_242_meson_mx_efuse_driver_init6 = internal global ptr @meson_mx_efuse_driver_init, section ".initcall6.init", align 4
@meson_mx_efuse_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @meson_mx_efuse_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @meson_mx_efuse_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_meson_mx_efuse_driver_exit = internal global ptr @meson_mx_efuse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author191 = internal constant [85 x i8] c"nvmem_meson_mx_efuse.author=Martin Blumenstingl <martin.blumenstingl@googlemail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [69 x i8] c"nvmem_meson_mx_efuse.description=Amlogic Meson MX eFuse NVMEM driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file193 = internal constant [61 x i8] c"nvmem_meson_mx_efuse.file=drivers/nvmem/nvmem_meson_mx_efuse\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [36 x i8] c"nvmem_meson_mx_efuse.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"meson-mx-efuse\00", [17 x i8] zeroinitializer }, align 32
@meson_mx_efuse_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson6-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson6_efuse_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8_efuse_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"amlogic,meson8b-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @meson8b_efuse_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@meson_mx_efuse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 225, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Failed to get core clock\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"meson_mx_efuse_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/nvmem/meson-mx-efuse.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_mx_efuse_probe._entry_ptr = internal global ptr @meson_mx_efuse_probe._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@meson_mx_efuse_read_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 127, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Timeout while reading efuse address %u\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"meson_mx_efuse_read_addr\00", [39 x i8] zeroinitializer }, align 32
@meson_mx_efuse_read_addr._entry_ptr = internal global ptr @meson_mx_efuse_read_addr._entry, section ".printk_index", align 4
@meson6_efuse_data = internal constant { %struct.meson_mx_efuse_platform_data, [24 x i8] } { %struct.meson_mx_efuse_platform_data { ptr @.str.9, i32 1 }, [24 x i8] zeroinitializer }, align 32
@meson8_efuse_data = internal constant { %struct.meson_mx_efuse_platform_data, [24 x i8] } { %struct.meson_mx_efuse_platform_data { ptr @.str.10, i32 4 }, [24 x i8] zeroinitializer }, align 32
@meson8b_efuse_data = internal constant { %struct.meson_mx_efuse_platform_data, [24 x i8] } { %struct.meson_mx_efuse_platform_data { ptr @.str.11, i32 4 }, [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson6-efuse\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson8-efuse\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"meson8b-efuse\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"meson_mx_efuse_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 234, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 237, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"meson_mx_efuse_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 185, i32 34 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 223, i32 45 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 225, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 126, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [18 x i8] c"meson6_efuse_data\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 170, i32 50 }
@___asan_gen_.54 = private unnamed_addr constant [18 x i8] c"meson8_efuse_data\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 175, i32 50 }
@___asan_gen_.57 = private unnamed_addr constant [19 x i8] c"meson8b_efuse_data\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 180, i32 50 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 171, i32 10 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 176, i32 10 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [34 x i8] c"../drivers/nvmem/meson-mx-efuse.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 181, i32 10 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__exitcall_meson_mx_efuse_driver_exit, ptr @__initcall__kmod_nvmem_meson_mx_efuse__190_242_meson_mx_efuse_driver_init6, ptr @meson_mx_efuse_driver_exit, ptr @meson_mx_efuse_probe._entry, ptr @meson_mx_efuse_probe._entry_ptr, ptr @meson_mx_efuse_read_addr._entry, ptr @meson_mx_efuse_read_addr._entry_ptr, ptr @meson_mx_efuse_driver, ptr @.str, ptr @meson_mx_efuse_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @meson6_efuse_data, ptr @meson8_efuse_data, ptr @meson8b_efuse_data, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_efuse_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_efuse_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_efuse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_efuse_read_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson6_efuse_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8_efuse_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson8b_efuse_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_efuse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @meson_mx_efuse_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @meson_mx_efuse_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @meson_mx_efuse_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_efuse_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 100, i32 noundef 3520) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call6) #6
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call8, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end5
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %call16 = tail call noalias ptr @devm_kstrdup(ptr noundef %dev, ptr noundef %3, i32 noundef 3264) #6
  %config = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3
  %name17 = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %name17 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call16, ptr %name17, align 4
  %owner = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %owner, align 4
  %6 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dev, ptr %config, align 4
  %priv = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 21
  %7 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %priv, align 4
  %word_size = getelementptr inbounds %struct.meson_mx_efuse_platform_data, ptr %call, i32 0, i32 1
  %8 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 20
  %10 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %stride, align 4
  %11 = load i32, ptr %word_size, align 4
  %word_size26 = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 19
  %12 = ptrtoint ptr %word_size26 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %word_size26, align 4
  %size = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 18
  %13 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 512, ptr %size, align 4
  %read_only = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 10
  %14 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %read_only, align 4
  %reg_read = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 3, i32 15
  %15 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @meson_mx_efuse_read, ptr %reg_read, align 4
  %call31 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #6
  %core_clk = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 1
  %16 = ptrtoint ptr %core_clk to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call31, ptr %core_clk, align 4
  %cmp.i76 = icmp ugt ptr %call31, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %do.end, label %if.end38

do.end:                                           ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #9
  %17 = ptrtoint ptr %core_clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %core_clk, align 4
  %19 = ptrtoint ptr %18 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %call41 = tail call ptr @devm_nvmem_register(ptr noundef %dev, ptr noundef %config) #6
  %nvmem = getelementptr inbounds %struct.meson_mx_efuse, ptr %call.i, i32 0, i32 2
  %20 = ptrtoint ptr %nvmem to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call41, ptr %nvmem, align 4
  %cmp.i.i = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  %21 = ptrtoint ptr %call41 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %21, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %do.end, %if.then11, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then11 ], [ %19, %do.end ], [ %spec.select.i, %if.end38 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kstrdup(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_mx_efuse_read(ptr noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %buf, i32 noundef %bytes) #2 align 64 {
entry:
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp)
  %core_clk.i = getelementptr inbounds %struct.meson_mx_efuse, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %core_clk.i, align 4
  %call.i.i = tail call i32 @clk_prepare(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i.i:                                       ; preds = %entry
  %call1.i.i = tail call i32 @clk_enable(ptr noundef %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end, label %if.end.i.i.cleanup.sink.split_crit_edge

if.end.i.i.cleanup.sink.split_crit_edge:          ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %if.end.i.i
  %2 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %context, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %5 = and i32 %4, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %6 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %context, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %5) #6, !srcloc !55
  %8 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %context, align 4
  %add.ptr.i4.i = getelementptr i8, ptr %9, i32 16
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i4.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %11 = and i32 %10, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %context, align 4
  %add.ptr4.i6.i = getelementptr i8, ptr %13, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i6.i, i32 %11) #6, !srcloc !55
  %14 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %context, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %17 = or i32 %16, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %18 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %17) #6, !srcloc !55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp48.not = icmp eq i32 %bytes, 0
  br i1 %cmp48.not, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %word_size = getelementptr inbounds %struct.meson_mx_efuse, ptr %context, i32 0, i32 3, i32 19
  br label %for.body

for.body:                                         ; preds = %if.end4.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %add11, %if.end4.for.body_crit_edge ]
  %add = add i32 %i.049, %offset
  %20 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %word_size, align 4
  %div = udiv i32 %add, %21
  %and13.i = and i32 %div, 2047
  %22 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %context, align 4
  %add.ptr.i.i33 = getelementptr i8, ptr %23, i32 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i33) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %25 = and i32 %24, 16318463
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #6
  %or.i.i = or i32 %26, %and13.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %27 = tail call i32 @llvm.bswap.i32(i32 %or.i.i) #6
  %28 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %context, align 4
  %add.ptr4.i.i34 = getelementptr i8, ptr %29, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i34, i32 %27) #6, !srcloc !55
  %30 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %context, align 4
  %add.ptr.i87.i = getelementptr i8, ptr %31, i32 4
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %33 = or i32 %32, 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %context, align 4
  %add.ptr4.i90.i = getelementptr i8, ptr %35, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i90.i, i32 %33) #6, !srcloc !55
  %36 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %context, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %37, i32 4
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %39 = and i32 %38, -524289
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %40 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %context, align 4
  %add.ptr4.i93.i = getelementptr i8, ptr %41, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i93.i, i32 %39) #6, !srcloc !55
  %42 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %context, align 4
  %add.ptr.i94.i = getelementptr i8, ptr %43, i32 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i94.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %45 = or i32 %44, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %context, align 4
  %add.ptr4.i97.i = getelementptr i8, ptr %47, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i97.i, i32 %45) #6, !srcloc !55
  %48 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %context, align 4
  %add.ptr.i98.i = getelementptr i8, ptr %49, i32 4
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98.i) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %51 = and i32 %50, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %52 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %context, align 4
  %add.ptr4.i100.i = getelementptr i8, ptr %53, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i100.i, i32 %51) #6, !srcloc !55
  %54 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %context, align 4
  %add.ptr.i35 = getelementptr i8, ptr %55, i32 4
  %56 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  %call16.i = tail call i64 @ktime_get() #6
  %add.i.i = add i64 %call16.i, 1000000
  %57 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %context, align 4
  %add.ptr21102.i = getelementptr i8, ptr %58, i32 4
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21102.i) #6, !srcloc !52
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and25103.i = and i32 %60, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25103.i)
  %tobool26.not104.i = icmp eq i32 %and25103.i, 0
  br i1 %tobool26.not104.i, label %for.body.for.end.i_crit_edge, label %for.body.land.lhs.true.i_crit_edge

for.body.land.lhs.true.i_crit_edge:               ; preds = %for.body
  br label %land.lhs.true.i

for.body.for.end.i_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %cond.false46.i.land.lhs.true.i_crit_edge, %for.body.land.lhs.true.i_crit_edge
  %call30.i = tail call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call30.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call30.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then32.i, label %cond.false46.i

if.then32.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %context, align 4
  %add.ptr36.i = getelementptr i8, ptr %62, i32 4
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr36.i) #6, !srcloc !52
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  br label %for.end.i

cond.false46.i:                                   ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %65(i32 noundef 214748) #6
  %66 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %context, align 4
  %add.ptr21.i = getelementptr i8, ptr %67, i32 4
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #6, !srcloc !52
  %69 = tail call i32 @llvm.bswap.i32(i32 %68) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  %and25.i = and i32 %69, 67108864
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %cond.false46.i.for.end.i_crit_edge, label %cond.false46.i.land.lhs.true.i_crit_edge

cond.false46.i.land.lhs.true.i_crit_edge:         ; preds = %cond.false46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true.i

cond.false46.i.for.end.i_crit_edge:               ; preds = %cond.false46.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end.i

for.end.i:                                        ; preds = %cond.false46.i.for.end.i_crit_edge, %if.then32.i, %for.body.for.end.i_crit_edge
  %regval.0.i = phi i32 [ %64, %if.then32.i ], [ %60, %for.body.for.end.i_crit_edge ], [ %69, %cond.false46.i.for.end.i_crit_edge ]
  %and51.i = and i32 %regval.0.i, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51.i)
  %tobool52.not.i = icmp eq i32 %and51.i, 0
  br i1 %tobool52.not.i, label %if.end4, label %meson_mx_efuse_read_addr.exit

meson_mx_efuse_read_addr.exit:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %config.i = getelementptr inbounds %struct.meson_mx_efuse, ptr %context, i32 0, i32 3
  %70 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %config.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.7, i32 noundef %div) #9
  br label %for.end

if.end4:                                          ; preds = %for.end.i
  %72 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %context, align 4
  %add.ptr62.i = getelementptr i8, ptr %73, i32 8
  %74 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.i) #6, !srcloc !52
  %75 = tail call i32 @llvm.bswap.i32(i32 %74) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  %76 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %tmp, align 4
  %add.ptr = getelementptr i8, ptr %buf, i32 %i.049
  %sub = sub i32 %bytes, %i.049
  %77 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %word_size, align 4
  %79 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %78)
  %80 = call ptr @memcpy(ptr %add.ptr, ptr %tmp, i32 %79)
  %81 = ptrtoint ptr %word_size to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %word_size, align 4
  %add11 = add i32 %82, %i.049
  %cmp = icmp ult i32 %add11, %bytes
  br i1 %cmp, label %if.end4.for.body_crit_edge, label %if.end4.for.end_crit_edge

if.end4.for.end_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end4.for.body_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end4.for.end_crit_edge, %meson_mx_efuse_read_addr.exit, %if.end.for.end_crit_edge
  %err.1 = phi i32 [ -110, %meson_mx_efuse_read_addr.exit ], [ 0, %if.end.for.end_crit_edge ], [ 0, %if.end4.for.end_crit_edge ]
  %83 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %context, align 4
  %add.ptr.i37 = getelementptr i8, ptr %84, i32 4
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %86 = and i32 %85, -2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %context, align 4
  %add.ptr4.i39 = getelementptr i8, ptr %88, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i39, i32 %86) #6, !srcloc !55
  %89 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %context, align 4
  %add.ptr.i.i40 = getelementptr i8, ptr %90, i32 4
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i40) #6, !srcloc !52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !53
  %92 = or i32 %91, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %93 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %context, align 4
  %add.ptr4.i.i41 = getelementptr i8, ptr %94, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i41, i32 %92) #6, !srcloc !55
  %95 = ptrtoint ptr %core_clk.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %core_clk.i, align 4
  tail call void @clk_disable(ptr noundef %96) #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.end, %if.end.i.i.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %96, %for.end ], [ %1, %if.end.i.i.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %err.1, %for.end ], [ %call1.i.i, %if.end.i.i.cleanup.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i.i, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp)
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_nvmem_meson_mx_efuse__190_242_meson_mx_efuse_driver_init6, !1, !"__initcall__kmod_nvmem_meson_mx_efuse__190_242_meson_mx_efuse_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 242, i32 1}
!2 = !{ptr @__exitcall_meson_mx_efuse_driver_exit, !1, !"__exitcall_meson_mx_efuse_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author191, !4, !"__UNIQUE_ID_author191", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 244, i32 1}
!5 = !{ptr @__UNIQUE_ID_description192, !6, !"__UNIQUE_ID_description192", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 245, i32 1}
!7 = !{ptr @__UNIQUE_ID_file193, !8, !"__UNIQUE_ID_file193", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 246, i32 1}
!9 = !{ptr @__UNIQUE_ID_license194, !8, !"__UNIQUE_ID_license194", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 237, i32 11}
!12 = !{ptr @meson_mx_efuse_driver, !13, !"meson_mx_efuse_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 234, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 223, i32 45}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 225, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @meson_mx_efuse_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @meson_mx_efuse_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 126, i32 3}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @meson_mx_efuse_read_addr._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @meson_mx_efuse_read_addr._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @meson_mx_efuse_match, !30, !"meson_mx_efuse_match", i1 false, i1 false}
!30 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 185, i32 34}
!31 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 171, i32 10}
!33 = !{ptr @meson6_efuse_data, !34, !"meson6_efuse_data", i1 false, i1 false}
!34 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 170, i32 50}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 176, i32 10}
!37 = !{ptr @meson8_efuse_data, !38, !"meson8_efuse_data", i1 false, i1 false}
!38 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 175, i32 50}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 181, i32 10}
!41 = !{ptr @meson8b_efuse_data, !42, !"meson8b_efuse_data", i1 false, i1 false}
!42 = !{!"../drivers/nvmem/meson-mx-efuse.c", i32 180, i32 50}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 3106077}
!53 = !{i64 2153003091}
!54 = !{i64 2153003306}
!55 = !{i64 3105659}
!56 = !{i64 2153045419}
!57 = !{i64 2153047534}
!58 = !{i64 2153048024}
!59 = !{i64 2153050879}
