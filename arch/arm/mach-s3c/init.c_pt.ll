; ModuleID = '/llk/IR_all_yes/arch/arm/mach-s3c/init.c_pt.bc'
source_filename = "../arch/arm/mach-s3c/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.s3c2410_uartcfg = type { i8, i8, i16, i32, i32, i32, i32, i32, i32 }
%struct.cpu_table = type { i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.s3c24xx_uart_resources = type { ptr, i32 }
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

@cpu = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@s3c_init_cpu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 49, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013Unknown CPU type 0x%08lx\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"s3c_init_cpu\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"arch/arm/mach-s3c/init.c\00", [39 x i8] zeroinitializer }, align 32
@s3c_init_cpu._entry_ptr = internal global ptr @s3c_init_cpu._entry, section ".printk_index", align 4
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Unknown S3C24XX CPU\00", [44 x i8] zeroinitializer }, align 32
@s3c_init_cpu._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 53, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CPU %s (id 0x%08lx)\0A\00", [43 x i8] zeroinitializer }, align 32
@s3c_init_cpu._entry_ptr.6 = internal global ptr @s3c_init_cpu._entry.4, section ".printk_index", align 4
@s3c_init_cpu._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 56, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013CPU %s support not enabled\0A\00", [34 x i8] zeroinitializer }, align 32
@s3c_init_cpu._entry_ptr.9 = internal global ptr @s3c_init_cpu._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Unsupported Samsung CPU\00", [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"s3c24xx_init_clocks: no cpu setup?\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"s3c24xx_init_clocks: cpu has no clock init\0A\00", [52 x i8] zeroinitializer }, align 32
@uart_cfgs = internal global { [4 x %struct.s3c2410_uartcfg], [48 x i8] } zeroinitializer, align 32
@s3c24xx_uart_src = external dso_local local_unnamed_addr global [0 x ptr], align 4
@s3c24xx_uart_devs = external dso_local global [0 x ptr], align 4
@nr_uarts = internal unnamed_addr global i32 0, section ".init.data", align 4
@s3c24xx_init_uarts._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013s3c24xx_init_uarts: cpu has no uart init\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"s3c24xx_init_uarts\00", [45 x i8] zeroinitializer }, align 32
@s3c24xx_init_uarts._entry_ptr = internal global ptr @s3c24xx_init_uarts._entry, section ".printk_index", align 4
@__initcall__kmod_init__227_173_s3c_arch_init3 = internal global ptr @s3c_arch_init, section ".initcall3.init", align 4
@.str.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"s3c_arch_init: NULL cpu\0A\00", [39 x i8] zeroinitializer }, align 32
@samsung_cpu_id = external dso_local local_unnamed_addr global i32, align 4
@of_root = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 910163968, i64 910229504]
@___asan_gen_.16 = private unnamed_addr constant [4 x i8] c"cpu\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 29, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 49, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 50, i32 9 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 53, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 56, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 57, i32 9 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 79, i32 9 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 82, i32 9 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"uart_cfgs\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 92, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 140, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [28 x i8] c"../arch/arm/mach-s3c/init.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 161, i32 9 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__initcall__kmod_init__227_173_s3c_arch_init3, ptr @s3c24xx_init_uarts._entry, ptr @s3c24xx_init_uarts._entry_ptr, ptr @s3c_init_cpu._entry, ptr @s3c_init_cpu._entry.4, ptr @s3c_init_cpu._entry.7, ptr @s3c_init_cpu._entry_ptr, ptr @s3c_init_cpu._entry_ptr.6, ptr @s3c_init_cpu._entry_ptr.9, ptr @cpu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @uart_cfgs, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_init_cpu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_init_cpu._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c_init_cpu._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_cfgs to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @s3c24xx_init_uarts._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c_init_cpu(i32 noundef %idcode, ptr noundef %cputab, i32 noundef %cputab_size) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cputab_size)
  %cmp.not10.i = icmp eq i32 %cputab_size, 0
  br i1 %cmp.not10.i, label %entry.s3c_lookup_cpu.exit.thread_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.s3c_lookup_cpu.exit.thread_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %s3c_lookup_cpu.exit.thread

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %count.addr.012.i = phi i32 [ %dec.i, %for.inc.i.for.body.i_crit_edge ], [ %cputab_size, %entry.for.body.i_crit_edge ]
  %tab.addr.011.i = phi ptr [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %cputab, %entry.for.body.i_crit_edge ]
  %idmask.i = getelementptr inbounds %struct.cpu_table, ptr %tab.addr.011.i, i32 0, i32 1
  %0 = ptrtoint ptr %idmask.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %idmask.i, align 4
  %2 = ptrtoint ptr %tab.addr.011.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tab.addr.011.i, align 4
  %4 = xor i32 %3, %idcode
  %5 = and i32 %4, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.i = icmp eq i32 %5, 0
  br i1 %cmp4.i, label %s3c_lookup_cpu.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %dec.i = add i32 %count.addr.012.i, -1
  %incdec.ptr.i = getelementptr %struct.cpu_table, ptr %tab.addr.011.i, i32 1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %for.inc.i.s3c_lookup_cpu.exit.thread_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.s3c_lookup_cpu.exit.thread_crit_edge:   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %s3c_lookup_cpu.exit.thread

s3c_lookup_cpu.exit.thread:                       ; preds = %for.inc.i.s3c_lookup_cpu.exit.thread_crit_edge, %entry.s3c_lookup_cpu.exit.thread_crit_edge
  store ptr null, ptr @cpu, align 4
  br label %do.end

s3c_lookup_cpu.exit:                              ; preds = %for.body.i
  store ptr %tab.addr.011.i, ptr @cpu, align 4
  %cmp = icmp eq ptr %tab.addr.011.i, null
  br i1 %cmp, label %s3c_lookup_cpu.exit.do.end_crit_edge, label %do.end3

s3c_lookup_cpu.exit.do.end_crit_edge:             ; preds = %s3c_lookup_cpu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %s3c_lookup_cpu.exit.do.end_crit_edge, %s3c_lookup_cpu.exit.thread
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %idcode) #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3) #9
  unreachable

do.end3:                                          ; preds = %s3c_lookup_cpu.exit
  %name = getelementptr inbounds %struct.cpu_table, ptr %tab.addr.011.i, i32 0, i32 6
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %7, i32 noundef %idcode) #8
  %8 = load ptr, ptr @cpu, align 4
  %init = getelementptr inbounds %struct.cpu_table, ptr %8, i32 0, i32 5
  %9 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %init, align 4
  %cmp6 = icmp eq ptr %10, null
  br i1 %cmp6, label %do.end9, label %if.end13

do.end9:                                          ; preds = %do.end3
  call void @__sanitizer_cov_trace_pc() #7
  %name11 = getelementptr inbounds %struct.cpu_table, ptr %8, i32 0, i32 6
  %11 = ptrtoint ptr %name11 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %name11, align 4
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %12) #8
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.10) #9
  unreachable

if.end13:                                         ; preds = %do.end3
  %map_io = getelementptr inbounds %struct.cpu_table, ptr %8, i32 0, i32 2
  %13 = ptrtoint ptr %map_io to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %map_io, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %if.end13.if.end16_crit_edge, label %if.then14

if.end13.if.end16_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %14() #5
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end13.if.end16_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c24xx_init_clocks(i32 noundef %xtal) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpu, align 4
  %cmp1 = icmp eq ptr %0, null
  br i1 %cmp1, label %if.then2, label %if.end3

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.11) #9
  unreachable

if.end3:                                          ; preds = %entry
  %init_clocks = getelementptr inbounds %struct.cpu_table, ptr %0, i32 0, i32 4
  %1 = ptrtoint ptr %init_clocks to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_clocks, align 4
  %cmp4 = icmp eq ptr %2, null
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.12) #9
  unreachable

if.else:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xtal)
  %cmp = icmp eq i32 %xtal, 0
  %spec.store.select = select i1 %cmp, i32 12000000, i32 %xtal
  tail call void %2(i32 noundef %spec.store.select) #5
  ret void
}

; Function Attrs: cold nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c24xx_init_uartdevs(ptr noundef %name, ptr nocapture noundef readonly %res, ptr nocapture noundef readonly %cfg, i32 noundef %no) local_unnamed_addr #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mul = mul i32 %no, 28
  %0 = call ptr @memcpy(ptr @uart_cfgs, ptr %cfg, i32 %mul)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %no)
  %cmp19 = icmp sgt i32 %no, 0
  br i1 %cmp19, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %uart.021 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %cfgptr.020 = phi ptr [ %incdec.ptr4, %for.body.for.body_crit_edge ], [ @uart_cfgs, %entry.for.body_crit_edge ]
  %1 = ptrtoint ptr %cfgptr.020 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %cfgptr.020, align 4
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [0 x ptr], ptr @s3c24xx_uart_src, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr %struct.s3c24xx_uart_resources, ptr %res, i32 %idxprom
  %arrayidx2 = getelementptr [0 x ptr], ptr @s3c24xx_uart_devs, i32 0, i32 %uart.021
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %arrayidx2, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %name, ptr %4, align 8
  %7 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %add.ptr, align 4
  %resource = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 7
  %9 = ptrtoint ptr %resource to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %resource, align 8
  %nr_resources = getelementptr %struct.s3c24xx_uart_resources, ptr %res, i32 %idxprom, i32 1
  %10 = ptrtoint ptr %nr_resources to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nr_resources, align 4
  %num_resources = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 6
  %12 = ptrtoint ptr %num_resources to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %num_resources, align 4
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3, i32 7
  %13 = ptrtoint ptr %platform_data to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %cfgptr.020, ptr %platform_data, align 8
  %inc = add nuw nsw i32 %uart.021, 1
  %incdec.ptr4 = getelementptr %struct.s3c2410_uartcfg, ptr %cfgptr.020, i32 1
  %exitcond.not = icmp eq i32 %inc, %no
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  store i32 %no, ptr @nr_uarts, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @s3c24xx_init_uarts(ptr noundef %cfg, i32 noundef %no) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cpu, align 4
  %cmp = icmp eq ptr %0, null
  br i1 %cmp, label %entry.if.end4_crit_edge, label %if.end

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end:                                           ; preds = %entry
  %init_uarts = getelementptr inbounds %struct.cpu_table, ptr %0, i32 0, i32 3
  %1 = ptrtoint ptr %init_uarts to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_uarts, align 4
  %cmp1 = icmp eq ptr %2, null
  br i1 %cmp1, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #8
  br label %if.end4

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %2(ptr noundef %cfg, i32 noundef %no) #5
  br label %if.end4

if.end4:                                          ; preds = %if.else, %do.end, %entry.if.end4_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @s3c_arch_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @samsung_cpu_id to i32))
  %0 = load i32, ptr @samsung_cpu_id, align 4
  %and.i = and i32 %0, -4096
  %1 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and.i, label %entry.cleanup_crit_edge [
    i32 910163968, label %entry.if.end_crit_edge
    i32 910229504, label %entry.if.end_crit_edge19
  ]

entry.if.end_crit_edge19:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge19
  %2 = load ptr, ptr @cpu, align 4
  %cmp = icmp eq ptr %2, null
  br i1 %cmp, label %if.then3, label %if.end7

if.then3:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @of_root to i32))
  %3 = load ptr, ptr @of_root, align 4
  %cmp.i18.not = icmp eq ptr %3, null
  br i1 %cmp.i18.not, label %if.end6, label %if.then3.cleanup_crit_edge

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.15) #9
  unreachable

if.end7:                                          ; preds = %if.end
  %init = getelementptr inbounds %struct.cpu_table, ptr %2, i32 0, i32 5
  %4 = ptrtoint ptr %init to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init, align 4
  %call8 = tail call i32 %5() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9.not = icmp eq i32 %call8, 0
  br i1 %cmp9.not, label %if.end11, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  %6 = load i32, ptr @nr_uarts, align 4
  %call12 = tail call i32 @platform_add_devices(ptr noundef nonnull @s3c24xx_uart_devs, i32 noundef %6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %if.end11 ], [ 0, %if.then3.cleanup_crit_edge ], [ %call8, %if.end7.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_add_devices(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nofree nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !11, !12, !14, !15, !16, !18, !20, !22, !24, !25, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-s3c/init.c", i32 49, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @s3c_init_cpu._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @s3c_init_cpu._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-s3c/init.c", i32 50, i32 9}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-s3c/init.c", i32 53, i32 2}
!10 = !{ptr @s3c_init_cpu._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @s3c_init_cpu._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-s3c/init.c", i32 56, i32 3}
!14 = !{ptr @s3c_init_cpu._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @s3c_init_cpu._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-s3c/init.c", i32 57, i32 9}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-s3c/init.c", i32 79, i32 9}
!20 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-s3c/init.c", i32 82, i32 9}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-s3c/init.c", i32 140, i32 3}
!24 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @s3c24xx_init_uarts._entry, !23, !"_entry", i1 false, i1 false}
!26 = !{ptr @s3c24xx_init_uarts._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @__initcall__kmod_init__227_173_s3c_arch_init3, !28, !"__initcall__kmod_init__227_173_s3c_arch_init3", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-s3c/init.c", i32 173, i32 1}
!29 = !{ptr @cpu, !30, !"cpu", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-s3c/init.c", i32 29, i32 26}
!31 = !{ptr @uart_cfgs, !32, !"uart_cfgs", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-s3c/init.c", i32 92, i32 31}
!33 = !{ptr @nr_uarts, !34, !"nr_uarts", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-s3c/init.c", i32 89, i32 12}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-s3c/init.c", i32 161, i32 9}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
