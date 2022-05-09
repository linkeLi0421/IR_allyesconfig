; ModuleID = '/llk/IR_all_yes/drivers/nvmem/jz4780-efuse.c_pt.bc'
source_filename = "../drivers/nvmem/jz4780-efuse.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
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
%struct.jz4780_efuse = type { ptr, ptr, ptr }

@__initcall__kmod_nvmem_jz4780_efuse__172_231_jz4780_efuse_driver_init6 = internal global ptr @jz4780_efuse_driver_init, section ".initcall6.init", align 4
@jz4780_efuse_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @jz4780_efuse_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @jz4780_efuse_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_jz4780_efuse_driver_exit = internal global ptr @jz4780_efuse_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author173 = internal constant [82 x i8] c"nvmem_jz4780_efuse.author=PrasannaKumar Muralidharan <prasannatsmkumar@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author174 = internal constant [67 x i8] c"nvmem_jz4780_efuse.author=H. Nikolaus Schaller <hns@goldelico.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author175 = internal constant [63 x i8] c"nvmem_jz4780_efuse.author=Paul Cercueil <paul@crapouillou.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description176 = internal constant [59 x i8] c"nvmem_jz4780_efuse.description=Ingenic JZ4780 efuse driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file177 = internal constant [57 x i8] c"nvmem_jz4780_efuse.file=drivers/nvmem/nvmem_jz4780_efuse\00", section ".modinfo", align 1
@__UNIQUE_ID_license178 = internal constant [34 x i8] c"nvmem_jz4780_efuse.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"jz4780-efuse\00", [19 x i8] zeroinitializer }, align 32
@jz4780_efuse_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ingenic,jz4780-efuse\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@jz4780_efuse_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@jz4780_efuse_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 40, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"jz4780_efuse:160:(&jz4780_efuse_regmap_config)->lock\00", [43 x i8] zeroinitializer }, align 32
@jz4780_efuse_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 199, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Cannot set clock configuration\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"jz4780_efuse_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/nvmem/jz4780-efuse.c\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@jz4780_efuse_probe._entry_ptr = internal global ptr @jz4780_efuse_probe._entry, section ".printk_index", align 4
@jz4780_efuse_nvmem_config = internal constant { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @jz4780_efuse_read, ptr null, ptr null, i32 1024, i32 1, i32 1, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@jz4780_efuse_read._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.4, i32 99, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Time out while reading efuse data\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"jz4780_efuse_read\00", [46 x i8] zeroinitializer }, align 32
@jz4780_efuse_read._entry_ptr = internal global ptr @jz4780_efuse_read._entry, section ".printk_index", align 4
@___asan_gen_.9 = private unnamed_addr constant [20 x i8] c"jz4780_efuse_driver\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 224, i32 31 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 227, i32 11 }
@___asan_gen_.15 = private unnamed_addr constant [19 x i8] c"jz4780_efuse_match\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 218, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"jz4780_efuse_regmap_config\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 127, i32 35 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 159, i32 15 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 199, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [26 x i8] c"jz4780_efuse_nvmem_config\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 118, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private constant [32 x i8] c"../drivers/nvmem/jz4780-efuse.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 99, i32 4 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_author173, ptr @__UNIQUE_ID_author174, ptr @__UNIQUE_ID_author175, ptr @__UNIQUE_ID_description176, ptr @__UNIQUE_ID_file177, ptr @__UNIQUE_ID_license178, ptr @__exitcall_jz4780_efuse_driver_exit, ptr @__initcall__kmod_nvmem_jz4780_efuse__172_231_jz4780_efuse_driver_init6, ptr @jz4780_efuse_driver_exit, ptr @jz4780_efuse_probe._entry, ptr @jz4780_efuse_probe._entry_ptr, ptr @jz4780_efuse_read._entry, ptr @jz4780_efuse_read._entry_ptr, ptr @jz4780_efuse_driver, ptr @.str, ptr @jz4780_efuse_match, ptr @jz4780_efuse_probe._key, ptr @jz4780_efuse_regmap_config, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @jz4780_efuse_nvmem_config, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_efuse_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_efuse_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_efuse_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_efuse_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_efuse_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_efuse_nvmem_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jz4780_efuse_read._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_efuse_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @jz4780_efuse_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @jz4780_efuse_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @jz4780_efuse_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_efuse_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %cfg) #6
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @jz4780_efuse_regmap_config, ptr noundef nonnull @jz4780_efuse_probe._key, ptr noundef nonnull @.str.1) #6
  %map = getelementptr inbounds %struct.jz4780_efuse, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %map, align 4
  %cmp.i86 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.jz4780_efuse, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call15, ptr %clk, align 4
  %cmp.i87 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i87, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %call.i88 = tail call i32 @clk_prepare(ptr noundef %call15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i88)
  %tobool.not.i = icmp eq i32 %call.i88, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end21.clk_prepare_enable.exit_crit_edge

if.end21.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end21
  %call1.i = tail call i32 @clk_enable(ptr noundef %call15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end25_crit_edge, label %if.then3.i

if.end.i.if.end25_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %call15) #6
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end21.clk_prepare_enable.exit_crit_edge
  %retval.0.i = phi i32 [ %call.i88, %if.end21.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp = icmp slt i32 %retval.0.i, 0
  br i1 %cmp, label %clk_prepare_enable.exit.cleanup_crit_edge, label %clk_prepare_enable.exit.if.end25_crit_edge

clk_prepare_enable.exit.if.end25_crit_edge:       ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

clk_prepare_enable.exit.cleanup_crit_edge:        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %clk_prepare_enable.exit.if.end25_crit_edge, %if.end.i.if.end25_crit_edge
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %call.i89 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @clk_disable_unprepare_helper, ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool.not.i90 = icmp eq i32 %call.i89, 0
  br i1 %tobool.not.i90, label %if.end25.if.end31_crit_edge, label %devm_add_action_or_reset.exit

if.end25.if.end31_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

devm_add_action_or_reset.exit:                    ; preds = %if.end25
  tail call void @clk_disable(ptr noundef %6) #6
  tail call void @clk_unprepare(ptr noundef %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %cmp29 = icmp slt i32 %call.i89, 0
  br i1 %cmp29, label %devm_add_action_or_reset.exit.cleanup_crit_edge, label %devm_add_action_or_reset.exit.if.end31_crit_edge

devm_add_action_or_reset.exit.if.end31_crit_edge: ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

devm_add_action_or_reset.exit.cleanup_crit_edge:  ; preds = %devm_add_action_or_reset.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31:                                         ; preds = %devm_add_action_or_reset.exit.if.end31_crit_edge, %if.end25.if.end31_crit_edge
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %call33 = tail call i32 @clk_get_rate(ptr noundef %8) #6
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %call.i, align 4
  %div = udiv i32 %call33, 153846154
  %div35 = udiv i32 %call33, 28571429
  %sub36 = add nsw i32 %div35, -4
  %add = sub nsw i32 %sub36, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1833428833, i32 %call33)
  %cmp37 = icmp ugt i32 %call33, -1833428833
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %add)
  %cmp38 = icmp ugt i32 %add, 15
  %or.cond = select i1 %cmp37, i1 true, i1 %cmp38
  br i1 %or.cond, label %do.end, label %if.end41

do.end:                                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.2) #9
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %map, align 4
  %shl = shl nuw nsw i32 %div, 20
  %shl43 = shl nuw nsw i32 %add, 16
  %or = or i32 %shl43, %shl
  %call.i92 = tail call i32 @regmap_update_bits_base(ptr noundef %11, i32 noundef 4, i32 noundef 16711680, i32 noundef %or, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %12 = call ptr @memcpy(ptr %cfg, ptr @jz4780_efuse_nvmem_config, i32 88)
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %dev1, ptr %cfg, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %cfg, i32 0, i32 21
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %priv, align 4
  %call47 = call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull %cfg) #6
  %cmp.i.i = icmp ugt ptr %call47, inttoptr (i32 -4096 to ptr)
  %15 = ptrtoint ptr %call47 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %15, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end, %devm_add_action_or_reset.exit.cleanup_crit_edge, %clk_prepare_enable.exit.cleanup_crit_edge, %if.then18, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %2, %if.then10 ], [ %4, %if.then18 ], [ -22, %do.end ], [ %spec.select.i, %if.end41 ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i, %clk_prepare_enable.exit.cleanup_crit_edge ], [ %call.i89, %devm_add_action_or_reset.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clk_disable_unprepare_helper(ptr noundef %clock) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @clk_disable(ptr noundef %clock) #6
  tail call void @clk_unprepare(ptr noundef %clock) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @jz4780_efuse_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  %buf = alloca [32 x i8], align 1
  %tmp2 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp.not114 = icmp eq i32 %bytes, 0
  br i1 %cmp.not114, label %entry.cleanup61_crit_edge, label %while.body.lr.ph

entry.cleanup61_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

while.body.lr.ph:                                 ; preds = %entry
  %map = getelementptr inbounds %struct.jz4780_efuse, ptr %context, i32 0, i32 1
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %offset.addr.0117 = phi i32 [ %offset, %while.body.lr.ph ], [ %add54, %cleanup.while.body_crit_edge ]
  %val.addr.0116 = phi ptr [ %val, %while.body.lr.ph ], [ %add.ptr, %cleanup.while.body_crit_edge ]
  %bytes.addr.0115 = phi i32 [ %bytes, %while.body.lr.ph ], [ %sub55, %cleanup.while.body_crit_edge ]
  %and = and i32 %offset.addr.0117, -32
  %add = sub i32 32, %offset.addr.0117
  %sub = add i32 %add, %and
  %0 = call i32 @llvm.umin.i32(i32 %bytes.addr.0115, i32 %sub)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %buf) #6
  %1 = call ptr @memset(ptr %buf, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp2) #6
  %2 = ptrtoint ptr %tmp2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %tmp2, align 4, !annotation !49
  %shl = shl i32 %and, 21
  %or3 = or i32 %shl, 2031617
  %3 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map, align 4
  %call.i = call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 0, i32 noundef 2147450883, i32 noundef %or3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call4 = call i64 @ktime_get() #6
  %add.i = add i64 %call4, 50000000
  call void @__might_sleep(ptr noundef nonnull @.str.4, i32 noundef 97) #6
  %5 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map, align 4
  %call14112 = call i32 @regmap_read(ptr noundef %6, i32 noundef 8, ptr noundef nonnull %tmp2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14112)
  %tobool.not113 = icmp eq i32 %call14112, 0
  br i1 %tobool.not113, label %while.body.lor.lhs.false_crit_edge, label %while.body..loopexit_crit_edge

while.body..loopexit_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit

while.body.lor.lhs.false_crit_edge:               ; preds = %while.body
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then28.lor.lhs.false_crit_edge, %while.body.lor.lhs.false_crit_edge
  %7 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %tmp2, align 4
  %and15 = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %lor.lhs.false.lor.end_crit_edge

lor.lhs.false.lor.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call20 = call i64 @ktime_get() #6
  call void @__sanitizer_cov_trace_cmp8(i64 %call20, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then28

if.then28:                                        ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #6
  %9 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map, align 4
  %call14 = call i32 @regmap_read(ptr noundef %10, i32 noundef 8, ptr noundef nonnull %tmp2) #6
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.then28.lor.lhs.false_crit_edge, label %if.then28..loopexit_crit_edge

if.then28..loopexit_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit

if.then28.lor.lhs.false_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %11 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %map, align 4
  %call25 = call i32 @regmap_read(ptr noundef %12, i32 noundef 8, ptr noundef nonnull %tmp2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool32.not = icmp eq i32 %call25, 0
  br i1 %tobool32.not, label %for.end.lor.end_crit_edge, label %for.end..loopexit_crit_edge

for.end..loopexit_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %.loopexit

for.end.lor.end_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end

lor.end:                                          ; preds = %for.end.lor.end_crit_edge, %lor.lhs.false.lor.end_crit_edge
  %13 = ptrtoint ptr %tmp2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %tmp2, align 4
  %and33 = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp eq i32 %and33, 0
  br i1 %tobool34.not, label %lor.end.do.end46_crit_edge, label %lor.end.if.end47_crit_edge

lor.end.if.end47_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

lor.end.do.end46_crit_edge:                       ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

.loopexit:                                        ; preds = %for.end..loopexit_crit_edge, %if.then28..loopexit_crit_edge, %while.body..loopexit_crit_edge
  %__ret.091103.ph = phi i32 [ %call14112, %while.body..loopexit_crit_edge ], [ %call25, %for.end..loopexit_crit_edge ], [ %call14, %if.then28..loopexit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__ret.091103.ph)
  %cmp42 = icmp slt i32 %__ret.091103.ph, 0
  br i1 %cmp42, label %.loopexit.do.end46_crit_edge, label %.loopexit.if.end47_crit_edge

.loopexit.if.end47_crit_edge:                     ; preds = %.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end47

.loopexit.do.end46_crit_edge:                     ; preds = %.loopexit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end46

do.end46:                                         ; preds = %.loopexit.do.end46_crit_edge, %lor.end.do.end46_crit_edge
  %15 = phi i32 [ %__ret.091103.ph, %.loopexit.do.end46_crit_edge ], [ -110, %lor.end.do.end46_crit_edge ]
  %16 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %context, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.7) #9
  br label %cleanup.thread

if.end47:                                         ; preds = %.loopexit.if.end47_crit_edge, %lor.end.if.end47_crit_edge
  %18 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map, align 4
  %call49 = call i32 @regmap_bulk_read(ptr noundef %19, i32 noundef 12, ptr noundef nonnull %buf, i32 noundef 8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %cmp50 = icmp slt i32 %call49, 0
  br i1 %cmp50, label %if.end47.cleanup.thread_crit_edge, label %cleanup

if.end47.cleanup.thread_crit_edge:                ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end47.cleanup.thread_crit_edge, %do.end46
  %retval.1.ph = phi i32 [ %15, %do.end46 ], [ %call49, %if.end47.cleanup.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  br label %cleanup61

cleanup:                                          ; preds = %if.end47
  %sub53 = and i32 %offset.addr.0117, 31
  %arrayidx = getelementptr [32 x i8], ptr %buf, i32 0, i32 %sub53
  %20 = call ptr @memcpy(ptr %val.addr.0116, ptr %arrayidx, i32 %0)
  %add.ptr = getelementptr i8, ptr %val.addr.0116, i32 %0
  %add54 = add i32 %0, %offset.addr.0117
  %sub55 = sub i32 %bytes.addr.0115, %0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp2) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %buf) #6
  %cmp.not = icmp eq i32 %sub55, 0
  br i1 %cmp.not, label %cleanup.cleanup61_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

cleanup.cleanup61_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup61

cleanup61:                                        ; preds = %cleanup.cleanup61_crit_edge, %cleanup.thread, %entry.cleanup61_crit_edge
  %retval.2 = phi i32 [ %retval.1.ph, %cleanup.thread ], [ 0, %entry.cleanup61_crit_edge ], [ 0, %cleanup.cleanup61_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_bulk_read(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !35, !36, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @__initcall__kmod_nvmem_jz4780_efuse__172_231_jz4780_efuse_driver_init6, !1, !"__initcall__kmod_nvmem_jz4780_efuse__172_231_jz4780_efuse_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 231, i32 1}
!2 = !{ptr @__exitcall_jz4780_efuse_driver_exit, !1, !"__exitcall_jz4780_efuse_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author173, !4, !"__UNIQUE_ID_author173", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 233, i32 1}
!5 = !{ptr @__UNIQUE_ID_author174, !6, !"__UNIQUE_ID_author174", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 234, i32 1}
!7 = !{ptr @__UNIQUE_ID_author175, !8, !"__UNIQUE_ID_author175", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 235, i32 1}
!9 = !{ptr @__UNIQUE_ID_description176, !10, !"__UNIQUE_ID_description176", i1 false, i1 false}
!10 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 236, i32 1}
!11 = !{ptr @__UNIQUE_ID_file177, !12, !"__UNIQUE_ID_file177", i1 false, i1 false}
!12 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 237, i32 1}
!13 = !{ptr @__UNIQUE_ID_license178, !12, !"__UNIQUE_ID_license178", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 227, i32 11}
!16 = !{ptr @jz4780_efuse_driver, !17, !"jz4780_efuse_driver", i1 false, i1 false}
!17 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 224, i32 31}
!18 = !{ptr @jz4780_efuse_probe._key, !19, !"_key", i1 false, i1 false}
!19 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 159, i32 15}
!20 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 199, i32 3}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @jz4780_efuse_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @jz4780_efuse_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @jz4780_efuse_regmap_config, !30, !"jz4780_efuse_regmap_config", i1 false, i1 false}
!30 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 127, i32 35}
!31 = !{ptr @jz4780_efuse_nvmem_config, !32, !"jz4780_efuse_nvmem_config", i1 false, i1 false}
!32 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 118, i32 28}
!33 = !{ptr @.str.7, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 99, i32 4}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @jz4780_efuse_read._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @jz4780_efuse_read._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @jz4780_efuse_match, !39, !"jz4780_efuse_match", i1 false, i1 false}
!39 = !{!"../drivers/nvmem/jz4780-efuse.c", i32 218, i32 34}
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
