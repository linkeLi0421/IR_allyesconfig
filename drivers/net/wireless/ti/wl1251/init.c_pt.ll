; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/ti/wl1251/init.c_pt.bc'
source_filename = "../drivers/net/wireless/ti/wl1251/init.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.wl1251 = type { ptr, i8, ptr, ptr, i32, i32, i8, ptr, %struct.spinlock, i32, %struct.mutex, i32, i32, i32, i32, i32, i32, %struct.boot_attr, ptr, i32, ptr, i32, [6 x i8], [6 x i8], i8, i8, i32, i8, i8, ptr, ptr, i32, %struct.sk_buff_head, i8, %struct.work_struct, [16 x ptr], i32, i32, i32, i32, i32, i32, %struct.work_struct, i32, [2 x i32], i8, i32, i32, i32, i32, i32, i8, %struct.delayed_work, i32, i8, i8, i16, i8, i32, i32, %struct.wl1251_stats, %struct.wl1251_debugfs, i32, i32, [8 x i8], ptr, ptr, i32, [21 x i8], i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.boot_attr = type { i32, i8, i8, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.61, i32, %struct.spinlock }
%union.anon.61 = type { %struct.anon.62 }
%struct.anon.62 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.wl1251_stats = type { ptr, i32, i32, i32 }
%struct.wl1251_debugfs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.wl1251_acx_mem_map = type { %struct.acx_header, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32 }
%struct.acx_header = type { %struct.wl1251_cmd_header, i16, i16 }
%struct.wl1251_cmd_header = type { i16, i16, [0 x i8] }
%struct.acx_tx_queue_qos_config = type { %struct.acx_header, i8, [3 x i8], i16, i16 }
%struct.acx_data_path_params_resp = type { %struct.acx_header, i16, i16, i8, i8, [2 x i8], i32, i32, i32, i32, i32 }

@wl1251_hw_init_hwenc_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 24, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014wl1251: WARNING couldn't set feature config\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"wl1251_hw_init_hwenc_config\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"drivers/net/wireless/ti/wl1251/init.c\00", [58 x i8] zeroinitializer }, align 32
@wl1251_hw_init_hwenc_config._entry_ptr = internal global ptr @wl1251_hw_init_hwenc_config._entry, section ".printk_index", align 4
@wl1251_hw_init_hwenc_config._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014wl1251: WARNING couldn't set default key\0A\00", [52 x i8] zeroinitializer }, align 32
@wl1251_hw_init_hwenc_config._entry_ptr.5 = internal global ptr @wl1251_hw_init_hwenc_config._entry.3, section ".printk_index", align 4
@wl1251_hw_init_mem_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 200, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013wl1251: ERROR couldn't allocate target memory map\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"wl1251_hw_init_mem_config\00", [38 x i8] zeroinitializer }, align 32
@wl1251_hw_init_mem_config._entry_ptr = internal global ptr @wl1251_hw_init_mem_config._entry, section ".printk_index", align 4
@wl1251_hw_init_mem_config._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.2, i32 208, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013wl1251: ERROR couldn't retrieve firmware memory map\0A\00", [41 x i8] zeroinitializer }, align 32
@wl1251_hw_init_mem_config._entry_ptr.10 = internal global ptr @wl1251_hw_init_mem_config._entry.8, section ".printk_index", align 4
@wl1251_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\017wl1251: %d tx blocks at 0x%x, %d rx blocks at 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wl1251_hw_init\00", [17 x i8] zeroinitializer }, align 32
@wl1251_hw_init._entry_ptr = internal global ptr @wl1251_hw_init._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@wl1251_hw_init_txq_fill._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013wl1251: ERROR Invalid TX queue id: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"wl1251_hw_init_txq_fill\00", [40 x i8] zeroinitializer }, align 32
@wl1251_hw_init_txq_fill._entry_ptr = internal global ptr @wl1251_hw_init_txq_fill._entry, section ".printk_index", align 4
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 24, i32 3 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 30, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 200, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 208, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 397, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private constant [41 x i8] c"../drivers/net/wireless/ti/wl1251/init.c\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 249, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @wl1251_hw_init._entry, ptr @wl1251_hw_init._entry_ptr, ptr @wl1251_hw_init_hwenc_config._entry, ptr @wl1251_hw_init_hwenc_config._entry.3, ptr @wl1251_hw_init_hwenc_config._entry_ptr, ptr @wl1251_hw_init_hwenc_config._entry_ptr.5, ptr @wl1251_hw_init_mem_config._entry, ptr @wl1251_hw_init_mem_config._entry.8, ptr @wl1251_hw_init_mem_config._entry_ptr, ptr @wl1251_hw_init_mem_config._entry_ptr.10, ptr @wl1251_hw_init_txq_fill._entry, ptr @wl1251_hw_init_txq_fill._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_hw_init_hwenc_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_hw_init_hwenc_config._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_hw_init_mem_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_hw_init_mem_config._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wl1251_hw_init_txq_fill._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_hwenc_config(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_feature_cfg(ptr noundef %wl, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %default_key = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 46
  %0 = ptrtoint ptr %default_key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_key, align 4
  %conv = trunc i32 %1 to i8
  %call2 = tail call i32 @wl1251_acx_default_key(ptr noundef %wl, i8 noundef zeroext %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup.sink.split_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.str.4.sink = phi ptr [ @.str, %entry.cleanup.sink.split_crit_edge ], [ @.str.4, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call, %entry.cleanup.sink.split_crit_edge ], [ %call2, %if.end.cleanup.sink.split_crit_edge ]
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_feature_cfg(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_default_key(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_templates_config(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  %partial_vbm = alloca [251 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 251, ptr nonnull %partial_vbm) #6
  %call = tail call i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext 22, ptr noundef null, i32 noundef 126) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext 21, ptr noundef null, i32 noundef 24) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext 30, ptr noundef null, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext 31, ptr noundef null, i32 noundef 26) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext 20, ptr noundef null, i32 noundef 242) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %call17 = tail call i32 @wl1251_cmd_template_set(ptr noundef %wl, i16 noundef zeroext 19, ptr noundef null, i32 noundef 242) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end16.cleanup_crit_edge, label %if.end20

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end16
  %0 = call ptr @memset(ptr %partial_vbm, i32 0, i32 251)
  %call22 = call i32 @wl1251_cmd_vbm(ptr noundef %wl, i8 noundef zeroext 5, ptr noundef nonnull %partial_vbm, i16 noundef zeroext 251, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end20.cleanup_crit_edge, label %if.end25

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end25:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call27 = call i32 @wl1251_cmd_vbm(ptr noundef %wl, i8 noundef zeroext 5, ptr noundef nonnull %partial_vbm, i16 noundef zeroext 1, i8 noundef zeroext 0) #6
  %1 = call i32 @llvm.smin.i32(i32 %call27, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.end20.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %call13, %if.end12.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ %call22, %if.end20.cleanup_crit_edge ], [ %1, %if.end25 ]
  call void @llvm.lifetime.end.p0(i64 251, ptr nonnull %partial_vbm) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_template_set(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_vbm(ptr noundef, i8 noundef zeroext, ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_rx_config(ptr noundef %wl, i32 noundef %config, i32 noundef %filter) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_rx_msdu_life_time(ptr noundef %wl, i32 noundef 512000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @wl1251_acx_rx_config(ptr noundef %wl, i32 noundef %config, i32 noundef %filter) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_rx_msdu_life_time(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_rx_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_phy_config(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_pd_threshold(ptr noundef %wl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @wl1251_acx_slot(ptr noundef %wl, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @wl1251_acx_group_address_tbl(ptr noundef %wl, i1 noundef zeroext true, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @wl1251_acx_service_period_timeout(ptr noundef %wl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = tail call i32 @wl1251_acx_rts_threshold(ptr noundef %wl, i16 noundef zeroext 2347) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call13, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end8.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %0, %if.end12 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_pd_threshold(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_slot(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_group_address_tbl(ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_service_period_timeout(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_rts_threshold(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_beacon_filter(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_beacon_filter_opt(ptr noundef %wl, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @wl1251_acx_beacon_filter_table(ptr noundef %wl) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_beacon_filter_opt(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_beacon_filter_table(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_pta(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_sg_enable(ptr noundef %wl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 @wl1251_acx_sg_cfg(ptr noundef %wl) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call1, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_sg_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_sg_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_energy_detection(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_cca_threshold(ptr noundef %wl) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_cca_threshold(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_beacon_broadcast(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_bcn_dtim_options(ptr noundef %wl) #6
  %0 = tail call i32 @llvm.smin.i32(i32 %call, i32 0)
  ret i32 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_bcn_dtim_options(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_power_auth(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext 0) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_sleep_auth(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init_mem_config(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @wl1251_acx_mem_cfg(ptr noundef %wl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 80) #10
  %target_mem_map = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 29
  %1 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7.i.i, ptr %target_mem_map, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %do.end, label %if.end5

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call7 = tail call i32 @wl1251_acx_mem_map(ptr noundef %wl, ptr noundef nonnull %call7.i.i, i32 noundef 80) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp8 = icmp slt i32 %call7, 0
  br i1 %cmp8, label %do.end12, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end12:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #9
  %2 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %target_mem_map, align 4
  tail call void @kfree(ptr noundef %3) #6
  %4 = ptrtoint ptr %target_mem_map to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %target_mem_map, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end5.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %do.end12 ], [ -12, %do.end ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_mem_cfg(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_mem_map(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wl1251_hw_init(ptr noundef %wl) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @wl1251_acx_feature_cfg(ptr noundef %wl, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %entry.wl1251_hw_init_hwenc_config.exit.thread_crit_edge, label %if.end.i

entry.wl1251_hw_init_hwenc_config.exit.thread_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_hw_init_hwenc_config.exit.thread

if.end.i:                                         ; preds = %entry
  %default_key.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 46
  %0 = ptrtoint ptr %default_key.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %default_key.i, align 4
  %conv.i = trunc i32 %1 to i8
  %call2.i = tail call i32 @wl1251_acx_default_key(ptr noundef %wl, i8 noundef zeroext %conv.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp3.i = icmp slt i32 %call2.i, 0
  br i1 %cmp3.i, label %if.end.i.wl1251_hw_init_hwenc_config.exit.thread_crit_edge, label %if.end

if.end.i.wl1251_hw_init_hwenc_config.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_hw_init_hwenc_config.exit.thread

wl1251_hw_init_hwenc_config.exit.thread:          ; preds = %if.end.i.wl1251_hw_init_hwenc_config.exit.thread_crit_edge, %entry.wl1251_hw_init_hwenc_config.exit.thread_crit_edge
  %.str.4.sink.i = phi ptr [ @.str, %entry.wl1251_hw_init_hwenc_config.exit.thread_crit_edge ], [ @.str.4, %if.end.i.wl1251_hw_init_hwenc_config.exit.thread_crit_edge ]
  %retval.0.ph.i = phi i32 [ %call.i, %entry.wl1251_hw_init_hwenc_config.exit.thread_crit_edge ], [ %call2.i, %if.end.i.wl1251_hw_init_hwenc_config.exit.thread_crit_edge ]
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.4.sink.i) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %call1 = tail call i32 @wl1251_hw_init_templates_config(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @wl1251_hw_init_mem_config(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 36) #10
  %data_path.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 30
  %3 = ptrtoint ptr %data_path.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i.i, ptr %data_path.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end8.out_free_memmap_crit_edge, label %if.end.i108

if.end8.out_free_memmap_crit_edge:                ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_memmap

if.end.i108:                                      ; preds = %if.end8
  %call3.i = tail call i32 @wl1251_acx_data_path_params(ptr noundef %wl, ptr noundef nonnull %call7.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i107 = icmp slt i32 %call3.i, 0
  br i1 %cmp.i107, label %if.then4.i, label %if.end12

if.then4.i:                                       ; preds = %if.end.i108
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %data_path.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_path.i, align 4
  tail call void @kfree(ptr noundef %5) #6
  %6 = ptrtoint ptr %data_path.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %data_path.i, align 4
  br label %out_free_memmap

if.end12:                                         ; preds = %if.end.i108
  %call.i110 = tail call i32 @wl1251_acx_rx_msdu_life_time(ptr noundef %wl, i32 noundef 512000) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %cmp.i111 = icmp slt i32 %call.i110, 0
  br i1 %cmp.i111, label %if.end12.out_free_data_path_crit_edge, label %wl1251_hw_init_rx_config.exit

if.end12.out_free_data_path_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

wl1251_hw_init_rx_config.exit:                    ; preds = %if.end12
  %call1.i = tail call i32 @wl1251_acx_rx_config(ptr noundef %wl, i32 noundef 65544, i32 noundef 3792) #6
  %7 = tail call i32 @llvm.smin.i32(i32 %call1.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp14 = icmp slt i32 %call1.i, 0
  br i1 %cmp14, label %wl1251_hw_init_rx_config.exit.out_free_data_path_crit_edge, label %if.end16

wl1251_hw_init_rx_config.exit.out_free_data_path_crit_edge: ; preds = %wl1251_hw_init_rx_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end16:                                         ; preds = %wl1251_hw_init_rx_config.exit
  %target_mem_map.i = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 29
  %8 = ptrtoint ptr %target_mem_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %target_mem_map.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i114 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 16) #10
  %tobool.not.i115 = icmp eq ptr %call7.i.i.i114, null
  br i1 %tobool.not.i115, label %if.end16.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, label %if.end5.i

if.end16.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge: ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_hw_init_tx_queue_config.exit.thread

if.end5.i:                                        ; preds = %if.end16
  %num_tx_mem_blocks.i = getelementptr inbounds %struct.wl1251_acx_mem_map, ptr %9, i32 0, i32 17
  %qid1.i.i = getelementptr inbounds %struct.acx_tx_queue_qos_config, ptr %call7.i.i.i114, i32 0, i32 1
  %high_threshold28.i.i = getelementptr inbounds %struct.acx_tx_queue_qos_config, ptr %call7.i.i.i114, i32 0, i32 3
  %low_threshold32.i.i = getelementptr inbounds %struct.acx_tx_queue_qos_config, ptr %call7.i.i.i114, i32 0, i32 4
  %11 = ptrtoint ptr %num_tx_mem_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %12 = load i32, ptr %num_tx_mem_blocks.i, align 1
  %13 = ptrtoint ptr %qid1.i.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %qid1.i.i, align 8
  %mul25.i.i = mul i32 %12, 35
  %div26.i.i = udiv i32 %mul25.i.i, 100
  %conv27.i.i = trunc i32 %div26.i.i to i16
  %14 = ptrtoint ptr %high_threshold28.i.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv27.i.i, ptr %high_threshold28.i.i, align 4
  %mul29.i.i = mul i32 %12, 25
  %div30.i.i = udiv i32 %mul29.i.i, 100
  %conv31.i.i = trunc i32 %div30.i.i to i16
  %15 = ptrtoint ptr %low_threshold32.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv31.i.i, ptr %low_threshold32.i.i, align 2
  %call6.i = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 17, ptr noundef nonnull %call7.i.i.i114, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end5.i.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, label %if.end5.i.1

if.end5.i.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_hw_init_tx_queue_config.exit.thread

if.end5.i.1:                                      ; preds = %if.end5.i
  %16 = ptrtoint ptr %num_tx_mem_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %16, i32 4)
  %17 = load i32, ptr %num_tx_mem_blocks.i, align 1
  %18 = ptrtoint ptr %qid1.i.i to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %qid1.i.i, align 8
  %mul25.i.i.1 = mul i32 %17, 25
  %div26.i.i.1 = udiv i32 %mul25.i.i.1, 100
  %conv27.i.i.1 = trunc i32 %div26.i.i.1 to i16
  %19 = ptrtoint ptr %high_threshold28.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %conv27.i.i.1, ptr %high_threshold28.i.i, align 4
  %mul29.i.i.1 = mul i32 %17, 15
  %div30.i.i.1 = udiv i32 %mul29.i.i.1, 100
  %conv31.i.i.1 = trunc i32 %div30.i.i.1 to i16
  %20 = ptrtoint ptr %low_threshold32.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv31.i.i.1, ptr %low_threshold32.i.i, align 2
  %call6.i.1 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 17, ptr noundef nonnull %call7.i.i.i114, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.1)
  %cmp7.i.1 = icmp slt i32 %call6.i.1, 0
  br i1 %cmp7.i.1, label %if.end5.i.1.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, label %if.end5.i.2

if.end5.i.1.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge: ; preds = %if.end5.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_hw_init_tx_queue_config.exit.thread

if.end5.i.2:                                      ; preds = %if.end5.i.1
  %21 = ptrtoint ptr %num_tx_mem_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %22 = load i32, ptr %num_tx_mem_blocks.i, align 1
  %23 = ptrtoint ptr %qid1.i.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 2, ptr %qid1.i.i, align 8
  %mul25.i.i.2 = mul i32 %22, 35
  %div26.i.i.2 = udiv i32 %mul25.i.i.2, 100
  %conv27.i.i.2 = trunc i32 %div26.i.i.2 to i16
  %24 = ptrtoint ptr %high_threshold28.i.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 %conv27.i.i.2, ptr %high_threshold28.i.i, align 4
  %mul29.i.i.2 = mul i32 %22, 25
  %div30.i.i.2 = udiv i32 %mul29.i.i.2, 100
  %conv31.i.i.2 = trunc i32 %div30.i.i.2 to i16
  %25 = ptrtoint ptr %low_threshold32.i.i to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv31.i.i.2, ptr %low_threshold32.i.i, align 2
  %call6.i.2 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 17, ptr noundef nonnull %call7.i.i.i114, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.2)
  %cmp7.i.2 = icmp slt i32 %call6.i.2, 0
  br i1 %cmp7.i.2, label %if.end5.i.2.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, label %if.end5.i.3

if.end5.i.2.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge: ; preds = %if.end5.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_hw_init_tx_queue_config.exit.thread

if.end5.i.3:                                      ; preds = %if.end5.i.2
  %26 = ptrtoint ptr %num_tx_mem_blocks.i to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %num_tx_mem_blocks.i, align 1
  %28 = ptrtoint ptr %qid1.i.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 3, ptr %qid1.i.i, align 8
  %mul25.i.i.3 = mul i32 %27, 35
  %div26.i.i.3 = udiv i32 %mul25.i.i.3, 100
  %conv27.i.i.3 = trunc i32 %div26.i.i.3 to i16
  %29 = ptrtoint ptr %high_threshold28.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv27.i.i.3, ptr %high_threshold28.i.i, align 4
  %mul29.i.i.3 = mul i32 %27, 25
  %div30.i.i.3 = udiv i32 %mul29.i.i.3, 100
  %conv31.i.i.3 = trunc i32 %div30.i.i.3 to i16
  %30 = ptrtoint ptr %low_threshold32.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv31.i.i.3, ptr %low_threshold32.i.i, align 2
  %call6.i.3 = tail call i32 @wl1251_cmd_configure(ptr noundef %wl, i16 noundef zeroext 17, ptr noundef nonnull %call7.i.i.i114, i32 noundef 16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.3)
  %cmp7.i.3 = icmp slt i32 %call6.i.3, 0
  br i1 %cmp7.i.3, label %if.end5.i.3.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, label %for.inc.i.3

if.end5.i.3.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge: ; preds = %if.end5.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %wl1251_hw_init_tx_queue_config.exit.thread

for.inc.i.3:                                      ; preds = %if.end5.i.3
  %call11.i = tail call i32 @wl1251_acx_ac_cfg(ptr noundef %wl, i8 noundef zeroext 0, i8 noundef zeroext 15, i16 noundef zeroext 63, i8 noundef zeroext 2, i16 noundef zeroext 0) #6
  %call12.i = tail call i32 @wl1251_acx_ac_cfg(ptr noundef %wl, i8 noundef zeroext 1, i8 noundef zeroext 15, i16 noundef zeroext 1023, i8 noundef zeroext 2, i16 noundef zeroext 0) #6
  %call13.i = tail call i32 @wl1251_acx_ac_cfg(ptr noundef %wl, i8 noundef zeroext 2, i8 noundef zeroext 7, i16 noundef zeroext 15, i8 noundef zeroext 2, i16 noundef zeroext 3008) #6
  %call14.i = tail call i32 @wl1251_acx_ac_cfg(ptr noundef %wl, i8 noundef zeroext 3, i8 noundef zeroext 3, i16 noundef zeroext 7, i8 noundef zeroext 2, i16 noundef zeroext 1504) #6
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i114) #6
  %call.i117 = tail call i32 @wl1251_acx_pd_threshold(ptr noundef %wl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %cmp.i118 = icmp slt i32 %call.i117, 0
  br i1 %cmp.i118, label %for.inc.i.3.out_free_data_path_crit_edge, label %if.end.i120

for.inc.i.3.out_free_data_path_crit_edge:         ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

wl1251_hw_init_tx_queue_config.exit.thread:       ; preds = %if.end5.i.3.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, %if.end5.i.2.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, %if.end5.i.1.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, %if.end5.i.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge, %if.end16.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge
  %ret.1.i.ph = phi i32 [ -12, %if.end16.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge ], [ %call6.i, %if.end5.i.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge ], [ %call6.i.1, %if.end5.i.1.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge ], [ %call6.i.2, %if.end5.i.2.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge ], [ %call6.i.3, %if.end5.i.3.wl1251_hw_init_tx_queue_config.exit.thread_crit_edge ]
  tail call void @kfree(ptr noundef %call7.i.i.i114) #6
  br label %out_free_data_path

if.end.i120:                                      ; preds = %for.inc.i.3
  %call1.i119 = tail call i32 @wl1251_acx_slot(ptr noundef %wl, i32 noundef 1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i119)
  %cmp2.i = icmp slt i32 %call1.i119, 0
  br i1 %cmp2.i, label %if.end.i120.out_free_data_path_crit_edge, label %if.end4.i

if.end.i120.out_free_data_path_crit_edge:         ; preds = %if.end.i120
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end4.i:                                        ; preds = %if.end.i120
  %call5.i = tail call i32 @wl1251_acx_group_address_tbl(ptr noundef %wl, i1 noundef zeroext true, ptr noundef null, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %cmp6.i = icmp slt i32 %call5.i, 0
  br i1 %cmp6.i, label %if.end4.i.out_free_data_path_crit_edge, label %if.end8.i

if.end4.i.out_free_data_path_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call i32 @wl1251_acx_service_period_timeout(ptr noundef %wl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %cmp10.i = icmp slt i32 %call9.i, 0
  br i1 %cmp10.i, label %if.end8.i.out_free_data_path_crit_edge, label %wl1251_hw_init_phy_config.exit

if.end8.i.out_free_data_path_crit_edge:           ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

wl1251_hw_init_phy_config.exit:                   ; preds = %if.end8.i
  %call13.i121 = tail call i32 @wl1251_acx_rts_threshold(ptr noundef %wl, i16 noundef zeroext 2347) #6
  %31 = tail call i32 @llvm.smin.i32(i32 %call13.i121, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i121)
  %cmp22 = icmp slt i32 %call13.i121, 0
  br i1 %cmp22, label %wl1251_hw_init_phy_config.exit.out_free_data_path_crit_edge, label %if.end24

wl1251_hw_init_phy_config.exit.out_free_data_path_crit_edge: ; preds = %wl1251_hw_init_phy_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end24:                                         ; preds = %wl1251_hw_init_phy_config.exit
  %call25 = tail call i32 @wl1251_acx_conn_monit_params(ptr noundef %wl) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.end24.out_free_data_path_crit_edge, label %if.end28

if.end24.out_free_data_path_crit_edge:            ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end28:                                         ; preds = %if.end24
  %call.i123 = tail call i32 @wl1251_acx_beacon_filter_opt(ptr noundef %wl, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i123)
  %cmp.i124 = icmp slt i32 %call.i123, 0
  br i1 %cmp.i124, label %if.end28.out_free_data_path_crit_edge, label %wl1251_hw_init_beacon_filter.exit

if.end28.out_free_data_path_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

wl1251_hw_init_beacon_filter.exit:                ; preds = %if.end28
  %call1.i125 = tail call i32 @wl1251_acx_beacon_filter_table(ptr noundef %wl) #6
  %32 = tail call i32 @llvm.smin.i32(i32 %call1.i125, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i125)
  %cmp30 = icmp slt i32 %call1.i125, 0
  br i1 %cmp30, label %wl1251_hw_init_beacon_filter.exit.out_free_data_path_crit_edge, label %if.end32

wl1251_hw_init_beacon_filter.exit.out_free_data_path_crit_edge: ; preds = %wl1251_hw_init_beacon_filter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end32:                                         ; preds = %wl1251_hw_init_beacon_filter.exit
  %call33 = tail call i32 @wl1251_hw_init_pta(ptr noundef %wl)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.end32.out_free_data_path_crit_edge, label %if.end36

if.end32.out_free_data_path_crit_edge:            ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end36:                                         ; preds = %if.end32
  %call.i128 = tail call i32 @wl1251_acx_cca_threshold(ptr noundef %wl) #6
  %33 = tail call i32 @llvm.smin.i32(i32 %call.i128, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i128)
  %cmp38 = icmp slt i32 %call.i128, 0
  br i1 %cmp38, label %if.end36.out_free_data_path_crit_edge, label %if.end40

if.end36.out_free_data_path_crit_edge:            ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end40:                                         ; preds = %if.end36
  %call.i129 = tail call i32 @wl1251_acx_bcn_dtim_options(ptr noundef %wl) #6
  %34 = tail call i32 @llvm.smin.i32(i32 %call.i129, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %cmp42 = icmp slt i32 %call.i129, 0
  br i1 %cmp42, label %if.end40.out_free_data_path_crit_edge, label %if.end44

if.end40.out_free_data_path_crit_edge:            ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end44:                                         ; preds = %if.end40
  %channel = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 26
  %35 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel, align 4
  %conv = trunc i32 %36 to i8
  %call45 = tail call i32 @wl1251_cmd_data_path_rx(ptr noundef %wl, i8 noundef zeroext %conv, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.out_free_data_path_crit_edge, label %if.end49

if.end44.out_free_data_path_crit_edge:            ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end49:                                         ; preds = %if.end44
  %37 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %channel, align 4
  %conv51 = trunc i32 %38 to i8
  %call52 = tail call i32 @wl1251_cmd_data_path_tx(ptr noundef %wl, i8 noundef zeroext %conv51, i1 noundef zeroext true) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %if.end49.out_free_data_path_crit_edge, label %if.end56

if.end49.out_free_data_path_crit_edge:            ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end56:                                         ; preds = %if.end49
  %call.i130 = tail call i32 @wl1251_acx_sleep_auth(ptr noundef %wl, i8 noundef zeroext 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i130)
  %cmp58 = icmp slt i32 %call.i130, 0
  br i1 %cmp58, label %if.end56.out_free_data_path_crit_edge, label %if.end61

if.end56.out_free_data_path_crit_edge:            ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_free_data_path

if.end61:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %target_mem_map.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %target_mem_map.i, align 4
  %num_tx_mem_blocks = getelementptr inbounds %struct.wl1251_acx_mem_map, ptr %40, i32 0, i32 17
  %41 = ptrtoint ptr %num_tx_mem_blocks to i32
  call void @__asan_loadN_noabort(i32 %41, i32 4)
  %42 = load i32, ptr %num_tx_mem_blocks, align 1
  %43 = ptrtoint ptr %data_path.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data_path.i, align 4
  %tx_control_addr = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %tx_control_addr to i32
  call void @__asan_loadN_noabort(i32 %45, i32 4)
  %46 = load i32, ptr %tx_control_addr, align 1
  %num_rx_mem_blocks = getelementptr inbounds %struct.wl1251_acx_mem_map, ptr %40, i32 0, i32 18
  %47 = ptrtoint ptr %num_rx_mem_blocks to i32
  call void @__asan_loadN_noabort(i32 %47, i32 4)
  %48 = load i32, ptr %num_rx_mem_blocks, align 1
  %rx_control_addr = getelementptr inbounds %struct.acx_data_path_params_resp, ptr %44, i32 0, i32 8
  %49 = ptrtoint ptr %rx_control_addr to i32
  call void @__asan_loadN_noabort(i32 %49, i32 4)
  %50 = load i32, ptr %rx_control_addr, align 1
  %call63 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, i32 noundef %42, i32 noundef %46, i32 noundef %48, i32 noundef %50) #9
  br label %cleanup

out_free_data_path:                               ; preds = %if.end56.out_free_data_path_crit_edge, %if.end49.out_free_data_path_crit_edge, %if.end44.out_free_data_path_crit_edge, %if.end40.out_free_data_path_crit_edge, %if.end36.out_free_data_path_crit_edge, %if.end32.out_free_data_path_crit_edge, %wl1251_hw_init_beacon_filter.exit.out_free_data_path_crit_edge, %if.end28.out_free_data_path_crit_edge, %if.end24.out_free_data_path_crit_edge, %wl1251_hw_init_phy_config.exit.out_free_data_path_crit_edge, %if.end8.i.out_free_data_path_crit_edge, %if.end4.i.out_free_data_path_crit_edge, %if.end.i120.out_free_data_path_crit_edge, %wl1251_hw_init_tx_queue_config.exit.thread, %for.inc.i.3.out_free_data_path_crit_edge, %wl1251_hw_init_rx_config.exit.out_free_data_path_crit_edge, %if.end12.out_free_data_path_crit_edge
  %ret.0 = phi i32 [ %7, %wl1251_hw_init_rx_config.exit.out_free_data_path_crit_edge ], [ %31, %wl1251_hw_init_phy_config.exit.out_free_data_path_crit_edge ], [ %call25, %if.end24.out_free_data_path_crit_edge ], [ %32, %wl1251_hw_init_beacon_filter.exit.out_free_data_path_crit_edge ], [ %call33, %if.end32.out_free_data_path_crit_edge ], [ %33, %if.end36.out_free_data_path_crit_edge ], [ %34, %if.end40.out_free_data_path_crit_edge ], [ %call45, %if.end44.out_free_data_path_crit_edge ], [ %call52, %if.end49.out_free_data_path_crit_edge ], [ %call.i130, %if.end56.out_free_data_path_crit_edge ], [ %ret.1.i.ph, %wl1251_hw_init_tx_queue_config.exit.thread ], [ %call.i110, %if.end12.out_free_data_path_crit_edge ], [ %call9.i, %if.end8.i.out_free_data_path_crit_edge ], [ %call5.i, %if.end4.i.out_free_data_path_crit_edge ], [ %call1.i119, %if.end.i120.out_free_data_path_crit_edge ], [ %call.i117, %for.inc.i.3.out_free_data_path_crit_edge ], [ %call.i123, %if.end28.out_free_data_path_crit_edge ]
  %51 = ptrtoint ptr %data_path.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data_path.i, align 4
  tail call void @kfree(ptr noundef %52) #6
  br label %out_free_memmap

out_free_memmap:                                  ; preds = %out_free_data_path, %if.then4.i, %if.end8.out_free_memmap_crit_edge
  %ret.1 = phi i32 [ %ret.0, %out_free_data_path ], [ -12, %if.end8.out_free_memmap_crit_edge ], [ %call3.i, %if.then4.i ]
  %target_mem_map65 = getelementptr inbounds %struct.wl1251, ptr %wl, i32 0, i32 29
  %53 = ptrtoint ptr %target_mem_map65 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %target_mem_map65, align 4
  tail call void @kfree(ptr noundef %54) #6
  br label %cleanup

cleanup:                                          ; preds = %out_free_memmap, %if.end61, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %wl1251_hw_init_hwenc_config.exit.thread
  %retval.0 = phi i32 [ %ret.1, %out_free_memmap ], [ 0, %if.end61 ], [ %call1, %if.end.cleanup_crit_edge ], [ %call5, %if.end4.cleanup_crit_edge ], [ %retval.0.ph.i, %wl1251_hw_init_hwenc_config.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_conn_monit_params(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_data_path_rx(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_data_path_tx(ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_data_path_params(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_cmd_configure(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wl1251_acx_ac_cfg(ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext, i8 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !26, !27, !28}
!llvm.module.flags = !{!29, !30, !31, !32, !33, !34, !35, !36}
!llvm.ident = !{!37}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/ti/wl1251/init.c", i32 24, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @wl1251_hw_init_hwenc_config._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @wl1251_hw_init_hwenc_config._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/ti/wl1251/init.c", i32 30, i32 3}
!8 = !{ptr @wl1251_hw_init_hwenc_config._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @wl1251_hw_init_hwenc_config._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/ti/wl1251/init.c", i32 200, i32 3}
!12 = !{ptr @.str.7, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wl1251_hw_init_mem_config._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @wl1251_hw_init_mem_config._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/wireless/ti/wl1251/init.c", i32 208, i32 3}
!17 = !{ptr @wl1251_hw_init_mem_config._entry.8, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @wl1251_hw_init_mem_config._entry_ptr.10, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/wireless/ti/wl1251/init.c", i32 397, i32 2}
!21 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @wl1251_hw_init._entry, !20, !"_entry", i1 false, i1 false}
!23 = !{ptr @wl1251_hw_init._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/ti/wl1251/init.c", i32 249, i32 3}
!26 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @wl1251_hw_init_txq_fill._entry, !25, !"_entry", i1 false, i1 false}
!28 = !{ptr @wl1251_hw_init_txq_fill._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!29 = !{i32 1, !"wchar_size", i32 2}
!30 = !{i32 1, !"min_enum_size", i32 4}
!31 = !{i32 8, !"branch-target-enforcement", i32 0}
!32 = !{i32 8, !"sign-return-address", i32 0}
!33 = !{i32 8, !"sign-return-address-all", i32 0}
!34 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!35 = !{i32 7, !"uwtable", i32 1}
!36 = !{i32 7, !"frame-pointer", i32 2}
!37 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
