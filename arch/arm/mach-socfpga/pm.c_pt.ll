; ModuleID = '/llk/IR_all_yes/arch/arm/mach-socfpga/pm.c_pt.bc'
source_filename = "../arch/arm/mach-socfpga/pm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_suspend_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.outer_cache_fns = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.gen_pool = type { %struct.spinlock, %struct.list_head, i32, ptr, ptr, ptr }

@__initcall__kmod_pm__289_139_socfpga_pm_init3 = internal global ptr @socfpga_pm_init, section ".initcall3.init", align 4
@socfpga_pm_ops = internal constant { %struct.platform_suspend_ops, [56 x i8] } { %struct.platform_suspend_ops { ptr @suspend_valid_only_mem, ptr null, ptr null, ptr null, ptr @socfpga_pm_enter, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@socfpga_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 135, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\016SoCFPGA initialized for DDR self-refresh during suspend.\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"socfpga_pm_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"arch/arm/mach-socfpga/pm.c\00", [37 x i8] zeroinitializer }, align 32
@socfpga_pm_init._entry_ptr = internal global ptr @socfpga_pm_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmio-sram\00", [22 x i8] zeroinitializer }, align 32
@socfpga_setup_ocram_self_refresh._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 37, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013%s: Unable to find mmio-sram in dtb\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"socfpga_setup_ocram_self_refresh\00", [63 x i8] zeroinitializer }, align 32
@socfpga_setup_ocram_self_refresh._entry_ptr = internal global ptr @socfpga_setup_ocram_self_refresh._entry, section ".printk_index", align 4
@socfpga_setup_ocram_self_refresh._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 43, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\014%s: failed to find ocram device!\0A\00", [60 x i8] zeroinitializer }, align 32
@socfpga_setup_ocram_self_refresh._entry_ptr.8 = internal global ptr @socfpga_setup_ocram_self_refresh._entry.6, section ".printk_index", align 4
@socfpga_setup_ocram_self_refresh._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\014%s: ocram pool unavailable!\0A\00", [33 x i8] zeroinitializer }, align 32
@socfpga_setup_ocram_self_refresh._entry_ptr.11 = internal global ptr @socfpga_setup_ocram_self_refresh._entry.9, section ".printk_index", align 4
@socfpga_sdram_self_refresh_sz = external dso_local local_unnamed_addr global i32, align 4
@socfpga_setup_ocram_self_refresh._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.2, i32 57, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s: unable to alloc ocram!\0A\00", [34 x i8] zeroinitializer }, align 32
@socfpga_setup_ocram_self_refresh._entry_ptr.14 = internal global ptr @socfpga_setup_ocram_self_refresh._entry.12, section ".printk_index", align 4
@socfpga_setup_ocram_self_refresh._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.5, ptr @.str.2, i32 68, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\014%s: __arm_ioremap_exec failed!\0A\00", [62 x i8] zeroinitializer }, align 32
@socfpga_setup_ocram_self_refresh._entry_ptr.17 = internal global ptr @socfpga_setup_ocram_self_refresh._entry.15, section ".printk_index", align 4
@cpu_cache = external dso_local local_unnamed_addr global %struct.cpu_cache_fns, align 4
@socfpga_sdram_self_refresh_in_ocram = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not copy function to ocram\00", [63 x i8] zeroinitializer }, align 32
@sdr_ctl_base_addr = external dso_local local_unnamed_addr global ptr, align 4
@socfpga_pm_suspend.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.2, ptr @.str.21, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"pm\00", [29 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"socfpga_pm_suspend\00", [45 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s self-refresh loops request=%d exit=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@outer_cache = external dso_local local_unnamed_addr global %struct.outer_cache_fns, align 4
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"socfpga_pm_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 121, i32 42 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 135, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 35, i32 43 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 37, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 43, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 50, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 57, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 68, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant [36 x i8] c"socfpga_sdram_self_refresh_in_ocram\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 23, i32 14 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 79, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.86 = private constant [30 x i8] c"../arch/arm/mach-socfpga/pm.c\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 101, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__initcall__kmod_pm__289_139_socfpga_pm_init3, ptr @socfpga_pm_init._entry, ptr @socfpga_pm_init._entry_ptr, ptr @socfpga_setup_ocram_self_refresh._entry, ptr @socfpga_setup_ocram_self_refresh._entry.12, ptr @socfpga_setup_ocram_self_refresh._entry.15, ptr @socfpga_setup_ocram_self_refresh._entry.6, ptr @socfpga_setup_ocram_self_refresh._entry.9, ptr @socfpga_setup_ocram_self_refresh._entry_ptr, ptr @socfpga_setup_ocram_self_refresh._entry_ptr.11, ptr @socfpga_setup_ocram_self_refresh._entry_ptr.14, ptr @socfpga_setup_ocram_self_refresh._entry_ptr.17, ptr @socfpga_setup_ocram_self_refresh._entry_ptr.8, ptr @socfpga_pm_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @socfpga_sdram_self_refresh_in_ocram, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_pm_ops to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_setup_ocram_self_refresh._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_setup_ocram_self_refresh._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_setup_ocram_self_refresh._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_setup_ocram_self_refresh._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_setup_ocram_self_refresh._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @socfpga_sdram_self_refresh_in_ocram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_pm_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.3) #4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %socfpga_setup_ocram_self_refresh.exit.thread, label %if.end.i

socfpga_setup_ocram_self_refresh.exit.thread:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call2.i = tail call ptr @of_find_device_by_node(ptr noundef nonnull %call.i) #4
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %socfpga_setup_ocram_self_refresh.exit.thread5, label %if.end10.i

socfpga_setup_ocram_self_refresh.exit.thread5:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #7
  tail call void @of_node_put(ptr noundef nonnull %call.i) #4
  br label %cleanup

if.end10.i:                                       ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %call2.i, i32 0, i32 3
  %call11.i = tail call ptr @gen_pool_get(ptr noundef %dev.i, ptr noundef null) #4
  %tobool12.not.i = icmp eq ptr %call11.i, null
  br i1 %tobool12.not.i, label %if.end10.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge, label %if.end19.i

if.end10.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %socfpga_setup_ocram_self_refresh.exit.sink.split

if.end19.i:                                       ; preds = %if.end10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @socfpga_sdram_self_refresh_sz to i32))
  %0 = load i32, ptr @socfpga_sdram_self_refresh_sz, align 4
  %algo.i.i = getelementptr inbounds %struct.gen_pool, ptr %call11.i, i32 0, i32 3
  %1 = ptrtoint ptr %algo.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %algo.i.i, align 4
  %data.i.i = getelementptr inbounds %struct.gen_pool, ptr %call11.i, i32 0, i32 4
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data.i.i, align 4
  %call.i.i.i = tail call i32 @gen_pool_alloc_algo_owner(ptr noundef nonnull %call11.i, i32 noundef %0, ptr noundef %2, ptr noundef %4, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool21.not.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool21.not.i, label %if.end19.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge, label %if.end28.i

if.end19.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge: ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %socfpga_setup_ocram_self_refresh.exit.sink.split

if.end28.i:                                       ; preds = %if.end19.i
  %call29.i = tail call i32 @gen_pool_virt_to_phys(ptr noundef nonnull %call11.i, i32 noundef %call.i.i.i) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @socfpga_sdram_self_refresh_sz to i32))
  %5 = load i32, ptr @socfpga_sdram_self_refresh_sz, align 4
  %call30.i = tail call ptr @__arm_ioremap_exec(i32 noundef %call29.i, i32 noundef %5, i1 noundef zeroext false) #4
  %tobool31.not.i = icmp eq ptr %call30.i, null
  br i1 %tobool31.not.i, label %if.end28.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge, label %if.end38.i

if.end28.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %socfpga_setup_ocram_self_refresh.exit.sink.split

if.end38.i:                                       ; preds = %if.end28.i
  %6 = tail call i32 asm "", "=r,0"(ptr nonnull @socfpga_sdram_self_refresh) #8, !srcloc !51
  %7 = ptrtoint ptr %call30.i to i32
  %and.i = and i32 %7, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool40.not.i = icmp ne i32 %and.i, 0
  %and42.i = and i32 %6, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %tobool43.i = icmp ne i32 %and42.i, 0
  %8 = select i1 %tobool40.not.i, i1 true, i1 %tobool43.i
  br i1 %8, label %do.body47.i, label %do.end55.i, !prof !52

do.body47.i:                                      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-socfpga/pm.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 77, 0\0A.popsection", ""() #4, !srcloc !53
  unreachable

do.end55.i:                                       ; preds = %if.end38.i
  %and56.i = and i32 %6, -2
  %9 = inttoptr i32 %and56.i to ptr
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @socfpga_sdram_self_refresh_sz to i32))
  %10 = load i32, ptr @socfpga_sdram_self_refresh_sz, align 4
  %11 = call ptr @memcpy(ptr %call30.i, ptr %9, i32 %10)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.cpu_cache_fns, ptr @cpu_cache, i32 0, i32 5), align 4
  %13 = load i32, ptr @socfpga_sdram_self_refresh_sz, align 4
  %add.i = add i32 %13, %7
  tail call void %12(i32 noundef %7, i32 noundef %add.i) #4
  %and57.i = and i32 %6, 1
  %or.i = or i32 %and57.i, %7
  %14 = tail call ptr asm "", "=r,0"(i32 %or.i) #8, !srcloc !54
  store ptr %14, ptr @socfpga_sdram_self_refresh_in_ocram, align 4
  %tobool59.not.i = icmp eq ptr %14, null
  br i1 %tobool59.not.i, label %if.end83.i, label %do.end55.i.socfpga_setup_ocram_self_refresh.exit_crit_edge, !prof !52

do.end55.i.socfpga_setup_ocram_self_refresh.exit_crit_edge: ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %socfpga_setup_ocram_self_refresh.exit

if.end83.i:                                       ; preds = %do.end55.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 80, i32 noundef 9, ptr noundef nonnull @.str.18) #4
  %.pr = load ptr, ptr @socfpga_sdram_self_refresh_in_ocram, align 4
  %tobool91.not.i = icmp eq ptr %.pr, null
  %spec.select = select i1 %tobool91.not.i, i32 -14, i32 0
  br label %socfpga_setup_ocram_self_refresh.exit

socfpga_setup_ocram_self_refresh.exit.sink.split: ; preds = %if.end28.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge, %if.end19.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge, %if.end10.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge
  %.str.10.sink = phi ptr [ @.str.10, %if.end10.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge ], [ @.str.13, %if.end19.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge ], [ @.str.16, %if.end28.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge ]
  %ret.0.i.ph = phi i32 [ -19, %if.end10.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge ], [ -12, %if.end19.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge ], [ -12, %if.end28.i.socfpga_setup_ocram_self_refresh.exit.sink.split_crit_edge ]
  %call18.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.10.sink, ptr noundef nonnull @.str.5) #7
  br label %socfpga_setup_ocram_self_refresh.exit

socfpga_setup_ocram_self_refresh.exit:            ; preds = %socfpga_setup_ocram_self_refresh.exit.sink.split, %if.end83.i, %do.end55.i.socfpga_setup_ocram_self_refresh.exit_crit_edge
  %ret.0.i = phi i32 [ 0, %do.end55.i.socfpga_setup_ocram_self_refresh.exit_crit_edge ], [ %spec.select, %if.end83.i ], [ %ret.0.i.ph, %socfpga_setup_ocram_self_refresh.exit.sink.split ]
  tail call void @put_device(ptr noundef %dev.i) #4
  tail call void @of_node_put(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i)
  %tobool.not = icmp eq i32 %ret.0.i, 0
  br i1 %tobool.not, label %if.end, label %socfpga_setup_ocram_self_refresh.exit.cleanup_crit_edge

socfpga_setup_ocram_self_refresh.exit.cleanup_crit_edge: ; preds = %socfpga_setup_ocram_self_refresh.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %socfpga_setup_ocram_self_refresh.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @suspend_set_ops(ptr noundef nonnull @socfpga_pm_ops) #4
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %socfpga_setup_ocram_self_refresh.exit.cleanup_crit_edge, %socfpga_setup_ocram_self_refresh.exit.thread5, %socfpga_setup_ocram_self_refresh.exit.thread
  %retval.0 = phi i32 [ 0, %if.end ], [ %ret.0.i, %socfpga_setup_ocram_self_refresh.exit.cleanup_crit_edge ], [ -19, %socfpga_setup_ocram_self_refresh.exit.thread ], [ -19, %socfpga_setup_ocram_self_refresh.exit.thread5 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @suspend_set_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gen_pool_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_virt_to_phys(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_exec(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @socfpga_sdram_self_refresh(i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_pool_alloc_algo_owner(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @suspend_valid_only_mem(i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_pm_enter(i32 noundef %state) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %state)
  %cond = icmp eq i32 %state, 3
  br i1 %cond, label %sw.bb, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

sw.bb:                                            ; preds = %entry
  tail call void @outer_disable() #4
  %call = tail call i32 @cpu_suspend(i32 noundef 0, ptr noundef nonnull @socfpga_pm_suspend) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.outer_cache_fns, ptr @outer_cache, i32 0, i32 6), align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %sw.bb.return_crit_edge, label %if.then.i

sw.bb.return_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %0() #4
  br label %return

return:                                           ; preds = %if.then.i, %sw.bb.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ 0, %sw.bb.return_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @outer_disable() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @socfpga_pm_suspend(i32 noundef %arg) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @sdr_ctl_base_addr to i32))
  %0 = load ptr, ptr @sdr_ctl_base_addr, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %1 = load ptr, ptr @socfpga_sdram_self_refresh_in_ocram, align 4
  %2 = ptrtoint ptr %0 to i32
  %call = tail call i32 %1(i32 noundef %2) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @socfpga_pm_suspend.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@socfpga_pm_suspend, %if.then5)) #4
          to label %cleanup [label %if.then5], !srcloc !55

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %and = and i32 %call, 65535
  %shr = lshr i32 %call, 16
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @socfpga_pm_suspend.__UNIQUE_ID_ddebug288, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, i32 noundef %and, i32 noundef %shr) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %entry.cleanup_crit_edge ], [ 0, %if.then5 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !30, !31, !33, !35, !37, !39, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_pm__289_139_socfpga_pm_init3, !1, !"__initcall__kmod_pm__289_139_socfpga_pm_init3", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-socfpga/pm.c", i32 139, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-socfpga/pm.c", i32 135, i32 2}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @socfpga_pm_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @socfpga_pm_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-socfpga/pm.c", i32 35, i32 43}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-socfpga/pm.c", i32 37, i32 3}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @socfpga_setup_ocram_self_refresh._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @socfpga_setup_ocram_self_refresh._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-socfpga/pm.c", i32 43, i32 3}
!17 = !{ptr @socfpga_setup_ocram_self_refresh._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @socfpga_setup_ocram_self_refresh._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-socfpga/pm.c", i32 50, i32 3}
!21 = !{ptr @socfpga_setup_ocram_self_refresh._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @socfpga_setup_ocram_self_refresh._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-socfpga/pm.c", i32 57, i32 3}
!25 = !{ptr @socfpga_setup_ocram_self_refresh._entry.12, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @socfpga_setup_ocram_self_refresh._entry_ptr.14, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.16, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-socfpga/pm.c", i32 68, i32 3}
!29 = !{ptr @socfpga_setup_ocram_self_refresh._entry.15, !28, !"_entry", i1 false, i1 false}
!30 = !{ptr @socfpga_setup_ocram_self_refresh._entry_ptr.17, !28, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-socfpga/pm.c", i32 79, i32 2}
!33 = !{ptr @socfpga_sdram_self_refresh_in_ocram, !34, !"socfpga_sdram_self_refresh_in_ocram", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-socfpga/pm.c", i32 23, i32 14}
!35 = !{ptr @socfpga_pm_ops, !36, !"socfpga_pm_ops", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-socfpga/pm.c", i32 121, i32 42}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-socfpga/pm.c", i32 101, i32 2}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @socfpga_pm_suspend.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2154999033}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{i64 2155000318, i64 2155000808, i64 2155000355, i64 2155000411, i64 2155000445, i64 2155000469, i64 2155000510, i64 2155000531, i64 2155000559, i64 2155000593}
!54 = !{i64 2154999528}
!55 = !{i64 2148661438, i64 2148661443, i64 2148661456, i64 2148661500, i64 2148661534, i64 2148661555}
