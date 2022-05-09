; ModuleID = '/llk/IR_all_yes/drivers/w1/slaves/w1_ds250x.c_pt.bc'
source_filename = "../drivers/w1/slaves/w1_ds250x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.w1_family = type { %struct.list_head, i8, ptr, ptr, %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.w1_family_ops = type { ptr, ptr, ptr, ptr }
%struct.nvmem_config = type { ptr, ptr, i32, ptr, ptr, ptr, i32, ptr, i32, i32, i8, i8, i8, ptr, i8, ptr, ptr, ptr, i32, i32, i32, ptr, i8, ptr }
%struct.w1_slave = type { ptr, [32 x i8], %struct.list_head, %struct.w1_reg_num, %struct.atomic_t, i32, i32, ptr, ptr, ptr, %struct.device, ptr }
%struct.w1_reg_num = type { i64 }
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
%struct.w1_eprom_data = type { i32, ptr, [2048 x i8], [2 x i32], [64 x i8] }
%struct.w1_master = type { %struct.list_head, ptr, [32 x i8], %struct.mutex, %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, i32, i32, i64, %struct.atomic_t, ptr, i32, i32, i32, ptr, %struct.mutex, %struct.mutex, ptr, %struct.device, ptr, i32 }
%struct.w1_bus_master = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@w1_family_09 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 9, ptr @w1_eprom_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_family_0b = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 11, ptr @w1_eprom_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_family_89 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 -119, ptr @w1_eprom_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@w1_family_91 = internal global { %struct.w1_family, [40 x i8] } { %struct.w1_family { %struct.list_head zeroinitializer, i8 -111, ptr @w1_eprom_fops, ptr null, %struct.atomic_t zeroinitializer }, [40 x i8] zeroinitializer }, align 32
@__initcall__kmod_w1_ds250x__183_281_w1_ds250x_init6 = internal global ptr @w1_ds250x_init, section ".initcall6.init", align 4
@__exitcall_w1_ds250x_exit = internal global ptr @w1_ds250x_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [60 x i8] c"w1_ds250x.author=Thomas Bogendoerfer <tbogendoerfe@suse.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [66 x i8] c"w1_ds250x.description=w1 family driver for DS250x Add Only Memory\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [43 x i8] c"w1_ds250x.file=drivers/w1/slaves/w1_ds250x\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [22 x i8] c"w1_ds250x.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [31 x i8] c"w1_ds250x.alias=w1-family-0x09\00", section ".modinfo", align 1
@__UNIQUE_ID_alias189 = internal constant [31 x i8] c"w1_ds250x.alias=w1-family-0x0b\00", section ".modinfo", align 1
@__UNIQUE_ID_alias190 = internal constant [31 x i8] c"w1_ds250x.alias=w1-family-0x91\00", section ".modinfo", align 1
@__UNIQUE_ID_alias191 = internal constant [31 x i8] c"w1_ds250x.alias=w1-family-0x89\00", section ".modinfo", align 1
@w1_eprom_fops = internal constant { %struct.w1_family_ops, [16 x i8] } { %struct.w1_family_ops { ptr @w1_eprom_add_slave, ptr null, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s-%02x-%012llx\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"%02x-%012llx\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 9, i64 11, i64 137, i64 145]
@___asan_gen_.2 = private unnamed_addr constant [13 x i8] c"w1_family_09\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 222, i32 25 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"w1_family_0b\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 227, i32 25 }
@___asan_gen_.8 = private unnamed_addr constant [13 x i8] c"w1_family_89\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 232, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"w1_family_91\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 237, i32 25 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"w1_eprom_fops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 218, i32 35 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 202, i32 5 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private constant [33 x i8] c"../drivers/w1/slaves/w1_ds250x.c\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 207, i32 5 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_alias189, ptr @__UNIQUE_ID_alias190, ptr @__UNIQUE_ID_alias191, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_w1_ds250x_exit, ptr @__initcall__kmod_w1_ds250x__183_281_w1_ds250x_init6, ptr @w1_ds250x_exit, ptr @w1_family_09, ptr @w1_family_0b, ptr @w1_family_89, ptr @w1_family_91, ptr @w1_eprom_fops, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_09 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_0b to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_family_91 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @w1_eprom_fops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @w1_ds250x_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_09) #5
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_0b) #5
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_89) #5
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_91) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_unregister_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds250x_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_09) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_0b) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_0b_crit_edge

if.end.err_0b_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_0b

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_89) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end8, label %if.end4.err_89_crit_edge

if.end4.err_89_crit_edge:                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_89

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @w1_register_family(ptr noundef nonnull @w1_family_91) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %err_91

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

err_91:                                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_89) #5
  br label %err_89

err_89:                                           ; preds = %err_91, %if.end4.err_89_crit_edge
  %err.0 = phi i32 [ %call5, %if.end4.err_89_crit_edge ], [ %call9, %err_91 ]
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_0b) #5
  br label %err_0b

err_0b:                                           ; preds = %err_89, %if.end.err_0b_crit_edge
  %err.1 = phi i32 [ %call1, %if.end.err_0b_crit_edge ], [ %err.0, %err_89 ]
  tail call void @w1_unregister_family(ptr noundef nonnull @w1_family_09) #5
  br label %cleanup

cleanup:                                          ; preds = %err_0b, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err_0b ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_eprom_add_slave(ptr noundef %sl) #2 align 64 {
entry:
  %nvmem_cfg = alloca %struct.nvmem_config, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %nvmem_cfg) #5
  %0 = getelementptr inbounds i8, ptr %nvmem_cfg, i32 40
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %dev1 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 10
  %2 = ptrtoint ptr %nvmem_cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %dev1, ptr %nvmem_cfg, align 4
  %name = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 1
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %name, align 4
  %id = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 2
  %4 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %id, align 4
  %owner = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 3
  %type = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 9
  %5 = call ptr @memset(ptr %owner, i32 0, i32 24)
  %6 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %type, align 4
  %read_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 10
  %7 = ptrtoint ptr %read_only to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %read_only, align 4
  %root_only = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 11
  %8 = ptrtoint ptr %root_only to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %root_only, align 1
  %ignore_wp = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 12
  %9 = ptrtoint ptr %ignore_wp to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %ignore_wp, align 2
  %of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 13
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %of_node, align 4
  %no_of_node = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 14
  %11 = ptrtoint ptr %no_of_node to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %no_of_node, align 4
  %reg_read = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 15
  %12 = ptrtoint ptr %reg_read to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @w1_nvmem_read, ptr %reg_read, align 4
  %reg_write = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 16
  %13 = ptrtoint ptr %reg_write to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %reg_write, align 4
  %cell_post_process = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 17
  %14 = ptrtoint ptr %cell_post_process to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cell_post_process, align 4
  %size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 18
  %15 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %size, align 4
  %word_size = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 19
  %16 = ptrtoint ptr %word_size to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %word_size, align 4
  %stride = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 20
  %17 = ptrtoint ptr %stride to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %stride, align 4
  %priv = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 21
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %sl, ptr %priv, align 4
  %compat = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 22
  %19 = ptrtoint ptr %compat to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %compat, align 4
  %base_dev = getelementptr inbounds %struct.nvmem_config, ptr %nvmem_cfg, i32 0, i32 23
  %20 = ptrtoint ptr %base_dev to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %base_dev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 2128, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %21 = ptrtoint ptr %family_data to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %family_data, align 4
  %family = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 8
  %22 = ptrtoint ptr %family to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %family, align 8
  %fid = getelementptr inbounds %struct.w1_family, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %fid to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %fid, align 4
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %if.end.sw.epilog_crit_edge [
    i8 -111, label %if.end.sw.epilog.sink.split_crit_edge
    i8 9, label %if.end.sw.bb4_crit_edge
    i8 -119, label %if.end.sw.bb4_crit_edge64
    i8 11, label %sw.bb7
  ]

if.end.sw.bb4_crit_edge64:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.bb4_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb4

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end.sw.bb4_crit_edge, %if.end.sw.bb4_crit_edge64
  br label %sw.epilog.sink.split

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb7, %sw.bb4, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 2048, %sw.bb7 ], [ 128, %sw.bb4 ], [ 64, %if.end.sw.epilog.sink.split_crit_edge ]
  %w1_ds2505_read_page.sink = phi ptr [ @w1_ds2505_read_page, %sw.bb7 ], [ @w1_ds2502_read_page, %sw.bb4 ], [ @w1_ds2502_read_page, %if.end.sw.epilog.sink.split_crit_edge ]
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %.sink, ptr %call.i, align 4
  %read9 = getelementptr inbounds %struct.w1_eprom_data, ptr %call.i, i32 0, i32 1
  %28 = ptrtoint ptr %read9 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %w1_ds2505_read_page.sink, ptr %read9, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %29 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %master, align 4
  %bus_master = getelementptr inbounds %struct.w1_master, ptr %30, i32 0, i32 24
  %31 = ptrtoint ptr %bus_master to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bus_master, align 8
  %dev_id = getelementptr inbounds %struct.w1_bus_master, ptr %32, i32 0, i32 12
  %33 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev_id, align 4
  %tobool10.not = icmp eq ptr %34, null
  %nvmem_name20 = getelementptr inbounds %struct.w1_eprom_data, ptr %call.i, i32 0, i32 4
  %reg_num22 = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 3
  %35 = ptrtoint ptr %reg_num22 to i32
  call void @__asan_load8_noabort(i32 %35)
  %bf.load23 = load i64, ptr %reg_num22, align 8
  %36 = trunc i64 %bf.load23 to i32
  %conv25 = and i32 %36, 255
  %bf.lshr28 = lshr i64 %bf.load23, 8
  %bf.clear29 = and i64 %bf.lshr28, 281474976710655
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call19 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %nvmem_name20, i32 noundef 64, ptr noundef nonnull @.str, ptr noundef nonnull %34, i32 noundef %conv25, i64 noundef %bf.clear29)
  br label %if.end31

if.else:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %nvmem_name20, i32 noundef 64, ptr noundef nonnull @.str.1, i32 noundef %conv25, i64 noundef %bf.clear29)
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then11
  %nvmem_name32 = getelementptr inbounds %struct.w1_eprom_data, ptr %call.i, i32 0, i32 4
  %37 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %nvmem_name32, ptr %name, align 4
  %38 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %call.i, align 4
  %40 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %size, align 4
  %call38 = call ptr @devm_nvmem_register(ptr noundef %dev1, ptr noundef nonnull %nvmem_cfg) #5
  %cmp.i.i = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  %41 = ptrtoint ptr %call38 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %41, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end31, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select.i, %if.end31 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %nvmem_cfg) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_nvmem_read(ptr noundef %priv, i32 noundef %off, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %priv, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %off)
  %cmp = icmp ult i32 %3, %off
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %add = add i32 %count, %off
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp1 = icmp ugt i32 %add, %3
  %sub = sub i32 %3, %off
  %spec.select = select i1 %cmp1, i32 %sub, i32 %count
  %div28 = lshr i32 %off, 5
  %read = getelementptr inbounds %struct.w1_eprom_data, ptr %1, i32 0, i32 1
  %add7 = add i32 %spec.select, %off
  %div829 = lshr i32 %add7, 5
  br label %do.body

do.body:                                          ; preds = %do.cond.do.body_crit_edge, %if.end
  %i.0 = phi i32 [ %div28, %if.end ], [ %inc, %do.cond.do.body_crit_edge ]
  %4 = ptrtoint ptr %read to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %read, align 4
  %call = tail call i32 %5(ptr noundef %priv, i32 noundef %i.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp4 = icmp slt i32 %call, 0
  br i1 %cmp4, label %do.body.cleanup_crit_edge, label %do.cond

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.cond:                                          ; preds = %do.body
  %inc = add nuw nsw i32 %i.0, 1
  %cmp9 = icmp ult i32 %inc, %div829
  br i1 %cmp9, label %do.cond.do.body_crit_edge, label %do.end

do.cond.do.body_crit_edge:                        ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body

do.end:                                           ; preds = %do.cond
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx = getelementptr %struct.w1_eprom_data, ptr %1, i32 0, i32 2, i32 %off
  %6 = call ptr @memcpy(ptr %buf, ptr %arrayidx, i32 %spec.select)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ], [ %call, %do.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds2502_read_page(ptr noundef %sl, i32 noundef %pageno) #2 align 64 {
entry:
  %buf = alloca [3 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  %mul = shl i32 %pageno, 5
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %buf) #5
  %2 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %buf, align 1, !annotation !42
  %3 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %3, align 1, !annotation !42
  %5 = getelementptr inbounds [3 x i8], ptr %buf, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 -1, ptr %5, align 1, !annotation !42
  %page_present = getelementptr inbounds %struct.w1_eprom_data, ptr %1, i32 0, i32 3
  %div3.i = lshr i32 %pageno, 5
  %arrayidx.i = getelementptr i32, ptr %page_present, i32 %div3.i
  %7 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pageno, 31
  %9 = shl nuw i32 1, %and.i
  %10 = and i32 %8, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %11 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %12, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  %call1 = tail call i32 @w1_reset_select_slave(ptr noundef %sl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end4:                                          ; preds = %if.end
  %13 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -61, ptr %buf, align 1
  %conv = trunc i32 %mul to i8
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %3, align 1
  %15 = lshr i32 %mul, 8
  %conv6 = trunc i32 %15 to i8
  %16 = ptrtoint ptr %5 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6, ptr %5, align 1
  %17 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %18, ptr noundef nonnull %buf, i32 noundef 3) #5
  %19 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %master, align 4
  %call11 = call zeroext i8 @w1_read_8(ptr noundef %20) #5
  %call13 = call zeroext i8 @w1_calc_crc8(ptr noundef nonnull %buf, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call13, i8 %call11)
  %cmp.not = icmp eq i8 %call13, %call11
  br i1 %cmp.not, label %if.end18, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end18:                                         ; preds = %if.end4
  %21 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %master, align 4
  %arrayidx20 = getelementptr %struct.w1_eprom_data, ptr %1, i32 0, i32 2, i32 %mul
  %call21 = call zeroext i8 @w1_read_block(ptr noundef %22, ptr noundef %arrayidx20, i32 noundef 32) #5
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  %call23 = call zeroext i8 @w1_read_8(ptr noundef %24) #5
  %call26 = call zeroext i8 @w1_calc_crc8(ptr noundef %arrayidx20, i32 noundef 32) #5
  call void @__sanitizer_cov_trace_cmp1(i8 %call26, i8 %call23)
  %cmp29.not = icmp eq i8 %call26, %call23
  br i1 %cmp29.not, label %if.end32, label %if.end18.err_crit_edge

if.end18.err_crit_edge:                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end32:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef %pageno, ptr noundef %page_present) #5
  br label %err

err:                                              ; preds = %if.end32, %if.end18.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ -5, %if.end.err_crit_edge ], [ -5, %if.end4.err_crit_edge ], [ -5, %if.end18.err_crit_edge ], [ 0, %if.end32 ]
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master, align 4
  %bus_mutex36 = getelementptr inbounds %struct.w1_master, ptr %26, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex36) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @w1_ds2505_read_page(ptr noundef %sl, i32 noundef %pageno) #2 align 64 {
entry:
  %buf = alloca [6 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %family_data = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 9
  %0 = ptrtoint ptr %family_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %family_data, align 4
  call void @llvm.lifetime.start.p0(i64 6, ptr nonnull %buf) #5
  %2 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 1
  %3 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 2
  %4 = getelementptr inbounds [6 x i8], ptr %buf, i32 0, i32 3
  %page_present = getelementptr inbounds %struct.w1_eprom_data, ptr %1, i32 0, i32 3
  %div3.i = lshr i32 %pageno, 5
  %arrayidx.i = getelementptr i32, ptr %page_present, i32 %div3.i
  %5 = call ptr @memset(ptr %buf, i32 255, i32 6)
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %pageno, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl i32 %pageno, 5
  %master = getelementptr inbounds %struct.w1_slave, ptr %sl, i32 0, i32 7
  %10 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %master, align 4
  %bus_mutex = getelementptr inbounds %struct.w1_master, ptr %11, i32 0, i32 21
  tail call void @mutex_lock_nested(ptr noundef %bus_mutex, i32 noundef 0) #5
  %call176 = call i32 @w1_reset_select_slave(ptr noundef %sl) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call176)
  %tobool2.not77 = icmp eq i32 %call176, 0
  br i1 %tobool2.not77, label %if.end.if.end4_crit_edge, label %if.end.err_crit_edge

if.end.err_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end.if.end4_crit_edge:                         ; preds = %if.end
  br label %if.end4

if.end4:                                          ; preds = %if.end27.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %pgoff.079 = phi i32 [ %mul29, %if.end27.if.end4_crit_edge ], [ %mul, %if.end.if.end4_crit_edge ]
  %redir_retries.078 = phi i32 [ %dec, %if.end27.if.end4_crit_edge ], [ 16, %if.end.if.end4_crit_edge ]
  %12 = ptrtoint ptr %buf to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 -91, ptr %buf, align 1
  %conv = trunc i32 %pgoff.079 to i8
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %conv, ptr %2, align 1
  %14 = lshr i32 %pgoff.079, 8
  %conv6 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %3, align 1
  %16 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %master, align 4
  call void @w1_write_block(ptr noundef %17, ptr noundef nonnull %buf, i32 noundef 3) #5
  %18 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %master, align 4
  %call12 = call zeroext i8 @w1_read_block(ptr noundef %19, ptr noundef %4, i32 noundef 3) #5
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %4, align 1
  %call15 = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef nonnull %buf, i32 noundef 6) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %call15)
  %cmp.not = icmp eq i16 %call15, -20479
  br i1 %cmp.not, label %if.end19, label %if.end4.err_crit_edge

if.end4.err_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end19:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %21)
  %cmp21.not = icmp eq i8 %21, -1
  br i1 %cmp21.not, label %if.end30, label %if.then23

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %redir_retries.078)
  %cmp24 = icmp slt i32 %redir_retries.078, 1
  br i1 %cmp24, label %if.then23.err_crit_edge, label %if.end27

if.then23.err_crit_edge:                          ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end27:                                         ; preds = %if.then23
  %dec = add nsw i32 %redir_retries.078, -1
  %22 = xor i8 %21, -1
  %xor = zext i8 %22 to i32
  %mul29 = shl nuw nsw i32 %xor, 5
  %call1 = call i32 @w1_reset_select_slave(ptr noundef %sl) #5
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end27.if.end4_crit_edge, label %if.end27.err_crit_edge

if.end27.err_crit_edge:                           ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end27.if.end4_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.end30:                                         ; preds = %if.end19
  %23 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %master, align 4
  %arrayidx32 = getelementptr %struct.w1_eprom_data, ptr %1, i32 0, i32 2, i32 %mul
  %call33 = call zeroext i8 @w1_read_block(ptr noundef %24, ptr noundef %arrayidx32, i32 noundef 32) #5
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master, align 4
  %call36 = call zeroext i8 @w1_read_block(ptr noundef %26, ptr noundef nonnull %buf, i32 noundef 2) #5
  %call39 = call zeroext i16 @crc16(i16 noundef zeroext 0, ptr noundef %arrayidx32, i32 noundef 32) #5
  %call41 = call zeroext i16 @crc16(i16 noundef zeroext %call39, ptr noundef nonnull %buf, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 -20479, i16 %call41)
  %cmp43.not = icmp eq i16 %call41, -20479
  br i1 %cmp43.not, label %if.end46, label %if.end30.err_crit_edge

if.end30.err_crit_edge:                           ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  br label %err

if.end46:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #7
  call void @_set_bit(i32 noundef %pageno, ptr noundef %page_present) #5
  br label %err

err:                                              ; preds = %if.end46, %if.end30.err_crit_edge, %if.end27.err_crit_edge, %if.then23.err_crit_edge, %if.end4.err_crit_edge, %if.end.err_crit_edge
  %ret.0 = phi i32 [ -5, %if.end30.err_crit_edge ], [ 0, %if.end46 ], [ -5, %if.end.err_crit_edge ], [ -5, %if.then23.err_crit_edge ], [ -5, %if.end4.err_crit_edge ], [ -5, %if.end27.err_crit_edge ]
  %27 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %master, align 4
  %bus_mutex50 = getelementptr inbounds %struct.w1_master, ptr %28, i32 0, i32 21
  call void @mutex_unlock(ptr noundef %bus_mutex50) #5
  br label %cleanup

cleanup:                                          ; preds = %err, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err ], [ 0, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 6, ptr nonnull %buf) #5
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_nvmem_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_reset_select_slave(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @w1_write_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_8(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_calc_crc8(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @w1_read_block(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @crc16(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @w1_register_family(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__initcall__kmod_w1_ds250x__183_281_w1_ds250x_init6, !1, !"__initcall__kmod_w1_ds250x__183_281_w1_ds250x_init6", i1 false, i1 false}
!1 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 281, i32 1}
!2 = !{ptr @__exitcall_w1_ds250x_exit, !3, !"__exitcall_w1_ds250x_exit", i1 false, i1 false}
!3 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 282, i32 1}
!4 = !{ptr @__UNIQUE_ID_author184, !5, !"__UNIQUE_ID_author184", i1 false, i1 false}
!5 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 284, i32 1}
!6 = !{ptr @__UNIQUE_ID_description185, !7, !"__UNIQUE_ID_description185", i1 false, i1 false}
!7 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 285, i32 1}
!8 = !{ptr @__UNIQUE_ID_file186, !9, !"__UNIQUE_ID_file186", i1 false, i1 false}
!9 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 286, i32 1}
!10 = !{ptr @__UNIQUE_ID_license187, !9, !"__UNIQUE_ID_license187", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_alias188, !12, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!12 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 287, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias189, !14, !"__UNIQUE_ID_alias189", i1 false, i1 false}
!14 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 288, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias190, !16, !"__UNIQUE_ID_alias190", i1 false, i1 false}
!16 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 289, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias191, !18, !"__UNIQUE_ID_alias191", i1 false, i1 false}
!18 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 290, i32 1}
!19 = !{ptr @w1_family_09, !20, !"w1_family_09", i1 false, i1 false}
!20 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 222, i32 25}
!21 = !{ptr @w1_eprom_fops, !22, !"w1_eprom_fops", i1 false, i1 false}
!22 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 218, i32 35}
!23 = !{ptr @.str, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 202, i32 5}
!25 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 207, i32 5}
!27 = !{ptr @w1_family_0b, !28, !"w1_family_0b", i1 false, i1 false}
!28 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 227, i32 25}
!29 = !{ptr @w1_family_89, !30, !"w1_family_89", i1 false, i1 false}
!30 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 232, i32 25}
!31 = !{ptr @w1_family_91, !32, !"w1_family_91", i1 false, i1 false}
!32 = !{!"../drivers/w1/slaves/w1_ds250x.c", i32 237, i32 25}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!42 = !{!"auto-init"}
