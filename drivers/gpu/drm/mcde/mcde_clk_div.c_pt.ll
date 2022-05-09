; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/mcde/mcde_clk_div.c_pt.bc'
source_filename = "../drivers/gpu/drm/mcde/mcde_clk_div.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.mcde = type { %struct.drm_device, ptr, ptr, ptr, ptr, %struct.drm_simple_display_pipe, ptr, i8, i16, i32, i32, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, ptr, ptr }
%struct.drm_device = type { i32, %struct.kref, ptr, %struct.anon.78, ptr, ptr, ptr, ptr, i8, ptr, i32, i8, ptr, ptr, %struct.mutex, %struct.mutex, %struct.atomic_t, %struct.mutex, %struct.list_head, %struct.list_head, %struct.mutex, %struct.list_head, i8, ptr, %struct.spinlock, %struct.spinlock, i32, %struct.list_head, %struct.spinlock, i32, %struct.drm_mode_config, %struct.mutex, %struct.idr, ptr, ptr, i32, ptr, %struct.list_head, ptr, %struct.list_head, %struct.mutex, %struct.idr, %struct.list_head, %struct.drm_open_hash, %struct.list_head, ptr, i32, i32, %struct.spinlock, i32, %struct.atomic_t, %struct.anon.84, ptr, i32, ptr, i8, i32 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.anon.78 = type { %struct.list_head, ptr, %struct.spinlock }
%struct.drm_mode_config = type { %struct.mutex, %struct.drm_modeset_lock, ptr, %struct.mutex, %struct.idr, %struct.idr, %struct.mutex, i32, %struct.list_head, %struct.spinlock, i32, %struct.ida, %struct.list_head, %struct.llist_head, %struct.work_struct, i32, %struct.list_head, i32, %struct.list_head, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, ptr, i32, i8, i8, i8, %struct.delayed_work, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, ptr, i32, i32, ptr, ptr }
%struct.drm_modeset_lock = type { %struct.ww_mutex, %struct.list_head }
%struct.ww_mutex = type { %struct.mutex, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.llist_head = type { ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.drm_open_hash = type { ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.anon.84 = type { i32, ptr }
%struct.drm_simple_display_pipe = type { %struct.drm_crtc, %struct.drm_plane, %struct.drm_encoder, ptr, ptr }
%struct.drm_crtc = type { ptr, ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, ptr, ptr, i32, i32, i32, i8, %struct.drm_display_mode, %struct.drm_display_mode, i32, i32, ptr, i32, ptr, ptr, %struct.drm_object_properties, ptr, ptr, %struct.list_head, %struct.spinlock, ptr, %struct.drm_crtc_crc, i32, %struct.spinlock, i32, [32 x i8], ptr }
%struct.drm_mode_object = type { i32, i32, ptr, %struct.kref, ptr }
%struct.drm_display_mode = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i8, i8, %struct.list_head, [32 x i8], i32, i32 }
%struct.drm_object_properties = type { i32, [24 x ptr], [24 x i64] }
%struct.drm_crtc_crc = type { %struct.spinlock, ptr, i8, i8, ptr, i32, i32, i32, %struct.wait_queue_head }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.drm_plane = type { ptr, %struct.list_head, ptr, %struct.drm_modeset_lock, %struct.drm_mode_object, i32, ptr, i32, i8, ptr, i32, ptr, ptr, ptr, ptr, %struct.drm_object_properties, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.drm_encoder = type { ptr, %struct.list_head, %struct.drm_mode_object, ptr, i32, i32, i32, i32, ptr, %struct.list_head, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mcde_clk_div = type { %struct.clk_hw, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }

@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fifoa\00", [26 x i8] zeroinitializer }, align 32
@mcde_clk_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @mcde_clk_div_enable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mcde_clk_div_recalc_rate, ptr @mcde_clk_div_round_rate, ptr null, ptr null, ptr null, ptr @mcde_clk_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"fifob\00", [26 x i8] zeroinitializer }, align 32
@mcde_init_clock_divider.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"&mcde->fifo_crx1_lock\00", [42 x i8] zeroinitializer }, align 32
@mcde_init_clock_divider._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 176, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error registering FIFO A clock divider\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mcde_init_clock_divider\00", [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/gpu/drm/mcde/mcde_clk_div.c\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcde_init_clock_divider._entry_ptr = internal global ptr @mcde_init_clock_divider._entry, section ".printk_index", align 4
@mcde_init_clock_divider._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 186, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"error registering FIFO B clock divider\0A\00", [56 x i8] zeroinitializer }, align 32
@mcde_init_clock_divider._entry_ptr.10 = internal global ptr @mcde_init_clock_divider._entry.8, section ".printk_index", align 4
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 145, i32 11 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"mcde_clk_div_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 131, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 152, i32 11 }
@___asan_gen_.20 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 160, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 176, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.48 = private constant [39 x i8] c"../drivers/gpu/drm/mcde/mcde_clk_div.c\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.48, i32 186, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @mcde_init_clock_divider._entry, ptr @mcde_init_clock_divider._entry.8, ptr @mcde_init_clock_divider._entry_ptr, ptr @mcde_init_clock_divider._entry_ptr.10, ptr @.str, ptr @mcde_clk_div_ops, ptr @.str.1, ptr @mcde_init_clock_divider.__key, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_clk_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_init_clock_divider.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_init_clock_divider._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcde_init_clock_divider._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mcde_init_clock_divider(ptr noundef %mcde) local_unnamed_addr #0 align 64 {
entry:
  %parent_name = alloca ptr, align 4
  %fifoa_init = alloca %struct.clk_init_data, align 4
  %fifob_init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 1
  %0 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #5
  %2 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_name, align 4, !annotation !30
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fifoa_init) #5
  %3 = getelementptr inbounds i8, ptr %fifoa_init, i32 20
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %fifoa_init to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @.str, ptr %fifoa_init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %fifoa_init, i32 0, i32 1
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @mcde_clk_div_ops, ptr %ops, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %fifoa_init, i32 0, i32 2
  %7 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %parent_name, ptr %parent_names, align 4
  %parent_data = getelementptr inbounds %struct.clk_init_data, ptr %fifoa_init, i32 0, i32 3
  %8 = ptrtoint ptr %parent_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %parent_data, align 4
  %parent_hws = getelementptr inbounds %struct.clk_init_data, ptr %fifoa_init, i32 0, i32 4
  %9 = ptrtoint ptr %parent_hws to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %parent_hws, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %fifoa_init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %fifoa_init, i32 0, i32 6
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %fifob_init) #5
  %12 = getelementptr inbounds i8, ptr %fifob_init, i32 20
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %12, align 4
  %14 = ptrtoint ptr %fifob_init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @.str.1, ptr %fifob_init, align 4
  %ops3 = getelementptr inbounds %struct.clk_init_data, ptr %fifob_init, i32 0, i32 1
  %15 = ptrtoint ptr %ops3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @mcde_clk_div_ops, ptr %ops3, align 4
  %parent_names4 = getelementptr inbounds %struct.clk_init_data, ptr %fifob_init, i32 0, i32 2
  %16 = ptrtoint ptr %parent_names4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %parent_name, ptr %parent_names4, align 4
  %parent_data5 = getelementptr inbounds %struct.clk_init_data, ptr %fifob_init, i32 0, i32 3
  %17 = ptrtoint ptr %parent_data5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %parent_data5, align 4
  %parent_hws6 = getelementptr inbounds %struct.clk_init_data, ptr %fifob_init, i32 0, i32 4
  %18 = ptrtoint ptr %parent_hws6 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %parent_hws6, align 4
  %num_parents7 = getelementptr inbounds %struct.clk_init_data, ptr %fifob_init, i32 0, i32 5
  %19 = ptrtoint ptr %num_parents7 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %num_parents7, align 4
  %flags8 = getelementptr inbounds %struct.clk_init_data, ptr %fifob_init, i32 0, i32 6
  %20 = ptrtoint ptr %flags8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %flags8, align 4
  %fifo_crx1_lock = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 18
  call void @__raw_spin_lock_init(ptr noundef %fifo_crx1_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @mcde_init_clock_divider.__key, i16 noundef signext 3) #5
  %lcd_clk = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 14
  %21 = ptrtoint ptr %lcd_clk to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %lcd_clk, align 4
  %call9 = call ptr @__clk_get_name(ptr noundef %22) #5
  %23 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9, ptr %parent_name, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i69 = call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 24, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i69, null
  br i1 %tobool12.not, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %mcde15 = getelementptr inbounds %struct.mcde_clk_div, ptr %call.i, i32 0, i32 1
  %24 = ptrtoint ptr %mcde15 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %mcde, ptr %mcde15, align 4
  %cr = getelementptr inbounds %struct.mcde_clk_div, ptr %call.i, i32 0, i32 2
  %25 = ptrtoint ptr %cr to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 2052, ptr %cr, align 4
  %init = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %26 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %fifoa_init, ptr %init, align 4
  %call17 = call i32 @devm_clk_hw_register(ptr noundef %1, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end23, label %do.end22

do.end22:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.3) #8
  br label %cleanup

if.end23:                                         ; preds = %if.end14
  %clk = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 1
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  %fifoa_clk = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 16
  %29 = ptrtoint ptr %fifoa_clk to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %fifoa_clk, align 4
  %mcde25 = getelementptr inbounds %struct.mcde_clk_div, ptr %call.i69, i32 0, i32 1
  %30 = ptrtoint ptr %mcde25 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %mcde, ptr %mcde25, align 4
  %cr26 = getelementptr inbounds %struct.mcde_clk_div, ptr %call.i69, i32 0, i32 2
  %31 = ptrtoint ptr %cr26 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2564, ptr %cr26, align 4
  %init28 = getelementptr inbounds %struct.clk_hw, ptr %call.i69, i32 0, i32 2
  %32 = ptrtoint ptr %init28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %fifob_init, ptr %init28, align 4
  %call30 = call i32 @devm_clk_hw_register(ptr noundef %1, ptr noundef nonnull %call.i69) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end36, label %do.end35

do.end35:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %1, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end36:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %clk38 = getelementptr inbounds %struct.clk_hw, ptr %call.i69, i32 0, i32 1
  %33 = ptrtoint ptr %clk38 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %clk38, align 4
  %fifob_clk = getelementptr inbounds %struct.mcde, ptr %mcde, i32 0, i32 17
  %35 = ptrtoint ptr %fifob_clk to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %fifob_clk, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %do.end35, %do.end22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call17, %do.end22 ], [ %call30, %do.end35 ], [ 0, %if.end36 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fifob_init) #5
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %fifoa_init) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_clk_div_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mcde1 = getelementptr inbounds %struct.mcde_clk_div, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %mcde1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcde1, align 4
  %fifo_crx1_lock = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 18
  tail call void @_raw_spin_lock(ptr noundef %fifo_crx1_lock) #5
  %regs = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %cr = getelementptr inbounds %struct.mcde_clk_div, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cr, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #5, !srcloc !31
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !32
  %7 = and i32 %6, 14745503
  %8 = or i32 %7, 64
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %cr_div = getelementptr inbounds %struct.mcde_clk_div, ptr %hw, i32 0, i32 3
  %10 = ptrtoint ptr %cr_div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cr_div, align 4
  %or7 = or i32 %9, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !33
  tail call void @arm_heavy_mb() #5
  %12 = tail call i32 @llvm.bswap.i32(i32 %or7)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %15 = ptrtoint ptr %cr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cr, align 4
  %add.ptr10 = getelementptr i8, ptr %14, i32 %16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %12) #5, !srcloc !34
  tail call void @_raw_spin_unlock(ptr noundef %fifo_crx1_lock) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_clk_div_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %mcde1 = getelementptr inbounds %struct.mcde_clk_div, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %mcde1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mcde1, align 4
  %epod = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 19
  %2 = ptrtoint ptr %epod to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %epod, align 8
  %call = tail call i32 @regulator_is_enabled(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %cond.end14, label %if.end192

cond.end14:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %conv = zext i32 %prate to i64
  %sub = add nuw nsw i64 %conv, 1
  %shr = lshr i64 %sub, 1
  %extract.t = trunc i64 %shr to i32
  br label %cleanup

if.end192:                                        ; preds = %entry
  %regs = getelementptr inbounds %struct.mcde, ptr %1, i32 0, i32 12
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %cr193 = getelementptr inbounds %struct.mcde_clk_div, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %cr193 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cr193, align 4
  %add.ptr194 = getelementptr i8, ptr %5, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr194) #5, !srcloc !31
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !35
  %and198 = and i32 %9, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and198)
  %tobool199.not = icmp eq i32 %and198, 0
  br i1 %tobool199.not, label %if.end201, label %if.end192.cleanup_crit_edge

if.end192.cleanup_crit_edge:                      ; preds = %if.end192
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end201:                                        ; preds = %if.end192
  %and202 = and i32 %9, 1023
  %add203 = add nuw nsw i32 %and202, 2
  %conv205 = zext i32 %prate to i64
  %10 = add nuw nsw i32 %and202, 1
  %add207 = zext i32 %10 to i64
  %sub208 = add nuw nsw i64 %add207, %conv205
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub208)
  %cmp410 = icmp ult i64 %sub208, 4294967296
  br i1 %cmp410, label %if.then418, label %if.else424, !prof !36

if.then418:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  %conv419 = trunc i64 %sub208 to i32
  %div422 = udiv i32 %conv419, %add203
  br label %cleanup

if.else424:                                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #7
  %11 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add203, i64 %sub208) #9, !srcloc !37
  %asmresult1.i = extractvalue { i64, i64 } %11, 1
  %extract.t632 = trunc i64 %asmresult1.i to i32
  br label %cleanup

cleanup:                                          ; preds = %if.else424, %if.then418, %if.end192.cleanup_crit_edge, %cond.end14
  %retval.0 = phi i32 [ %extract.t, %cond.end14 ], [ %prate, %if.end192.cleanup_crit_edge ], [ %div422, %if.then418 ], [ %extract.t632, %if.else424 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_clk_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  br label %for.body.i

for.body.i:                                       ; preds = %if.end192.i.for.body.i_crit_edge, %entry
  %best_div.0330.i = phi i32 [ 1, %entry ], [ %best_div.1.i, %if.end192.i.for.body.i_crit_edge ]
  %div.0328.i = phi i32 [ 1, %entry ], [ %inc.i, %if.end192.i.for.body.i_crit_edge ]
  %best_prate.0327.i = phi i32 [ 0, %entry ], [ %best_prate.1.i, %if.end192.i.for.body.i_crit_edge ]
  %best_diff.0326.i = phi i32 [ -1, %entry ], [ %2, %if.end192.i.for.body.i_crit_edge ]
  %mul.i = mul i32 %div.0328.i, %rate
  %call1.i = tail call i32 @clk_hw_round_rate(ptr noundef %call.i, i32 noundef %mul.i) #5
  %conv.i = zext i32 %call1.i to i64
  %conv2.i = zext i32 %div.0328.i to i64
  %add.i = add nsw i64 %conv2.i, -1
  %sub.i = add nuw nsw i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp178.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp178.i, label %if.then182.i, label %if.else188.i, !prof !36

if.then182.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv183.i = trunc i64 %sub.i to i32
  %div186.i = udiv i32 %conv183.i, %div.0328.i
  br label %if.end192.i

if.else188.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.0328.i, i64 %sub.i) #9, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %0, 1
  %extract.t324.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else188.i, %if.then182.i
  %_tmp.0.off0.i = phi i32 [ %div186.i, %if.then182.i ], [ %extract.t324.i, %if.else188.i ]
  %sub196.i = sub i32 %rate, %_tmp.0.off0.i
  %1 = tail call i32 @llvm.abs.i32(i32 %sub196.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %best_diff.0326.i)
  %cmp205.i = icmp ult i32 %1, %best_diff.0326.i
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %best_diff.0326.i) #5
  %best_prate.1.i = select i1 %cmp205.i, i32 %call1.i, i32 %best_prate.0327.i
  %best_div.1.i = select i1 %cmp205.i, i32 %div.0328.i, i32 %best_div.0330.i
  %inc.i = add nuw nsw i32 %div.0328.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1023
  br i1 %exitcond.not.i, label %mcde_clk_div_choose_div.exit, label %if.end192.i.for.body.i_crit_edge

if.end192.i.for.body.i_crit_edge:                 ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mcde_clk_div_choose_div.exit:                     ; preds = %if.end192.i
  %3 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %best_prate.1.i, ptr %prate, align 4
  %conv = zext i32 %best_prate.1.i to i64
  %conv1 = sext i32 %best_div.1.i to i64
  %add = add nsw i64 %conv1, -1
  %sub = add nsw i64 %add, %conv
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub)
  %cmp171 = icmp ult i64 %sub, 4294967296
  br i1 %cmp171, label %if.then175, label %if.else181, !prof !36

if.then175:                                       ; preds = %mcde_clk_div_choose_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  %conv176 = trunc i64 %sub to i32
  %div179 = udiv i32 %conv176, %best_div.1.i
  br label %if.end185

if.else181:                                       ; preds = %mcde_clk_div_choose_div.exit
  call void @__sanitizer_cov_trace_pc() #7
  %4 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %best_div.1.i, i64 %sub) #9, !srcloc !37
  %asmresult1.i = extractvalue { i64, i64 } %4, 1
  %extract.t296 = trunc i64 %asmresult1.i to i32
  br label %if.end185

if.end185:                                        ; preds = %if.else181, %if.then175
  %_tmp.0.off0 = phi i32 [ %div179, %if.then175 ], [ %extract.t296, %if.else181 ]
  ret i32 %_tmp.0.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcde_clk_div_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #5
  %conv.i = zext i32 %prate to i64
  br label %for.body.i

for.body.i:                                       ; preds = %if.end192.i.for.body.i_crit_edge, %entry
  %best_div.0330.i = phi i32 [ 1, %entry ], [ %best_div.1.i, %if.end192.i.for.body.i_crit_edge ]
  %div.0328.i = phi i32 [ 1, %entry ], [ %inc.i, %if.end192.i.for.body.i_crit_edge ]
  %best_diff.0326.i = phi i32 [ -1, %entry ], [ %2, %if.end192.i.for.body.i_crit_edge ]
  %conv2.i = zext i32 %div.0328.i to i64
  %add.i = add nsw i64 %conv2.i, -1
  %sub.i = add nuw nsw i64 %add.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %sub.i)
  %cmp178.i = icmp ult i64 %sub.i, 4294967296
  br i1 %cmp178.i, label %if.then182.i, label %if.else188.i, !prof !36

if.then182.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv183.i = trunc i64 %sub.i to i32
  %div186.i = udiv i32 %conv183.i, %div.0328.i
  br label %if.end192.i

if.else188.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %0 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div.0328.i, i64 %sub.i) #9, !srcloc !37
  %asmresult1.i.i = extractvalue { i64, i64 } %0, 1
  %extract.t324.i = trunc i64 %asmresult1.i.i to i32
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else188.i, %if.then182.i
  %_tmp.0.off0.i = phi i32 [ %div186.i, %if.then182.i ], [ %extract.t324.i, %if.else188.i ]
  %sub196.i = sub i32 %rate, %_tmp.0.off0.i
  %1 = tail call i32 @llvm.abs.i32(i32 %sub196.i, i1 false) #5
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %best_diff.0326.i)
  %cmp205.i = icmp ult i32 %1, %best_diff.0326.i
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 %best_diff.0326.i) #5
  %best_div.1.i = select i1 %cmp205.i, i32 %div.0328.i, i32 %best_div.0330.i
  %inc.i = add nuw nsw i32 %div.0328.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1023
  br i1 %exitcond.not.i, label %mcde_clk_div_choose_div.exit, label %if.end192.i.for.body.i_crit_edge

if.end192.i.for.body.i_crit_edge:                 ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

mcde_clk_div_choose_div.exit:                     ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %best_div.1.i)
  %cmp = icmp eq i32 %best_div.1.i, 1
  %sub = add i32 %best_div.1.i, 1022
  %and = and i32 %sub, 1023
  %cr.0 = select i1 %cmp, i32 536870912, i32 %and
  %cr_div = getelementptr inbounds %struct.mcde_clk_div, ptr %hw, i32 0, i32 3
  %3 = ptrtoint ptr %cr_div to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %cr.0, ptr %cr_div, align 4
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/mcde/mcde_clk_div.c", i32 145, i32 11}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/mcde/mcde_clk_div.c", i32 152, i32 11}
!4 = !{ptr @mcde_init_clock_divider.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/mcde/mcde_clk_div.c", i32 160, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/mcde/mcde_clk_div.c", i32 176, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @mcde_init_clock_divider._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @mcde_init_clock_divider._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/mcde/mcde_clk_div.c", i32 186, i32 3}
!17 = !{ptr @mcde_init_clock_divider._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @mcde_init_clock_divider._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @mcde_clk_div_ops, !20, !"mcde_clk_div_ops", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/mcde/mcde_clk_div.c", i32 131, i32 29}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{!"auto-init"}
!31 = !{i64 5591348}
!32 = !{i64 2156458300}
!33 = !{i64 2156458713}
!34 = !{i64 5590930}
!35 = !{i64 2156481559}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2148944702, i64 2148944982, i64 2148945316, i64 2148945650}
