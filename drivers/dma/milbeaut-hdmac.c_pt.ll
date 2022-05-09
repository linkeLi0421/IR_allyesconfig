; ModuleID = '/llk/IR_all_yes/drivers/dma/milbeaut-hdmac.c_pt.bc'
source_filename = "../drivers/dma/milbeaut-hdmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.milbeaut_hdmac_device = type { %struct.dma_device, ptr, ptr, [0 x %struct.milbeaut_hdmac_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.milbeaut_hdmac_chan = type { %struct.virt_dma_chan, ptr, ptr, ptr, i32, %struct.dma_slave_config }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.milbeaut_hdmac_desc = type { %struct.virt_dma_desc, ptr, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_milbeaut_hdmac__278_575_milbeaut_hdmac_driver_init6 = internal global ptr @milbeaut_hdmac_driver_init, section ".initcall6.init", align 4
@milbeaut_hdmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @milbeaut_hdmac_probe, ptr @milbeaut_hdmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @milbeaut_hdmac_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_milbeaut_hdmac_driver_exit = internal global ptr @milbeaut_hdmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description279 = internal constant [59 x i8] c"milbeaut_hdmac.description=Milbeaut HDMAC DmaEngine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file280 = internal constant [47 x i8] c"milbeaut_hdmac.file=drivers/dma/milbeaut-hdmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license281 = internal constant [30 x i8] c"milbeaut_hdmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"milbeaut-m10v-hdmac\00", [44 x i8] zeroinitializer }, align 32
@milbeaut_hdmac_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"socionext,milbeaut-m10v-hdmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@milbeaut_hdmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"failed to get clock\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"milbeaut_hdmac_probe\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma/milbeaut-hdmac.c\00", [35 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@milbeaut_hdmac_probe._entry_ptr = internal global ptr @milbeaut_hdmac_probe._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"milbeaut-hdmac-%d\00", [46 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"milbeaut_hdmac\00", [17 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/linux/dmaengine.h\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 4, i64 8, i64 16]
@___asan_gen_.12 = private unnamed_addr constant [22 x i8] c"milbeaut_hdmac_driver\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 567, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 571, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"milbeaut_hdmac_match\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 561, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 481, i32 3 }
@___asan_gen_.40 = private constant [32 x i8] c"../drivers/dma/milbeaut-hdmac.c\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.40, i32 437, i32 45 }
@___asan_gen_.52 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 101, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.55 = private unnamed_addr constant [29 x i8] c"../include/linux/dmaengine.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 1169, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__UNIQUE_ID_description279, ptr @__UNIQUE_ID_file280, ptr @__UNIQUE_ID_license281, ptr @__exitcall_milbeaut_hdmac_driver_exit, ptr @__initcall__kmod_milbeaut_hdmac__278_575_milbeaut_hdmac_driver_init6, ptr @milbeaut_hdmac_driver_exit, ptr @milbeaut_hdmac_probe._entry, ptr @milbeaut_hdmac_probe._entry_ptr, ptr @milbeaut_hdmac_driver, ptr @.str, ptr @milbeaut_hdmac_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @milbeaut_hdmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @milbeaut_hdmac_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @milbeaut_hdmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @milbeaut_hdmac_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @milbeaut_hdmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @milbeaut_hdmac_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @platform_irq_count(ptr noundef %pdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @dma_set_mask(ptr noundef %dev1, i64 noundef 4294967295) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call, i32 244) #8
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %2, i32 372) #8
  %retval.0.i = select i1 %1, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i, i32 noundef 3520) #8
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #8
  %reg_base = getelementptr inbounds %struct.milbeaut_hdmac_device, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %reg_base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call17 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #8
  %clk = getelementptr inbounds %struct.milbeaut_hdmac_device, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call17, ptr %clk, align 4
  %cmp.i101 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i101, label %do.end, label %if.end23

do.end:                                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #11
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %8 = ptrtoint ptr %7 to i32
  br label %cleanup

if.end23:                                         ; preds = %if.end16
  %call.i102 = tail call i32 @clk_prepare(ptr noundef %call17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i102)
  %tobool.not.i = icmp eq i32 %call.i102, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end23
  %call1.i = tail call i32 @clk_enable(ptr noundef %call17) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end28, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %call17) #8
  br label %cleanup

if.end28:                                         ; preds = %if.end.i
  %dev30 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %9 = ptrtoint ptr %dev30 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev1, ptr %dev30, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #8
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %10 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 22, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %11 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 22, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %12 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %directions, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %13 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @milbeaut_hdmac_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %14 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @milbeaut_hdmac_chan_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %15 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @milbeaut_hdmac_chan_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %16 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @milbeaut_hdmac_chan_resume, ptr %device_resume, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %17 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @milbeaut_hdmac_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %18 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @milbeaut_hdmac_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %19 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @milbeaut_hdmac_synchronize, ptr %device_synchronize, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %20 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @milbeaut_hdmac_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %21 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @milbeaut_hdmac_issue_pending, ptr %device_issue_pending, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %22 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %channels, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp32113.not = icmp eq i32 %call, 0
  br i1 %cmp32113.not, label %if.end28.for.end_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  br label %for.body

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end28.for.body_crit_edge
  %i.0114 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end28.for.body_crit_edge ]
  %arrayidx.i = getelementptr %struct.milbeaut_hdmac_device, ptr %call.i, i32 0, i32 3, i32 %i.0114
  %call.i104 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.0114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i104)
  %cmp.i105 = icmp slt i32 %call.i104, 0
  br i1 %cmp.i105, label %for.body.disable_clk_crit_edge, label %if.end.i107

for.body.disable_clk_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

if.end.i107:                                      ; preds = %for.body
  %call2.i = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev1, i32 noundef 3264, ptr noundef nonnull @.str.6, i32 noundef %i.0114) #8
  %tobool.not.i106 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i106, label %if.end.i107.disable_clk_crit_edge, label %if.end4.i

if.end.i107.disable_clk_crit_edge:                ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

if.end4.i:                                        ; preds = %if.end.i107
  %call.i.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call.i104, ptr noundef nonnull @milbeaut_hdmac_interrupt, ptr noundef null, i32 noundef 128, ptr noundef nonnull %call2.i, ptr noundef %arrayidx.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i, label %for.inc, label %if.end4.i.disable_clk_crit_edge

if.end4.i.disable_clk_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

for.inc:                                          ; preds = %if.end4.i
  %mdev9.i = getelementptr %struct.milbeaut_hdmac_device, ptr %call.i, i32 0, i32 3, i32 %i.0114, i32 1
  %24 = ptrtoint ptr %mdev9.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call.i, ptr %mdev9.i, align 4
  %25 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %reg_base, align 4
  %add.i = shl i32 %i.0114, 4
  %mul.i = add i32 %add.i, 16
  %add.ptr.i = getelementptr i8, ptr %26, i32 %mul.i
  %reg_ch_base.i = getelementptr %struct.milbeaut_hdmac_device, ptr %call.i, i32 0, i32 3, i32 %i.0114, i32 3
  %27 = ptrtoint ptr %reg_ch_base.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr.i, ptr %reg_ch_base.i, align 4
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx.i, i32 0, i32 2
  %28 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @milbeaut_hdmac_desc_free, ptr %desc_free.i, align 4
  tail call void @vchan_init(ptr noundef %arrayidx.i, ptr noundef %call.i) #8
  %inc = add nuw nsw i32 %i.0114, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end28.for.end_crit_edge
  %call37 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.end40, label %for.end.disable_clk_crit_edge

for.end.disable_clk_crit_edge:                    ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %disable_clk

if.end40:                                         ; preds = %for.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %29 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %of_node, align 8
  %call41 = tail call i32 @of_dma_controller_register(ptr noundef %30, ptr noundef nonnull @milbeaut_hdmac_xlate, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  br i1 %tobool42.not, label %if.end44, label %unregister_dmac

if.end44:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %31 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

unregister_dmac:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #8
  br label %disable_clk

disable_clk:                                      ; preds = %unregister_dmac, %for.end.disable_clk_crit_edge, %if.end4.i.disable_clk_crit_edge, %if.end.i107.disable_clk_crit_edge, %for.body.disable_clk_crit_edge
  %ret.0 = phi i32 [ %call37, %for.end.disable_clk_crit_edge ], [ %call41, %unregister_dmac ], [ %call.i104, %for.body.disable_clk_crit_edge ], [ -12, %if.end.i107.disable_clk_crit_edge ], [ %call.i.i, %if.end4.i.disable_clk_crit_edge ]
  %32 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %33) #8
  tail call void @clk_unprepare(ptr noundef %33) #8
  br label %cleanup

cleanup:                                          ; preds = %disable_clk, %if.end44, %if.then3.i, %if.end23.cleanup_crit_edge, %do.end, %if.then13, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %8, %do.end ], [ %ret.0, %disable_clk ], [ 0, %if.end44 ], [ %call, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ], [ -12, %if.end4.cleanup_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i102, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn22 = load ptr, ptr %channels, align 4
  %cmp.not24 = icmp eq ptr %.pn22, %channels
  br i1 %cmp.not24, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn25 = phi ptr [ %.pn, %if.end.for.body_crit_edge ], [ %.pn22, %entry.for.body_crit_edge ]
  %chan.026 = getelementptr i8, ptr %.pn25, i32 -32
  %3 = ptrtoint ptr %chan.026 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan.026, align 4
  %device_terminate_all.i.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 47
  %5 = ptrtoint ptr %device_terminate_all.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %device_terminate_all.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %6, null
  br i1 %tobool.not.i.i, label %for.body.cleanup_crit_edge, label %dmaengine_terminate_async.exit.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

dmaengine_terminate_async.exit.i:                 ; preds = %for.body
  %call.i.i = tail call i32 %6(ptr noundef %chan.026) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %dmaengine_terminate_async.exit.i.cleanup_crit_edge

dmaengine_terminate_async.exit.i.cleanup_crit_edge: ; preds = %dmaengine_terminate_async.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %dmaengine_terminate_async.exit.i
  tail call void @__might_sleep(ptr noundef nonnull @.str.11, i32 noundef 1169) #8
  %7 = ptrtoint ptr %chan.026 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan.026, align 4
  %device_synchronize.i.i = getelementptr inbounds %struct.dma_device, ptr %8, i32 0, i32 48
  %9 = ptrtoint ptr %device_synchronize.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device_synchronize.i.i, align 4
  %tobool.not.i3.i = icmp eq ptr %10, null
  br i1 %tobool.not.i3.i, label %if.end.i.if.end_crit_edge, label %if.then.i4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i4.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %10(ptr noundef %chan.026) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i4.i, %if.end.i.if.end_crit_edge
  tail call void @milbeaut_hdmac_free_chan_resources(ptr noundef %chan.026)
  %11 = ptrtoint ptr %.pn25 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn25, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %13) #8
  tail call void @dma_async_device_unregister(ptr noundef %1) #8
  %clk = getelementptr inbounds %struct.milbeaut_hdmac_device, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #8
  tail call void @clk_unprepare(ptr noundef %15) #8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %dmaengine_terminate_async.exit.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -22, %for.body.cleanup_crit_edge ], [ %call.i.i, %dmaengine_terminate_async.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @milbeaut_hdmac_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %56 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_chan_config(ptr noundef %chan, ptr nocapture noundef readonly %cfg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %cfg3 = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %cfg3, ptr %cfg, i32 48)
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_chan_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %reg_ch_base = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_ch_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !41
  %3 = or i32 %2, 64
  %4 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_ch_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !42
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_chan_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %reg_ch_base = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_ch_base, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !41
  %3 = and i32 %2, -65
  %4 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_ch_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #8, !srcloc !42
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @milbeaut_hdmac_prep_slave_sg(ptr noundef %chan, ptr nocapture noundef readonly %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 132) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %3 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sg_len, i32 20) #8
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !43

kcalloc.exit.thread:                              ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %sgl632 = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %sgl632 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %sgl632, align 4
  br label %if.then9

if.end7.i.i:                                      ; preds = %if.end4
  %6 = extractvalue { i32, i1 } %3, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 2304) #13
  %sgl6 = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %call7.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %sgl6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call8.i.i, ptr %sgl6, align 4
  %tobool8.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool8.not, label %if.end7.i.i.if.then9_crit_edge, label %for.cond.preheader

if.end7.i.i.if.then9_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then9

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp34.not = icmp eq i32 %sg_len, 0
  br i1 %cmp34.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.then9:                                         ; preds = %if.end7.i.i.if.then9_crit_edge, %kcalloc.exit.thread
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.035 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %8 = ptrtoint ptr %sgl6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sgl6, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %9, i32 %i.035
  %arrayidx12 = getelementptr %struct.scatterlist, ptr %sgl, i32 %i.035
  %10 = call ptr @memcpy(ptr %arrayidx, ptr %arrayidx12, i32 20)
  %inc = add nuw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sg_len13 = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %sg_len13 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sg_len, ptr %sg_len13, align 8
  %dir = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %direction, ptr %dir, align 8
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #8
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %13 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %15 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %19, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i30, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i30:                                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node.i, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 8
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node.i, ptr %19, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i30, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %if.then9 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %reg_ch_base = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 3
  %3 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_ch_base, align 4
  %5 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #8, !srcloc !41
  %6 = and i32 %5, -129
  %7 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_ch_base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #8, !srcloc !42
  %md = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 2
  %9 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %md, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 8, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %14, ptr noundef %desc_terminated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node.i, ptr %prev.i.i, align 4
  %16 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %node.i, ptr %14, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %12, i32 0, i32 9
  %19 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %20, %10
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %22 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %md, align 4
  br label %if.end

if.end:                                           ; preds = %vchan_terminate_vdesc.exit, %entry.if.end_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %23 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %24, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end.list_splice_tail_init.exit.i_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %27 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i24 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i24 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i24, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %33 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %34, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i12.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %43 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %44, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i18.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %53 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %54, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %57 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i24.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %56, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %head, ptr %58, align 4
  store ptr %58, ptr %0, align 4
  %62 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i25 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %63 = ptrtoint ptr %desc_terminated.i25 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile ptr, ptr %desc_terminated.i25, align 4
  %cmp.i.not.i27.i = icmp eq ptr %64, %desc_terminated.i25
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i30.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %64, ptr %66, align 4
  %71 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %head, ptr %68, align 4
  store ptr %68, ptr %0, align 4
  %72 = ptrtoint ptr %desc_terminated.i25 to i32
  call void @__asan_store4_noabort(i32 %72)
  store volatile ptr %desc_terminated.i25, ptr %desc_terminated.i25, align 4
  store ptr %desc_terminated.i25, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @milbeaut_hdmac_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %entry.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #8
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !44
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge90 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge90, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %md9 = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %md9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %md9, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end.if.then32_crit_edge, label %land.lhs.true

if.end.if.then32_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp14 = icmp eq i32 %11, %cookie
  br i1 %cmp14, label %if.then16, label %land.lhs.true.if.then32_crit_edge

land.lhs.true.if.then32_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then32

if.then16:                                        ; preds = %land.lhs.true
  %sgl = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sgl, align 4
  %sg_cur = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %9, i32 0, i32 3
  %14 = ptrtoint ptr %sg_cur to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sg_cur, align 4
  %dir = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %9, i32 0, i32 4
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %cmp18 = icmp eq i32 %17, 2
  %reg_ch_base = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 3
  %18 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_ch_base, align 4
  br i1 %cmp18, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %19, i32 12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !41
  br label %if.end30

if.else:                                          ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr25 = getelementptr i8, ptr %19, i32 8
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #8, !srcloc !41
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then20
  %.sink = phi i32 [ %20, %if.then20 ], [ %21, %if.else ]
  %22 = tail call i32 @llvm.bswap.i32(i32 %.sink)
  %dma_address = getelementptr %struct.scatterlist, ptr %13, i32 %15, i32 3
  %23 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address, align 4
  %sub.neg = sub i32 %24, %22
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %25 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %sub.neg, ptr %residue, align 4
  br label %if.then40

if.then32:                                        ; preds = %land.lhs.true.if.then32_crit_edge, %if.end.if.then32_crit_edge
  %call33 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #8
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then32.if.end47_crit_edge, label %if.then32.if.then40_crit_edge

if.then32.if.then40_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then40

if.then32.if.end47_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then40:                                        ; preds = %if.then32.if.then40_crit_edge, %if.end30
  %md.1.ph = phi ptr [ %9, %if.end30 ], [ %call33, %if.then32.if.then40_crit_edge ]
  %sg_cur41 = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %md.1.ph, i32 0, i32 3
  %26 = ptrtoint ptr %sg_cur41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %sg_cur41, align 4
  %sg_len = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %md.1.ph, i32 0, i32 2
  %28 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp4292 = icmp ult i32 %27, %29
  br i1 %cmp4292, label %for.body.lr.ph, label %if.then40.if.end47_crit_edge

if.then40.if.end47_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

for.body.lr.ph:                                   ; preds = %if.then40
  %sgl44 = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %md.1.ph, i32 0, i32 1
  %residue46 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.093 = phi i32 [ %27, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %30 = ptrtoint ptr %sgl44 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sgl44, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %31, i32 %i.093, i32 4
  %32 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_length, align 4
  %34 = ptrtoint ptr %residue46 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %residue46, align 4
  %add = add i32 %35, %33
  store i32 %add, ptr %residue46, align 4
  %inc = add nuw i32 %i.093, 1
  %36 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sg_len, align 4
  %cmp42 = icmp ult i32 %inc, %37
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.if.end47_crit_edge

for.body.if.end47_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end47:                                         ; preds = %for.body.if.end47_crit_edge, %if.then40.if.end47_crit_edge, %if.then32.if.end47_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end47, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i84.shrunk = phi i1 [ true, %if.end47 ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i84 = zext i1 %retval.0.i.i84.shrunk to i32
  ret i32 %retval.0.i.i84
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @milbeaut_hdmac_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc_issued.i, ptr %5, align 4
  store ptr %5, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %10 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %11, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %md = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %chan, i32 0, i32 2
  %12 = ptrtoint ptr %md to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %md, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i.i = icmp eq ptr %15, %desc_issued.i
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 -108
  %tobool.not9.i.i = icmp eq ptr %add.ptr.i.i.i, null
  %tobool.not.i.i = or i1 %cmp.not.i.i.i, %tobool.not9.i.i
  br i1 %tobool.not.i.i, label %milbeaut_hdmac_next_desc.exit.thread.i, label %if.end.i.i

milbeaut_hdmac_next_desc.exit.thread.i:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %md, align 4
  br label %if.end

if.end.i.i:                                       ; preds = %if.then
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #8
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.i.i.i.i:                                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i.i, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %if.then.i

if.then.i:                                        ; preds = %if.end.i.i.i.i, %if.end.i.i.if.then.i_crit_edge
  %23 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr.i.i.i, ptr %md, align 4
  tail call fastcc void @milbeaut_chan_start(ptr noundef %chan, ptr noundef nonnull %add.ptr.i.i.i) #8
  br label %if.end

if.end:                                           ; preds = %if.then.i, %milbeaut_hdmac_next_desc.exit.thread.i, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @milbeaut_hdmac_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %of_dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %of_dma, i32 0, i32 5
  %2 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_dma_data, align 4
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %3) #8
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %slave_id = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %slave_id to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %slave_id, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end2 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @milbeaut_chan_start(ptr nocapture noundef readonly %mc, ptr nocapture noundef readonly %md) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sgl = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %md, i32 0, i32 1
  %0 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgl, align 4
  %sg_cur = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %md, i32 0, i32 3
  %2 = ptrtoint ptr %sg_cur to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sg_cur, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %1, i32 %3, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  %dir = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %md, i32 0, i32 4
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp eq i32 %7, 1
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dst_addr_width = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 5, i32 4
  %dst_maxburst = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 5, i32 6
  %dma_address = getelementptr %struct.scatterlist, ptr %1, i32 %3, i32 3
  %dst_addr = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 5, i32 2
  br label %do.body12

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %src_addr_width = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 5, i32 3
  %src_maxburst = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 5, i32 5
  %src_addr7 = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 5, i32 1
  %dma_address8 = getelementptr %struct.scatterlist, ptr %1, i32 %3, i32 3
  br label %do.body12

do.body12:                                        ; preds = %if.else, %if.then
  %burst.0.in = phi ptr [ %dst_maxburst, %if.then ], [ %src_maxburst, %if.else ]
  %width.0.in = phi ptr [ %dst_addr_width, %if.then ], [ %src_addr_width, %if.else ]
  %dest_addr.0.in = phi ptr [ %dst_addr, %if.then ], [ %dma_address8, %if.else ]
  %src_addr.0.in = phi ptr [ %dma_address, %if.then ], [ %src_addr7, %if.else ]
  %cb.0 = phi i32 [ 555220992, %if.then ], [ 571998208, %if.else ]
  %8 = ptrtoint ptr %width.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %width.0 = load i32, ptr %width.0.in, align 4
  %9 = ptrtoint ptr %burst.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %burst.0 = load i32, ptr %burst.0.in, align 4
  %10 = ptrtoint ptr %dest_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %10)
  %dest_addr.0 = load i32, ptr %dest_addr.0.in, align 4
  %11 = ptrtoint ptr %src_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %src_addr.0 = load i32, ptr %src_addr.0.in, align 4
  %12 = shl i32 %width.0, 25
  %and25 = and i32 %12, 201326592
  %or43 = or i32 %cb.0, %and25
  %mdev = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 1
  %13 = ptrtoint ptr %mdev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mdev, align 4
  %reg_base = getelementptr inbounds %struct.milbeaut_hdmac_device, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 128) #8, !srcloc !42
  %17 = tail call i32 @llvm.bswap.i32(i32 %src_addr.0)
  %reg_ch_base = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 3
  %18 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr44 = getelementptr i8, ptr %19, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %17) #8, !srcloc !42
  %20 = tail call i32 @llvm.bswap.i32(i32 %dest_addr.0)
  %21 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr46 = getelementptr i8, ptr %22, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr46, i32 %20) #8, !srcloc !42
  %23 = tail call i32 @llvm.bswap.i32(i32 %or43)
  %24 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr48 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr48, i32 %23) #8, !srcloc !42
  %slave_id = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %mc, i32 0, i32 4
  %26 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %slave_id, align 4
  %shl73 = shl i32 %27, 24
  %and74 = and i32 %shl73, 520093696
  %28 = zext i32 %burst.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values)
  switch i32 %burst.0, label %do.body12.do.end159_crit_edge [
    i32 16, label %do.end91
    i32 8, label %do.end111
    i32 4, label %do.end131
  ]

do.body12.do.end159_crit_edge:                    ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end159

do.end91:                                         ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %or93 = or i32 %and74, 15728640
  br label %do.end159

do.end111:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %or113 = or i32 %and74, 13631488
  br label %do.end159

do.end131:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #10
  %or133 = or i32 %and74, 11534336
  br label %do.end159

do.end159:                                        ; preds = %do.end131, %do.end111, %do.end91, %do.body12.do.end159_crit_edge
  %ca.0 = phi i32 [ %or93, %do.end91 ], [ %or113, %do.end111 ], [ %or133, %do.end131 ], [ %and74, %do.body12.do.end159_crit_edge ]
  %mul = mul i32 %burst.0, %width.0
  %div = udiv i32 %5, %mul
  %sub = add i32 %div, 65535
  %and164 = and i32 %sub, 65535
  %or165 = or i32 %and164, %ca.0
  %29 = tail call i32 @llvm.bswap.i32(i32 %or165)
  %30 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_ch_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #8, !srcloc !42
  %or168 = or i32 %or165, -2147483648
  %32 = tail call i32 @llvm.bswap.i32(i32 %or168)
  %33 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_ch_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #8, !srcloc !42
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @milbeaut_hdmac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dev_id, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %reg_ch_base = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %dev_id, i32 0, i32 3
  %0 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !41
  %3 = and i32 %2, -1793
  %4 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %3) #8, !srcloc !42
  %6 = and i32 %2, -7937
  %7 = ptrtoint ptr %reg_ch_base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_ch_base, align 4
  %add.ptr19 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %6) #8, !srcloc !42
  %md20 = getelementptr inbounds %struct.milbeaut_hdmac_chan, ptr %dev_id, i32 0, i32 2
  %9 = ptrtoint ptr %md20 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %md20, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %sg_cur = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %sg_cur to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sg_cur, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %sg_cur, align 4
  %sg_len = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %14)
  %cmp.not = icmp ult i32 %inc, %14
  br i1 %cmp.not, label %if.end.if.end27_crit_edge, label %if.then22

if.end.if.end27_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then22:                                        ; preds = %if.end
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %10, i32 0, i32 3
  %15 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan.i, align 4
  %17 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %18)
  %cmp.i.i = icmp slt i32 %18, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !43

do.body2.i.i:                                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !45
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then22
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %completed_cookie.i.i, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %10, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@milbeaut_hdmac_interrupt, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !46

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %16, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 15
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %24, ptr noundef nonnull @.str.10, ptr noundef nonnull %10, i32 noundef %18) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %16, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %16, i32 0, i32 7, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %26, ptr noundef %desc_completed.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %node.i, ptr %prev.i.i, align 4
  %28 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %10, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %node.i, ptr %26, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %16, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %16, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #8
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dev_id, i32 0, i32 6
  %31 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %32, %desc_issued.i.i
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 -108
  %tobool.not9.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not9.i
  br i1 %tobool.not.i, label %milbeaut_hdmac_next_desc.exit.thread, label %if.end.i

milbeaut_hdmac_next_desc.exit.thread:             ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %md20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %md20, align 4
  br label %out

if.end.i:                                         ; preds = %vchan_cookie_complete.exit
  %call.i.i.i47 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %32) #8
  br i1 %call.i.i.i47, label %if.end.i.i.i48, label %if.end.i.milbeaut_hdmac_next_desc.exit_crit_edge

if.end.i.milbeaut_hdmac_next_desc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %milbeaut_hdmac_next_desc.exit

if.end.i.i.i48:                                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %32, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %milbeaut_hdmac_next_desc.exit

milbeaut_hdmac_next_desc.exit:                    ; preds = %if.end.i.i.i48, %if.end.i.milbeaut_hdmac_next_desc.exit_crit_edge
  %40 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %32, align 4
  %prev.i.i49 = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i.i49 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i49, align 4
  %42 = ptrtoint ptr %md20 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %add.ptr.i.i, ptr %md20, align 4
  br label %if.end27

if.end27:                                         ; preds = %milbeaut_hdmac_next_desc.exit, %if.end.if.end27_crit_edge
  %md.0 = phi ptr [ %add.ptr.i.i, %milbeaut_hdmac_next_desc.exit ], [ %10, %if.end.if.end27_crit_edge ]
  tail call fastcc void @milbeaut_chan_start(ptr noundef %dev_id, ptr noundef nonnull %md.0)
  br label %out

out:                                              ; preds = %if.end27, %milbeaut_hdmac_next_desc.exit.thread, %entry.out_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @milbeaut_hdmac_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sgl = getelementptr inbounds %struct.milbeaut_hdmac_desc, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sgl, align 4
  tail call void @kfree(ptr noundef %1) #8
  tail call void @kfree(ptr noundef %vd) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !15, !16, !17, !18, !19, !20, !22, !24, !25, !26, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_milbeaut_hdmac__278_575_milbeaut_hdmac_driver_init6, !1, !"__initcall__kmod_milbeaut_hdmac__278_575_milbeaut_hdmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 575, i32 1}
!2 = !{ptr @__exitcall_milbeaut_hdmac_driver_exit, !1, !"__exitcall_milbeaut_hdmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description279, !4, !"__UNIQUE_ID_description279", i1 false, i1 false}
!4 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 577, i32 1}
!5 = !{ptr @__UNIQUE_ID_file280, !6, !"__UNIQUE_ID_file280", i1 false, i1 false}
!6 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 578, i32 1}
!7 = !{ptr @__UNIQUE_ID_license281, !6, !"__UNIQUE_ID_license281", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 571, i32 11}
!10 = !{ptr @milbeaut_hdmac_driver, !11, !"milbeaut_hdmac_driver", i1 false, i1 false}
!11 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 567, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 481, i32 3}
!14 = !{ptr @.str.2, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @milbeaut_hdmac_probe._entry, !13, !"_entry", i1 false, i1 false}
!19 = !{ptr @milbeaut_hdmac_probe._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 437, i32 45}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!24 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !23, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/dmaengine.h", i32 1169, i32 2}
!30 = !{ptr @milbeaut_hdmac_match, !31, !"milbeaut_hdmac_match", i1 false, i1 false}
!31 = !{!"../drivers/dma/milbeaut-hdmac.c", i32 561, i32 34}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{i64 6261092}
!42 = !{i64 6260674}
!43 = !{!"branch_weights", i32 1, i32 2000}
!44 = !{i64 2154382244}
!45 = !{i64 2154380744, i64 2154381231, i64 2154380781, i64 2154380837, i64 2154380871, i64 2154380895, i64 2154380936, i64 2154380957, i64 2154380985, i64 2154381019}
!46 = !{i64 2148734274, i64 2148734279, i64 2148734292, i64 2148734336, i64 2148734370, i64 2148734391}
