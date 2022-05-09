; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun4i-display.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun4i-display.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.sun4i_a10_display_clk_data = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.reset_data = type { ptr, ptr, %struct.reset_controller_dev, i8 }
%struct.reset_controller_dev = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, i32, ptr, i32 }

@__of_table_sun4i_a10_tcon_ch0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tcon-ch0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_tcon_ch0_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_a10_display = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-display-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_a10_display_setup }, section "__clk_of_table", align 4
@sun4i_a10_tcon_ch0_data = internal constant %struct.sun4i_a10_display_clk_data { i8 0, i8 2, i8 4, i8 31, i8 0, i8 24, i8 29, i8 0, i8 2, i32 4 }, section ".init.rodata", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sun4i_a10_display_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 119, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Could not map the clock registers\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_a10_display_init\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/clk/sunxi/clk-sun4i-display.c\00", [58 x i8] zeroinitializer }, align 32
@sun4i_a10_display_init._entry_ptr = internal global ptr @sun4i_a10_display_init._entry, section ".printk_index", align 4
@sun4i_a10_display_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 125, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%s: Could not retrieve the parents\0A\00", [58 x i8] zeroinitializer }, align 32
@sun4i_a10_display_init._entry_ptr.6 = internal global ptr @sun4i_a10_display_init._entry.4, section ".printk_index", align 4
@sun4i_a10_display_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@sun4i_a10_display_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Couldn't register the clock\0A\00", [61 x i8] zeroinitializer }, align 32
@sun4i_a10_display_init._entry_ptr.9 = internal global ptr @sun4i_a10_display_init._entry.7, section ".printk_index", align 4
@sun4i_a10_display_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 171, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Couldn't register DT provider\0A\00", [59 x i8] zeroinitializer }, align 32
@sun4i_a10_display_init._entry_ptr.12 = internal global ptr @sun4i_a10_display_init._entry.10, section ".printk_index", align 4
@sun4i_a10_display_reset_ops = internal constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr null, ptr @sun4i_a10_display_assert, ptr @sun4i_a10_display_deassert, ptr @sun4i_a10_display_status }, [16 x i8] zeroinitializer }, align 32
@sun4i_a10_display_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: Couldn't register the reset controller\0A\00", [50 x i8] zeroinitializer }, align 32
@sun4i_a10_display_init._entry_ptr.15 = internal global ptr @sun4i_a10_display_init._entry.13, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun4i_a10_display_lock\00", [41 x i8] zeroinitializer }, align 32
@sun4i_a10_display_data = internal constant %struct.sun4i_a10_display_clk_data { i8 1, i8 1, i8 3, i8 31, i8 0, i8 24, i8 30, i8 4, i8 2, i32 0 }, section ".init.rodata", align 4
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 115, i32 32 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 119, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 125, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"sun4i_a10_display_lock\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 165, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 171, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"sun4i_a10_display_reset_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 88, i32 39 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 197, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 261, i32 30 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [41 x i8] c"../drivers/clk/sunxi/clk-sun4i-display.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 39, i32 8 }
@llvm.compiler.used = appending global [24 x ptr] [ptr @__of_table_sun4i_a10_display, ptr @__of_table_sun4i_a10_tcon_ch0, ptr @sun4i_a10_display_init._entry, ptr @sun4i_a10_display_init._entry.10, ptr @sun4i_a10_display_init._entry.13, ptr @sun4i_a10_display_init._entry.4, ptr @sun4i_a10_display_init._entry.7, ptr @sun4i_a10_display_init._entry_ptr, ptr @sun4i_a10_display_init._entry_ptr.12, ptr @sun4i_a10_display_init._entry_ptr.15, ptr @sun4i_a10_display_init._entry_ptr.6, ptr @sun4i_a10_display_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @sun4i_a10_display_lock, ptr @.str.8, ptr @.str.11, ptr @sun4i_a10_display_reset_ops, ptr @.str.14, ptr @.str.16, ptr @.str.17], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_display_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_display_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_display_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_display_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_display_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_display_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_a10_display_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_tcon_ch0_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sun4i_a10_display_init(ptr noundef %node, ptr noundef nonnull @sun4i_a10_tcon_ch0_data) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_a10_display_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sun4i_a10_display_init(ptr noundef %node, ptr noundef nonnull @sun4i_a10_display_data) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun4i_a10_display_init(ptr noundef %node, ptr nocapture noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parents = alloca [4 x ptr], align 4
  %clk_name = alloca ptr, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parents) #8
  %0 = call ptr @memset(ptr %parents, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #8
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %3 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %4 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %5 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name) #8
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %6 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %7, %cond.true.i ], [ @.str.16, %entry.of_node_full_name.exit_crit_edge ]
  %call2 = call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #8
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_name, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %9) #12
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  %parents5 = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %parents5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %parents5, align 2
  %conv = zext i8 %11 to i32
  %call6 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parents, i32 noundef %conv) #8
  %12 = ptrtoint ptr %parents5 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %parents5, align 2
  %conv8 = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call6, i32 %conv8)
  %cmp.not = icmp eq i32 %call6, %conv8
  br i1 %cmp.not, label %if.end16, label %do.end13

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %14 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_name, align 4
  %call15 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %15) #12
  br label %unmap

if.end16:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 32) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end16.unmap_crit_edge, label %if.end19

if.end16.unmap_crit_edge:                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %unmap

if.end19:                                         ; preds = %if.end16
  %reg20 = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %reg20 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call2, ptr %reg20, align 4
  %offset_mux = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 5
  %18 = ptrtoint ptr %offset_mux to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %offset_mux, align 1
  %shift = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %shift to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %shift, align 8
  %width_mux = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 8
  %21 = ptrtoint ptr %width_mux to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %width_mux, align 4
  %conv21 = zext i8 %22 to i32
  %notmask = shl nsw i32 -1, %conv21
  %sub = xor i32 %notmask, -1
  %mask = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %sub, ptr %mask, align 4
  %lock = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i, i32 0, i32 6
  %24 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @sun4i_a10_display_lock, ptr %lock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %25 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i171 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %25, i32 noundef 3520, i32 noundef 24) #13
  %tobool23.not = icmp eq ptr %call7.i.i171, null
  br i1 %tobool23.not, label %if.end19.free_mux_crit_edge, label %if.end25

if.end19.free_mux_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_mux

if.end25:                                         ; preds = %if.end19
  %reg26 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i171, i32 0, i32 1
  %26 = ptrtoint ptr %reg26 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call2, ptr %reg26, align 4
  %offset_en = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 3
  %27 = ptrtoint ptr %offset_en to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %offset_en, align 1
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i171, i32 0, i32 2
  %29 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %bit_idx, align 8
  %lock27 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i171, i32 0, i32 4
  %30 = ptrtoint ptr %lock27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @sun4i_a10_display_lock, ptr %lock27, align 4
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool28.not = icmp eq i8 %32, 0
  br i1 %tobool28.not, label %if.end25.if.end37_crit_edge, label %if.then29

if.end25.if.end37_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.then29:                                        ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i172 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 3520, i32 noundef 28) #13
  %tobool31.not = icmp eq ptr %call7.i.i172, null
  br i1 %tobool31.not, label %if.then29.free_gate_crit_edge, label %if.end33

if.then29.free_gate_crit_edge:                    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_gate

if.end33:                                         ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %reg34 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i172, i32 0, i32 1
  %34 = ptrtoint ptr %reg34 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call2, ptr %reg34, align 4
  %offset_div = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 4
  %35 = ptrtoint ptr %offset_div to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %offset_div, align 4
  %shift35 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i172, i32 0, i32 2
  %37 = ptrtoint ptr %shift35 to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %36, ptr %shift35, align 8
  %width_div = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 7
  %38 = ptrtoint ptr %width_div to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %width_div, align 1
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i172, i32 0, i32 3
  %40 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %39, ptr %width, align 1
  %lock36 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i172, i32 0, i32 6
  %41 = ptrtoint ptr %lock36 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @sun4i_a10_display_lock, ptr %lock36, align 8
  br label %if.end37

if.end37:                                         ; preds = %if.end33, %if.end25.if.end37_crit_edge
  %div.0 = phi ptr [ %call7.i.i172, %if.end33 ], [ null, %if.end25.if.end37_crit_edge ]
  %42 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clk_name, align 4
  %44 = ptrtoint ptr %parents5 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %parents5, align 2
  %conv40 = zext i8 %45 to i32
  %46 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %data, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool42.not = icmp eq i8 %47, 0
  %spec.select = select i1 %tobool42.not, ptr null, ptr %div.0
  %cond48 = select i1 %tobool42.not, ptr null, ptr @clk_divider_ops
  %flags = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 9
  %48 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags, align 4
  %call50 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %43, ptr noundef nonnull %parents, i32 noundef %conv40, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_mux_ops, ptr noundef %spec.select, ptr noundef %cond48, ptr noundef nonnull %call7.i.i171, ptr noundef nonnull @clk_gate_ops, i32 noundef %49) #8
  %cmp.i173 = icmp ugt ptr %call50, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i173, label %do.end55, label %if.end58

do.end55:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %clk_name, align 4
  %call57 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %51) #12
  br label %free_div

if.end58:                                         ; preds = %if.end37
  %call59 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call50) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end67, label %do.end64

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %clk_name, align 4
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %53) #12
  br label %free_clk

if.end67:                                         ; preds = %if.end58
  %num_rst = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 1
  %54 = ptrtoint ptr %num_rst to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %num_rst, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool68.not = icmp eq i8 %55, 0
  br i1 %tobool68.not, label %if.end67.cleanup_crit_edge, label %if.end70

if.end67.cleanup_crit_edge:                       ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end70:                                         ; preds = %if.end67
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %56 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i174 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %56, i32 noundef 3520, i32 noundef 56) #13
  %tobool72.not = icmp eq ptr %call7.i.i174, null
  br i1 %tobool72.not, label %if.end70.free_of_clk_crit_edge, label %if.end74

if.end70.free_of_clk_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #10
  br label %free_of_clk

if.end74:                                         ; preds = %if.end70
  %57 = ptrtoint ptr %call7.i.i174 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call2, ptr %call7.i.i174, align 8
  %offset_rst = getelementptr inbounds %struct.sun4i_a10_display_clk_data, ptr %data, i32 0, i32 6
  %58 = ptrtoint ptr %offset_rst to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %offset_rst, align 2
  %offset = getelementptr inbounds %struct.reset_data, ptr %call7.i.i174, i32 0, i32 3
  %60 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %offset, align 4
  %lock76 = getelementptr inbounds %struct.reset_data, ptr %call7.i.i174, i32 0, i32 1
  %61 = ptrtoint ptr %lock76 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @sun4i_a10_display_lock, ptr %lock76, align 4
  %62 = ptrtoint ptr %num_rst to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %num_rst, align 1
  %conv78 = zext i8 %63 to i32
  %rcdev = getelementptr inbounds %struct.reset_data, ptr %call7.i.i174, i32 0, i32 2
  %nr_resets = getelementptr inbounds %struct.reset_data, ptr %call7.i.i174, i32 0, i32 2, i32 8
  %64 = ptrtoint ptr %nr_resets to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %conv78, ptr %nr_resets, align 8
  %65 = ptrtoint ptr %rcdev to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @sun4i_a10_display_reset_ops, ptr %rcdev, align 8
  %of_node = getelementptr inbounds %struct.reset_data, ptr %call7.i.i174, i32 0, i32 2, i32 5
  %66 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %node, ptr %of_node, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %63)
  %cmp83 = icmp eq i8 %63, 1
  br i1 %cmp83, label %if.then85, label %if.end74.if.end90_crit_edge

if.end74.if.end90_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end90

if.then85:                                        ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #10
  %of_xlate = getelementptr inbounds %struct.reset_data, ptr %call7.i.i174, i32 0, i32 2, i32 7
  %67 = ptrtoint ptr %of_xlate to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @sun4i_a10_display_reset_xlate, ptr %of_xlate, align 4
  br label %if.end90

if.end90:                                         ; preds = %if.then85, %if.end74.if.end90_crit_edge
  %.sink = phi i32 [ 0, %if.then85 ], [ 1, %if.end74.if.end90_crit_edge ]
  %68 = getelementptr inbounds %struct.reset_data, ptr %call7.i.i174, i32 0, i32 2, i32 6
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %.sink, ptr %68, align 8
  %call92 = call i32 @reset_controller_register(ptr noundef %rcdev) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %if.end90.cleanup_crit_edge, label %do.end97

if.end90.cleanup_crit_edge:                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end97:                                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #10
  %70 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clk_name, align 4
  %call99 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %71) #12
  call void @kfree(ptr noundef nonnull %call7.i.i174) #8
  br label %free_of_clk

free_of_clk:                                      ; preds = %do.end97, %if.end70.free_of_clk_crit_edge
  call void @of_clk_del_provider(ptr noundef %node) #8
  br label %free_clk

free_clk:                                         ; preds = %free_of_clk, %do.end64
  call void @clk_unregister_composite(ptr noundef %call50) #8
  br label %free_div

free_div:                                         ; preds = %free_clk, %do.end55
  call void @kfree(ptr noundef %div.0) #8
  br label %free_gate

free_gate:                                        ; preds = %free_div, %if.then29.free_gate_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i171) #8
  br label %free_mux

free_mux:                                         ; preds = %free_gate, %if.end19.free_mux_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %unmap

unmap:                                            ; preds = %free_mux, %if.end16.unmap_crit_edge, %do.end13
  call void @iounmap(ptr noundef %call2) #8
  %call101 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #8
  %72 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %res, align 4
  %74 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %4, align 4
  %sub.i = sub i32 1, %73
  %add.i = add i32 %sub.i, %75
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %73, i32 noundef %add.i) #8
  br label %cleanup

cleanup:                                          ; preds = %unmap, %if.end90.cleanup_crit_edge, %if.end67.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #8
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parents) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_io_request_and_map(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun4i_a10_display_reset_xlate(ptr nocapture noundef readnone %rcdev, ptr nocapture noundef readnone %spec) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_controller_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_composite(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_a10_display_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -8
  %lock = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !49
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !50
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !51
  tail call void @arm_heavy_mb() #8
  %offset = getelementptr i8, ptr %rcdev, i32 44
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %offset, align 4
  %conv13 = zext i8 %7 to i32
  %add = add i32 %conv13, %id
  %shl = shl nuw i32 1, %add
  %neg = xor i32 %shl, -1
  %and = and i32 %5, %neg
  %8 = tail call i32 @llvm.bswap.i32(i32 %and)
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !52
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_a10_display_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -8
  %lock = getelementptr i8, ptr %rcdev, i32 -4
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #8, !srcloc !49
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !53
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @arm_heavy_mb() #8
  %offset = getelementptr i8, ptr %rcdev, i32 44
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %offset, align 4
  %conv13 = zext i8 %7 to i32
  %add = add i32 %conv13, %id
  %shl = shl nuw i32 1, %add
  %or = or i32 %shl, %5
  %8 = tail call i32 @llvm.bswap.i32(i32 %or)
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %add.ptr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #8, !srcloc !52
  %11 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %lock, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %12, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun4i_a10_display_status(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %rcdev, i32 -8
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr.i, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #8, !srcloc !49
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %offset = getelementptr i8, ptr %rcdev, i32 44
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %offset, align 4
  %conv = zext i8 %4 to i32
  %add = add i32 %conv, %id
  %5 = xor i32 %2, -1
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = lshr i32 %6, %add
  %8 = and i32 %7, 1
  ret i32 %8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !33, !35, !37}
!llvm.module.flags = !{!39, !40, !41, !42, !43, !44, !45, !46}
!llvm.ident = !{!47}

!0 = !{ptr @__of_table_sun4i_a10_tcon_ch0, !1, !"__of_table_sun4i_a10_tcon_ch0", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 236, i32 1}
!2 = !{ptr @__of_table_sun4i_a10_display, !3, !"__of_table_sun4i_a10_display", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 255, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 115, i32 32}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 119, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @sun4i_a10_display_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @sun4i_a10_display_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 125, i32 3}
!14 = !{ptr @sun4i_a10_display_init._entry.4, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @sun4i_a10_display_init._entry_ptr.6, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 165, i32 3}
!18 = !{ptr @sun4i_a10_display_init._entry.7, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun4i_a10_display_init._entry_ptr.9, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.11, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 171, i32 3}
!22 = !{ptr @sun4i_a10_display_init._entry.10, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun4i_a10_display_init._entry_ptr.12, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 197, i32 3}
!26 = !{ptr @sun4i_a10_display_init._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @sun4i_a10_display_init._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/linux/of.h", i32 261, i32 30}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 39, i32 8}
!32 = !{ptr @sun4i_a10_display_lock, !31, !"sun4i_a10_display_lock", i1 false, i1 false}
!33 = !{ptr @sun4i_a10_display_reset_ops, !34, !"sun4i_a10_display_reset_ops", i1 false, i1 false}
!34 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 88, i32 39}
!35 = !{ptr @sun4i_a10_tcon_ch0_data, !36, !"sun4i_a10_tcon_ch0_data", i1 false, i1 false}
!36 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 222, i32 48}
!37 = !{ptr @sun4i_a10_display_data, !38, !"sun4i_a10_display_data", i1 false, i1 false}
!38 = !{!"../drivers/clk/sunxi/clk-sun4i-display.c", i32 239, i32 48}
!39 = !{i32 1, !"wchar_size", i32 2}
!40 = !{i32 1, !"min_enum_size", i32 4}
!41 = !{i32 8, !"branch-target-enforcement", i32 0}
!42 = !{i32 8, !"sign-return-address", i32 0}
!43 = !{i32 8, !"sign-return-address-all", i32 0}
!44 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!45 = !{i32 7, !"uwtable", i32 1}
!46 = !{i32 7, !"frame-pointer", i32 2}
!47 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!48 = !{i8 0, i8 2}
!49 = !{i64 4031093}
!50 = !{i64 2152532617}
!51 = !{i64 2152532962}
!52 = !{i64 4030675}
!53 = !{i64 2152534079}
!54 = !{i64 2152534422}
!55 = !{i64 2152535181}
