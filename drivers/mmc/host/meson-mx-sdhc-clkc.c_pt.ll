; ModuleID = '/llk/IR_all_yes/drivers/mmc/host/meson-mx-sdhc-clkc.c_pt.bc'
source_filename = "../drivers/mmc/host/meson-mx-sdhc-clkc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
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
%struct.meson_mx_sdhc_clkc = type { %struct.clk_mux, %struct.clk_divider, %struct.clk_gate, %struct.clk_gate, %struct.clk_gate, %struct.clk_gate }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_bulk_data = type { ptr, ptr }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"src_sel\00", [24 x i8] zeroinitializer }, align 32
@meson_mx_sdhc_src_sel_parents = internal constant { [4 x %struct.clk_parent_data], [32 x i8] } { [4 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.7, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.8, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.9, ptr null, i32 0 }, %struct.clk_parent_data { ptr null, ptr @.str.10, ptr null, i32 0 }], [32 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@meson_mx_sdhc_div_table = internal constant { [13 x %struct.clk_div_table], [56 x i8] } { [13 x %struct.clk_div_table] [%struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 17, i32 18 }, %struct.clk_div_table { i32 33, i32 34 }, %struct.clk_div_table { i32 141, i32 142 }, %struct.clk_div_table { i32 849, i32 850 }, %struct.clk_div_table { i32 2125, i32 2126 }, %struct.clk_div_table { i32 4095, i32 4096 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"div\00", [28 x i8] zeroinitializer }, align 32
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mod_clk_on\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tx_clk_on\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rx_clk_on\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sd_clk_on\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s#%s\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkin0\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkin1\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkin2\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkin3\00", [25 x i8] zeroinitializer }, align 32
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 96, i32 43 }
@___asan_gen_.14 = private unnamed_addr constant [30 x i8] c"meson_mx_sdhc_src_sel_parents\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 24, i32 37 }
@___asan_gen_.17 = private unnamed_addr constant [24 x i8] c"meson_mx_sdhc_div_table\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 31, i32 35 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 108, i32 43 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 116, i32 48 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 124, i32 48 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 132, i32 48 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 140, i32 48 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 57, i32 39 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 25, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 26, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 27, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [41 x i8] c"../drivers/mmc/host/meson-mx-sdhc-clkc.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 28, i32 15 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @.str, ptr @meson_mx_sdhc_src_sel_parents, ptr @meson_mx_sdhc_div_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_src_sel_parents to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_mx_sdhc_div_table to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_mx_sdhc_register_clkc(ptr noundef %dev, ptr noundef %base, ptr nocapture noundef writeonly %clk_bulk_data) local_unnamed_addr #0 align 64 {
entry:
  %init.i.i160 = alloca %struct.clk_init_data, align 4
  %clk_name.i.i161 = alloca [32 x i8], align 1
  %parent_data.i162 = alloca %struct.clk_parent_data, align 4
  %init.i.i = alloca %struct.clk_init_data, align 4
  %clk_name.i.i = alloca [32 x i8], align 1
  %parent_data.i159 = alloca %struct.clk_parent_data, align 4
  %init.i145 = alloca %struct.clk_init_data, align 4
  %clk_name.i146 = alloca [32 x i8], align 1
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name.i = alloca [32 x i8], align 1
  %div_parent = alloca %struct.clk_parent_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %div_parent) #4
  %0 = call ptr @memset(ptr %div_parent, i32 0, i32 16)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 156, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %base, i32 16
  %reg = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %add.ptr, ptr %reg, align 4
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 3, ptr %mask, align 4
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call.i, i32 0, i32 4
  %3 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 16, ptr %shift, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #4
  %4 = getelementptr inbounds i8, ptr %init.i, i32 8
  %5 = call ptr @memset(ptr %4, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i) #4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %6 = call ptr @memset(ptr %clk_name.i, i32 255, i32 32)
  %7 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %8, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end.meson_mx_sdhc_clk_hw_register.exit_crit_edge

if.end.meson_mx_sdhc_clk_hw_register.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_mx_sdhc_clk_hw_register.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  br label %meson_mx_sdhc_clk_hw_register.exit

meson_mx_sdhc_clk_hw_register.exit:               ; preds = %if.end.i.i, %if.end.meson_mx_sdhc_clk_hw_register.exit_crit_edge
  %retval.0.i.i = phi ptr [ %10, %if.end.i.i ], [ %8, %if.end.meson_mx_sdhc_clk_hw_register.exit_crit_edge ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i, ptr noundef nonnull @.str) #4
  %11 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %clk_name.i, ptr %init.i, align 4
  %ops3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %12 = ptrtoint ptr %ops3.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @clk_mux_ops, ptr %ops3.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %flags.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %14 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @meson_mx_sdhc_src_sel_parents, ptr %parent_data.i, align 4
  %num_parents4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %15 = ptrtoint ptr %num_parents4.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 4, ptr %num_parents4.i, align 4
  %init5.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %init5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %init.i, ptr %init5.i, align 4
  %call6.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %tobool5.not = icmp eq i32 %call6.i, 0
  br i1 %tobool5.not, label %if.end7, label %meson_mx_sdhc_clk_hw_register.exit.cleanup_crit_edge

meson_mx_sdhc_clk_hw_register.exit.cleanup_crit_edge: ; preds = %meson_mx_sdhc_clk_hw_register.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %meson_mx_sdhc_clk_hw_register.exit
  %div = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 1
  %reg9 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %reg9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %add.ptr, ptr %reg9, align 4
  %shift11 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 1, i32 2
  %18 = ptrtoint ptr %shift11 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %shift11, align 4
  %width = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 1, i32 3
  %19 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 12, ptr %width, align 1
  %table = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 1, i32 5
  %20 = ptrtoint ptr %table to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @meson_mx_sdhc_div_table, ptr %table, align 4
  %21 = ptrtoint ptr %div_parent to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %div_parent, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i145) #4
  %22 = getelementptr inbounds i8, ptr %init.i145, i32 8
  %23 = call ptr @memset(ptr %22, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i146) #4
  %24 = call ptr @memset(ptr %clk_name.i146, i32 255, i32 32)
  %25 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i148 = icmp eq ptr %26, null
  br i1 %tobool.not.i.i148, label %if.end.i.i149, label %if.end7.meson_mx_sdhc_clk_hw_register.exit158_crit_edge

if.end7.meson_mx_sdhc_clk_hw_register.exit158_crit_edge: ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_mx_sdhc_clk_hw_register.exit158

if.end.i.i149:                                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev, align 4
  br label %meson_mx_sdhc_clk_hw_register.exit158

meson_mx_sdhc_clk_hw_register.exit158:            ; preds = %if.end.i.i149, %if.end7.meson_mx_sdhc_clk_hw_register.exit158_crit_edge
  %retval.0.i.i150 = phi ptr [ %28, %if.end.i.i149 ], [ %26, %if.end7.meson_mx_sdhc_clk_hw_register.exit158_crit_edge ]
  %call1.i151 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i146, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i150, ptr noundef nonnull @.str.1) #4
  %29 = ptrtoint ptr %init.i145 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %clk_name.i146, ptr %init.i145, align 4
  %ops3.i152 = getelementptr inbounds %struct.clk_init_data, ptr %init.i145, i32 0, i32 1
  %30 = ptrtoint ptr %ops3.i152 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @clk_divider_ops, ptr %ops3.i152, align 4
  %flags.i153 = getelementptr inbounds %struct.clk_init_data, ptr %init.i145, i32 0, i32 6
  %31 = ptrtoint ptr %flags.i153 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 4, ptr %flags.i153, align 4
  %parent_data.i154 = getelementptr inbounds %struct.clk_init_data, ptr %init.i145, i32 0, i32 3
  %32 = ptrtoint ptr %parent_data.i154 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %div_parent, ptr %parent_data.i154, align 4
  %num_parents4.i155 = getelementptr inbounds %struct.clk_init_data, ptr %init.i145, i32 0, i32 5
  %33 = ptrtoint ptr %num_parents4.i155 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %num_parents4.i155, align 4
  %init5.i156 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %init5.i156 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %init.i145, ptr %init5.i156, align 4
  %call6.i157 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %div) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i146) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i145) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i157)
  %tobool20.not = icmp eq i32 %call6.i157, 0
  br i1 %tobool20.not, label %if.end22, label %meson_mx_sdhc_clk_hw_register.exit158.cleanup_crit_edge

meson_mx_sdhc_clk_hw_register.exit158.cleanup_crit_edge: ; preds = %meson_mx_sdhc_clk_hw_register.exit158
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end22:                                         ; preds = %meson_mx_sdhc_clk_hw_register.exit158
  %mod_clk_en = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 2
  %reg24 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 2, i32 1
  %35 = ptrtoint ptr %reg24 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %add.ptr, ptr %reg24, align 4
  %bit_idx = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 2, i32 2
  %36 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 15, ptr %bit_idx, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data.i159) #4
  %37 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i159, i32 0, i32 1
  %38 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i159, i32 0, i32 2
  %39 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i159, i32 0, i32 3
  %40 = ptrtoint ptr %parent_data.i159 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %div, ptr %parent_data.i159, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %37, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr null, ptr %38, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i) #4
  %44 = getelementptr inbounds i8, ptr %init.i.i, i32 8
  %45 = call ptr @memset(ptr %44, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i.i) #4
  %46 = call ptr @memset(ptr %clk_name.i.i, i32 255, i32 32)
  %47 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end22.meson_mx_sdhc_gate_clk_hw_register.exit_crit_edge

if.end22.meson_mx_sdhc_gate_clk_hw_register.exit_crit_edge: ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_mx_sdhc_gate_clk_hw_register.exit

if.end.i.i.i:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev, align 4
  br label %meson_mx_sdhc_gate_clk_hw_register.exit

meson_mx_sdhc_gate_clk_hw_register.exit:          ; preds = %if.end.i.i.i, %if.end22.meson_mx_sdhc_gate_clk_hw_register.exit_crit_edge
  %retval.0.i.i.i = phi ptr [ %50, %if.end.i.i.i ], [ %48, %if.end22.meson_mx_sdhc_gate_clk_hw_register.exit_crit_edge ]
  %call1.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i.i, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i.i, ptr noundef nonnull @.str.2) #4
  %51 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %clk_name.i.i, ptr %init.i.i, align 4
  %ops3.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 1
  %52 = ptrtoint ptr %ops3.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @clk_gate_ops, ptr %ops3.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 6
  %53 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 4, ptr %flags.i.i, align 4
  %parent_data.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 3
  %54 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %parent_data.i159, ptr %parent_data.i.i, align 4
  %num_parents4.i.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %num_parents4.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %num_parents4.i.i, align 4
  %init5.i.i = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %56 = ptrtoint ptr %init5.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %init.i.i, ptr %init5.i.i, align 4
  %call6.i.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %mod_clk_en) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i.i) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data.i159) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool31.not = icmp eq i32 %call6.i.i, 0
  br i1 %tobool31.not, label %if.end33, label %meson_mx_sdhc_gate_clk_hw_register.exit.cleanup_crit_edge

meson_mx_sdhc_gate_clk_hw_register.exit.cleanup_crit_edge: ; preds = %meson_mx_sdhc_gate_clk_hw_register.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end33:                                         ; preds = %meson_mx_sdhc_gate_clk_hw_register.exit
  %tx_clk_en = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 3
  %reg35 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %reg35 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %add.ptr, ptr %reg35, align 4
  %bit_idx37 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 3, i32 2
  %58 = ptrtoint ptr %bit_idx37 to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 14, ptr %bit_idx37, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data.i162) #4
  %59 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i162, i32 0, i32 1
  %60 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i162, i32 0, i32 2
  %61 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data.i162, i32 0, i32 3
  %62 = ptrtoint ptr %parent_data.i162 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %div, ptr %parent_data.i162, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr null, ptr %59, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %60, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %61, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i.i160) #4
  %66 = getelementptr inbounds i8, ptr %init.i.i160, i32 8
  %67 = call ptr @memset(ptr %66, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i.i161) #4
  %68 = call ptr @memset(ptr %clk_name.i.i161, i32 255, i32 32)
  %69 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i.i164 = icmp eq ptr %70, null
  br i1 %tobool.not.i.i.i164, label %if.end.i.i.i165, label %if.end33.meson_mx_sdhc_gate_clk_hw_register.exit174_crit_edge

if.end33.meson_mx_sdhc_gate_clk_hw_register.exit174_crit_edge: ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_mx_sdhc_gate_clk_hw_register.exit174

if.end.i.i.i165:                                  ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #6
  %71 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev, align 4
  br label %meson_mx_sdhc_gate_clk_hw_register.exit174

meson_mx_sdhc_gate_clk_hw_register.exit174:       ; preds = %if.end.i.i.i165, %if.end33.meson_mx_sdhc_gate_clk_hw_register.exit174_crit_edge
  %retval.0.i.i.i166 = phi ptr [ %72, %if.end.i.i.i165 ], [ %70, %if.end33.meson_mx_sdhc_gate_clk_hw_register.exit174_crit_edge ]
  %call1.i.i167 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i.i161, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i.i166, ptr noundef nonnull @.str.3) #4
  %73 = ptrtoint ptr %init.i.i160 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %clk_name.i.i161, ptr %init.i.i160, align 4
  %ops3.i.i168 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i160, i32 0, i32 1
  %74 = ptrtoint ptr %ops3.i.i168 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @clk_gate_ops, ptr %ops3.i.i168, align 4
  %flags.i.i169 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i160, i32 0, i32 6
  %75 = ptrtoint ptr %flags.i.i169 to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 4, ptr %flags.i.i169, align 4
  %parent_data.i.i170 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i160, i32 0, i32 3
  %76 = ptrtoint ptr %parent_data.i.i170 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %parent_data.i162, ptr %parent_data.i.i170, align 4
  %num_parents4.i.i171 = getelementptr inbounds %struct.clk_init_data, ptr %init.i.i160, i32 0, i32 5
  %77 = ptrtoint ptr %num_parents4.i.i171 to i32
  call void @__asan_store1_noabort(i32 %77)
  store i8 1, ptr %num_parents4.i.i171, align 4
  %init5.i.i172 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %78 = ptrtoint ptr %init5.i.i172 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %init.i.i160, ptr %init5.i.i172, align 4
  %call6.i.i173 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %tx_clk_en) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i.i161) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i.i160) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data.i162) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i173)
  %tobool43.not = icmp eq i32 %call6.i.i173, 0
  br i1 %tobool43.not, label %if.end45, label %meson_mx_sdhc_gate_clk_hw_register.exit174.cleanup_crit_edge

meson_mx_sdhc_gate_clk_hw_register.exit174.cleanup_crit_edge: ; preds = %meson_mx_sdhc_gate_clk_hw_register.exit174
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end45:                                         ; preds = %meson_mx_sdhc_gate_clk_hw_register.exit174
  %rx_clk_en = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 4
  %reg47 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 4, i32 1
  %79 = ptrtoint ptr %reg47 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %add.ptr, ptr %reg47, align 4
  %bit_idx49 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 4, i32 2
  %80 = ptrtoint ptr %bit_idx49 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 13, ptr %bit_idx49, align 4
  %call54 = call fastcc i32 @meson_mx_sdhc_gate_clk_hw_register(ptr noundef %dev, ptr noundef nonnull @.str.4, ptr noundef %div, ptr noundef %rx_clk_en)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %if.end57, label %if.end45.cleanup_crit_edge

if.end45.cleanup_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end57:                                         ; preds = %if.end45
  %sd_clk_en = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 5
  %reg59 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 5, i32 1
  %81 = ptrtoint ptr %reg59 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr, ptr %reg59, align 4
  %bit_idx61 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 5, i32 2
  %82 = ptrtoint ptr %bit_idx61 to i32
  call void @__asan_store1_noabort(i32 %82)
  store i8 12, ptr %bit_idx61, align 4
  %call66 = call fastcc i32 @meson_mx_sdhc_gate_clk_hw_register(ptr noundef %dev, ptr noundef nonnull @.str.5, ptr noundef %div, ptr noundef %sd_clk_en)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end69, label %if.end57.cleanup_crit_edge

if.end57.cleanup_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end69:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  %clk = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 2, i32 0, i32 1
  %83 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %clk, align 4
  %clk72 = getelementptr inbounds %struct.clk_bulk_data, ptr %clk_bulk_data, i32 0, i32 1
  %85 = ptrtoint ptr %clk72 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %84, ptr %clk72, align 4
  %clk75 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 5, i32 0, i32 1
  %86 = ptrtoint ptr %clk75 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %clk75, align 4
  %clk77 = getelementptr %struct.clk_bulk_data, ptr %clk_bulk_data, i32 1, i32 1
  %88 = ptrtoint ptr %clk77 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %clk77, align 4
  %clk80 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  %89 = ptrtoint ptr %clk80 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %clk80, align 4
  %clk82 = getelementptr %struct.clk_bulk_data, ptr %clk_bulk_data, i32 2, i32 1
  %91 = ptrtoint ptr %clk82 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %90, ptr %clk82, align 4
  %clk85 = getelementptr inbounds %struct.meson_mx_sdhc_clkc, ptr %call.i, i32 0, i32 4, i32 0, i32 1
  %92 = ptrtoint ptr %clk85 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %clk85, align 4
  %clk87 = getelementptr %struct.clk_bulk_data, ptr %clk_bulk_data, i32 3, i32 1
  %94 = ptrtoint ptr %clk87 to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %93, ptr %clk87, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end69, %if.end57.cleanup_crit_edge, %if.end45.cleanup_crit_edge, %meson_mx_sdhc_gate_clk_hw_register.exit174.cleanup_crit_edge, %meson_mx_sdhc_gate_clk_hw_register.exit.cleanup_crit_edge, %meson_mx_sdhc_clk_hw_register.exit158.cleanup_crit_edge, %meson_mx_sdhc_clk_hw_register.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end69 ], [ -12, %entry.cleanup_crit_edge ], [ %call6.i, %meson_mx_sdhc_clk_hw_register.exit.cleanup_crit_edge ], [ %call6.i157, %meson_mx_sdhc_clk_hw_register.exit158.cleanup_crit_edge ], [ %call6.i.i, %meson_mx_sdhc_gate_clk_hw_register.exit.cleanup_crit_edge ], [ %call6.i.i173, %meson_mx_sdhc_gate_clk_hw_register.exit174.cleanup_crit_edge ], [ %call54, %if.end45.cleanup_crit_edge ], [ %call66, %if.end57.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %div_parent) #4
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_mx_sdhc_gate_clk_hw_register(ptr noundef %dev, ptr noundef %name_suffix, ptr noundef %parent, ptr noundef %hw) unnamed_addr #0 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  %clk_name.i = alloca [32 x i8], align 1
  %parent_data = alloca %struct.clk_parent_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_data) #4
  %0 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data, i32 0, i32 1
  %1 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data, i32 0, i32 2
  %2 = getelementptr inbounds %struct.clk_parent_data, ptr %parent_data, i32 0, i32 3
  %3 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %parent, ptr %parent_data, align 4
  %4 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %0, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %1, align 4
  %6 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #4
  %7 = getelementptr inbounds i8, ptr %init.i, i32 8
  %8 = call ptr @memset(ptr %7, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i) #4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %9 = call ptr @memset(ptr %clk_name.i, i32 255, i32 32)
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.meson_mx_sdhc_clk_hw_register.exit_crit_edge

entry.meson_mx_sdhc_clk_hw_register.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %meson_mx_sdhc_clk_hw_register.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %meson_mx_sdhc_clk_hw_register.exit

meson_mx_sdhc_clk_hw_register.exit:               ; preds = %if.end.i.i, %entry.meson_mx_sdhc_clk_hw_register.exit_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %entry.meson_mx_sdhc_clk_hw_register.exit_crit_edge ]
  %call1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.6, ptr noundef %retval.0.i.i, ptr noundef %name_suffix) #4
  %14 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %clk_name.i, ptr %init.i, align 4
  %ops3.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %15 = ptrtoint ptr %ops3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @clk_gate_ops, ptr %ops3.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 4, ptr %flags.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 3
  %17 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %parent_data, ptr %parent_data.i, align 4
  %num_parents4.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %18 = ptrtoint ptr %num_parents4.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %num_parents4.i, align 4
  %init5.i = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 2
  %19 = ptrtoint ptr %init5.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %init.i, ptr %init5.i, align 4
  %call6.i = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef %hw) #4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_data) #4
  ret i32 %call6.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 96, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 108, i32 43}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 116, i32 48}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 124, i32 48}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 132, i32 48}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 140, i32 48}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 57, i32 39}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 25, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 26, i32 15}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 27, i32 15}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 28, i32 15}
!22 = !{ptr @meson_mx_sdhc_src_sel_parents, !23, !"meson_mx_sdhc_src_sel_parents", i1 false, i1 false}
!23 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 24, i32 37}
!24 = !{ptr @meson_mx_sdhc_div_table, !25, !"meson_mx_sdhc_div_table", i1 false, i1 false}
!25 = !{!"../drivers/mmc/host/meson-mx-sdhc-clkc.c", i32 31, i32 35}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
