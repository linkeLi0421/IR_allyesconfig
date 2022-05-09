; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sun4i-tcon-ch1.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.tcon_ch1_clk = type { %struct.clk_hw, %struct.spinlock, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.clk_rate_request = type { i32, i32, i32, i32, ptr }

@__of_table_tcon_ch1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-tcon-ch1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tcon_ch1_setup }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@tcon_ch1_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013%s: Could not map the clock registers\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tcon_ch1_setup\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/clk/sunxi/clk-sun4i-tcon-ch1.c\00", [57 x i8] zeroinitializer }, align 32
@tcon_ch1_setup._entry_ptr = internal global ptr @tcon_ch1_setup._entry, section ".printk_index", align 4
@tcon_ch1_setup._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.2, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s Could not retrieve the parents\0A\00", [59 x i8] zeroinitializer }, align 32
@tcon_ch1_setup._entry_ptr.6 = internal global ptr @tcon_ch1_setup._entry.4, section ".printk_index", align 4
@tcon_ch1_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @tcon_ch1_enable, ptr @tcon_ch1_disable, ptr @tcon_ch1_is_enabled, ptr null, ptr null, ptr null, ptr @tcon_ch1_recalc_rate, ptr null, ptr @tcon_ch1_determine_rate, ptr @tcon_ch1_set_parent, ptr @tcon_ch1_get_parent, ptr @tcon_ch1_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@tcon_ch1_setup.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&tclk->lock\00", [20 x i8] zeroinitializer }, align 32
@tcon_ch1_setup._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: Couldn't register the clock\0A\00", [61 x i8] zeroinitializer }, align 32
@tcon_ch1_setup._entry_ptr.10 = internal global ptr @tcon_ch1_setup._entry.8, section ".printk_index", align 4
@tcon_ch1_setup._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 271, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: Couldn't register our clock provider\0A\00", [52 x i8] zeroinitializer }, align 32
@tcon_ch1_setup._entry_ptr.13 = internal global ptr @tcon_ch1_setup._entry.11, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"<no-node>\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 235, i32 32 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 239, i32 3 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 245, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant [13 x i8] c"tcon_ch1_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 211, i32 29 }
@___asan_gen_.39 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 261, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 265, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.55 = private constant [42 x i8] c"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 271, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.58 = private unnamed_addr constant [22 x i8] c"../include/linux/of.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 261, i32 30 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__of_table_tcon_ch1, ptr @tcon_ch1_setup._entry, ptr @tcon_ch1_setup._entry.11, ptr @tcon_ch1_setup._entry.4, ptr @tcon_ch1_setup._entry.8, ptr @tcon_ch1_setup._entry_ptr, ptr @tcon_ch1_setup._entry_ptr.10, ptr @tcon_ch1_setup._entry_ptr.13, ptr @tcon_ch1_setup._entry_ptr.6, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @tcon_ch1_ops, ptr @tcon_ch1_setup.__key, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcon_ch1_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcon_ch1_setup._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcon_ch1_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcon_ch1_setup.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcon_ch1_setup._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcon_ch1_setup._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tcon_ch1_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %parents = alloca [4 x ptr], align 4
  %clk_name = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parents) #7
  %0 = call ptr @memset(ptr %parents, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %1 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %node, align 4
  %3 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %4 = call ptr @memset(ptr %init, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #7
  %5 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %6 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %clk_name) #7
  %tobool.not.i = icmp eq ptr %node, null
  br i1 %tobool.not.i, label %entry.of_node_full_name.exit_crit_edge, label %cond.true.i

entry.of_node_full_name.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %of_node_full_name.exit

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %full_name.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 2
  %7 = ptrtoint ptr %full_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %full_name.i, align 4
  br label %of_node_full_name.exit

of_node_full_name.exit:                           ; preds = %cond.true.i, %entry.of_node_full_name.exit_crit_edge
  %cond.i = phi ptr [ %8, %cond.true.i ], [ @.str.14, %entry.of_node_full_name.exit_crit_edge ]
  %call2 = call ptr @of_io_request_and_map(ptr noundef %node, i32 noundef 0, ptr noundef %cond.i) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %of_node_full_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %clk_name, align 4
  %call4 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef %10) #10
  br label %cleanup

if.end:                                           ; preds = %of_node_full_name.exit
  %call5 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parents, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 4
  br i1 %cmp.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_name, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %12) #10
  br label %err_unmap

if.end12:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 60) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end12.err_unmap_crit_edge, label %if.end15

if.end12.err_unmap_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap

if.end15:                                         ; preds = %if.end12
  %14 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_name, align 4
  %16 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %17 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tcon_ch1_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %18 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %parents, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %19 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 4, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %20 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %flags, align 4
  %reg18 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %call7.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %reg18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call2, ptr %reg18, align 8
  %init19 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %init19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %init, ptr %init19, align 8
  %lock = getelementptr inbounds %struct.tcon_ch1_clk, ptr %call7.i.i, i32 0, i32 1
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.7, ptr noundef nonnull @tcon_ch1_setup.__key, i16 noundef signext 3) #7
  %call25 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i68 = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i68, label %do.end30, label %if.end33

do.end30:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %clk_name, align 4
  %call32 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef %24) #10
  br label %err_free_data

if.end33:                                         ; preds = %if.end15
  %call34 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call25) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.end33.cleanup_crit_edge, label %do.end39

if.end33.cleanup_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end39:                                         ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %clk_name, align 4
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %26) #10
  call void @clk_unregister(ptr noundef %call25) #7
  br label %err_free_data

err_free_data:                                    ; preds = %do.end39, %do.end30
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %err_unmap

err_unmap:                                        ; preds = %err_free_data, %if.end12.err_unmap_crit_edge, %do.end9
  call void @iounmap(ptr noundef %call2) #7
  %call43 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #7
  %27 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %res, align 4
  %29 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %5, align 4
  %sub.i = sub i32 1, %28
  %add.i = add i32 %sub.i, %30
  call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %28, i32 noundef %add.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unmap, %if.end33.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parents) #7
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
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcon_ch1_enable(ptr noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %reg6 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg6, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !39
  %3 = or i32 %2, 8388736
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !40
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcon_ch1_disable(ptr noundef %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %reg6 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg6, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !42
  %3 = and i32 %2, -8388737
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !43
  tail call void @arm_heavy_mb() #7
  %4 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #7, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcon_ch1_is_enabled(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !44
  %3 = and i32 %2, 8388736
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  ret i32 %4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcon_ch1_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !38
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !45
  %and = and i32 %3, 15
  %add = add nuw nsw i32 %and, 1
  %div = udiv i32 %parent_rate, %add
  %and4 = lshr i32 %3, 11
  %and4.lobit = and i32 %and4, 1
  %spec.select = lshr i32 %div, %and4.lobit
  ret i32 %spec.select
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcon_ch1_determine_rate(ptr noundef %hw, ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call35 = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %cmp36.not = icmp eq i32 %call35, 0
  br i1 %cmp36.not, label %entry.cleanup17_crit_edge, label %for.body.lr.ph

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

for.body.lr.ph:                                   ; preds = %entry
  %best_parent_rate = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 3
  %best_parent_hw = getelementptr inbounds %struct.clk_rate_request, ptr %req, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %i.038 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %best_rate.037 = phi i32 [ -22, %for.body.lr.ph ], [ %best_rate.2, %cleanup.for.body_crit_edge ]
  %call1 = tail call ptr @clk_hw_get_parent_by_index(ptr noundef %hw, i32 noundef %i.038) #7
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %for.body.cleanup_crit_edge, label %if.end

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %for.body
  %call2 = tail call i32 @clk_hw_get_rate(ptr noundef nonnull %call1) #7
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %cleanup.1.i.for.cond2.preheader.i_crit_edge, %if.end
  %indvars.iv.i = phi i32 [ 1, %if.end ], [ %indvars.iv.next.i, %cleanup.1.i.for.cond2.preheader.i_crit_edge ]
  %best_rate.055.i = phi i32 [ 0, %if.end ], [ %best_rate.3.1.i, %cleanup.1.i.for.cond2.preheader.i_crit_edge ]
  %div8.i = udiv i32 %call2, %indvars.iv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div8.i)
  %cmp11.i = icmp ult i32 %1, %div8.i
  br i1 %cmp11.i, label %for.cond2.preheader.i.cleanup.i_crit_edge, label %if.end.i

for.cond2.preheader.i.cleanup.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.055.i)
  %tobool.not.i = icmp eq i32 %best_rate.055.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then16.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sub.i = sub i32 %1, %div8.i
  %sub13.i = sub i32 %1, %best_rate.055.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub13.i)
  %cmp14.i = icmp ult i32 %sub.i, %sub13.i
  br i1 %cmp14.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then16.i, %lor.lhs.false.i.cleanup.i_crit_edge, %for.cond2.preheader.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.055.i, %for.cond2.preheader.i.cleanup.i_crit_edge ], [ %div8.i, %if.then16.i ], [ %best_rate.055.i, %lor.lhs.false.i.cleanup.i_crit_edge ]
  %div10.159.i = lshr i32 %div8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %div10.159.i)
  %cmp11.1.i = icmp ult i32 %1, %div10.159.i
  br i1 %cmp11.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.3.i)
  %tobool.not.1.i = icmp eq i32 %best_rate.3.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i.if.then16.1.i_crit_edge, label %lor.lhs.false.1.i

if.end.1.i.if.then16.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.1.i

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %sub.1.i = sub i32 %1, %div10.159.i
  %sub13.1.i = sub i32 %1, %best_rate.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %sub13.1.i)
  %cmp14.1.i = icmp ult i32 %sub.1.i, %sub13.1.i
  br i1 %cmp14.1.i, label %lor.lhs.false.1.i.if.then16.1.i_crit_edge, label %lor.lhs.false.1.i.cleanup.1.i_crit_edge

lor.lhs.false.1.i.cleanup.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

lor.lhs.false.1.i.if.then16.1.i_crit_edge:        ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.1.i

if.then16.1.i:                                    ; preds = %lor.lhs.false.1.i.if.then16.1.i_crit_edge, %if.end.1.i.if.then16.1.i_crit_edge
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.then16.1.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %best_rate.3.1.i = phi i32 [ %best_rate.3.i, %cleanup.i.cleanup.1.i_crit_edge ], [ %div10.159.i, %if.then16.1.i ], [ %best_rate.3.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %tcon_ch1_calc_divider.exit, label %cleanup.1.i.for.cond2.preheader.i_crit_edge

cleanup.1.i.for.cond2.preheader.i_crit_edge:      ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i

tcon_ch1_calc_divider.exit:                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.037)
  %cmp4 = icmp slt i32 %best_rate.037, 0
  br i1 %cmp4, label %tcon_ch1_calc_divider.exit.if.then9_crit_edge, label %lor.lhs.false

tcon_ch1_calc_divider.exit.if.then9_crit_edge:    ; preds = %tcon_ch1_calc_divider.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

lor.lhs.false:                                    ; preds = %tcon_ch1_calc_divider.exit
  %sub = sub i32 %1, %best_rate.3.1.i
  %sub7 = sub i32 %1, %best_rate.037
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub7)
  %cmp8 = icmp ult i32 %sub, %sub7
  br i1 %cmp8, label %lor.lhs.false.if.then9_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false.if.then9_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then9

if.then9:                                         ; preds = %lor.lhs.false.if.then9_crit_edge, %tcon_ch1_calc_divider.exit.if.then9_crit_edge
  %2 = ptrtoint ptr %best_parent_rate to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call2, ptr %best_parent_rate, align 4
  %3 = ptrtoint ptr %best_parent_hw to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %best_parent_hw, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %lor.lhs.false.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %best_rate.2 = phi i32 [ %best_rate.037, %for.body.cleanup_crit_edge ], [ %best_rate.3.1.i, %if.then9 ], [ %best_rate.037, %lor.lhs.false.cleanup_crit_edge ]
  %inc = add nuw i32 %i.038, 1
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #7
  %cmp = icmp ult i32 %inc, %call
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.2)
  %cmp13 = icmp slt i32 %best_rate.2, 0
  br i1 %cmp13, label %for.end.cleanup17_crit_edge, label %if.end15

for.end.cleanup17_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup17

if.end15:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %best_rate.2, ptr %req, align 4
  br label %cleanup17

cleanup17:                                        ; preds = %if.end15, %for.end.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.0 = phi i32 [ 0, %if.end15 ], [ %best_rate.2, %for.end.cleanup17_crit_edge ], [ -22, %entry.cleanup17_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcon_ch1_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %reg6 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg6, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !46
  %3 = and i32 %2, -4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %conv10 = zext i8 %index to i32
  %shl = shl nuw i32 %conv10, 24
  %or = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !47
  tail call void @arm_heavy_mb() #7
  %5 = tail call i32 @llvm.bswap.i32(i32 %or)
  %6 = ptrtoint ptr %reg6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg6, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #7, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @tcon_ch1_get_parent(ptr nocapture noundef readonly %hw) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %reg1 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !48
  %3 = lshr i32 %2, 3
  %shr4 = and i32 %2, 31
  %and = and i32 %shr4, %3
  %conv = trunc i32 %and to i8
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcon_ch1_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %cleanup.1.i.for.cond2.preheader.i_crit_edge, %entry
  %indvars.iv.i = phi i32 [ 1, %entry ], [ %indvars.iv.next.i, %cleanup.1.i.for.cond2.preheader.i_crit_edge ]
  %best_m.056.i = phi i8 [ 0, %entry ], [ %best_m.3.1.i, %cleanup.1.i.for.cond2.preheader.i_crit_edge ]
  %best_rate.055.i = phi i32 [ 0, %entry ], [ %best_rate.3.1.i, %cleanup.1.i.for.cond2.preheader.i_crit_edge ]
  %div8.i = udiv i32 %parent_rate, %indvars.iv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %div8.i, i32 %rate)
  %cmp11.i = icmp ugt i32 %div8.i, %rate
  br i1 %cmp11.i, label %for.cond2.preheader.i.cleanup.i_crit_edge, label %if.end.i

for.cond2.preheader.i.cleanup.i_crit_edge:        ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

if.end.i:                                         ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.055.i)
  %tobool.not.i = icmp eq i32 %best_rate.055.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.then16.i_crit_edge, label %lor.lhs.false.i

if.end.i.if.then16.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %sub.i = sub i32 %rate, %div8.i
  %sub13.i = sub i32 %rate, %best_rate.055.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub13.i)
  %cmp14.i = icmp ult i32 %sub.i, %sub13.i
  br i1 %cmp14.i, label %lor.lhs.false.i.if.then16.i_crit_edge, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.end.i.if.then16.i_crit_edge
  %0 = trunc i32 %indvars.iv.i to i8
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.then16.i, %lor.lhs.false.i.cleanup.i_crit_edge, %for.cond2.preheader.i.cleanup.i_crit_edge
  %best_rate.3.i = phi i32 [ %best_rate.055.i, %for.cond2.preheader.i.cleanup.i_crit_edge ], [ %div8.i, %if.then16.i ], [ %best_rate.055.i, %lor.lhs.false.i.cleanup.i_crit_edge ]
  %best_m.3.i = phi i8 [ %best_m.056.i, %for.cond2.preheader.i.cleanup.i_crit_edge ], [ %0, %if.then16.i ], [ %best_m.056.i, %lor.lhs.false.i.cleanup.i_crit_edge ]
  %div10.159.i = lshr i32 %div8.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div10.159.i, i32 %rate)
  %cmp11.1.i = icmp ugt i32 %div10.159.i, %rate
  br i1 %cmp11.1.i, label %cleanup.i.cleanup.1.i_crit_edge, label %if.end.1.i

cleanup.i.cleanup.1.i_crit_edge:                  ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

if.end.1.i:                                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %best_rate.3.i)
  %tobool.not.1.i = icmp eq i32 %best_rate.3.i, 0
  br i1 %tobool.not.1.i, label %if.end.1.i.if.then16.1.i_crit_edge, label %lor.lhs.false.1.i

if.end.1.i.if.then16.1.i_crit_edge:               ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.1.i

lor.lhs.false.1.i:                                ; preds = %if.end.1.i
  %sub.1.i = sub i32 %rate, %div10.159.i
  %sub13.1.i = sub i32 %rate, %best_rate.3.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.1.i, i32 %sub13.1.i)
  %cmp14.1.i = icmp ult i32 %sub.1.i, %sub13.1.i
  br i1 %cmp14.1.i, label %lor.lhs.false.1.i.if.then16.1.i_crit_edge, label %lor.lhs.false.1.i.cleanup.1.i_crit_edge

lor.lhs.false.1.i.cleanup.1.i_crit_edge:          ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.1.i

lor.lhs.false.1.i.if.then16.1.i_crit_edge:        ; preds = %lor.lhs.false.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then16.1.i

if.then16.1.i:                                    ; preds = %lor.lhs.false.1.i.if.then16.1.i_crit_edge, %if.end.1.i.if.then16.1.i_crit_edge
  %1 = trunc i32 %indvars.iv.i to i8
  br label %cleanup.1.i

cleanup.1.i:                                      ; preds = %if.then16.1.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge, %cleanup.i.cleanup.1.i_crit_edge
  %best_rate.3.1.i = phi i32 [ %best_rate.3.i, %cleanup.i.cleanup.1.i_crit_edge ], [ %div10.159.i, %if.then16.1.i ], [ %best_rate.3.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge ]
  %best_m.3.1.i = phi i8 [ %best_m.3.i, %cleanup.i.cleanup.1.i_crit_edge ], [ %1, %if.then16.1.i ], [ %best_m.3.i, %lor.lhs.false.1.i.cleanup.1.i_crit_edge ]
  %indvars.iv.next.i = add nuw nsw i32 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i32 %indvars.iv.next.i, 16
  br i1 %exitcond.not.i, label %tcon_ch1_calc_divider.exit, label %cleanup.1.i.for.cond2.preheader.i_crit_edge

cleanup.1.i.for.cond2.preheader.i_crit_edge:      ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader.i

tcon_ch1_calc_divider.exit:                       ; preds = %cleanup.1.i
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %reg7 = getelementptr inbounds %struct.tcon_ch1_clk, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg7 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg7, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !38
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !49
  %5 = and i32 %4, -252182529
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = add i8 %best_m.3.1.i, 15
  %8 = and i8 %7, 15
  %and12 = zext i8 %8 to i32
  %or = or i32 %6, %and12
  %or13 = or i32 %or, 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !50
  tail call void @arm_heavy_mb() #7
  %9 = tail call i32 @llvm.bswap.i32(i32 %or13)
  %10 = ptrtoint ptr %reg7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg7, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %9) #7, !srcloc !41
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent_by_index(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !19, !20, !21, !23, !24, !25, !27}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @__of_table_tcon_ch1, !1, !"__of_table_tcon_ch1", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 287, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 235, i32 32}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 239, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tcon_ch1_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @tcon_ch1_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 245, i32 3}
!12 = !{ptr @tcon_ch1_setup._entry.4, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tcon_ch1_setup._entry_ptr.6, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @tcon_ch1_setup.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 261, i32 2}
!16 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 265, i32 3}
!19 = !{ptr @tcon_ch1_setup._entry.8, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @tcon_ch1_setup._entry_ptr.10, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 271, i32 3}
!23 = !{ptr @tcon_ch1_setup._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @tcon_ch1_setup._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/linux/of.h", i32 261, i32 30}
!27 = !{ptr @tcon_ch1_ops, !28, !"tcon_ch1_ops", i1 false, i1 false}
!28 = !{!"../drivers/clk/sunxi/clk-sun4i-tcon-ch1.c", i32 211, i32 29}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!38 = !{i64 4031477}
!39 = !{i64 2152530567}
!40 = !{i64 2152530941}
!41 = !{i64 4031059}
!42 = !{i64 2152528033}
!43 = !{i64 2152528407}
!44 = !{i64 2152532747}
!45 = !{i64 2152538599}
!46 = !{i64 2152536552}
!47 = !{i64 2152536766}
!48 = !{i64 2152534554}
!49 = !{i64 2152540680}
!50 = !{i64 2152541062}
