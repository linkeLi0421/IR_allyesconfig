; ModuleID = '/llk/IR_all_yes/drivers/nvmem/vf610-ocotp.c_pt.bc'
source_filename = "../drivers/nvmem/vf610-ocotp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.vf610_ocotp = type { ptr, ptr, ptr, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }

@__initcall__kmod_nvmem_vf610_ocotp__184_252_vf610_ocotp_driver_init6 = internal global ptr @vf610_ocotp_driver_init, section ".initcall6.init", align 4
@vf610_ocotp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @vf610_ocotp_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ocotp_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_vf610_ocotp_driver_exit = internal global ptr @vf610_ocotp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author185 = internal constant [71 x i8] c"nvmem_vf610_ocotp.author=Sanchayan Maity <sanchayan.maity@toradex.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [50 x i8] c"nvmem_vf610_ocotp.description=Vybrid OCOTP driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file187 = internal constant [55 x i8] c"nvmem_vf610_ocotp.file=drivers/nvmem/nvmem-vf610-ocotp\00", section ".modinfo", align 1
@__UNIQUE_ID_license188 = internal constant [33 x i8] c"nvmem_vf610_ocotp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vf610-ocotp\00", [20 x i8] zeroinitializer }, align 32
@ocotp_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-ocotp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@vf610_ocotp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 230, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed getting clock, err = %ld\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vf610_ocotp_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/nvmem/vf610-ocotp.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@vf610_ocotp_probe._entry_ptr = internal global ptr @vf610_ocotp_probe._entry, section ".printk_index", align 4
@ocotp_config = internal global { %struct.nvmem_config, [40 x i8] } { %struct.nvmem_config { ptr null, ptr @.str.6, i32 0, ptr null, ptr null, ptr null, i32 0, ptr null, i32 0, i32 0, i8 0, i8 0, i8 0, ptr null, i8 0, ptr @vf610_ocotp_read, ptr null, ptr null, i32 0, i32 4, i32 4, ptr null, i8 0, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ocotp\00", [26 x i8] zeroinitializer }, align 32
@vf610_ocotp_read.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.3, ptr @.str.9, i8 0, i8 44, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nvmem_vf610_ocotp\00", [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vf610_ocotp_read\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Error reading from fuse address %x\0A\00", [60 x i8] zeroinitializer }, align 32
@base_to_fuse_addr_mappings = internal constant { [30 x [2 x i32]], [48 x i8] } { [30 x [2 x i32]] [[2 x i32] [i32 1024, i32 0], [2 x i32] [i32 1040, i32 1], [2 x i32] [i32 1056, i32 2], [2 x i32] [i32 1104, i32 5], [2 x i32] [i32 1264, i32 15], [2 x i32] [i32 1536, i32 32], [2 x i32] [i32 1552, i32 33], [2 x i32] [i32 1568, i32 34], [2 x i32] [i32 1584, i32 35], [2 x i32] [i32 1600, i32 36], [2 x i32] [i32 1616, i32 37], [2 x i32] [i32 1632, i32 38], [2 x i32] [i32 1648, i32 39], [2 x i32] [i32 1776, i32 47], [2 x i32] [i32 2176, i32 56], [2 x i32] [i32 2192, i32 57], [2 x i32] [i32 2208, i32 58], [2 x i32] [i32 2224, i32 59], [2 x i32] [i32 2240, i32 60], [2 x i32] [i32 2256, i32 61], [2 x i32] [i32 2272, i32 62], [2 x i32] [i32 2288, i32 63], [2 x i32] [i32 3200, i32 120], [2 x i32] [i32 3216, i32 121], [2 x i32] [i32 3232, i32 122], [2 x i32] [i32 3248, i32 123], [2 x i32] [i32 3264, i32 124], [2 x i32] [i32 3280, i32 125], [2 x i32] [i32 3296, i32 126], [2 x i32] [i32 3312, i32 127]], [48 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.10 = private unnamed_addr constant [19 x i8] c"vf610_ocotp_driver\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 245, i32 31 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 248, i32 11 }
@___asan_gen_.16 = private unnamed_addr constant [15 x i8] c"ocotp_of_match\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 206, i32 34 }
@___asan_gen_.19 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 229, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [13 x i8] c"ocotp_config\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 199, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 200, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 176, i32 5 }
@___asan_gen_.52 = private unnamed_addr constant [27 x i8] c"base_to_fuse_addr_mappings\00", align 1
@___asan_gen_.53 = private constant [31 x i8] c"../drivers/nvmem/vf610-ocotp.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 56, i32 18 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author185, ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file187, ptr @__UNIQUE_ID_license188, ptr @__exitcall_vf610_ocotp_driver_exit, ptr @__initcall__kmod_nvmem_vf610_ocotp__184_252_vf610_ocotp_driver_init6, ptr @vf610_ocotp_driver_exit, ptr @vf610_ocotp_probe._entry, ptr @vf610_ocotp_probe._entry_ptr, ptr @vf610_ocotp_driver, ptr @.str, ptr @ocotp_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ocotp_config, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @base_to_fuse_addr_mappings], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_ocotp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocotp_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_ocotp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocotp_config to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @base_to_fuse_addr_mappings to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_ocotp_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @vf610_ocotp_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vf610_ocotp_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @vf610_ocotp_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_ocotp_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 20, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #5
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #5
  %clk = getelementptr inbounds %struct.vf610_ocotp, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %clk, align 4
  %cmp.i48 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %do.end, label %if.end18

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call10 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1, i32 noundef %3) #8
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %dev19 = getelementptr inbounds %struct.vf610_ocotp, ptr %call.i, i32 0, i32 2
  %7 = ptrtoint ptr %dev19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dev1, ptr %dev19, align 4
  %call.i49 = tail call i32 @clk_get_rate(ptr noundef %call10) #5
  %div.i = udiv i32 %call.i49, 50000000
  %div1.i = udiv i32 %call.i49, 100000
  %sub2.i = add nuw nsw i32 %div1.i, 41
  %div3.i = udiv i32 %call.i49, 25000000
  %sub.i = shl nuw nsw i32 %div.i, 12
  %shl.i = add nuw nsw i32 %sub.i, 61440
  %and.i = and i32 %shl.i, 61440
  %sub5.i = shl nuw nsw i32 %div3.i, 16
  %shl6.i = add nuw nsw i32 %sub5.i, 2686976
  %and7.i = and i32 %shl6.i, 4128768
  %and9.i = and i32 %sub2.i, 4095
  %or.i = or i32 %and7.i, %and9.i
  %or10.i = or i32 %or.i, %and.i
  %timing = getelementptr inbounds %struct.vf610_ocotp, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %timing to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or10.i, ptr %timing, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %9 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %end.i, align 4
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call2, align 4
  %sub.i50 = add i32 %10, 1
  %add.i = sub i32 %sub.i50, %12
  store i32 %add.i, ptr getelementptr inbounds (%struct.nvmem_config, ptr @ocotp_config, i32 0, i32 18), align 4
  store ptr %call.i, ptr getelementptr inbounds (%struct.nvmem_config, ptr @ocotp_config, i32 0, i32 21), align 4
  store ptr %dev1, ptr @ocotp_config, align 4
  %call22 = tail call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull @ocotp_config) #5
  %nvmem = getelementptr inbounds %struct.vf610_ocotp, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %nvmem to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %nvmem, align 4
  %cmp.i.i = icmp ugt ptr %call22, inttoptr (i32 -4096 to ptr)
  %14 = ptrtoint ptr %call22 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %14, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %6, %do.end ], [ %spec.select.i, %if.end18 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vf610_ocotp_read(ptr nocapture noundef readonly %context, i32 noundef %offset, ptr nocapture noundef writeonly %val, i32 noundef %bytes) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %context, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bytes)
  %cmp.not103 = icmp eq i32 %bytes, 0
  br i1 %cmp.not103, label %entry.cleanup_crit_edge, label %for.body.i.preheader.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body.i.preheader.lr.ph:                       ; preds = %entry
  %timing = getelementptr inbounds %struct.vf610_ocotp, ptr %context, i32 0, i32 4
  %add.ptr = getelementptr i8, ptr %1, i32 16
  %add.ptr18 = getelementptr i8, ptr %1, i32 48
  %dev = getelementptr inbounds %struct.vf610_ocotp, ptr %context, i32 0, i32 2
  %add.ptr45 = getelementptr i8, ptr %1, i32 8
  %add.ptr49 = getelementptr i8, ptr %1, i32 64
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.end53.for.body.i.preheader_crit_edge, %for.body.i.preheader.lr.ph
  %offset.addr.0106 = phi i32 [ %offset, %for.body.i.preheader.lr.ph ], [ %add, %if.end53.for.body.i.preheader_crit_edge ]
  %bytes.addr.0105 = phi i32 [ %bytes, %for.body.i.preheader.lr.ph ], [ %sub, %if.end53.for.body.i.preheader_crit_edge ]
  %buf.0104 = phi ptr [ %val, %for.body.i.preheader.lr.ph ], [ %incdec.ptr, %if.end53.for.body.i.preheader_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr [30 x [2 x i32]], ptr @base_to_fuse_addr_mappings, i32 0, i32 %i.09.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %offset.addr.0106)
  %cmp2.i = icmp eq i32 %3, %offset.addr.0106
  br i1 %cmp2.i, label %vf610_get_fuse_address.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 30
  br i1 %exitcond.not.i, label %for.inc.i.if.end53_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.end53_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

vf610_get_fuse_address.exit:                      ; preds = %for.body.i
  %arrayidx4.i = getelementptr [30 x [2 x i32]], ptr @base_to_fuse_addr_mappings, i32 0, i32 %i.09.i, i32 1
  %4 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx4.i, align 4
  %6 = and i32 %i.09.i, 536870911
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %vf610_get_fuse_address.exit.if.end53_crit_edge, label %do.body

vf610_get_fuse_address.exit.if.end53_crit_edge:   ; preds = %vf610_get_fuse_address.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.body:                                          ; preds = %vf610_get_fuse_address.exit
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !44
  tail call void @arm_heavy_mb() #5
  %7 = ptrtoint ptr %timing to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %timing, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #5, !srcloc !45
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %11 = and i32 %10, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not6.i = icmp eq i32 %11, 0
  br i1 %tobool.not6.i, label %do.body.if.end_crit_edge, label %do.body.land.rhs.i_crit_edge

do.body.land.rhs.i_crit_edge:                     ; preds = %do.body
  br label %land.rhs.i

do.body.if.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.i:                                       ; preds = %while.body.i.land.rhs.i_crit_edge, %do.body.land.rhs.i_crit_edge
  %timeout.07.i = phi i32 [ %dec.i, %while.body.i.land.rhs.i_crit_edge ], [ 100000, %do.body.land.rhs.i_crit_edge ]
  %dec.i = add nsw i32 %timeout.07.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool2.not.i = icmp eq i32 %dec.i, 0
  br i1 %tobool2.not.i, label %vf610_ocotp_wait_busy.exit, label %while.body.i

while.body.i:                                     ; preds = %land.rhs.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 2147480) #5
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %14 = and i32 %13, 65536
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %while.body.i.if.end_crit_edge, label %while.body.i.land.rhs.i_crit_edge

while.body.i.land.rhs.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i

while.body.i.if.end_crit_edge:                    ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

vf610_ocotp_wait_busy.exit:                       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 131072) #5, !srcloc !45
  br label %cleanup

if.end:                                           ; preds = %while.body.i.if.end_crit_edge, %do.body.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 2147480) #5
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !49
  %17 = and i32 %16, -2130771968
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %and10 = and i32 %5, 127
  %or = or i32 %18, %and10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !50
  tail call void @arm_heavy_mb() #5
  %19 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %19) #5, !srcloc !45
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !51
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 16777216) #5, !srcloc !45
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %21 = and i32 %20, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not6.i83 = icmp eq i32 %21, 0
  br i1 %tobool.not6.i83, label %if.end.if.end23_crit_edge, label %if.end.land.rhs.i87_crit_edge

if.end.land.rhs.i87_crit_edge:                    ; preds = %if.end
  br label %land.rhs.i87

if.end.if.end23_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

land.rhs.i87:                                     ; preds = %while.body.i89.land.rhs.i87_crit_edge, %if.end.land.rhs.i87_crit_edge
  %timeout.07.i84 = phi i32 [ %dec.i85, %while.body.i89.land.rhs.i87_crit_edge ], [ 100000, %if.end.land.rhs.i87_crit_edge ]
  %dec.i85 = add nsw i32 %timeout.07.i84, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i85)
  %tobool2.not.i86 = icmp eq i32 %dec.i85, 0
  br i1 %tobool2.not.i86, label %vf610_ocotp_wait_busy.exit94, label %while.body.i89

while.body.i89:                                   ; preds = %land.rhs.i87
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 2147480) #5
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !47
  %24 = and i32 %23, 65536
  %tobool.not.i88 = icmp eq i32 %24, 0
  br i1 %tobool.not.i88, label %while.body.i89.if.end23_crit_edge, label %while.body.i89.land.rhs.i87_crit_edge

while.body.i89.land.rhs.i87_crit_edge:            ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs.i87

while.body.i89.if.end23_crit_edge:                ; preds = %while.body.i89
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

vf610_ocotp_wait_busy.exit94:                     ; preds = %land.rhs.i87
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !48
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 131072) #5, !srcloc !45
  br label %cleanup

if.end23:                                         ; preds = %while.body.i89.if.end23_crit_edge, %if.end.if.end23_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 2147480) #5
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #5, !srcloc !46
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !52
  %27 = and i32 %26, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool30.not = icmp eq i32 %27, 0
  br i1 %tobool30.not, label %if.end23.if.end46_crit_edge, label %do.body32

if.end23.if.end46_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46

do.body32:                                        ; preds = %if.end23
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vf610_ocotp_read.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@vf610_ocotp_read, %if.then38)) #5
          to label %do.body42 [label %if.then38], !srcloc !53

if.then38:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #7
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vf610_ocotp_read.__UNIQUE_ID_ddebug183, ptr noundef %29, ptr noundef nonnull @.str.9, i32 noundef %5) #5
  br label %do.body42

do.body42:                                        ; preds = %if.then38, %do.body32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !54
  tail call void @arm_heavy_mb() #5
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 131072) #5, !srcloc !45
  br label %if.end46

if.end46:                                         ; preds = %do.body42, %if.end23.if.end46_crit_edge
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #5, !srcloc !46
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !55
  br label %if.end53

if.end53:                                         ; preds = %if.end46, %vf610_get_fuse_address.exit.if.end53_crit_edge, %for.inc.i.if.end53_crit_edge
  %storemerge = phi i32 [ %31, %if.end46 ], [ 0, %vf610_get_fuse_address.exit.if.end53_crit_edge ], [ 0, %for.inc.i.if.end53_crit_edge ]
  %32 = ptrtoint ptr %buf.0104 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %buf.0104, align 4
  %incdec.ptr = getelementptr i32, ptr %buf.0104, i32 1
  %sub = add i32 %bytes.addr.0105, -4
  %add = add i32 %offset.addr.0106, 4
  %cmp.not = icmp eq i32 %sub, 0
  br i1 %cmp.not, label %if.end53.cleanup_crit_edge, label %if.end53.for.body.i.preheader_crit_edge

if.end53.for.body.i.preheader_crit_edge:          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.preheader

if.end53.cleanup_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %if.end53.cleanup_crit_edge, %vf610_ocotp_wait_busy.exit94, %vf610_ocotp_wait_busy.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %vf610_ocotp_wait_busy.exit ], [ -110, %vf610_ocotp_wait_busy.exit94 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.end53.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_nvmem_vf610_ocotp__184_252_vf610_ocotp_driver_init6, !1, !"__initcall__kmod_nvmem_vf610_ocotp__184_252_vf610_ocotp_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 252, i32 1}
!2 = !{ptr @__exitcall_vf610_ocotp_driver_exit, !1, !"__exitcall_vf610_ocotp_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author185, !4, !"__UNIQUE_ID_author185", i1 false, i1 false}
!4 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 253, i32 1}
!5 = !{ptr @__UNIQUE_ID_description186, !6, !"__UNIQUE_ID_description186", i1 false, i1 false}
!6 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 254, i32 1}
!7 = !{ptr @__UNIQUE_ID_file187, !8, !"__UNIQUE_ID_file187", i1 false, i1 false}
!8 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 255, i32 1}
!9 = !{ptr @__UNIQUE_ID_license188, !8, !"__UNIQUE_ID_license188", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 248, i32 11}
!12 = !{ptr @vf610_ocotp_driver, !13, !"vf610_ocotp_driver", i1 false, i1 false}
!13 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 245, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 229, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @vf610_ocotp_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @vf610_ocotp_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 200, i32 10}
!24 = !{ptr @ocotp_config, !25, !"ocotp_config", i1 false, i1 false}
!25 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 199, i32 28}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 176, i32 5}
!28 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @vf610_ocotp_read.__UNIQUE_ID_ddebug183, !27, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!31 = !{ptr @base_to_fuse_addr_mappings, !32, !"base_to_fuse_addr_mappings", i1 false, i1 false}
!32 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 56, i32 18}
!33 = !{ptr @ocotp_of_match, !34, !"ocotp_of_match", i1 false, i1 false}
!34 = !{!"../drivers/nvmem/vf610-ocotp.c", i32 206, i32 34}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2152921996}
!45 = !{i64 4814238}
!46 = !{i64 4814656}
!47 = !{i64 2152917145}
!48 = !{i64 2152918088}
!49 = !{i64 2152922667}
!50 = !{i64 2152925007}
!51 = !{i64 2152925393}
!52 = !{i64 2152926001}
!53 = !{i64 2148726053, i64 2148726058, i64 2148726071, i64 2148726115, i64 2148726149, i64 2148726170}
!54 = !{i64 2152928818}
!55 = !{i64 2152929526}
