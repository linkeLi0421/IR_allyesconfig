; ModuleID = '/llk/IR_all_yes/drivers/block/paride/bpck.c_pt.bc'
source_filename = "../drivers/block/paride/bpck.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_protocol = type { [8 x i8], i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.pi_adapter = type { ptr, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, %struct.wait_queue_head, ptr, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }

@bpck = internal global { %struct.pi_protocol, [48 x i8] } { %struct.pi_protocol { [8 x i8] c"bpck\00\00\00\00", i32 0, i32 5, i32 2, i32 4, i32 255, ptr @bpck_write_regr, ptr @bpck_read_regr, ptr @bpck_write_block, ptr @bpck_read_block, ptr @bpck_connect, ptr @bpck_disconnect, ptr @bpck_test_port, ptr @bpck_probe_unit, ptr @bpck_test_proto, ptr @bpck_log_adapter, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file160 = internal constant [36 x i8] c"bpck.file=drivers/block/paride/bpck\00", section ".modinfo", align 1
@__UNIQUE_ID_license161 = internal constant [17 x i8] c"bpck.license=GPL\00", section ".modinfo", align 1
@__initcall__kmod_bpck__162_476_bpck_init6 = internal global ptr @bpck_init, section ".initcall6.init", align 4
@__exitcall_bpck_exit = internal global ptr @bpck_exit, section ".exitcall.exit", align 4
@cont_map = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 64, i32 72, i32 0], [20 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@bpck_test_proto._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 339, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: bpck: 0x%x unit %d mode %d: \00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bpck_test_proto\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/block/paride/bpck.c\00", [36 x i8] zeroinitializer }, align 32
@bpck_test_proto._entry_ptr = internal global ptr @bpck_test_proto._entry, section ".printk_index", align 4
@bpck_test_proto._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%3d\00", [28 x i8] zeroinitializer }, align 32
@bpck_test_proto._entry_ptr.5 = internal global ptr @bpck_test_proto._entry.3, section ".printk_index", align 4
@bpck_test_proto._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@bpck_test_proto._entry_ptr.8 = internal global ptr @bpck_test_proto._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"4-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"8-bit\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"EPP-8\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-16\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"EPP-32\00", [25 x i8] zeroinitializer }, align 32
@__const.bpck_log_adapter.mode_string = private unnamed_addr constant [5 x ptr] [ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], align 4
@bpck_log_adapter._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.2, i32 441, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: bpck %s, backpack %8.8s unit %d\00", [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"bpck_log_adapter\00", [47 x i8] zeroinitializer }, align 32
@bpck_log_adapter._entry_ptr = internal global ptr @bpck_log_adapter._entry, section ".printk_index", align 4
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1.02\00", [27 x i8] zeroinitializer }, align 32
@bpck_log_adapter._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c" at 0x%x, mode %d (%s), delay %d\0A\00", [62 x i8] zeroinitializer }, align 32
@bpck_log_adapter._entry_ptr.19 = internal global ptr @bpck_log_adapter._entry.17, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.20 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.21 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.22 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.23 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.24 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 2, i64 4294967295]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 3, i64 4]
@___asan_gen_.27 = private unnamed_addr constant [5 x i8] c"bpck\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 446, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [9 x i8] c"cont_map\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 47, i32 13 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 338, i32 6 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 340, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 341, i32 6 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 421, i32 28 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 421, i32 36 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 421, i32 44 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 422, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 422, i32 18 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 440, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private constant [31 x i8] c"../drivers/block/paride/bpck.c\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 442, i32 2 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_file160, ptr @__UNIQUE_ID_license161, ptr @__exitcall_bpck_exit, ptr @__initcall__kmod_bpck__162_476_bpck_init6, ptr @bpck_exit, ptr @bpck_log_adapter._entry, ptr @bpck_log_adapter._entry.17, ptr @bpck_log_adapter._entry_ptr, ptr @bpck_log_adapter._entry_ptr.19, ptr @bpck_test_proto._entry, ptr @bpck_test_proto._entry.3, ptr @bpck_test_proto._entry.6, ptr @bpck_test_proto._entry_ptr, ptr @bpck_test_proto._entry_ptr.5, ptr @bpck_test_proto._entry_ptr.8, ptr @bpck, ptr @cont_map, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cont_map to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck_test_proto._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck_test_proto._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck_test_proto._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck_log_adapter._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpck_log_adapter._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bpck_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @paride_unregister(ptr noundef nonnull @bpck) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @paride_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @paride_register(ptr noundef nonnull @bpck) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck_write_regr(ptr nocapture noundef %pi, i32 noundef %cont, i32 noundef %regr, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %entry.sw.epilog_crit_edge [
    i32 0, label %entry.do.body_crit_edge
    i32 1, label %entry.do.body_crit_edge453
    i32 2, label %entry.do.body159_crit_edge
    i32 3, label %entry.do.body159_crit_edge454
    i32 4, label %entry.do.body159_crit_edge455
  ]

entry.do.body159_crit_edge455:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body159

entry.do.body159_crit_edge454:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body159

entry.do.body159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body159

entry.do.body_crit_edge453:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge453
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !54
  tail call void @arm_heavy_mb() #6
  %conv = trunc i32 %add to i8
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %5 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %port, align 4
  %and = and i32 %6, 1048575
  %add2 = or i32 %and, -18874368
  %7 = inttoptr i32 %add2 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %7, i8 %conv) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %8 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.body.cond.end13_crit_edge, label %cond.false9

do.body.cond.end13_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end13

cond.false9:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %10(i32 noundef %9) #6
  br label %cond.end13

cond.end13:                                       ; preds = %cond.false9, %do.body.cond.end13_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private, align 4
  %xor = xor i32 %12, 2
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %13 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %private, align 4
  %conv18 = trunc i32 %14 to i8
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add20 = add i32 %16, 2
  %and21 = and i32 %add20, 1048575
  %add22 = or i32 %and21, -18874368
  %17 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %conv18) #6, !srcloc !55
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %cond.end13.do.body42_crit_edge, label %cond.false37

cond.end13.do.body42_crit_edge:                   ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body42

cond.false37:                                     ; preds = %cond.end13
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #6
  br label %do.body42

do.body42:                                        ; preds = %cond.false37, %cond.end13.do.body42_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !57
  tail call void @arm_heavy_mb() #6
  %conv45 = trunc i32 %val to i8
  %21 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %port, align 4
  %and48 = and i32 %22, 1048575
  %add49 = or i32 %and48, -18874368
  %23 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %23, i8 %conv45) #6, !srcloc !55
  %24 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool52.not = icmp eq i32 %25, 0
  br i1 %tobool52.not, label %do.body42.cond.end68_crit_edge, label %cond.false64

do.body42.cond.end68_crit_edge:                   ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end68

cond.false64:                                     ; preds = %do.body42
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %26(i32 noundef %25) #6
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false64, %do.body42.cond.end68_crit_edge
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %private, align 4
  %or = or i32 %28, 1
  store i32 %or, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %29 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %private, align 4
  %conv74 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %add76 = add i32 %32, 2
  %and77 = and i32 %add76, 1048575
  %add78 = or i32 %and77, -18874368
  %33 = inttoptr i32 %add78 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %conv74) #6, !srcloc !55
  %34 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool81.not = icmp eq i32 %35, 0
  br i1 %tobool81.not, label %cond.end68.cond.end97_crit_edge, label %cond.false93

cond.end68.cond.end97_crit_edge:                  ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end97

cond.false93:                                     ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %35) #6
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false93, %cond.end68.cond.end97_crit_edge
  %37 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %private, align 4
  %xor99 = xor i32 %38, 4
  store i32 %xor99, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !59
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %private, align 4
  %conv104 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add106 = add i32 %42, 2
  %and107 = and i32 %add106, 1048575
  %add108 = or i32 %and107, -18874368
  %43 = inttoptr i32 %add108 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv104) #6, !srcloc !55
  %44 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool111.not = icmp eq i32 %45, 0
  br i1 %tobool111.not, label %cond.end97.cond.end127_crit_edge, label %cond.false123

cond.end97.cond.end127_crit_edge:                 ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end127

cond.false123:                                    ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #6
  br label %cond.end127

cond.end127:                                      ; preds = %cond.false123, %cond.end97.cond.end127_crit_edge
  %47 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %private, align 4
  %xor129 = xor i32 %48, 1
  store i32 %xor129, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %49 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %private, align 4
  %conv134 = trunc i32 %50 to i8
  %51 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %port, align 4
  %add136 = add i32 %52, 2
  %and137 = and i32 %add136, 1048575
  %add138 = or i32 %and137, -18874368
  %53 = inttoptr i32 %add138 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %53, i8 %conv134) #6, !srcloc !55
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool141.not = icmp eq i32 %55, 0
  br i1 %tobool141.not, label %cond.end127.sw.epilog_crit_edge, label %cond.false153

cond.end127.sw.epilog_crit_edge:                  ; preds = %cond.end127
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

cond.false153:                                    ; preds = %cond.end127
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %56 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %56(i32 noundef %55) #6
  br label %sw.epilog

do.body159:                                       ; preds = %entry.do.body159_crit_edge, %entry.do.body159_crit_edge454, %entry.do.body159_crit_edge455
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %conv162 = trunc i32 %add to i8
  %port163 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %57 = ptrtoint ptr %port163 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port163, align 4
  %and165 = and i32 %58, 1048575
  %add166 = or i32 %and165, -18874368
  %59 = inttoptr i32 %add166 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv162) #6, !srcloc !55
  %delay168 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %60 = ptrtoint ptr %delay168 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool169.not = icmp eq i32 %61, 0
  br i1 %tobool169.not, label %do.body159.do.body186_crit_edge, label %cond.false181

do.body159.do.body186_crit_edge:                  ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body186

cond.false181:                                    ; preds = %do.body159
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #6
  br label %do.body186

do.body186:                                       ; preds = %cond.false181, %do.body159.do.body186_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %63 = ptrtoint ptr %port163 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port163, align 4
  %add190 = add i32 %64, 2
  %and191 = and i32 %add190, 1048575
  %add192 = or i32 %and191, -18874368
  %65 = inttoptr i32 %add192 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 9) #6, !srcloc !55
  %66 = ptrtoint ptr %delay168 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool195.not = icmp eq i32 %67, 0
  br i1 %tobool195.not, label %do.body186.cond.end211_crit_edge, label %cond.false207

do.body186.cond.end211_crit_edge:                 ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end211

cond.false207:                                    ; preds = %do.body186
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #6
  br label %cond.end211

cond.end211:                                      ; preds = %cond.false207, %do.body186.cond.end211_crit_edge
  %private212 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %69 = ptrtoint ptr %private212 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 9, ptr %private212, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %70 = ptrtoint ptr %port163 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port163, align 4
  %add217 = add i32 %71, 2
  %and218 = and i32 %add217, 1048575
  %add219 = or i32 %and218, -18874368
  %72 = inttoptr i32 %add219 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 0) #6, !srcloc !55
  %73 = ptrtoint ptr %delay168 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool222.not = icmp eq i32 %74, 0
  br i1 %tobool222.not, label %cond.end211.cond.end238_crit_edge, label %cond.false234

cond.end211.cond.end238_crit_edge:                ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end238

cond.false234:                                    ; preds = %cond.end211
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #6
  br label %cond.end238

cond.end238:                                      ; preds = %cond.false234, %cond.end211.cond.end238_crit_edge
  %76 = ptrtoint ptr %private212 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %private212, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  %conv243 = trunc i32 %val to i8
  %77 = ptrtoint ptr %port163 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %port163, align 4
  %and246 = and i32 %78, 1048575
  %add247 = or i32 %and246, -18874368
  %79 = inttoptr i32 %add247 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %79, i8 %conv243) #6, !srcloc !55
  %80 = ptrtoint ptr %delay168 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %delay168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %tobool250.not = icmp eq i32 %81, 0
  br i1 %tobool250.not, label %cond.end238.do.body267_crit_edge, label %cond.false262

cond.end238.do.body267_crit_edge:                 ; preds = %cond.end238
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body267

cond.false262:                                    ; preds = %cond.end238
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %82 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %82(i32 noundef %81) #6
  br label %do.body267

do.body267:                                       ; preds = %cond.false262, %cond.end238.do.body267_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %port163 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %port163, align 4
  %add271 = add i32 %84, 2
  %and272 = and i32 %add271, 1048575
  %add273 = or i32 %and272, -18874368
  %85 = inttoptr i32 %add273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %85, i8 1) #6, !srcloc !55
  %86 = ptrtoint ptr %delay168 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %delay168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %87)
  %tobool276.not = icmp eq i32 %87, 0
  br i1 %tobool276.not, label %do.body267.cond.end292_crit_edge, label %cond.false288

do.body267.cond.end292_crit_edge:                 ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end292

cond.false288:                                    ; preds = %do.body267
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %88 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %88(i32 noundef %87) #6
  br label %cond.end292

cond.end292:                                      ; preds = %cond.false288, %do.body267.cond.end292_crit_edge
  %89 = ptrtoint ptr %private212 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 1, ptr %private212, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !66
  tail call void @arm_heavy_mb() #6
  %90 = ptrtoint ptr %port163 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port163, align 4
  %add298 = add i32 %91, 2
  %and299 = and i32 %add298, 1048575
  %add300 = or i32 %and299, -18874368
  %92 = inttoptr i32 %add300 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 3) #6, !srcloc !55
  %93 = ptrtoint ptr %delay168 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool303.not = icmp eq i32 %94, 0
  br i1 %tobool303.not, label %cond.end292.cond.end319_crit_edge, label %cond.false315

cond.end292.cond.end319_crit_edge:                ; preds = %cond.end292
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end319

cond.false315:                                    ; preds = %cond.end292
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #6
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false315, %cond.end292.cond.end319_crit_edge
  %96 = ptrtoint ptr %private212 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 3, ptr %private212, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %port163 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port163, align 4
  %add325 = add i32 %98, 2
  %and326 = and i32 %add325, 1048575
  %add327 = or i32 %and326, -18874368
  %99 = inttoptr i32 %add327 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 0) #6, !srcloc !55
  %100 = ptrtoint ptr %delay168 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %delay168, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool330.not = icmp eq i32 %101, 0
  br i1 %tobool330.not, label %cond.end319.cond.end346_crit_edge, label %cond.false342

cond.end319.cond.end346_crit_edge:                ; preds = %cond.end319
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end346

cond.false342:                                    ; preds = %cond.end319
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %102(i32 noundef %101) #6
  br label %cond.end346

cond.end346:                                      ; preds = %cond.false342, %cond.end319.cond.end346_crit_edge
  %103 = ptrtoint ptr %private212 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 0, ptr %private212, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %cond.end346, %cond.false153, %cond.end127.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck_read_regr(ptr nocapture noundef %pi, i32 noundef %cont, i32 noundef %regr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [3 x i32], ptr @cont_map, i32 0, i32 %cont
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, %regr
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %2 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %3, label %entry.cleanup_crit_edge [
    i32 0, label %do.body
    i32 1, label %do.body192
    i32 2, label %entry.do.body456_crit_edge
    i32 3, label %entry.do.body456_crit_edge811
    i32 4, label %entry.do.body456_crit_edge812
  ]

entry.do.body456_crit_edge812:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body456

entry.do.body456_crit_edge811:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body456

entry.do.body456_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body456

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  %5 = trunc i32 %add to i8
  %conv = and i8 %5, 15
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %6 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port, align 4
  %and2 = and i32 %7, 1048575
  %add3 = or i32 %and2, -18874368
  %8 = inttoptr i32 %add3 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %8, i8 %conv) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %9 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %do.body.do.body15_crit_edge, label %cond.false10

do.body.do.body15_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body15

cond.false10:                                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %11(i32 noundef %10) #6
  br label %do.body15

do.body15:                                        ; preds = %cond.false10, %do.body.do.body15_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !69
  tail call void @arm_heavy_mb() #6
  %12 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %port, align 4
  %and21 = and i32 %13, 1048575
  %add22 = or i32 %and21, -18874368
  %14 = inttoptr i32 %add22 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %14, i8 %5) #6, !srcloc !55
  %15 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not = icmp eq i32 %16, 0
  br i1 %tobool25.not, label %do.body15.cond.end41_crit_edge, label %cond.false37

do.body15.cond.end41_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end41

cond.false37:                                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %17(i32 noundef %16) #6
  br label %cond.end41

cond.end41:                                       ; preds = %cond.false37, %do.body15.cond.end41_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %18 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %private, align 4
  %xor = xor i32 %19, 2
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !70
  tail call void @arm_heavy_mb() #6
  %20 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %private, align 4
  %conv46 = trunc i32 %21 to i8
  %22 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %port, align 4
  %add48 = add i32 %23, 2
  %and49 = and i32 %add48, 1048575
  %add50 = or i32 %and49, -18874368
  %24 = inttoptr i32 %add50 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %24, i8 %conv46) #6, !srcloc !55
  %25 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool53.not = icmp eq i32 %26, 0
  br i1 %tobool53.not, label %cond.end41.cond.end69_crit_edge, label %cond.false65

cond.end41.cond.end69_crit_edge:                  ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end69

cond.false65:                                     ; preds = %cond.end41
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %27(i32 noundef %26) #6
  br label %cond.end69

cond.end69:                                       ; preds = %cond.false65, %cond.end41.cond.end69_crit_edge
  %28 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %private, align 4
  %xor71 = xor i32 %29, 4
  store i32 %xor71, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !71
  tail call void @arm_heavy_mb() #6
  %30 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %private, align 4
  %conv76 = trunc i32 %31 to i8
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add78 = add i32 %33, 2
  %and79 = and i32 %add78, 1048575
  %add80 = or i32 %and79, -18874368
  %34 = inttoptr i32 %add80 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 %conv76) #6, !srcloc !55
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool83.not = icmp eq i32 %36, 0
  br i1 %tobool83.not, label %cond.end69.cond.end117_crit_edge, label %cond.false95

cond.end69.cond.end117_crit_edge:                 ; preds = %cond.end69
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end117

cond.false95:                                     ; preds = %cond.end69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #6
  %38 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool101.not = icmp eq i32 %.pr, 0
  br i1 %tobool101.not, label %cond.false95.cond.end117_crit_edge, label %cond.false113

cond.false95.cond.end117_crit_edge:               ; preds = %cond.false95
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end117

cond.false113:                                    ; preds = %cond.false95
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %.pr) #6
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false113, %cond.false95.cond.end117_crit_edge, %cond.end69.cond.end117_crit_edge
  %40 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %port, align 4
  %add119 = add i32 %41, 1
  %and120 = and i32 %add119, 1048575
  %add121 = or i32 %and120, -18874368
  %42 = inttoptr i32 %add121 to ptr
  %43 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %42) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  %conv124 = zext i8 %43 to i32
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private, align 4
  %xor127 = xor i32 %45, 4
  store i32 %xor127, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @arm_heavy_mb() #6
  %46 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %private, align 4
  %conv132 = trunc i32 %47 to i8
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %add134 = add i32 %49, 2
  %and135 = and i32 %add134, 1048575
  %add136 = or i32 %and135, -18874368
  %50 = inttoptr i32 %add136 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv132) #6, !srcloc !55
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool139.not = icmp eq i32 %52, 0
  br i1 %tobool139.not, label %cond.end117.cond.end173_crit_edge, label %cond.false151

cond.end117.cond.end173_crit_edge:                ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end173

cond.false151:                                    ; preds = %cond.end117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #6
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr805 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr805)
  %tobool157.not = icmp eq i32 %.pr805, 0
  br i1 %tobool157.not, label %cond.false151.cond.end173_crit_edge, label %cond.false169

cond.false151.cond.end173_crit_edge:              ; preds = %cond.false151
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end173

cond.false169:                                    ; preds = %cond.false151
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %.pr805) #6
  br label %cond.end173

cond.end173:                                      ; preds = %cond.false169, %cond.false151.cond.end173_crit_edge, %cond.end117.cond.end173_crit_edge
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add176 = add i32 %57, 1
  %and177 = and i32 %add176, 1048575
  %add178 = or i32 %and177, -18874368
  %58 = inttoptr i32 %add178 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !75
  %conv182 = zext i8 %59 to i32
  %60 = lshr i32 %conv124, 3
  %and184 = and i32 %60, 7
  %61 = lshr i32 %conv124, 4
  %and186 = and i32 %61, 8
  %or = or i32 %and184, %and186
  %shl = shl nuw nsw i32 %conv182, 1
  %and187 = and i32 %shl, 112
  %and189 = and i32 %conv182, 128
  %or188 = or i32 %or, %and189
  %or190 = or i32 %or188, %and187
  br label %cleanup

do.body192:                                       ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !76
  tail call void @arm_heavy_mb() #6
  %62 = trunc i32 %add to i8
  %conv196 = and i8 %62, 15
  %port197 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %63 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port197, align 4
  %and199 = and i32 %64, 1048575
  %add200 = or i32 %and199, -18874368
  %65 = inttoptr i32 %add200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %65, i8 %conv196) #6, !srcloc !55
  %delay202 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %66 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool203.not = icmp eq i32 %67, 0
  br i1 %tobool203.not, label %do.body192.do.body220_crit_edge, label %cond.false215

do.body192.do.body220_crit_edge:                  ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body220

cond.false215:                                    ; preds = %do.body192
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %68 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %68(i32 noundef %67) #6
  br label %do.body220

do.body220:                                       ; preds = %cond.false215, %do.body192.do.body220_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !77
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %port197, align 4
  %and226 = and i32 %70, 1048575
  %add227 = or i32 %and226, -18874368
  %71 = inttoptr i32 %add227 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %71, i8 %62) #6, !srcloc !55
  %72 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool230.not = icmp eq i32 %73, 0
  br i1 %tobool230.not, label %do.body220.cond.end246_crit_edge, label %cond.false242

do.body220.cond.end246_crit_edge:                 ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end246

cond.false242:                                    ; preds = %do.body220
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %74 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %74(i32 noundef %73) #6
  br label %cond.end246

cond.end246:                                      ; preds = %cond.false242, %do.body220.cond.end246_crit_edge
  %private247 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %75 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %private247, align 4
  %xor248 = xor i32 %76, 2
  store i32 %xor248, ptr %private247, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !78
  tail call void @arm_heavy_mb() #6
  %77 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %private247, align 4
  %conv253 = trunc i32 %78 to i8
  %79 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %port197, align 4
  %add255 = add i32 %80, 2
  %and256 = and i32 %add255, 1048575
  %add257 = or i32 %and256, -18874368
  %81 = inttoptr i32 %add257 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %81, i8 %conv253) #6, !srcloc !55
  %82 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool260.not = icmp eq i32 %83, 0
  br i1 %tobool260.not, label %cond.end246.cond.end276_crit_edge, label %cond.false272

cond.end246.cond.end276_crit_edge:                ; preds = %cond.end246
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end276

cond.false272:                                    ; preds = %cond.end246
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %84 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %84(i32 noundef %83) #6
  br label %cond.end276

cond.end276:                                      ; preds = %cond.false272, %cond.end246.cond.end276_crit_edge
  %85 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %private247, align 4
  %and278 = and i32 %86, 254
  store i32 %and278, ptr %private247, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %private247, align 4
  %conv283 = trunc i32 %88 to i8
  %89 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port197, align 4
  %add285 = add i32 %90, 2
  %and286 = and i32 %add285, 1048575
  %add287 = or i32 %and286, -18874368
  %91 = inttoptr i32 %add287 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %conv283) #6, !srcloc !55
  %92 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool290.not = icmp eq i32 %93, 0
  br i1 %tobool290.not, label %cond.end276.cond.end306_crit_edge, label %cond.false302

cond.end276.cond.end306_crit_edge:                ; preds = %cond.end276
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end306

cond.false302:                                    ; preds = %cond.end276
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #6
  br label %cond.end306

cond.end306:                                      ; preds = %cond.false302, %cond.end276.cond.end306_crit_edge
  %95 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %private247, align 4
  %xor308 = xor i32 %96, 32
  store i32 %xor308, ptr %private247, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %private247, align 4
  %conv313 = trunc i32 %98 to i8
  %99 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port197, align 4
  %add315 = add i32 %100, 2
  %and316 = and i32 %add315, 1048575
  %add317 = or i32 %and316, -18874368
  %101 = inttoptr i32 %add317 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %conv313) #6, !srcloc !55
  %102 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool320.not = icmp eq i32 %103, 0
  br i1 %tobool320.not, label %cond.end306.cond.end336_crit_edge, label %cond.false332

cond.end306.cond.end336_crit_edge:                ; preds = %cond.end306
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end336

cond.false332:                                    ; preds = %cond.end306
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #6
  br label %cond.end336

cond.end336:                                      ; preds = %cond.false332, %cond.end306.cond.end336_crit_edge
  %105 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %private247, align 4
  %xor338 = xor i32 %106, 4
  store i32 %xor338, ptr %private247, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !81
  tail call void @arm_heavy_mb() #6
  %107 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %private247, align 4
  %conv343 = trunc i32 %108 to i8
  %109 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port197, align 4
  %add345 = add i32 %110, 2
  %and346 = and i32 %add345, 1048575
  %add347 = or i32 %and346, -18874368
  %111 = inttoptr i32 %add347 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 %conv343) #6, !srcloc !55
  %112 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool350.not = icmp eq i32 %113, 0
  br i1 %tobool350.not, label %cond.end336.cond.end384_crit_edge, label %cond.false362

cond.end336.cond.end384_crit_edge:                ; preds = %cond.end336
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end384

cond.false362:                                    ; preds = %cond.end336
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %114(i32 noundef %113) #6
  %115 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr807 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr807)
  %tobool368.not = icmp eq i32 %.pr807, 0
  br i1 %tobool368.not, label %cond.false362.cond.end384_crit_edge, label %cond.false380

cond.false362.cond.end384_crit_edge:              ; preds = %cond.false362
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end384

cond.false380:                                    ; preds = %cond.false362
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %.pr807) #6
  br label %cond.end384

cond.end384:                                      ; preds = %cond.false380, %cond.false362.cond.end384_crit_edge, %cond.end336.cond.end384_crit_edge
  %117 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port197, align 4
  %and388 = and i32 %118, 1048575
  %add389 = or i32 %and388, -18874368
  %119 = inttoptr i32 %add389 to ptr
  %120 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %119) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  %conv393 = zext i8 %120 to i32
  %121 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %private247, align 4
  %xor396 = xor i32 %122, 1
  store i32 %xor396, ptr %private247, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !83
  tail call void @arm_heavy_mb() #6
  %123 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %private247, align 4
  %conv401 = trunc i32 %124 to i8
  %125 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %port197, align 4
  %add403 = add i32 %126, 2
  %and404 = and i32 %add403, 1048575
  %add405 = or i32 %and404, -18874368
  %127 = inttoptr i32 %add405 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %127, i8 %conv401) #6, !srcloc !55
  %128 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool408.not = icmp eq i32 %129, 0
  br i1 %tobool408.not, label %cond.end384.cond.end424_crit_edge, label %cond.false420

cond.end384.cond.end424_crit_edge:                ; preds = %cond.end384
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end424

cond.false420:                                    ; preds = %cond.end384
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %130 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %130(i32 noundef %129) #6
  br label %cond.end424

cond.end424:                                      ; preds = %cond.false420, %cond.end384.cond.end424_crit_edge
  %131 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %private247, align 4
  %xor426 = xor i32 %132, 32
  store i32 %xor426, ptr %private247, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !84
  tail call void @arm_heavy_mb() #6
  %133 = ptrtoint ptr %private247 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %private247, align 4
  %conv431 = trunc i32 %134 to i8
  %135 = ptrtoint ptr %port197 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port197, align 4
  %add433 = add i32 %136, 2
  %and434 = and i32 %add433, 1048575
  %add435 = or i32 %and434, -18874368
  %137 = inttoptr i32 %add435 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 %conv431) #6, !srcloc !55
  %138 = ptrtoint ptr %delay202 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay202, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool438.not = icmp eq i32 %139, 0
  br i1 %tobool438.not, label %cond.end424.cleanup_crit_edge, label %cond.false450

cond.end424.cleanup_crit_edge:                    ; preds = %cond.end424
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.false450:                                    ; preds = %cond.end424
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #6
  br label %cleanup

do.body456:                                       ; preds = %entry.do.body456_crit_edge, %entry.do.body456_crit_edge811, %entry.do.body456_crit_edge812
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  tail call void @arm_heavy_mb() #6
  %conv459 = trunc i32 %add to i8
  %port460 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %141 = ptrtoint ptr %port460 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port460, align 4
  %and462 = and i32 %142, 1048575
  %add463 = or i32 %and462, -18874368
  %143 = inttoptr i32 %add463 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 %conv459) #6, !srcloc !55
  %delay465 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %144 = ptrtoint ptr %delay465 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool466.not = icmp eq i32 %145, 0
  br i1 %tobool466.not, label %do.body456.do.body483_crit_edge, label %cond.false478

do.body456.do.body483_crit_edge:                  ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body483

cond.false478:                                    ; preds = %do.body456
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #6
  br label %do.body483

do.body483:                                       ; preds = %cond.false478, %do.body456.do.body483_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %147 = ptrtoint ptr %port460 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port460, align 4
  %add487 = add i32 %148, 2
  %and488 = and i32 %add487, 1048575
  %add489 = or i32 %and488, -18874368
  %149 = inttoptr i32 %add489 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %149, i8 9) #6, !srcloc !55
  %150 = ptrtoint ptr %delay465 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %delay465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %tobool492.not = icmp eq i32 %151, 0
  br i1 %tobool492.not, label %do.body483.cond.end508_crit_edge, label %cond.false504

do.body483.cond.end508_crit_edge:                 ; preds = %do.body483
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end508

cond.false504:                                    ; preds = %do.body483
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %152 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %152(i32 noundef %151) #6
  br label %cond.end508

cond.end508:                                      ; preds = %cond.false504, %do.body483.cond.end508_crit_edge
  %private509 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %153 = ptrtoint ptr %private509 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 9, ptr %private509, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  %154 = ptrtoint ptr %port460 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port460, align 4
  %add514 = add i32 %155, 2
  %and515 = and i32 %add514, 1048575
  %add516 = or i32 %and515, -18874368
  %156 = inttoptr i32 %add516 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 0) #6, !srcloc !55
  %157 = ptrtoint ptr %delay465 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %delay465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool519.not = icmp eq i32 %158, 0
  br i1 %tobool519.not, label %cond.end508.cond.end535_crit_edge, label %cond.false531

cond.end508.cond.end535_crit_edge:                ; preds = %cond.end508
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end535

cond.false531:                                    ; preds = %cond.end508
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %159(i32 noundef %158) #6
  br label %cond.end535

cond.end535:                                      ; preds = %cond.false531, %cond.end508.cond.end535_crit_edge
  %160 = ptrtoint ptr %private509 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 0, ptr %private509, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %port460 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port460, align 4
  %add541 = add i32 %162, 2
  %and542 = and i32 %add541, 1048575
  %add543 = or i32 %and542, -18874368
  %163 = inttoptr i32 %add543 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 32) #6, !srcloc !55
  %164 = ptrtoint ptr %delay465 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool546.not = icmp eq i32 %165, 0
  br i1 %tobool546.not, label %cond.end562.thread, label %cond.false558

cond.end562.thread:                               ; preds = %cond.end535
  call void @__sanitizer_cov_trace_pc() #8
  %166 = ptrtoint ptr %private509 to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 32, ptr %private509, align 4
  br label %cond.end581

cond.false558:                                    ; preds = %cond.end535
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %167 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %167(i32 noundef %165) #6
  %168 = ptrtoint ptr %delay465 to i32
  call void @__asan_load4_noabort(i32 %168)
  %.pr809 = load i32, ptr %delay465, align 4
  %169 = ptrtoint ptr %private509 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 32, ptr %private509, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr809)
  %tobool565.not = icmp eq i32 %.pr809, 0
  br i1 %tobool565.not, label %cond.false558.cond.end581_crit_edge, label %cond.false577

cond.false558.cond.end581_crit_edge:              ; preds = %cond.false558
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end581

cond.false577:                                    ; preds = %cond.false558
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %.pr809) #6
  br label %cond.end581

cond.end581:                                      ; preds = %cond.false577, %cond.false558.cond.end581_crit_edge, %cond.end562.thread
  %171 = ptrtoint ptr %port460 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %port460, align 4
  %add584 = add i32 %172, 4
  %and585 = and i32 %add584, 1048575
  %add586 = or i32 %and585, -18874368
  %173 = inttoptr i32 %add586 to ptr
  %174 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %173) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !89
  %conv590 = zext i8 %174 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !90
  tail call void @arm_heavy_mb() #6
  %175 = ptrtoint ptr %port460 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %port460, align 4
  %add596 = add i32 %176, 2
  %and597 = and i32 %add596, 1048575
  %add598 = or i32 %and597, -18874368
  %177 = inttoptr i32 %add598 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 0) #6, !srcloc !55
  %178 = ptrtoint ptr %delay465 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %delay465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool601.not = icmp eq i32 %179, 0
  br i1 %tobool601.not, label %cond.end581.cond.end617_crit_edge, label %cond.false613

cond.end581.cond.end617_crit_edge:                ; preds = %cond.end581
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end617

cond.false613:                                    ; preds = %cond.end581
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %180(i32 noundef %179) #6
  br label %cond.end617

cond.end617:                                      ; preds = %cond.false613, %cond.end581.cond.end617_crit_edge
  %181 = ptrtoint ptr %private509 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 0, ptr %private509, align 4
  br label %cleanup

cleanup:                                          ; preds = %cond.end617, %cond.false450, %cond.end424.cleanup_crit_edge, %cond.end173, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv590, %cond.end617 ], [ %or190, %cond.end173 ], [ %conv393, %cond.end424.cleanup_crit_edge ], [ %conv393, %cond.false450 ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck_write_block(ptr noundef %pi, ptr nocapture noundef readonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb127
    i32 2, label %sw.bb278
    i32 3, label %sw.bb447
    i32 4, label %sw.bb616
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !91
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 64) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.cond.end11_crit_edge, label %cond.false7

sw.bb.cond.end11_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end11

cond.false7:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #6
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %sw.bb.cond.end11_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private, align 4
  %xor = xor i32 %10, 2
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !92
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add17 = add i32 %14, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %15 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv) #6, !srcloc !55
  %16 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %cond.end11.cond.end38_crit_edge, label %cond.false34

cond.end11.cond.end38_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end38

cond.false34:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %17) #6
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false34, %cond.end11.cond.end38_crit_edge
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %private, align 4
  %xor40 = xor i32 %20, 1
  store i32 %xor40, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !93
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %private, align 4
  %conv45 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add47 = add i32 %24, 2
  %and48 = and i32 %add47, 1048575
  %add49 = or i32 %and48, -18874368
  %25 = inttoptr i32 %add49 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv45) #6, !srcloc !55
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool52.not = icmp eq i32 %27, 0
  br i1 %tobool52.not, label %cond.end38.cond.end68_crit_edge, label %cond.false64

cond.end38.cond.end68_crit_edge:                  ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end68

cond.false64:                                     ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #6
  br label %cond.end68

cond.end68:                                       ; preds = %cond.false64, %cond.end38.cond.end68_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp691045 = icmp sgt i32 %count, 0
  br i1 %cmp691045, label %cond.end68.do.body71_crit_edge, label %cond.end68.sw.epilog.sink.split_crit_edge

cond.end68.sw.epilog.sink.split_crit_edge:        ; preds = %cond.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

cond.end68.do.body71_crit_edge:                   ; preds = %cond.end68
  br label %do.body71

do.body71:                                        ; preds = %for.inc.do.body71_crit_edge, %cond.end68.do.body71_crit_edge
  %i.01046 = phi i32 [ %inc, %for.inc.do.body71_crit_edge ], [ 0, %cond.end68.do.body71_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !94
  tail call void @arm_heavy_mb() #6
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.01046
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx, align 1
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %and76 = and i32 %32, 1048575
  %add77 = or i32 %and76, -18874368
  %33 = inttoptr i32 %add77 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %33, i8 %30) #6, !srcloc !55
  %34 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool80.not = icmp eq i32 %35, 0
  br i1 %tobool80.not, label %do.body71.cond.end96_crit_edge, label %cond.false92

do.body71.cond.end96_crit_edge:                   ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end96

cond.false92:                                     ; preds = %do.body71
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %36(i32 noundef %35) #6
  br label %cond.end96

cond.end96:                                       ; preds = %cond.false92, %do.body71.cond.end96_crit_edge
  %37 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %private, align 4
  %xor98 = xor i32 %38, 4
  store i32 %xor98, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !95
  tail call void @arm_heavy_mb() #6
  %39 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %private, align 4
  %conv103 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %add105 = add i32 %42, 2
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %43 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv103) #6, !srcloc !55
  %44 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool110.not = icmp eq i32 %45, 0
  br i1 %tobool110.not, label %cond.end96.for.inc_crit_edge, label %cond.false122

cond.end96.for.inc_crit_edge:                     ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

cond.false122:                                    ; preds = %cond.end96
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #6
  br label %for.inc

for.inc:                                          ; preds = %cond.false122, %cond.end96.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.01046, 1
  %exitcond1050.not = icmp eq i32 %inc, %count
  br i1 %exitcond1050.not, label %for.inc.sw.epilog.sink.split_crit_edge, label %for.inc.do.body71_crit_edge

for.inc.do.body71_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body71

for.inc.sw.epilog.sink.split_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb127:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !96
  tail call void @arm_heavy_mb() #6
  %port131 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %47 = ptrtoint ptr %port131 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port131, align 4
  %and133 = and i32 %48, 1048575
  %add134 = or i32 %and133, -18874368
  %49 = inttoptr i32 %add134 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %49, i8 64) #6, !srcloc !55
  %delay136 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %50 = ptrtoint ptr %delay136 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %delay136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool137.not = icmp eq i32 %51, 0
  br i1 %tobool137.not, label %sw.bb127.cond.end153_crit_edge, label %cond.false149

sw.bb127.cond.end153_crit_edge:                   ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end153

cond.false149:                                    ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %52(i32 noundef %51) #6
  br label %cond.end153

cond.end153:                                      ; preds = %cond.false149, %sw.bb127.cond.end153_crit_edge
  %private154 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %53 = ptrtoint ptr %private154 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %private154, align 4
  %xor155 = xor i32 %54, 2
  store i32 %xor155, ptr %private154, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !97
  tail call void @arm_heavy_mb() #6
  %55 = ptrtoint ptr %private154 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %private154, align 4
  %conv160 = trunc i32 %56 to i8
  %57 = ptrtoint ptr %port131 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %port131, align 4
  %add162 = add i32 %58, 2
  %and163 = and i32 %add162, 1048575
  %add164 = or i32 %and163, -18874368
  %59 = inttoptr i32 %add164 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %59, i8 %conv160) #6, !srcloc !55
  %60 = ptrtoint ptr %delay136 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %delay136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool167.not = icmp eq i32 %61, 0
  br i1 %tobool167.not, label %cond.end153.cond.end183_crit_edge, label %cond.false179

cond.end153.cond.end183_crit_edge:                ; preds = %cond.end153
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end183

cond.false179:                                    ; preds = %cond.end153
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %61) #6
  br label %cond.end183

cond.end183:                                      ; preds = %cond.false179, %cond.end153.cond.end183_crit_edge
  %63 = ptrtoint ptr %private154 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %private154, align 4
  %xor185 = xor i32 %64, 1
  store i32 %xor185, ptr %private154, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  %65 = ptrtoint ptr %private154 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %private154, align 4
  %conv190 = trunc i32 %66 to i8
  %67 = ptrtoint ptr %port131 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port131, align 4
  %add192 = add i32 %68, 2
  %and193 = and i32 %add192, 1048575
  %add194 = or i32 %and193, -18874368
  %69 = inttoptr i32 %add194 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 %conv190) #6, !srcloc !55
  %70 = ptrtoint ptr %delay136 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool197.not = icmp eq i32 %71, 0
  br i1 %tobool197.not, label %cond.end183.cond.end213_crit_edge, label %cond.false209

cond.end183.cond.end213_crit_edge:                ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end213

cond.false209:                                    ; preds = %cond.end183
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %71) #6
  br label %cond.end213

cond.end213:                                      ; preds = %cond.false209, %cond.end183.cond.end213_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2151043 = icmp sgt i32 %count, 0
  br i1 %cmp2151043, label %cond.end213.do.body218_crit_edge, label %cond.end213.sw.epilog.sink.split_crit_edge

cond.end213.sw.epilog.sink.split_crit_edge:       ; preds = %cond.end213
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

cond.end213.do.body218_crit_edge:                 ; preds = %cond.end213
  br label %do.body218

do.body218:                                       ; preds = %for.inc275.do.body218_crit_edge, %cond.end213.do.body218_crit_edge
  %i.11044 = phi i32 [ %inc276, %for.inc275.do.body218_crit_edge ], [ 0, %cond.end213.do.body218_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %arrayidx221 = getelementptr i8, ptr %buf, i32 %i.11044
  %73 = ptrtoint ptr %arrayidx221 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %arrayidx221, align 1
  %75 = ptrtoint ptr %port131 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %port131, align 4
  %and224 = and i32 %76, 1048575
  %add225 = or i32 %and224, -18874368
  %77 = inttoptr i32 %add225 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %77, i8 %74) #6, !srcloc !55
  %78 = ptrtoint ptr %delay136 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %delay136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool228.not = icmp eq i32 %79, 0
  br i1 %tobool228.not, label %do.body218.cond.end244_crit_edge, label %cond.false240

do.body218.cond.end244_crit_edge:                 ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end244

cond.false240:                                    ; preds = %do.body218
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %79) #6
  br label %cond.end244

cond.end244:                                      ; preds = %cond.false240, %do.body218.cond.end244_crit_edge
  %81 = ptrtoint ptr %private154 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %private154, align 4
  %xor246 = xor i32 %82, 4
  store i32 %xor246, ptr %private154, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  %83 = ptrtoint ptr %private154 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %private154, align 4
  %conv251 = trunc i32 %84 to i8
  %85 = ptrtoint ptr %port131 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %port131, align 4
  %add253 = add i32 %86, 2
  %and254 = and i32 %add253, 1048575
  %add255 = or i32 %and254, -18874368
  %87 = inttoptr i32 %add255 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %87, i8 %conv251) #6, !srcloc !55
  %88 = ptrtoint ptr %delay136 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %delay136, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool258.not = icmp eq i32 %89, 0
  br i1 %tobool258.not, label %cond.end244.for.inc275_crit_edge, label %cond.false270

cond.end244.for.inc275_crit_edge:                 ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc275

cond.false270:                                    ; preds = %cond.end244
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %90 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %90(i32 noundef %89) #6
  br label %for.inc275

for.inc275:                                       ; preds = %cond.false270, %cond.end244.for.inc275_crit_edge
  %inc276 = add nuw nsw i32 %i.11044, 1
  %exitcond1049.not = icmp eq i32 %inc276, %count
  br i1 %exitcond1049.not, label %for.inc275.sw.epilog.sink.split_crit_edge, label %for.inc275.do.body218_crit_edge

for.inc275.do.body218_crit_edge:                  ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body218

for.inc275.sw.epilog.sink.split_crit_edge:        ; preds = %for.inc275
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb278:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  %port282 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %91 = ptrtoint ptr %port282 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port282, align 4
  %and284 = and i32 %92, 1048575
  %add285 = or i32 %and284, -18874368
  %93 = inttoptr i32 %add285 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 64) #6, !srcloc !55
  %delay287 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %94 = ptrtoint ptr %delay287 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delay287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool288.not = icmp eq i32 %95, 0
  br i1 %tobool288.not, label %sw.bb278.do.body305_crit_edge, label %cond.false300

sw.bb278.do.body305_crit_edge:                    ; preds = %sw.bb278
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body305

cond.false300:                                    ; preds = %sw.bb278
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #6
  br label %do.body305

do.body305:                                       ; preds = %cond.false300, %sw.bb278.do.body305_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !102
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %port282 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %port282, align 4
  %add309 = add i32 %98, 2
  %and310 = and i32 %add309, 1048575
  %add311 = or i32 %and310, -18874368
  %99 = inttoptr i32 %add311 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %99, i8 9) #6, !srcloc !55
  %100 = ptrtoint ptr %delay287 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %delay287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool314.not = icmp eq i32 %101, 0
  br i1 %tobool314.not, label %do.body305.cond.end330_crit_edge, label %cond.false326

do.body305.cond.end330_crit_edge:                 ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end330

cond.false326:                                    ; preds = %do.body305
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %102 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %102(i32 noundef %101) #6
  br label %cond.end330

cond.end330:                                      ; preds = %cond.false326, %do.body305.cond.end330_crit_edge
  %private331 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %103 = ptrtoint ptr %private331 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 9, ptr %private331, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !103
  tail call void @arm_heavy_mb() #6
  %104 = ptrtoint ptr %port282 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %port282, align 4
  %add336 = add i32 %105, 2
  %and337 = and i32 %add336, 1048575
  %add338 = or i32 %and337, -18874368
  %106 = inttoptr i32 %add338 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %106, i8 0) #6, !srcloc !55
  %107 = ptrtoint ptr %delay287 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %delay287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %108)
  %tobool341.not = icmp eq i32 %108, 0
  br i1 %tobool341.not, label %cond.end330.cond.end357_crit_edge, label %cond.false353

cond.end330.cond.end357_crit_edge:                ; preds = %cond.end330
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end357

cond.false353:                                    ; preds = %cond.end330
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %109 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %109(i32 noundef %108) #6
  br label %cond.end357

cond.end357:                                      ; preds = %cond.false353, %cond.end330.cond.end357_crit_edge
  %110 = ptrtoint ptr %private331 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %private331, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !104
  tail call void @arm_heavy_mb() #6
  %111 = ptrtoint ptr %port282 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port282, align 4
  %add363 = add i32 %112, 2
  %and364 = and i32 %add363, 1048575
  %add365 = or i32 %and364, -18874368
  %113 = inttoptr i32 %add365 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 1) #6, !srcloc !55
  %114 = ptrtoint ptr %delay287 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool368.not = icmp eq i32 %115, 0
  br i1 %tobool368.not, label %cond.end357.cond.end384_crit_edge, label %cond.false380

cond.end357.cond.end384_crit_edge:                ; preds = %cond.end357
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end384

cond.false380:                                    ; preds = %cond.end357
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #6
  br label %cond.end384

cond.end384:                                      ; preds = %cond.false380, %cond.end357.cond.end384_crit_edge
  %117 = ptrtoint ptr %private331 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 1, ptr %private331, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp3871041 = icmp sgt i32 %count, 0
  br i1 %cmp3871041, label %cond.end384.do.body390_crit_edge, label %cond.end384.do.body420_crit_edge

cond.end384.do.body420_crit_edge:                 ; preds = %cond.end384
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body420

cond.end384.do.body390_crit_edge:                 ; preds = %cond.end384
  br label %do.body390

do.body390:                                       ; preds = %for.inc417.do.body390_crit_edge, %cond.end384.do.body390_crit_edge
  %i.21042 = phi i32 [ %inc418, %for.inc417.do.body390_crit_edge ], [ 0, %cond.end384.do.body390_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !105
  tail call void @arm_heavy_mb() #6
  %arrayidx393 = getelementptr i8, ptr %buf, i32 %i.21042
  %118 = ptrtoint ptr %arrayidx393 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %arrayidx393, align 1
  %120 = ptrtoint ptr %port282 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %port282, align 4
  %add395 = add i32 %121, 4
  %and396 = and i32 %add395, 1048575
  %add397 = or i32 %and396, -18874368
  %122 = inttoptr i32 %add397 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %122, i8 %119) #6, !srcloc !55
  %123 = ptrtoint ptr %delay287 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %delay287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %tobool400.not = icmp eq i32 %124, 0
  br i1 %tobool400.not, label %do.body390.for.inc417_crit_edge, label %cond.false412

do.body390.for.inc417_crit_edge:                  ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc417

cond.false412:                                    ; preds = %do.body390
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %125 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %125(i32 noundef %124) #6
  br label %for.inc417

for.inc417:                                       ; preds = %cond.false412, %do.body390.for.inc417_crit_edge
  %inc418 = add nuw nsw i32 %i.21042, 1
  %exitcond1048.not = icmp eq i32 %inc418, %count
  br i1 %exitcond1048.not, label %for.inc417.do.body420_crit_edge, label %for.inc417.do.body390_crit_edge

for.inc417.do.body390_crit_edge:                  ; preds = %for.inc417
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body390

for.inc417.do.body420_crit_edge:                  ; preds = %for.inc417
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body420

do.body420:                                       ; preds = %for.inc417.do.body420_crit_edge, %cond.end384.do.body420_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !106
  tail call void @arm_heavy_mb() #6
  %126 = ptrtoint ptr %port282 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %port282, align 4
  %add424 = add i32 %127, 2
  %and425 = and i32 %add424, 1048575
  %add426 = or i32 %and425, -18874368
  %128 = inttoptr i32 %add426 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %128, i8 0) #6, !srcloc !55
  %129 = ptrtoint ptr %delay287 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %delay287, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %130)
  %tobool429.not = icmp eq i32 %130, 0
  br i1 %tobool429.not, label %do.body420.sw.epilog.sink.split.sink.split_crit_edge, label %do.body420.sw.epilog.sink.split.sink.split.sink.split_crit_edge

do.body420.sw.epilog.sink.split.sink.split.sink.split_crit_edge: ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split.sink.split

do.body420.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body420
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.bb447:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !107
  tail call void @arm_heavy_mb() #6
  %port451 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %131 = ptrtoint ptr %port451 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %port451, align 4
  %and453 = and i32 %132, 1048575
  %add454 = or i32 %and453, -18874368
  %133 = inttoptr i32 %add454 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %133, i8 64) #6, !srcloc !55
  %delay456 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %134 = ptrtoint ptr %delay456 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %delay456, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool457.not = icmp eq i32 %135, 0
  br i1 %tobool457.not, label %sw.bb447.do.body474_crit_edge, label %cond.false469

sw.bb447.do.body474_crit_edge:                    ; preds = %sw.bb447
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body474

cond.false469:                                    ; preds = %sw.bb447
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %136 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %136(i32 noundef %135) #6
  br label %do.body474

do.body474:                                       ; preds = %cond.false469, %sw.bb447.do.body474_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !108
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %port451 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port451, align 4
  %add478 = add i32 %138, 2
  %and479 = and i32 %add478, 1048575
  %add480 = or i32 %and479, -18874368
  %139 = inttoptr i32 %add480 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 9) #6, !srcloc !55
  %140 = ptrtoint ptr %delay456 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %delay456, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool483.not = icmp eq i32 %141, 0
  br i1 %tobool483.not, label %do.body474.cond.end499_crit_edge, label %cond.false495

do.body474.cond.end499_crit_edge:                 ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end499

cond.false495:                                    ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #6
  br label %cond.end499

cond.end499:                                      ; preds = %cond.false495, %do.body474.cond.end499_crit_edge
  %private500 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %143 = ptrtoint ptr %private500 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 9, ptr %private500, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !109
  tail call void @arm_heavy_mb() #6
  %144 = ptrtoint ptr %port451 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %port451, align 4
  %add505 = add i32 %145, 2
  %and506 = and i32 %add505, 1048575
  %add507 = or i32 %and506, -18874368
  %146 = inttoptr i32 %add507 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %146, i8 0) #6, !srcloc !55
  %147 = ptrtoint ptr %delay456 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %delay456, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool510.not = icmp eq i32 %148, 0
  br i1 %tobool510.not, label %cond.end499.cond.end526_crit_edge, label %cond.false522

cond.end499.cond.end526_crit_edge:                ; preds = %cond.end499
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end526

cond.false522:                                    ; preds = %cond.end499
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %149 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %149(i32 noundef %148) #6
  br label %cond.end526

cond.end526:                                      ; preds = %cond.false522, %cond.end499.cond.end526_crit_edge
  %150 = ptrtoint ptr %private500 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 0, ptr %private500, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !110
  tail call void @arm_heavy_mb() #6
  %151 = ptrtoint ptr %port451 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %port451, align 4
  %add532 = add i32 %152, 2
  %and533 = and i32 %add532, 1048575
  %add534 = or i32 %and533, -18874368
  %153 = inttoptr i32 %add534 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %153, i8 1) #6, !srcloc !55
  %154 = ptrtoint ptr %delay456 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %delay456, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool537.not = icmp eq i32 %155, 0
  br i1 %tobool537.not, label %cond.end526.cond.end553_crit_edge, label %cond.false549

cond.end526.cond.end553_crit_edge:                ; preds = %cond.end526
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end553

cond.false549:                                    ; preds = %cond.end526
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %156 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %156(i32 noundef %155) #6
  br label %cond.end553

cond.end553:                                      ; preds = %cond.false549, %cond.end526.cond.end553_crit_edge
  %157 = ptrtoint ptr %private500 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 1, ptr %private500, align 4
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp5561039 = icmp sgt i32 %count, 1
  br i1 %cmp5561039, label %cond.end553.do.body559_crit_edge, label %cond.end553.do.body589_crit_edge

cond.end553.do.body589_crit_edge:                 ; preds = %cond.end553
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body589

cond.end553.do.body559_crit_edge:                 ; preds = %cond.end553
  br label %do.body559

do.body559:                                       ; preds = %for.inc586.do.body559_crit_edge, %cond.end553.do.body559_crit_edge
  %i.31040 = phi i32 [ %inc587, %for.inc586.do.body559_crit_edge ], [ 0, %cond.end553.do.body559_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !111
  tail call void @arm_heavy_mb() #6
  %arrayidx562 = getelementptr i16, ptr %buf, i32 %i.31040
  %158 = ptrtoint ptr %arrayidx562 to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %arrayidx562, align 2
  %160 = tail call i16 @llvm.bswap.i16(i16 %159)
  %161 = ptrtoint ptr %port451 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port451, align 4
  %add564 = add i32 %162, 4
  %and565 = and i32 %add564, 1048575
  %add566 = or i32 %and565, -18874368
  %163 = inttoptr i32 %add566 to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr nonnull elementtype(i16) %163, i16 %160) #6, !srcloc !112
  %164 = ptrtoint ptr %delay456 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay456, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool569.not = icmp eq i32 %165, 0
  br i1 %tobool569.not, label %do.body559.for.inc586_crit_edge, label %cond.false581

do.body559.for.inc586_crit_edge:                  ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc586

cond.false581:                                    ; preds = %do.body559
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %165) #6
  br label %for.inc586

for.inc586:                                       ; preds = %cond.false581, %do.body559.for.inc586_crit_edge
  %inc587 = add nuw nsw i32 %i.31040, 1
  %exitcond1047.not = icmp eq i32 %inc587, %div
  br i1 %exitcond1047.not, label %for.inc586.do.body589_crit_edge, label %for.inc586.do.body559_crit_edge

for.inc586.do.body559_crit_edge:                  ; preds = %for.inc586
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body559

for.inc586.do.body589_crit_edge:                  ; preds = %for.inc586
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body589

do.body589:                                       ; preds = %for.inc586.do.body589_crit_edge, %cond.end553.do.body589_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !113
  tail call void @arm_heavy_mb() #6
  %167 = ptrtoint ptr %port451 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %port451, align 4
  %add593 = add i32 %168, 2
  %and594 = and i32 %add593, 1048575
  %add595 = or i32 %and594, -18874368
  %169 = inttoptr i32 %add595 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %169, i8 0) #6, !srcloc !55
  %170 = ptrtoint ptr %delay456 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %delay456, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %171)
  %tobool598.not = icmp eq i32 %171, 0
  br i1 %tobool598.not, label %do.body589.sw.epilog.sink.split.sink.split_crit_edge, label %do.body589.sw.epilog.sink.split.sink.split.sink.split_crit_edge

do.body589.sw.epilog.sink.split.sink.split.sink.split_crit_edge: ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split.sink.split

do.body589.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body589
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.bb616:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !114
  tail call void @arm_heavy_mb() #6
  %port620 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %172 = ptrtoint ptr %port620 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %port620, align 4
  %and622 = and i32 %173, 1048575
  %add623 = or i32 %and622, -18874368
  %174 = inttoptr i32 %add623 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 64) #6, !srcloc !55
  %delay625 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %175 = ptrtoint ptr %delay625 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %delay625, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool626.not = icmp eq i32 %176, 0
  br i1 %tobool626.not, label %sw.bb616.do.body643_crit_edge, label %cond.false638

sw.bb616.do.body643_crit_edge:                    ; preds = %sw.bb616
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body643

cond.false638:                                    ; preds = %sw.bb616
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %177(i32 noundef %176) #6
  br label %do.body643

do.body643:                                       ; preds = %cond.false638, %sw.bb616.do.body643_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !115
  tail call void @arm_heavy_mb() #6
  %178 = ptrtoint ptr %port620 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %port620, align 4
  %add647 = add i32 %179, 2
  %and648 = and i32 %add647, 1048575
  %add649 = or i32 %and648, -18874368
  %180 = inttoptr i32 %add649 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %180, i8 9) #6, !srcloc !55
  %181 = ptrtoint ptr %delay625 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %delay625, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool652.not = icmp eq i32 %182, 0
  br i1 %tobool652.not, label %do.body643.cond.end668_crit_edge, label %cond.false664

do.body643.cond.end668_crit_edge:                 ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end668

cond.false664:                                    ; preds = %do.body643
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %183 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %183(i32 noundef %182) #6
  br label %cond.end668

cond.end668:                                      ; preds = %cond.false664, %do.body643.cond.end668_crit_edge
  %private669 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %184 = ptrtoint ptr %private669 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 9, ptr %private669, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !116
  tail call void @arm_heavy_mb() #6
  %185 = ptrtoint ptr %port620 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %port620, align 4
  %add674 = add i32 %186, 2
  %and675 = and i32 %add674, 1048575
  %add676 = or i32 %and675, -18874368
  %187 = inttoptr i32 %add676 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %187, i8 0) #6, !srcloc !55
  %188 = ptrtoint ptr %delay625 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %delay625, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %189)
  %tobool679.not = icmp eq i32 %189, 0
  br i1 %tobool679.not, label %cond.end668.cond.end695_crit_edge, label %cond.false691

cond.end668.cond.end695_crit_edge:                ; preds = %cond.end668
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end695

cond.false691:                                    ; preds = %cond.end668
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %190 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %190(i32 noundef %189) #6
  br label %cond.end695

cond.end695:                                      ; preds = %cond.false691, %cond.end668.cond.end695_crit_edge
  %191 = ptrtoint ptr %private669 to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 0, ptr %private669, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !117
  tail call void @arm_heavy_mb() #6
  %192 = ptrtoint ptr %port620 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %port620, align 4
  %add701 = add i32 %193, 2
  %and702 = and i32 %add701, 1048575
  %add703 = or i32 %and702, -18874368
  %194 = inttoptr i32 %add703 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %194, i8 1) #6, !srcloc !55
  %195 = ptrtoint ptr %delay625 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %delay625, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool706.not = icmp eq i32 %196, 0
  br i1 %tobool706.not, label %cond.end695.cond.end722_crit_edge, label %cond.false718

cond.end695.cond.end722_crit_edge:                ; preds = %cond.end695
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end722

cond.false718:                                    ; preds = %cond.end695
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %197(i32 noundef %196) #6
  br label %cond.end722

cond.end722:                                      ; preds = %cond.false718, %cond.end695.cond.end722_crit_edge
  %198 = ptrtoint ptr %private669 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 1, ptr %private669, align 4
  %div725 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp7261037 = icmp sgt i32 %count, 3
  br i1 %cmp7261037, label %cond.end722.do.body729_crit_edge, label %cond.end722.do.body759_crit_edge

cond.end722.do.body759_crit_edge:                 ; preds = %cond.end722
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body759

cond.end722.do.body729_crit_edge:                 ; preds = %cond.end722
  br label %do.body729

do.body729:                                       ; preds = %for.inc756.do.body729_crit_edge, %cond.end722.do.body729_crit_edge
  %i.41038 = phi i32 [ %inc757, %for.inc756.do.body729_crit_edge ], [ 0, %cond.end722.do.body729_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !118
  tail call void @arm_heavy_mb() #6
  %arrayidx732 = getelementptr i32, ptr %buf, i32 %i.41038
  %199 = ptrtoint ptr %arrayidx732 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %arrayidx732, align 4
  %201 = tail call i32 @llvm.bswap.i32(i32 %200)
  %202 = ptrtoint ptr %port620 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %port620, align 4
  %add734 = add i32 %203, 4
  %and735 = and i32 %add734, 1048575
  %add736 = or i32 %and735, -18874368
  %204 = inttoptr i32 %add736 to ptr
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) %204, i32 %201) #6, !srcloc !119
  %205 = ptrtoint ptr %delay625 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %delay625, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool739.not = icmp eq i32 %206, 0
  br i1 %tobool739.not, label %do.body729.for.inc756_crit_edge, label %cond.false751

do.body729.for.inc756_crit_edge:                  ; preds = %do.body729
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc756

cond.false751:                                    ; preds = %do.body729
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %207(i32 noundef %206) #6
  br label %for.inc756

for.inc756:                                       ; preds = %cond.false751, %do.body729.for.inc756_crit_edge
  %inc757 = add nuw nsw i32 %i.41038, 1
  %exitcond.not = icmp eq i32 %inc757, %div725
  br i1 %exitcond.not, label %for.inc756.do.body759_crit_edge, label %for.inc756.do.body729_crit_edge

for.inc756.do.body729_crit_edge:                  ; preds = %for.inc756
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body729

for.inc756.do.body759_crit_edge:                  ; preds = %for.inc756
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body759

do.body759:                                       ; preds = %for.inc756.do.body759_crit_edge, %cond.end722.do.body759_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !120
  tail call void @arm_heavy_mb() #6
  %208 = ptrtoint ptr %port620 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %port620, align 4
  %add763 = add i32 %209, 2
  %and764 = and i32 %add763, 1048575
  %add765 = or i32 %and764, -18874368
  %210 = inttoptr i32 %add765 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %210, i8 0) #6, !srcloc !55
  %211 = ptrtoint ptr %delay625 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %delay625, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool768.not = icmp eq i32 %212, 0
  br i1 %tobool768.not, label %do.body759.sw.epilog.sink.split.sink.split_crit_edge, label %do.body759.sw.epilog.sink.split.sink.split.sink.split_crit_edge

do.body759.sw.epilog.sink.split.sink.split.sink.split_crit_edge: ; preds = %do.body759
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split.sink.split

do.body759.sw.epilog.sink.split.sink.split_crit_edge: ; preds = %do.body759
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split.sink.split:       ; preds = %do.body759.sw.epilog.sink.split.sink.split.sink.split_crit_edge, %do.body589.sw.epilog.sink.split.sink.split.sink.split_crit_edge, %do.body420.sw.epilog.sink.split.sink.split.sink.split_crit_edge
  %.sink1052 = phi i32 [ %130, %do.body420.sw.epilog.sink.split.sink.split.sink.split_crit_edge ], [ %171, %do.body589.sw.epilog.sink.split.sink.split.sink.split_crit_edge ], [ %212, %do.body759.sw.epilog.sink.split.sink.split.sink.split_crit_edge ]
  %private331.sink.ph = phi ptr [ %private331, %do.body420.sw.epilog.sink.split.sink.split.sink.split_crit_edge ], [ %private500, %do.body589.sw.epilog.sink.split.sink.split.sink.split_crit_edge ], [ %private669, %do.body759.sw.epilog.sink.split.sink.split.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %213(i32 noundef %.sink1052) #6
  br label %sw.epilog.sink.split.sink.split

sw.epilog.sink.split.sink.split:                  ; preds = %sw.epilog.sink.split.sink.split.sink.split, %do.body759.sw.epilog.sink.split.sink.split_crit_edge, %do.body589.sw.epilog.sink.split.sink.split_crit_edge, %do.body420.sw.epilog.sink.split.sink.split_crit_edge
  %private331.sink = phi ptr [ %private331, %do.body420.sw.epilog.sink.split.sink.split_crit_edge ], [ %private500, %do.body589.sw.epilog.sink.split.sink.split_crit_edge ], [ %private669, %do.body759.sw.epilog.sink.split.sink.split_crit_edge ], [ %private331.sink.ph, %sw.epilog.sink.split.sink.split.sink.split ]
  %214 = ptrtoint ptr %private331.sink to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 0, ptr %private331.sink, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.epilog.sink.split.sink.split, %for.inc275.sw.epilog.sink.split_crit_edge, %cond.end213.sw.epilog.sink.split_crit_edge, %for.inc.sw.epilog.sink.split_crit_edge, %cond.end68.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 0, %cond.end68.sw.epilog.sink.split_crit_edge ], [ 16, %cond.end213.sw.epilog.sink.split_crit_edge ], [ 8, %sw.epilog.sink.split.sink.split ], [ 0, %for.inc.sw.epilog.sink.split_crit_edge ], [ 16, %for.inc275.sw.epilog.sink.split_crit_edge ]
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck_read_block(ptr noundef %pi, ptr nocapture noundef writeonly %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode, align 4
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %1, label %entry.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb163
    i32 2, label %sw.bb377
    i32 3, label %sw.bb549
    i32 4, label %sw.bb721
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 64)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !121
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add1 = or i32 %and, -18874368
  %5 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %5, i8 64) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %6 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %sw.bb.cond.end11_crit_edge, label %cond.false7

sw.bb.cond.end11_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end11

cond.false7:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %8(i32 noundef %7) #6
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %sw.bb.cond.end11_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %9 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %private, align 4
  %xor = xor i32 %10, 2
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !122
  tail call void @arm_heavy_mb() #6
  %11 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %private, align 4
  %conv = trunc i32 %12 to i8
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %add17 = add i32 %14, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %15 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %15, i8 %conv) #6, !srcloc !55
  %16 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool22.not = icmp eq i32 %17, 0
  br i1 %tobool22.not, label %cond.end11.cond.end38_crit_edge, label %cond.false34

cond.end11.cond.end38_crit_edge:                  ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end38

cond.false34:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %17) #6
  br label %cond.end38

cond.end38:                                       ; preds = %cond.false34, %cond.end11.cond.end38_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp391183 = icmp sgt i32 %count, 0
  br i1 %cmp391183, label %cond.end38.for.body_crit_edge, label %cond.end38.sw.epilog.sink.split_crit_edge

cond.end38.sw.epilog.sink.split_crit_edge:        ; preds = %cond.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

cond.end38.for.body_crit_edge:                    ; preds = %cond.end38
  br label %for.body

for.body:                                         ; preds = %cond.end144.for.body_crit_edge, %cond.end38.for.body_crit_edge
  %i.01184 = phi i32 [ %inc, %cond.end144.for.body_crit_edge ], [ 0, %cond.end38.for.body_crit_edge ]
  %19 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %private, align 4
  %xor42 = xor i32 %20, 4
  store i32 %xor42, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !123
  tail call void @arm_heavy_mb() #6
  %21 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %private, align 4
  %conv47 = trunc i32 %22 to i8
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %add49 = add i32 %24, 2
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %25 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %25, i8 %conv47) #6, !srcloc !55
  %26 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool54.not = icmp eq i32 %27, 0
  br i1 %tobool54.not, label %for.body.cond.end88_crit_edge, label %cond.false66

for.body.cond.end88_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end88

cond.false66:                                     ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %28(i32 noundef %27) #6
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool72.not = icmp eq i32 %.pr, 0
  br i1 %tobool72.not, label %cond.false66.cond.end88_crit_edge, label %cond.false84

cond.false66.cond.end88_crit_edge:                ; preds = %cond.false66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end88

cond.false84:                                     ; preds = %cond.false66
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %30(i32 noundef %.pr) #6
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false84, %cond.false66.cond.end88_crit_edge, %for.body.cond.end88_crit_edge
  %31 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %port, align 4
  %add90 = add i32 %32, 1
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %33 = inttoptr i32 %add92 to ptr
  %34 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %33) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !124
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %private, align 4
  %xor98 = xor i32 %36, 4
  store i32 %xor98, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !125
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %private, align 4
  %conv103 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add105 = add i32 %40, 2
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %41 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv103) #6, !srcloc !55
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool110.not = icmp eq i32 %43, 0
  br i1 %tobool110.not, label %cond.end88.cond.end144_crit_edge, label %cond.false122

cond.end88.cond.end144_crit_edge:                 ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end144

cond.false122:                                    ; preds = %cond.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #6
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr1171 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1171)
  %tobool128.not = icmp eq i32 %.pr1171, 0
  br i1 %tobool128.not, label %cond.false122.cond.end144_crit_edge, label %cond.false140

cond.false122.cond.end144_crit_edge:              ; preds = %cond.false122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end144

cond.false140:                                    ; preds = %cond.false122
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %.pr1171) #6
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false140, %cond.false122.cond.end144_crit_edge, %cond.end88.cond.end144_crit_edge
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add147 = add i32 %48, 1
  %and148 = and i32 %add147, 1048575
  %add149 = or i32 %and148, -18874368
  %49 = inttoptr i32 %add149 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !126
  %51 = lshr i8 %34, 3
  %and155 = and i8 %51, 7
  %52 = lshr i8 %34, 4
  %and157 = and i8 %52, 8
  %or = or i8 %and155, %and157
  %shl = shl i8 %50, 1
  %and158 = and i8 %shl, 112
  %and160 = and i8 %50, -128
  %or159 = or i8 %or, %and160
  %or161 = or i8 %or159, %and158
  %arrayidx = getelementptr i8, ptr %buf, i32 %i.01184
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %or161, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.01184, 1
  %exitcond1188.not = icmp eq i32 %inc, %count
  br i1 %exitcond1188.not, label %cond.end144.sw.epilog.sink.split_crit_edge, label %cond.end144.for.body_crit_edge

cond.end144.for.body_crit_edge:                   ; preds = %cond.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end144.sw.epilog.sink.split_crit_edge:       ; preds = %cond.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

sw.bb163:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 80)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !127
  tail call void @arm_heavy_mb() #6
  %port167 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %54 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port167, align 4
  %and169 = and i32 %55, 1048575
  %add170 = or i32 %and169, -18874368
  %56 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 64) #6, !srcloc !55
  %delay172 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %57 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool173.not = icmp eq i32 %58, 0
  br i1 %tobool173.not, label %sw.bb163.cond.end189_crit_edge, label %cond.false185

sw.bb163.cond.end189_crit_edge:                   ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end189

cond.false185:                                    ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #6
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false185, %sw.bb163.cond.end189_crit_edge
  %private190 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %60 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %private190, align 4
  %xor191 = xor i32 %61, 2
  store i32 %xor191, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !128
  tail call void @arm_heavy_mb() #6
  %62 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %private190, align 4
  %conv196 = trunc i32 %63 to i8
  %64 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %port167, align 4
  %add198 = add i32 %65, 2
  %and199 = and i32 %add198, 1048575
  %add200 = or i32 %and199, -18874368
  %66 = inttoptr i32 %add200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %66, i8 %conv196) #6, !srcloc !55
  %67 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %68)
  %tobool203.not = icmp eq i32 %68, 0
  br i1 %tobool203.not, label %cond.end189.cond.end219_crit_edge, label %cond.false215

cond.end189.cond.end219_crit_edge:                ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end219

cond.false215:                                    ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %69 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %69(i32 noundef %68) #6
  br label %cond.end219

cond.end219:                                      ; preds = %cond.false215, %cond.end189.cond.end219_crit_edge
  %70 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %private190, align 4
  %xor221 = xor i32 %71, 32
  store i32 %xor221, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !129
  tail call void @arm_heavy_mb() #6
  %72 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %private190, align 4
  %conv226 = trunc i32 %73 to i8
  %74 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port167, align 4
  %add228 = add i32 %75, 2
  %and229 = and i32 %add228, 1048575
  %add230 = or i32 %and229, -18874368
  %76 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 %conv226) #6, !srcloc !55
  %77 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool233.not = icmp eq i32 %78, 0
  br i1 %tobool233.not, label %cond.end219.cond.end249_crit_edge, label %cond.false245

cond.end219.cond.end249_crit_edge:                ; preds = %cond.end219
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end249

cond.false245:                                    ; preds = %cond.end219
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %79 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %79(i32 noundef %78) #6
  br label %cond.end249

cond.end249:                                      ; preds = %cond.false245, %cond.end219.cond.end249_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp2511181 = icmp sgt i32 %count, 0
  br i1 %cmp2511181, label %cond.end249.for.body253_crit_edge, label %cond.end249.for.end316_crit_edge

cond.end249.for.end316_crit_edge:                 ; preds = %cond.end249
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end316

cond.end249.for.body253_crit_edge:                ; preds = %cond.end249
  br label %for.body253

for.body253:                                      ; preds = %cond.end301.for.body253_crit_edge, %cond.end249.for.body253_crit_edge
  %i.11182 = phi i32 [ %inc315, %cond.end301.for.body253_crit_edge ], [ 0, %cond.end249.for.body253_crit_edge ]
  %80 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %private190, align 4
  %xor255 = xor i32 %81, 4
  store i32 %xor255, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !130
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %private190, align 4
  %conv260 = trunc i32 %83 to i8
  %84 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port167, align 4
  %add262 = add i32 %85, 2
  %and263 = and i32 %add262, 1048575
  %add264 = or i32 %and263, -18874368
  %86 = inttoptr i32 %add264 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %86, i8 %conv260) #6, !srcloc !55
  %87 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %88)
  %tobool267.not = icmp eq i32 %88, 0
  br i1 %tobool267.not, label %for.body253.cond.end301_crit_edge, label %cond.false279

for.body253.cond.end301_crit_edge:                ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end301

cond.false279:                                    ; preds = %for.body253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %89 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %89(i32 noundef %88) #6
  %90 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr1173 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr1173)
  %tobool285.not = icmp eq i32 %.pr1173, 0
  br i1 %tobool285.not, label %cond.false279.cond.end301_crit_edge, label %cond.false297

cond.false279.cond.end301_crit_edge:              ; preds = %cond.false279
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end301

cond.false297:                                    ; preds = %cond.false279
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %91(i32 noundef %.pr1173) #6
  br label %cond.end301

cond.end301:                                      ; preds = %cond.false297, %cond.false279.cond.end301_crit_edge, %for.body253.cond.end301_crit_edge
  %92 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %port167, align 4
  %and305 = and i32 %93, 1048575
  %add306 = or i32 %and305, -18874368
  %94 = inttoptr i32 %add306 to ptr
  %95 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %94) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !131
  %arrayidx313 = getelementptr i8, ptr %buf, i32 %i.11182
  %96 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store1_noabort(i32 %96)
  store i8 %95, ptr %arrayidx313, align 1
  %inc315 = add nuw nsw i32 %i.11182, 1
  %exitcond1187.not = icmp eq i32 %inc315, %count
  br i1 %exitcond1187.not, label %cond.end301.for.end316_crit_edge, label %cond.end301.for.body253_crit_edge

cond.end301.for.body253_crit_edge:                ; preds = %cond.end301
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body253

cond.end301.for.end316_crit_edge:                 ; preds = %cond.end301
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end316

for.end316:                                       ; preds = %cond.end301.for.end316_crit_edge, %cond.end249.for.end316_crit_edge
  %97 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %private190, align 4
  %xor318 = xor i32 %98, 1
  store i32 %xor318, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !132
  tail call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %private190, align 4
  %conv323 = trunc i32 %100 to i8
  %101 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port167, align 4
  %add325 = add i32 %102, 2
  %and326 = and i32 %add325, 1048575
  %add327 = or i32 %and326, -18874368
  %103 = inttoptr i32 %add327 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 %conv323) #6, !srcloc !55
  %104 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool330.not = icmp eq i32 %105, 0
  br i1 %tobool330.not, label %for.end316.cond.end346_crit_edge, label %cond.false342

for.end316.cond.end346_crit_edge:                 ; preds = %for.end316
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end346

cond.false342:                                    ; preds = %for.end316
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %105) #6
  br label %cond.end346

cond.end346:                                      ; preds = %cond.false342, %for.end316.cond.end346_crit_edge
  %107 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %private190, align 4
  %xor348 = xor i32 %108, 32
  store i32 %xor348, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !133
  tail call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %private190, align 4
  %conv353 = trunc i32 %110 to i8
  %111 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %port167, align 4
  %add355 = add i32 %112, 2
  %and356 = and i32 %add355, 1048575
  %add357 = or i32 %and356, -18874368
  %113 = inttoptr i32 %add357 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %113, i8 %conv353) #6, !srcloc !55
  %114 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %115)
  %tobool360.not = icmp eq i32 %115, 0
  br i1 %tobool360.not, label %cond.end346.sw.epilog.sink.split_crit_edge, label %cond.false372

cond.end346.sw.epilog.sink.split_crit_edge:       ; preds = %cond.end346
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

cond.false372:                                    ; preds = %cond.end346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %116 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %116(i32 noundef %115) #6
  br label %sw.epilog.sink.split

sw.bb377:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !134
  tail call void @arm_heavy_mb() #6
  %port381 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %117 = ptrtoint ptr %port381 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port381, align 4
  %and383 = and i32 %118, 1048575
  %add384 = or i32 %and383, -18874368
  %119 = inttoptr i32 %add384 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 64) #6, !srcloc !55
  %delay386 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %120 = ptrtoint ptr %delay386 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool387.not = icmp eq i32 %121, 0
  br i1 %tobool387.not, label %sw.bb377.do.body404_crit_edge, label %cond.false399

sw.bb377.do.body404_crit_edge:                    ; preds = %sw.bb377
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body404

cond.false399:                                    ; preds = %sw.bb377
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #6
  br label %do.body404

do.body404:                                       ; preds = %cond.false399, %sw.bb377.do.body404_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !135
  tail call void @arm_heavy_mb() #6
  %123 = ptrtoint ptr %port381 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %port381, align 4
  %add408 = add i32 %124, 2
  %and409 = and i32 %add408, 1048575
  %add410 = or i32 %and409, -18874368
  %125 = inttoptr i32 %add410 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %125, i8 9) #6, !srcloc !55
  %126 = ptrtoint ptr %delay386 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %delay386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool413.not = icmp eq i32 %127, 0
  br i1 %tobool413.not, label %do.body404.cond.end429_crit_edge, label %cond.false425

do.body404.cond.end429_crit_edge:                 ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end429

cond.false425:                                    ; preds = %do.body404
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %128 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %128(i32 noundef %127) #6
  br label %cond.end429

cond.end429:                                      ; preds = %cond.false425, %do.body404.cond.end429_crit_edge
  %private430 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %129 = ptrtoint ptr %private430 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 9, ptr %private430, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !136
  tail call void @arm_heavy_mb() #6
  %130 = ptrtoint ptr %port381 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %port381, align 4
  %add435 = add i32 %131, 2
  %and436 = and i32 %add435, 1048575
  %add437 = or i32 %and436, -18874368
  %132 = inttoptr i32 %add437 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %132, i8 0) #6, !srcloc !55
  %133 = ptrtoint ptr %delay386 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %delay386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %134)
  %tobool440.not = icmp eq i32 %134, 0
  br i1 %tobool440.not, label %cond.end429.cond.end456_crit_edge, label %cond.false452

cond.end429.cond.end456_crit_edge:                ; preds = %cond.end429
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end456

cond.false452:                                    ; preds = %cond.end429
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %135 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %135(i32 noundef %134) #6
  br label %cond.end456

cond.end456:                                      ; preds = %cond.false452, %cond.end429.cond.end456_crit_edge
  %136 = ptrtoint ptr %private430 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 0, ptr %private430, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !137
  tail call void @arm_heavy_mb() #6
  %137 = ptrtoint ptr %port381 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %port381, align 4
  %add462 = add i32 %138, 2
  %and463 = and i32 %add462, 1048575
  %add464 = or i32 %and463, -18874368
  %139 = inttoptr i32 %add464 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %139, i8 32) #6, !srcloc !55
  %140 = ptrtoint ptr %delay386 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %delay386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %tobool467.not = icmp eq i32 %141, 0
  br i1 %tobool467.not, label %cond.end456.cond.end483_crit_edge, label %cond.false479

cond.end456.cond.end483_crit_edge:                ; preds = %cond.end456
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end483

cond.false479:                                    ; preds = %cond.end456
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %142 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %142(i32 noundef %141) #6
  br label %cond.end483

cond.end483:                                      ; preds = %cond.false479, %cond.end456.cond.end483_crit_edge
  %143 = ptrtoint ptr %private430 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 32, ptr %private430, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp4861179 = icmp sgt i32 %count, 0
  br i1 %cmp4861179, label %cond.end483.for.body488_crit_edge, label %cond.end483.do.body522_crit_edge

cond.end483.do.body522_crit_edge:                 ; preds = %cond.end483
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body522

cond.end483.for.body488_crit_edge:                ; preds = %cond.end483
  br label %for.body488

for.body488:                                      ; preds = %cond.end506.for.body488_crit_edge, %cond.end483.for.body488_crit_edge
  %i.21180 = phi i32 [ %inc520, %cond.end506.for.body488_crit_edge ], [ 0, %cond.end483.for.body488_crit_edge ]
  %144 = ptrtoint ptr %delay386 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool490.not = icmp eq i32 %145, 0
  br i1 %tobool490.not, label %for.body488.cond.end506_crit_edge, label %cond.false502

for.body488.cond.end506_crit_edge:                ; preds = %for.body488
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end506

cond.false502:                                    ; preds = %for.body488
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #6
  br label %cond.end506

cond.end506:                                      ; preds = %cond.false502, %for.body488.cond.end506_crit_edge
  %147 = ptrtoint ptr %port381 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %port381, align 4
  %add509 = add i32 %148, 4
  %and510 = and i32 %add509, 1048575
  %add511 = or i32 %and510, -18874368
  %149 = inttoptr i32 %add511 to ptr
  %150 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %149) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !138
  %arrayidx518 = getelementptr i8, ptr %buf, i32 %i.21180
  %151 = ptrtoint ptr %arrayidx518 to i32
  call void @__asan_store1_noabort(i32 %151)
  store i8 %150, ptr %arrayidx518, align 1
  %inc520 = add nuw nsw i32 %i.21180, 1
  %exitcond1186.not = icmp eq i32 %inc520, %count
  br i1 %exitcond1186.not, label %cond.end506.do.body522_crit_edge, label %cond.end506.for.body488_crit_edge

cond.end506.for.body488_crit_edge:                ; preds = %cond.end506
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body488

cond.end506.do.body522_crit_edge:                 ; preds = %cond.end506
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body522

do.body522:                                       ; preds = %cond.end506.do.body522_crit_edge, %cond.end483.do.body522_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !139
  tail call void @arm_heavy_mb() #6
  %152 = ptrtoint ptr %port381 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %port381, align 4
  %add526 = add i32 %153, 2
  %and527 = and i32 %add526, 1048575
  %add528 = or i32 %and527, -18874368
  %154 = inttoptr i32 %add528 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %154, i8 0) #6, !srcloc !55
  %155 = ptrtoint ptr %delay386 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %delay386, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %156)
  %tobool531.not = icmp eq i32 %156, 0
  br i1 %tobool531.not, label %do.body522.cond.end547_crit_edge, label %cond.false543

do.body522.cond.end547_crit_edge:                 ; preds = %do.body522
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end547

cond.false543:                                    ; preds = %do.body522
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %157 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %157(i32 noundef %156) #6
  br label %cond.end547

cond.end547:                                      ; preds = %cond.false543, %do.body522.cond.end547_crit_edge
  %158 = ptrtoint ptr %private430 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %private430, align 4
  br label %sw.epilog.sink.split

sw.bb549:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  %port553 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %159 = ptrtoint ptr %port553 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %port553, align 4
  %and555 = and i32 %160, 1048575
  %add556 = or i32 %and555, -18874368
  %161 = inttoptr i32 %add556 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %161, i8 64) #6, !srcloc !55
  %delay558 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %162 = ptrtoint ptr %delay558 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %delay558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %tobool559.not = icmp eq i32 %163, 0
  br i1 %tobool559.not, label %sw.bb549.do.body576_crit_edge, label %cond.false571

sw.bb549.do.body576_crit_edge:                    ; preds = %sw.bb549
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body576

cond.false571:                                    ; preds = %sw.bb549
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %164 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %164(i32 noundef %163) #6
  br label %do.body576

do.body576:                                       ; preds = %cond.false571, %sw.bb549.do.body576_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !141
  tail call void @arm_heavy_mb() #6
  %165 = ptrtoint ptr %port553 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port553, align 4
  %add580 = add i32 %166, 2
  %and581 = and i32 %add580, 1048575
  %add582 = or i32 %and581, -18874368
  %167 = inttoptr i32 %add582 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 9) #6, !srcloc !55
  %168 = ptrtoint ptr %delay558 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool585.not = icmp eq i32 %169, 0
  br i1 %tobool585.not, label %do.body576.cond.end601_crit_edge, label %cond.false597

do.body576.cond.end601_crit_edge:                 ; preds = %do.body576
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end601

cond.false597:                                    ; preds = %do.body576
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #6
  br label %cond.end601

cond.end601:                                      ; preds = %cond.false597, %do.body576.cond.end601_crit_edge
  %private602 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %171 = ptrtoint ptr %private602 to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 9, ptr %private602, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !142
  tail call void @arm_heavy_mb() #6
  %172 = ptrtoint ptr %port553 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %port553, align 4
  %add607 = add i32 %173, 2
  %and608 = and i32 %add607, 1048575
  %add609 = or i32 %and608, -18874368
  %174 = inttoptr i32 %add609 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %174, i8 0) #6, !srcloc !55
  %175 = ptrtoint ptr %delay558 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %delay558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool612.not = icmp eq i32 %176, 0
  br i1 %tobool612.not, label %cond.end601.cond.end628_crit_edge, label %cond.false624

cond.end601.cond.end628_crit_edge:                ; preds = %cond.end601
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end628

cond.false624:                                    ; preds = %cond.end601
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %177 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %177(i32 noundef %176) #6
  br label %cond.end628

cond.end628:                                      ; preds = %cond.false624, %cond.end601.cond.end628_crit_edge
  %178 = ptrtoint ptr %private602 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %private602, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !143
  tail call void @arm_heavy_mb() #6
  %179 = ptrtoint ptr %port553 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %port553, align 4
  %add634 = add i32 %180, 2
  %and635 = and i32 %add634, 1048575
  %add636 = or i32 %and635, -18874368
  %181 = inttoptr i32 %add636 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %181, i8 32) #6, !srcloc !55
  %182 = ptrtoint ptr %delay558 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %delay558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %183)
  %tobool639.not = icmp eq i32 %183, 0
  br i1 %tobool639.not, label %cond.end628.cond.end655_crit_edge, label %cond.false651

cond.end628.cond.end655_crit_edge:                ; preds = %cond.end628
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end655

cond.false651:                                    ; preds = %cond.end628
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %184 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %184(i32 noundef %183) #6
  br label %cond.end655

cond.end655:                                      ; preds = %cond.false651, %cond.end628.cond.end655_crit_edge
  %185 = ptrtoint ptr %private602 to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 32, ptr %private602, align 4
  %div = sdiv i32 %count, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %count)
  %cmp6581177 = icmp sgt i32 %count, 1
  br i1 %cmp6581177, label %cond.end655.for.body660_crit_edge, label %cond.end655.do.body694_crit_edge

cond.end655.do.body694_crit_edge:                 ; preds = %cond.end655
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body694

cond.end655.for.body660_crit_edge:                ; preds = %cond.end655
  br label %for.body660

for.body660:                                      ; preds = %cond.end678.for.body660_crit_edge, %cond.end655.for.body660_crit_edge
  %i.31178 = phi i32 [ %inc692, %cond.end678.for.body660_crit_edge ], [ 0, %cond.end655.for.body660_crit_edge ]
  %186 = ptrtoint ptr %delay558 to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %delay558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %187)
  %tobool662.not = icmp eq i32 %187, 0
  br i1 %tobool662.not, label %for.body660.cond.end678_crit_edge, label %cond.false674

for.body660.cond.end678_crit_edge:                ; preds = %for.body660
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end678

cond.false674:                                    ; preds = %for.body660
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %188 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %188(i32 noundef %187) #6
  br label %cond.end678

cond.end678:                                      ; preds = %cond.false674, %for.body660.cond.end678_crit_edge
  %189 = ptrtoint ptr %port553 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %port553, align 4
  %add681 = add i32 %190, 4
  %and682 = and i32 %add681, 1048575
  %add683 = or i32 %and682, -18874368
  %191 = inttoptr i32 %add683 to ptr
  %192 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %191) #6, !srcloc !144
  %193 = tail call i16 @llvm.bswap.i16(i16 %192)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !145
  %arrayidx690 = getelementptr i16, ptr %buf, i32 %i.31178
  %194 = ptrtoint ptr %arrayidx690 to i32
  call void @__asan_store2_noabort(i32 %194)
  store i16 %193, ptr %arrayidx690, align 2
  %inc692 = add nuw nsw i32 %i.31178, 1
  %exitcond1185.not = icmp eq i32 %inc692, %div
  br i1 %exitcond1185.not, label %cond.end678.do.body694_crit_edge, label %cond.end678.for.body660_crit_edge

cond.end678.for.body660_crit_edge:                ; preds = %cond.end678
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body660

cond.end678.do.body694_crit_edge:                 ; preds = %cond.end678
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body694

do.body694:                                       ; preds = %cond.end678.do.body694_crit_edge, %cond.end655.do.body694_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !146
  tail call void @arm_heavy_mb() #6
  %195 = ptrtoint ptr %port553 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %port553, align 4
  %add698 = add i32 %196, 2
  %and699 = and i32 %add698, 1048575
  %add700 = or i32 %and699, -18874368
  %197 = inttoptr i32 %add700 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %197, i8 0) #6, !srcloc !55
  %198 = ptrtoint ptr %delay558 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %delay558, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %199)
  %tobool703.not = icmp eq i32 %199, 0
  br i1 %tobool703.not, label %do.body694.cond.end719_crit_edge, label %cond.false715

do.body694.cond.end719_crit_edge:                 ; preds = %do.body694
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end719

cond.false715:                                    ; preds = %do.body694
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %200 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %200(i32 noundef %199) #6
  br label %cond.end719

cond.end719:                                      ; preds = %cond.false715, %do.body694.cond.end719_crit_edge
  %201 = ptrtoint ptr %private602 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 0, ptr %private602, align 4
  br label %sw.epilog.sink.split

sw.bb721:                                         ; preds = %entry
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 72)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !147
  tail call void @arm_heavy_mb() #6
  %port725 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %202 = ptrtoint ptr %port725 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %port725, align 4
  %and727 = and i32 %203, 1048575
  %add728 = or i32 %and727, -18874368
  %204 = inttoptr i32 %add728 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %204, i8 64) #6, !srcloc !55
  %delay730 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %205 = ptrtoint ptr %delay730 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %delay730, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %206)
  %tobool731.not = icmp eq i32 %206, 0
  br i1 %tobool731.not, label %sw.bb721.do.body748_crit_edge, label %cond.false743

sw.bb721.do.body748_crit_edge:                    ; preds = %sw.bb721
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body748

cond.false743:                                    ; preds = %sw.bb721
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %207 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %207(i32 noundef %206) #6
  br label %do.body748

do.body748:                                       ; preds = %cond.false743, %sw.bb721.do.body748_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !148
  tail call void @arm_heavy_mb() #6
  %208 = ptrtoint ptr %port725 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %port725, align 4
  %add752 = add i32 %209, 2
  %and753 = and i32 %add752, 1048575
  %add754 = or i32 %and753, -18874368
  %210 = inttoptr i32 %add754 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %210, i8 9) #6, !srcloc !55
  %211 = ptrtoint ptr %delay730 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %delay730, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool757.not = icmp eq i32 %212, 0
  br i1 %tobool757.not, label %do.body748.cond.end773_crit_edge, label %cond.false769

do.body748.cond.end773_crit_edge:                 ; preds = %do.body748
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end773

cond.false769:                                    ; preds = %do.body748
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %213(i32 noundef %212) #6
  br label %cond.end773

cond.end773:                                      ; preds = %cond.false769, %do.body748.cond.end773_crit_edge
  %private774 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %214 = ptrtoint ptr %private774 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 9, ptr %private774, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !149
  tail call void @arm_heavy_mb() #6
  %215 = ptrtoint ptr %port725 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %port725, align 4
  %add779 = add i32 %216, 2
  %and780 = and i32 %add779, 1048575
  %add781 = or i32 %and780, -18874368
  %217 = inttoptr i32 %add781 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %217, i8 0) #6, !srcloc !55
  %218 = ptrtoint ptr %delay730 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %delay730, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %219)
  %tobool784.not = icmp eq i32 %219, 0
  br i1 %tobool784.not, label %cond.end773.cond.end800_crit_edge, label %cond.false796

cond.end773.cond.end800_crit_edge:                ; preds = %cond.end773
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end800

cond.false796:                                    ; preds = %cond.end773
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %220 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %220(i32 noundef %219) #6
  br label %cond.end800

cond.end800:                                      ; preds = %cond.false796, %cond.end773.cond.end800_crit_edge
  %221 = ptrtoint ptr %private774 to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 0, ptr %private774, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !150
  tail call void @arm_heavy_mb() #6
  %222 = ptrtoint ptr %port725 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %port725, align 4
  %add806 = add i32 %223, 2
  %and807 = and i32 %add806, 1048575
  %add808 = or i32 %and807, -18874368
  %224 = inttoptr i32 %add808 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %224, i8 32) #6, !srcloc !55
  %225 = ptrtoint ptr %delay730 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %delay730, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %226)
  %tobool811.not = icmp eq i32 %226, 0
  br i1 %tobool811.not, label %cond.end800.cond.end827_crit_edge, label %cond.false823

cond.end800.cond.end827_crit_edge:                ; preds = %cond.end800
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end827

cond.false823:                                    ; preds = %cond.end800
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %227 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %227(i32 noundef %226) #6
  br label %cond.end827

cond.end827:                                      ; preds = %cond.false823, %cond.end800.cond.end827_crit_edge
  %228 = ptrtoint ptr %private774 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 32, ptr %private774, align 4
  %div830 = sdiv i32 %count, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %count)
  %cmp8311175 = icmp sgt i32 %count, 3
  br i1 %cmp8311175, label %cond.end827.for.body833_crit_edge, label %cond.end827.do.body865_crit_edge

cond.end827.do.body865_crit_edge:                 ; preds = %cond.end827
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body865

cond.end827.for.body833_crit_edge:                ; preds = %cond.end827
  br label %for.body833

for.body833:                                      ; preds = %cond.end851.for.body833_crit_edge, %cond.end827.for.body833_crit_edge
  %i.41176 = phi i32 [ %inc863, %cond.end851.for.body833_crit_edge ], [ 0, %cond.end827.for.body833_crit_edge ]
  %229 = ptrtoint ptr %delay730 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %delay730, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool835.not = icmp eq i32 %230, 0
  br i1 %tobool835.not, label %for.body833.cond.end851_crit_edge, label %cond.false847

for.body833.cond.end851_crit_edge:                ; preds = %for.body833
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end851

cond.false847:                                    ; preds = %for.body833
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %231(i32 noundef %230) #6
  br label %cond.end851

cond.end851:                                      ; preds = %cond.false847, %for.body833.cond.end851_crit_edge
  %232 = ptrtoint ptr %port725 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %port725, align 4
  %add854 = add i32 %233, 4
  %and855 = and i32 %add854, 1048575
  %add856 = or i32 %and855, -18874368
  %234 = inttoptr i32 %add856 to ptr
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %234) #6, !srcloc !151
  %236 = tail call i32 @llvm.bswap.i32(i32 %235)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !152
  %arrayidx861 = getelementptr i32, ptr %buf, i32 %i.41176
  %237 = ptrtoint ptr %arrayidx861 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %arrayidx861, align 4
  %inc863 = add nuw nsw i32 %i.41176, 1
  %exitcond.not = icmp eq i32 %inc863, %div830
  br i1 %exitcond.not, label %cond.end851.do.body865_crit_edge, label %cond.end851.for.body833_crit_edge

cond.end851.for.body833_crit_edge:                ; preds = %cond.end851
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body833

cond.end851.do.body865_crit_edge:                 ; preds = %cond.end851
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body865

do.body865:                                       ; preds = %cond.end851.do.body865_crit_edge, %cond.end827.do.body865_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !153
  tail call void @arm_heavy_mb() #6
  %238 = ptrtoint ptr %port725 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %port725, align 4
  %add869 = add i32 %239, 2
  %and870 = and i32 %add869, 1048575
  %add871 = or i32 %and870, -18874368
  %240 = inttoptr i32 %add871 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %240, i8 0) #6, !srcloc !55
  %241 = ptrtoint ptr %delay730 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %delay730, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool874.not = icmp eq i32 %242, 0
  br i1 %tobool874.not, label %do.body865.cond.end890_crit_edge, label %cond.false886

do.body865.cond.end890_crit_edge:                 ; preds = %do.body865
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end890

cond.false886:                                    ; preds = %do.body865
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %243 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %243(i32 noundef %242) #6
  br label %cond.end890

cond.end890:                                      ; preds = %cond.false886, %do.body865.cond.end890_crit_edge
  %244 = ptrtoint ptr %private774 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %private774, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cond.end890, %cond.end719, %cond.end547, %cond.false372, %cond.end346.sw.epilog.sink.split_crit_edge, %cond.end144.sw.epilog.sink.split_crit_edge, %cond.end38.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8, %cond.end890 ], [ 8, %cond.end719 ], [ 8, %cond.end547 ], [ 0, %cond.end38.sw.epilog.sink.split_crit_edge ], [ 16, %cond.end346.sw.epilog.sink.split_crit_edge ], [ 16, %cond.false372 ], [ 0, %cond.end144.sw.epilog.sink.split_crit_edge ]
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck_connect(ptr noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end10_crit_edge, label %cond.false6

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end10

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %1) #6
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %entry.cond.end10_crit_edge
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add11 = or i32 %and, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !154
  %conv = zext i8 %6 to i32
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %7 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %saved_r0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !155
  tail call void @arm_heavy_mb() #6
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unit, align 4
  %10 = trunc i32 %9 to i8
  %conv14 = xor i8 %10, -1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %and17 = and i32 %12, 1048575
  %add18 = or i32 %and17, -18874368
  %13 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv14) #6, !srcloc !55
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %cond.end10.do.body38_crit_edge, label %cond.false33

cond.end10.do.body38_crit_edge:                   ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

cond.false33:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #6
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %cond.end10.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !156
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add41 = add i32 %18, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %19 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 4) #6, !srcloc !55
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool46.not = icmp eq i32 %21, 0
  br i1 %tobool46.not, label %do.body38.cond.end62_crit_edge, label %cond.false58

do.body38.cond.end62_crit_edge:                   ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end62

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #6
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false58, %do.body38.cond.end62_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %23 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !157
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unit, align 4
  %conv66 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and69 = and i32 %27, 1048575
  %add70 = or i32 %and69, -18874368
  %28 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv66) #6, !srcloc !55
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool73.not = icmp eq i32 %30, 0
  br i1 %tobool73.not, label %cond.end62.cond.end89_crit_edge, label %cond.false85

cond.end62.cond.end89_crit_edge:                  ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end89

cond.false85:                                     ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #6
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false85, %cond.end62.cond.end89_crit_edge
  %32 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %private, align 4
  %xor = xor i32 %33, 8
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !158
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %private, align 4
  %conv94 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add96 = add i32 %37, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %38 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv94) #6, !srcloc !55
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool101.not = icmp eq i32 %40, 0
  br i1 %tobool101.not, label %cond.end89.cond.end117_crit_edge, label %cond.false113

cond.end89.cond.end117_crit_edge:                 ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end117

cond.false113:                                    ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #6
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false113, %cond.end89.cond.end117_crit_edge
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %private, align 4
  %xor119 = xor i32 %43, 8
  store i32 %xor119, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !159
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private, align 4
  %conv123 = trunc i32 %45 to i8
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add125 = add i32 %47, 2
  %and126 = and i32 %add125, 1048575
  %add127 = or i32 %and126, -18874368
  %48 = inttoptr i32 %add127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv123) #6, !srcloc !55
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool130.not = icmp eq i32 %50, 0
  br i1 %tobool130.not, label %cond.end117.cond.end146_crit_edge, label %cond.false142

cond.end117.cond.end146_crit_edge:                ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end146

cond.false142:                                    ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #6
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false142, %cond.end117.cond.end146_crit_edge
  %52 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %private, align 4
  %xor148 = xor i32 %53, 8
  store i32 %xor148, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !160
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %private, align 4
  %conv152 = trunc i32 %55 to i8
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add154 = add i32 %57, 2
  %and155 = and i32 %add154, 1048575
  %add156 = or i32 %and155, -18874368
  %58 = inttoptr i32 %add156 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv152) #6, !srcloc !55
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool159.not = icmp eq i32 %60, 0
  br i1 %tobool159.not, label %cond.end146.cond.end175_crit_edge, label %cond.false171

cond.end146.cond.end175_crit_edge:                ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end175

cond.false171:                                    ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #6
  br label %cond.end175

cond.end175:                                      ; preds = %cond.false171, %cond.end146.cond.end175_crit_edge
  %62 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %private, align 4
  %xor177 = xor i32 %63, 2
  store i32 %xor177, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !161
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %private, align 4
  %conv181 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add183 = add i32 %67, 2
  %and184 = and i32 %add183, 1048575
  %add185 = or i32 %and184, -18874368
  %68 = inttoptr i32 %add185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %conv181) #6, !srcloc !55
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool188.not = icmp eq i32 %70, 0
  br i1 %tobool188.not, label %cond.end175.cond.end204_crit_edge, label %cond.false200

cond.end175.cond.end204_crit_edge:                ; preds = %cond.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end204

cond.false200:                                    ; preds = %cond.end175
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #6
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false200, %cond.end175.cond.end204_crit_edge
  %72 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %private, align 4
  %xor206 = xor i32 %73, 2
  store i32 %xor206, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !162
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %private, align 4
  %conv210 = trunc i32 %75 to i8
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add212 = add i32 %77, 2
  %and213 = and i32 %add212, 1048575
  %add214 = or i32 %and213, -18874368
  %78 = inttoptr i32 %add214 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %conv210) #6, !srcloc !55
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool217.not = icmp eq i32 %80, 0
  br i1 %tobool217.not, label %cond.end204.cond.end233_crit_edge, label %cond.false229

cond.end204.cond.end233_crit_edge:                ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end233

cond.false229:                                    ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #6
  br label %cond.end233

cond.end233:                                      ; preds = %cond.false229, %cond.end204.cond.end233_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %82 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mode, align 4
  %84 = zext i32 %83 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %83, label %cond.end233.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb263
    i32 2, label %cond.end233.do.body294_crit_edge
    i32 3, label %cond.end233.do.body294_crit_edge435
    i32 4, label %cond.end233.do.body294_crit_edge436
  ]

cond.end233.do.body294_crit_edge436:              ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body294

cond.end233.do.body294_crit_edge435:              ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body294

cond.end233.do.body294_crit_edge:                 ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body294

cond.end233.sw.epilog_crit_edge:                  ; preds = %cond.end233
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %cond.end233
  %85 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %private, align 4
  %xor235 = xor i32 %86, 8
  store i32 %xor235, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !163
  tail call void @arm_heavy_mb() #6
  %87 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %private, align 4
  %conv239 = trunc i32 %88 to i8
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %add241 = add i32 %90, 2
  %and242 = and i32 %add241, 1048575
  %add243 = or i32 %and242, -18874368
  %91 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 %conv239) #6, !srcloc !55
  %92 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool246.not = icmp eq i32 %93, 0
  br i1 %tobool246.not, label %sw.bb.sw.epilog.sink.split_crit_edge, label %cond.false258

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

cond.false258:                                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #6
  br label %sw.epilog.sink.split

sw.bb263:                                         ; preds = %cond.end233
  %95 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %private, align 4
  %xor265 = xor i32 %96, 8
  store i32 %xor265, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !164
  tail call void @arm_heavy_mb() #6
  %97 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %private, align 4
  %conv269 = trunc i32 %98 to i8
  %99 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %port, align 4
  %add271 = add i32 %100, 2
  %and272 = and i32 %add271, 1048575
  %add273 = or i32 %and272, -18874368
  %101 = inttoptr i32 %add273 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %101, i8 %conv269) #6, !srcloc !55
  %102 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool276.not = icmp eq i32 %103, 0
  br i1 %tobool276.not, label %sw.bb263.sw.epilog.sink.split_crit_edge, label %cond.false288

sw.bb263.sw.epilog.sink.split_crit_edge:          ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.sink.split

cond.false288:                                    ; preds = %sw.bb263
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %104 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %104(i32 noundef %103) #6
  br label %sw.epilog.sink.split

do.body294:                                       ; preds = %cond.end233.do.body294_crit_edge, %cond.end233.do.body294_crit_edge435, %cond.end233.do.body294_crit_edge436
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !165
  tail call void @arm_heavy_mb() #6
  %105 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %port, align 4
  %add297 = add i32 %106, 2
  %and298 = and i32 %add297, 1048575
  %add299 = or i32 %and298, -18874368
  %107 = inttoptr i32 %add299 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %107, i8 0) #6, !srcloc !55
  %108 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %109)
  %tobool302.not = icmp eq i32 %109, 0
  br i1 %tobool302.not, label %do.body294.cond.end318_crit_edge, label %cond.false314

do.body294.cond.end318_crit_edge:                 ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end318

cond.false314:                                    ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %110 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %110(i32 noundef %109) #6
  br label %cond.end318

cond.end318:                                      ; preds = %cond.false314, %do.body294.cond.end318_crit_edge
  %111 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 0, ptr %private, align 4
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %cond.end318, %cond.false288, %sw.bb263.sw.epilog.sink.split_crit_edge, %cond.false258, %sw.bb.sw.epilog.sink.split_crit_edge
  %.sink = phi i32 [ 8, %cond.end318 ], [ 0, %sw.bb.sw.epilog.sink.split_crit_edge ], [ 0, %cond.false258 ], [ 16, %sw.bb263.sw.epilog.sink.split_crit_edge ], [ 16, %cond.false288 ]
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef %.sink)
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %cond.end233.sw.epilog_crit_edge
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 5, i32 noundef 8)
  %devtype = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 4
  %112 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %113)
  %cmp320 = icmp eq i32 %113, 1
  br i1 %cmp320, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 70, i32 noundef 16)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 76, i32 noundef 56)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 77, i32 noundef 136)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 70, i32 noundef 160)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 65, i32 noundef 0)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 78, i32 noundef 8)
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck_disconnect(ptr nocapture noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !166
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %and = and i32 %1, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 0) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cond.end11_crit_edge, label %cond.false7

entry.cond.end11_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end11

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %5(i32 noundef %4) #6
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %entry.cond.end11_crit_edge
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %6 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp12 = icmp sgt i32 %7, 1
  br i1 %cmp12, label %do.body13, label %if.else

do.body13:                                        ; preds = %cond.end11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !167
  tail call void @arm_heavy_mb() #6
  %8 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %port, align 4
  %add16 = add i32 %9, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %10 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %10, i8 9) #6, !srcloc !55
  %11 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool21.not = icmp eq i32 %12, 0
  br i1 %tobool21.not, label %do.body13.cond.end36_crit_edge, label %cond.false32

do.body13.cond.end36_crit_edge:                   ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end36

cond.false32:                                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %13(i32 noundef %12) #6
  br label %cond.end36

cond.end36:                                       ; preds = %cond.false32, %do.body13.cond.end36_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %14 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 9, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !168
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %add40 = add i32 %16, 2
  %and41 = and i32 %add40, 1048575
  %add42 = or i32 %and41, -18874368
  %17 = inttoptr i32 %add42 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 0) #6, !srcloc !55
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool45.not = icmp eq i32 %19, 0
  br i1 %tobool45.not, label %cond.end36.cond.end60_crit_edge, label %cond.false56

cond.end36.cond.end60_crit_edge:                  ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end60

cond.false56:                                     ; preds = %cond.end36
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #6
  br label %cond.end60

cond.end60:                                       ; preds = %cond.false56, %cond.end36.cond.end60_crit_edge
  %21 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %private, align 4
  br label %do.body89

if.else:                                          ; preds = %cond.end11
  %private62 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %22 = ptrtoint ptr %private62 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %private62, align 4
  %xor = xor i32 %23, 2
  store i32 %xor, ptr %private62, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !169
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %private62 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %private62, align 4
  %conv = trunc i32 %25 to i8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %add67 = add i32 %27, 2
  %and68 = and i32 %add67, 1048575
  %add69 = or i32 %and68, -18874368
  %28 = inttoptr i32 %add69 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv) #6, !srcloc !55
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool72.not = icmp eq i32 %30, 0
  br i1 %tobool72.not, label %if.else.do.body89_crit_edge, label %cond.false84

if.else.do.body89_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body89

cond.false84:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #6
  br label %do.body89

do.body89:                                        ; preds = %cond.false84, %if.else.do.body89_crit_edge, %cond.end60
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !170
  tail call void @arm_heavy_mb() #6
  %32 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %port, align 4
  %add92 = add i32 %33, 2
  %and93 = and i32 %add92, 1048575
  %add94 = or i32 %and93, -18874368
  %34 = inttoptr i32 %add94 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %34, i8 76) #6, !srcloc !55
  %35 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool97.not = icmp eq i32 %36, 0
  br i1 %tobool97.not, label %do.body89.cond.end113_crit_edge, label %cond.false109

do.body89.cond.end113_crit_edge:                  ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end113

cond.false109:                                    ; preds = %do.body89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %37(i32 noundef %36) #6
  br label %cond.end113

cond.end113:                                      ; preds = %cond.false109, %do.body89.cond.end113_crit_edge
  %private114 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %38 = ptrtoint ptr %private114 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 76, ptr %private114, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !171
  tail call void @arm_heavy_mb() #6
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %39 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %saved_r0, align 4
  %conv117 = trunc i32 %40 to i8
  %41 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %port, align 4
  %and120 = and i32 %42, 1048575
  %add121 = or i32 %and120, -18874368
  %43 = inttoptr i32 %add121 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %43, i8 %conv117) #6, !srcloc !55
  %44 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool124.not = icmp eq i32 %45, 0
  br i1 %tobool124.not, label %cond.end113.cond.end140_crit_edge, label %cond.false136

cond.end113.cond.end140_crit_edge:                ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end140

cond.false136:                                    ; preds = %cond.end113
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %45) #6
  br label %cond.end140

cond.end140:                                      ; preds = %cond.false136, %cond.end113.cond.end140_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck_test_port(ptr nocapture noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !172
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %0 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %port, align 4
  %add = add i32 %1, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %2 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %2, i8 44) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %3 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %cond.end11.thread, label %cond.false7

cond.end11.thread:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %private639 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %5 = ptrtoint ptr %private639 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 44, ptr %private639, align 4
  br label %cond.end28

cond.false7:                                      ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %6(i32 noundef %4) #6
  %7 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load i32, ptr %delay, align 4
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 44, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool13.not = icmp eq i32 %.pr, 0
  br i1 %tobool13.not, label %cond.false7.cond.end28_crit_edge, label %cond.false24

cond.false7.cond.end28_crit_edge:                 ; preds = %cond.false7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end28

cond.false24:                                     ; preds = %cond.false7
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %9(i32 noundef %.pr) #6
  br label %cond.end28

cond.end28:                                       ; preds = %cond.false24, %cond.false7.cond.end28_crit_edge, %cond.end11.thread
  %private641 = phi ptr [ %private639, %cond.end11.thread ], [ %private, %cond.false7.cond.end28_crit_edge ], [ %private, %cond.false24 ]
  %10 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %port, align 4
  %and31 = and i32 %11, 1048575
  %add32 = or i32 %and31, -18874368
  %12 = inttoptr i32 %add32 to ptr
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %12) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !173
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !174
  tail call void @arm_heavy_mb() #6
  %14 = xor i8 %13, -1
  %15 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %port, align 4
  %and42 = and i32 %16, 1048575
  %add43 = or i32 %and42, -18874368
  %17 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %17, i8 %14) #6, !srcloc !55
  %18 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool46.not = icmp eq i32 %19, 0
  br i1 %tobool46.not, label %cond.end28.cond.end80_crit_edge, label %cond.false58

cond.end28.cond.end80_crit_edge:                  ; preds = %cond.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end80

cond.false58:                                     ; preds = %cond.end28
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %20(i32 noundef %19) #6
  %21 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr643 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr643)
  %tobool64.not = icmp eq i32 %.pr643, 0
  br i1 %tobool64.not, label %cond.false58.cond.end80_crit_edge, label %cond.false76

cond.false58.cond.end80_crit_edge:                ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end80

cond.false76:                                     ; preds = %cond.false58
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %.pr643) #6
  br label %cond.end80

cond.end80:                                       ; preds = %cond.false76, %cond.false58.cond.end80_crit_edge, %cond.end28.cond.end80_crit_edge
  %23 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %port, align 4
  %and84 = and i32 %24, 1048575
  %add85 = or i32 %and84, -18874368
  %25 = inttoptr i32 %add85 to ptr
  %26 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %25) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !175
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !176
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %and97 = and i32 %28, 1048575
  %add98 = or i32 %and97, -18874368
  %29 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %13) #6, !srcloc !55
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool101.not = icmp eq i32 %31, 0
  br i1 %tobool101.not, label %cond.end80.cond.end117_crit_edge, label %cond.false113

cond.end80.cond.end117_crit_edge:                 ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end117

cond.false113:                                    ; preds = %cond.end80
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #6
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false113, %cond.end80.cond.end117_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %13)
  %cmp118 = icmp eq i8 %26, %13
  %spec.store.select = select i1 %cmp118, i32 2, i32 -1
  call void @__sanitizer_cov_trace_cmp1(i8 %26, i8 %14)
  %cmp121 = icmp eq i8 %26, %14
  %spec.store.select497 = select i1 %cmp121, i32 0, i32 %spec.store.select
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !177
  tail call void @arm_heavy_mb() #6
  %33 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %port, align 4
  %add129 = add i32 %34, 2
  %and130 = and i32 %add129, 1048575
  %add131 = or i32 %and130, -18874368
  %35 = inttoptr i32 %add131 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %35, i8 12) #6, !srcloc !55
  %36 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool134.not = icmp eq i32 %37, 0
  br i1 %tobool134.not, label %cond.end150.thread, label %cond.false146

cond.end150.thread:                               ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %private641 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 12, ptr %private641, align 4
  br label %cond.end169

cond.false146:                                    ; preds = %cond.end117
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %39(i32 noundef %37) #6
  %40 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pr645 = load i32, ptr %delay, align 4
  %41 = ptrtoint ptr %private641 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 12, ptr %private641, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr645)
  %tobool153.not = icmp eq i32 %.pr645, 0
  br i1 %tobool153.not, label %cond.false146.cond.end169_crit_edge, label %cond.false165

cond.false146.cond.end169_crit_edge:              ; preds = %cond.false146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end169

cond.false165:                                    ; preds = %cond.false146
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %.pr645) #6
  br label %cond.end169

cond.end169:                                      ; preds = %cond.false165, %cond.false146.cond.end169_crit_edge, %cond.end150.thread
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %and173 = and i32 %44, 1048575
  %add174 = or i32 %and173, -18874368
  %45 = inttoptr i32 %add174 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !178
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !179
  tail call void @arm_heavy_mb() #6
  %47 = xor i8 %46, -1
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %and187 = and i32 %49, 1048575
  %add188 = or i32 %and187, -18874368
  %50 = inttoptr i32 %add188 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %47) #6, !srcloc !55
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool191.not = icmp eq i32 %52, 0
  br i1 %tobool191.not, label %cond.end169.cond.end225_crit_edge, label %cond.false203

cond.end169.cond.end225_crit_edge:                ; preds = %cond.end169
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end225

cond.false203:                                    ; preds = %cond.end169
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #6
  %54 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %54)
  %.pr647 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr647)
  %tobool209.not = icmp eq i32 %.pr647, 0
  br i1 %tobool209.not, label %cond.false203.cond.end225_crit_edge, label %cond.false221

cond.false203.cond.end225_crit_edge:              ; preds = %cond.false203
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end225

cond.false221:                                    ; preds = %cond.false203
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %55 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %55(i32 noundef %.pr647) #6
  br label %cond.end225

cond.end225:                                      ; preds = %cond.false221, %cond.false203.cond.end225_crit_edge, %cond.end169.cond.end225_crit_edge
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %and229 = and i32 %57, 1048575
  %add230 = or i32 %and229, -18874368
  %58 = inttoptr i32 %add230 to ptr
  %59 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %58) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !180
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !181
  tail call void @arm_heavy_mb() #6
  %60 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port, align 4
  %and242 = and i32 %61, 1048575
  %add243 = or i32 %and242, -18874368
  %62 = inttoptr i32 %add243 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %62, i8 %46) #6, !srcloc !55
  %63 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %64)
  %tobool246.not = icmp eq i32 %64, 0
  br i1 %tobool246.not, label %cond.end225.cond.end262_crit_edge, label %cond.false258

cond.end225.cond.end262_crit_edge:                ; preds = %cond.end225
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end262

cond.false258:                                    ; preds = %cond.end225
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %65 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %65(i32 noundef %64) #6
  br label %cond.end262

cond.end262:                                      ; preds = %cond.false258, %cond.end225.cond.end262_crit_edge
  call void @__sanitizer_cov_trace_cmp1(i8 %59, i8 %47)
  %cmp264.not = icmp eq i8 %59, %47
  %spec.select = select i1 %cmp264.not, i32 %spec.store.select497, i32 -1
  %66 = zext i32 %spec.select to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %spec.select, label %cond.end262.if.end494_crit_edge [
    i32 0, label %do.body271
    i32 2, label %do.body436
    i32 -1, label %cond.end262.cleanup_crit_edge
  ]

cond.end262.cleanup_crit_edge:                    ; preds = %cond.end262
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cond.end262.if.end494_crit_edge:                  ; preds = %cond.end262
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end494

do.body271:                                       ; preds = %cond.end262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !182
  tail call void @arm_heavy_mb() #6
  %67 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %port, align 4
  %add275 = add i32 %68, 2
  %and276 = and i32 %add275, 1048575
  %add277 = or i32 %and276, -18874368
  %69 = inttoptr i32 %add277 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %69, i8 6) #6, !srcloc !55
  %70 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool280.not = icmp eq i32 %71, 0
  br i1 %tobool280.not, label %do.body271.cond.end296_crit_edge, label %cond.false292

do.body271.cond.end296_crit_edge:                 ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end296

cond.false292:                                    ; preds = %do.body271
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %72 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %72(i32 noundef %71) #6
  br label %cond.end296

cond.end296:                                      ; preds = %cond.false292, %do.body271.cond.end296_crit_edge
  %73 = ptrtoint ptr %private641 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 6, ptr %private641, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !183
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %port, align 4
  %add302 = add i32 %75, 2
  %and303 = and i32 %add302, 1048575
  %add304 = or i32 %and303, -18874368
  %76 = inttoptr i32 %add304 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %76, i8 12) #6, !srcloc !55
  %77 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool307.not = icmp eq i32 %78, 0
  br i1 %tobool307.not, label %cond.end323.thread, label %cond.false319

cond.end323.thread:                               ; preds = %cond.end296
  call void @__sanitizer_cov_trace_pc() #8
  %79 = ptrtoint ptr %private641 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 12, ptr %private641, align 4
  br label %cond.end342

cond.false319:                                    ; preds = %cond.end296
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %80 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %80(i32 noundef %78) #6
  %81 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %81)
  %.pr649 = load i32, ptr %delay, align 4
  %82 = ptrtoint ptr %private641 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 12, ptr %private641, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr649)
  %tobool326.not = icmp eq i32 %.pr649, 0
  br i1 %tobool326.not, label %cond.false319.cond.end342_crit_edge, label %cond.false338

cond.false319.cond.end342_crit_edge:              ; preds = %cond.false319
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end342

cond.false338:                                    ; preds = %cond.false319
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %83 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %83(i32 noundef %.pr649) #6
  br label %cond.end342

cond.end342:                                      ; preds = %cond.false338, %cond.false319.cond.end342_crit_edge, %cond.end323.thread
  %84 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %port, align 4
  %and346 = and i32 %85, 1048575
  %add347 = or i32 %and346, -18874368
  %86 = inttoptr i32 %add347 to ptr
  %87 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %86) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !184
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !185
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %port, align 4
  %and358 = and i32 %89, 1048575
  %add359 = or i32 %and358, -18874368
  %90 = inttoptr i32 %add359 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %90, i8 -86) #6, !srcloc !55
  %91 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool362.not = icmp eq i32 %92, 0
  br i1 %tobool362.not, label %cond.end342.do.body379_crit_edge, label %cond.false374

cond.end342.do.body379_crit_edge:                 ; preds = %cond.end342
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body379

cond.false374:                                    ; preds = %cond.end342
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %93 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %93(i32 noundef %92) #6
  br label %do.body379

do.body379:                                       ; preds = %cond.false374, %cond.end342.do.body379_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !186
  tail call void @arm_heavy_mb() #6
  %94 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %port, align 4
  %and385 = and i32 %95, 1048575
  %add386 = or i32 %and385, -18874368
  %96 = inttoptr i32 %add386 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %96, i8 %87) #6, !srcloc !55
  %97 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool389.not = icmp eq i32 %98, 0
  br i1 %tobool389.not, label %do.body379.do.body406_crit_edge, label %cond.false401

do.body379.do.body406_crit_edge:                  ; preds = %do.body379
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body406

cond.false401:                                    ; preds = %do.body379
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %99 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %99(i32 noundef %98) #6
  br label %do.body406

do.body406:                                       ; preds = %cond.false401, %do.body379.do.body406_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !187
  tail call void @arm_heavy_mb() #6
  %100 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port, align 4
  %and411 = and i32 %101, 1048575
  %add412 = or i32 %and411, -18874368
  %102 = inttoptr i32 %add412 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 -86) #6, !srcloc !55
  %103 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool415.not = icmp eq i32 %104, 0
  br i1 %tobool415.not, label %do.body406.if.end494_crit_edge, label %cond.false427

do.body406.if.end494_crit_edge:                   ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end494

cond.false427:                                    ; preds = %do.body406
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #6
  br label %if.end494

do.body436:                                       ; preds = %cond.end262
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !188
  tail call void @arm_heavy_mb() #6
  %106 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %port, align 4
  %add440 = add i32 %107, 2
  %and441 = and i32 %add440, 1048575
  %add442 = or i32 %and441, -18874368
  %108 = inttoptr i32 %add442 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %108, i8 38) #6, !srcloc !55
  %109 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool445.not = icmp eq i32 %110, 0
  br i1 %tobool445.not, label %do.body436.cond.end461_crit_edge, label %cond.false457

do.body436.cond.end461_crit_edge:                 ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end461

cond.false457:                                    ; preds = %do.body436
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %111 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %111(i32 noundef %110) #6
  br label %cond.end461

cond.end461:                                      ; preds = %cond.false457, %do.body436.cond.end461_crit_edge
  %112 = ptrtoint ptr %private641 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 38, ptr %private641, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !189
  tail call void @arm_heavy_mb() #6
  %113 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %port, align 4
  %add467 = add i32 %114, 2
  %and468 = and i32 %add467, 1048575
  %add469 = or i32 %and468, -18874368
  %115 = inttoptr i32 %add469 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %115, i8 12) #6, !srcloc !55
  %116 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool472.not = icmp eq i32 %117, 0
  br i1 %tobool472.not, label %cond.end461.cond.end488_crit_edge, label %cond.false484

cond.end461.cond.end488_crit_edge:                ; preds = %cond.end461
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end488

cond.false484:                                    ; preds = %cond.end461
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %118 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %118(i32 noundef %117) #6
  br label %cond.end488

cond.end488:                                      ; preds = %cond.false484, %cond.end461.cond.end488_crit_edge
  %119 = ptrtoint ptr %private641 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 12, ptr %private641, align 4
  br label %if.end494

if.end494:                                        ; preds = %cond.end488, %cond.false427, %do.body406.if.end494_crit_edge, %cond.end262.if.end494_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end494, %cond.end262.cleanup_crit_edge
  %retval.0 = phi i32 [ 5, %if.end494 ], [ 0, %cond.end262.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck_probe_unit(ptr noundef %pi) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %0 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %unit, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !190
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %2 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %port, align 4
  %add = add i32 %3, 2
  %and = and i32 %add, 1048575
  %add1 = or i32 %and, -18874368
  %4 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %4, i8 4) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %5 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %entry.cond.end11_crit_edge, label %cond.false7

entry.cond.end11_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end11

cond.false7:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %7(i32 noundef %6) #6
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %entry.cond.end11_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %8 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 4, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !191
  tail call void @arm_heavy_mb() #6
  %9 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %port, align 4
  %add16 = add i32 %10, 2
  %and17 = and i32 %add16, 1048575
  %add18 = or i32 %and17, -18874368
  %11 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %11, i8 14) #6, !srcloc !55
  %12 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool21.not = icmp eq i32 %13, 0
  br i1 %tobool21.not, label %cond.end36.thread, label %cond.false32

cond.end36.thread:                                ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 14, ptr %private, align 4
  br label %cond.end54

cond.false32:                                     ; preds = %cond.end11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %15(i32 noundef %13) #6
  %16 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pr = load i32, ptr %delay, align 4
  %17 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 14, ptr %private, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool39.not = icmp eq i32 %.pr, 0
  br i1 %tobool39.not, label %cond.false32.cond.end54_crit_edge, label %cond.false50

cond.false32.cond.end54_crit_edge:                ; preds = %cond.false32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end54

cond.false50:                                     ; preds = %cond.false32
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %18(i32 noundef %.pr) #6
  br label %cond.end54

cond.end54:                                       ; preds = %cond.false50, %cond.false32.cond.end54_crit_edge, %cond.end36.thread
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %add56 = add i32 %20, 2
  %and57 = and i32 %add56, 1048575
  %add58 = or i32 %and57, -18874368
  %21 = inttoptr i32 %add58 to ptr
  %22 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %21) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !192
  %23 = xor i8 %22, 2
  %xor = zext i8 %23 to i32
  %24 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !193
  tail call void @arm_heavy_mb() #6
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %private, align 4
  %conv68 = trunc i32 %26 to i8
  %27 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %port, align 4
  %add70 = add i32 %28, 2
  %and71 = and i32 %add70, 1048575
  %add72 = or i32 %and71, -18874368
  %29 = inttoptr i32 %add72 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %29, i8 %conv68) #6, !srcloc !55
  %30 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool75.not = icmp eq i32 %31, 0
  br i1 %tobool75.not, label %cond.end54.cond.end109_crit_edge, label %cond.false87

cond.end54.cond.end109_crit_edge:                 ; preds = %cond.end54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end109

cond.false87:                                     ; preds = %cond.end54
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %32(i32 noundef %31) #6
  %33 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pr842 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr842)
  %tobool93.not = icmp eq i32 %.pr842, 0
  br i1 %tobool93.not, label %cond.false87.cond.end109_crit_edge, label %cond.false105

cond.false87.cond.end109_crit_edge:               ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end109

cond.false105:                                    ; preds = %cond.false87
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %.pr842) #6
  br label %cond.end109

cond.end109:                                      ; preds = %cond.false105, %cond.false87.cond.end109_crit_edge, %cond.end54.cond.end109_crit_edge
  %35 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %port, align 4
  %add112 = add i32 %36, 1
  %and113 = and i32 %add112, 1048575
  %add114 = or i32 %and113, -18874368
  %37 = inttoptr i32 %add114 to ptr
  %38 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %37) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !194
  %39 = and i8 %38, -8
  %and120 = zext i8 %39 to i32
  %40 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool122.not = icmp eq i32 %41, 0
  br i1 %tobool122.not, label %cond.end109.cond.end138_crit_edge, label %cond.false134

cond.end109.cond.end138_crit_edge:                ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end138

cond.false134:                                    ; preds = %cond.end109
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %42(i32 noundef %41) #6
  br label %cond.end138

cond.end138:                                      ; preds = %cond.false134, %cond.end109.cond.end138_crit_edge
  %43 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %port, align 4
  %and142 = and i32 %44, 1048575
  %add143 = or i32 %and142, -18874368
  %45 = inttoptr i32 %add143 to ptr
  %46 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %45) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !195
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !196
  tail call void @arm_heavy_mb() #6
  %47 = trunc i32 %1 to i8
  %conv152 = xor i8 %47, -1
  %48 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %port, align 4
  %and155 = and i32 %49, 1048575
  %add156 = or i32 %and155, -18874368
  %50 = inttoptr i32 %add156 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %50, i8 %conv152) #6, !srcloc !55
  %51 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %tobool159.not = icmp eq i32 %52, 0
  br i1 %tobool159.not, label %cond.end138.do.body176_crit_edge, label %cond.false171

cond.end138.do.body176_crit_edge:                 ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body176

cond.false171:                                    ; preds = %cond.end138
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %53(i32 noundef %52) #6
  br label %do.body176

do.body176:                                       ; preds = %cond.false171, %cond.end138.do.body176_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !197
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %port, align 4
  %add180 = add i32 %55, 2
  %and181 = and i32 %add180, 1048575
  %add182 = or i32 %and181, -18874368
  %56 = inttoptr i32 %add182 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %56, i8 4) #6, !srcloc !55
  %57 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool185.not = icmp eq i32 %58, 0
  br i1 %tobool185.not, label %do.body176.cond.end201_crit_edge, label %cond.false197

do.body176.cond.end201_crit_edge:                 ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end201

cond.false197:                                    ; preds = %do.body176
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %59(i32 noundef %58) #6
  br label %cond.end201

cond.end201:                                      ; preds = %cond.false197, %do.body176.cond.end201_crit_edge
  %60 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 4, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !198
  tail call void @arm_heavy_mb() #6
  %61 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %port, align 4
  %and209 = and i32 %62, 1048575
  %add210 = or i32 %and209, -18874368
  %63 = inttoptr i32 %add210 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %63, i8 %47) #6, !srcloc !55
  %64 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool213.not = icmp eq i32 %65, 0
  br i1 %tobool213.not, label %cond.end201.cond.end229_crit_edge, label %cond.false225

cond.end201.cond.end229_crit_edge:                ; preds = %cond.end201
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end229

cond.false225:                                    ; preds = %cond.end201
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %66 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %66(i32 noundef %65) #6
  br label %cond.end229

cond.end229:                                      ; preds = %cond.false225, %cond.end201.cond.end229_crit_edge
  %67 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %private, align 4
  %xor231 = xor i32 %68, 8
  store i32 %xor231, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !199
  tail call void @arm_heavy_mb() #6
  %69 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %private, align 4
  %conv236 = trunc i32 %70 to i8
  %71 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %port, align 4
  %add238 = add i32 %72, 2
  %and239 = and i32 %add238, 1048575
  %add240 = or i32 %and239, -18874368
  %73 = inttoptr i32 %add240 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %73, i8 %conv236) #6, !srcloc !55
  %74 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool243.not = icmp eq i32 %75, 0
  br i1 %tobool243.not, label %cond.end229.cond.end259_crit_edge, label %cond.false255

cond.end229.cond.end259_crit_edge:                ; preds = %cond.end229
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end259

cond.false255:                                    ; preds = %cond.end229
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %76 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %76(i32 noundef %75) #6
  br label %cond.end259

cond.end259:                                      ; preds = %cond.false255, %cond.end229.cond.end259_crit_edge
  %77 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %private, align 4
  %xor261 = xor i32 %78, 8
  store i32 %xor261, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !200
  tail call void @arm_heavy_mb() #6
  %79 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %private, align 4
  %conv266 = trunc i32 %80 to i8
  %81 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %port, align 4
  %add268 = add i32 %82, 2
  %and269 = and i32 %add268, 1048575
  %add270 = or i32 %and269, -18874368
  %83 = inttoptr i32 %add270 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %83, i8 %conv266) #6, !srcloc !55
  %84 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool273.not = icmp eq i32 %85, 0
  br i1 %tobool273.not, label %cond.end259.cond.end289_crit_edge, label %cond.false285

cond.end259.cond.end289_crit_edge:                ; preds = %cond.end259
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end289

cond.false285:                                    ; preds = %cond.end259
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %86 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %86(i32 noundef %85) #6
  br label %cond.end289

cond.end289:                                      ; preds = %cond.false285, %cond.end259.cond.end289_crit_edge
  %87 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %private, align 4
  %xor291 = xor i32 %88, 8
  store i32 %xor291, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !201
  tail call void @arm_heavy_mb() #6
  %89 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %private, align 4
  %conv296 = trunc i32 %90 to i8
  %91 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %port, align 4
  %add298 = add i32 %92, 2
  %and299 = and i32 %add298, 1048575
  %add300 = or i32 %and299, -18874368
  %93 = inttoptr i32 %add300 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %93, i8 %conv296) #6, !srcloc !55
  %94 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool303.not = icmp eq i32 %95, 0
  br i1 %tobool303.not, label %cond.end289.cond.end319_crit_edge, label %cond.false315

cond.end289.cond.end319_crit_edge:                ; preds = %cond.end289
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end319

cond.false315:                                    ; preds = %cond.end289
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %96 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %96(i32 noundef %95) #6
  br label %cond.end319

cond.end319:                                      ; preds = %cond.false315, %cond.end289.cond.end319_crit_edge
  %97 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %private, align 4
  %xor321 = xor i32 %98, 2
  store i32 %xor321, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !202
  tail call void @arm_heavy_mb() #6
  %99 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %private, align 4
  %conv326 = trunc i32 %100 to i8
  %101 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %port, align 4
  %add328 = add i32 %102, 2
  %and329 = and i32 %add328, 1048575
  %add330 = or i32 %and329, -18874368
  %103 = inttoptr i32 %add330 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %103, i8 %conv326) #6, !srcloc !55
  %104 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool333.not = icmp eq i32 %105, 0
  br i1 %tobool333.not, label %cond.end319.cond.end367_crit_edge, label %cond.false345

cond.end319.cond.end367_crit_edge:                ; preds = %cond.end319
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end367

cond.false345:                                    ; preds = %cond.end319
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %106 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %106(i32 noundef %105) #6
  %107 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr844 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr844)
  %tobool351.not = icmp eq i32 %.pr844, 0
  br i1 %tobool351.not, label %cond.false345.cond.end367_crit_edge, label %cond.false363

cond.false345.cond.end367_crit_edge:              ; preds = %cond.false345
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end367

cond.false363:                                    ; preds = %cond.false345
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %108 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %108(i32 noundef %.pr844) #6
  br label %cond.end367

cond.end367:                                      ; preds = %cond.false363, %cond.false345.cond.end367_crit_edge, %cond.end319.cond.end367_crit_edge
  %109 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port, align 4
  %add370 = add i32 %110, 1
  %and371 = and i32 %add370, 1048575
  %add372 = or i32 %and371, -18874368
  %111 = inttoptr i32 %add372 to ptr
  %112 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %111) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !203
  %113 = and i8 %112, -8
  %114 = and i32 %1, -2147483641
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %114)
  %cmp379 = icmp ne i32 %114, 7
  call void @__sanitizer_cov_trace_cmp1(i8 %113, i8 %39)
  %cmp382.not = icmp eq i8 %113, %39
  %or.cond = select i1 %cmp379, i1 %cmp382.not, i1 false
  br i1 %or.cond, label %cond.end367.if.end_crit_edge, label %if.then

cond.end367.if.end_crit_edge:                     ; preds = %cond.end367
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %cond.end367
  %115 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %private, align 4
  %xor385 = xor i32 %116, 2
  store i32 %xor385, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !204
  tail call void @arm_heavy_mb() #6
  %117 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %private, align 4
  %conv390 = trunc i32 %118 to i8
  %119 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %port, align 4
  %add392 = add i32 %120, 2
  %and393 = and i32 %add392, 1048575
  %add394 = or i32 %and393, -18874368
  %121 = inttoptr i32 %add394 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %121, i8 %conv390) #6, !srcloc !55
  %122 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool397.not = icmp eq i32 %123, 0
  br i1 %tobool397.not, label %if.then.cond.end431_crit_edge, label %cond.false409

if.then.cond.end431_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end431

cond.false409:                                    ; preds = %if.then
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %124 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %124(i32 noundef %123) #6
  %125 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %125)
  %.pr846 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr846)
  %tobool415.not = icmp eq i32 %.pr846, 0
  br i1 %tobool415.not, label %cond.false409.cond.end431_crit_edge, label %cond.false427

cond.false409.cond.end431_crit_edge:              ; preds = %cond.false409
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end431

cond.false427:                                    ; preds = %cond.false409
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %126 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %126(i32 noundef %.pr846) #6
  br label %cond.end431

cond.end431:                                      ; preds = %cond.false427, %cond.false409.cond.end431_crit_edge, %if.then.cond.end431_crit_edge
  %127 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %port, align 4
  %add434 = add i32 %128, 1
  %and435 = and i32 %add434, 1048575
  %add436 = or i32 %and435, -18874368
  %129 = inttoptr i32 %add436 to ptr
  %130 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %129) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !205
  %131 = and i8 %130, -8
  %and442 = zext i8 %131 to i32
  br label %if.end

if.end:                                           ; preds = %cond.end431, %cond.end367.if.end_crit_edge
  %s.0 = phi i32 [ %and442, %cond.end431 ], [ 0, %cond.end367.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %s.0, i32 %and120)
  %cmp447 = icmp eq i32 %s.0, %and120
  %or.cond840 = select i1 %cmp379, i1 true, i1 %cmp447
  %or.cond848 = select i1 %cmp382.not, i1 %or.cond840, i1 false
  br i1 %or.cond848, label %do.body450, label %if.end504

do.body450:                                       ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !206
  tail call void @arm_heavy_mb() #6
  %132 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %port, align 4
  %add454 = add i32 %133, 2
  %and455 = and i32 %add454, 1048575
  %add456 = or i32 %and455, -18874368
  %134 = inttoptr i32 %add456 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %134, i8 76) #6, !srcloc !55
  %135 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %136)
  %tobool459.not = icmp eq i32 %136, 0
  br i1 %tobool459.not, label %do.body450.cond.end475_crit_edge, label %cond.false471

do.body450.cond.end475_crit_edge:                 ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end475

cond.false471:                                    ; preds = %do.body450
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %137 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %137(i32 noundef %136) #6
  br label %cond.end475

cond.end475:                                      ; preds = %cond.false471, %do.body450.cond.end475_crit_edge
  %138 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 76, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !207
  tail call void @arm_heavy_mb() #6
  %139 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %port, align 4
  %and483 = and i32 %140, 1048575
  %add484 = or i32 %and483, -18874368
  %141 = inttoptr i32 %add484 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %141, i8 %46) #6, !srcloc !55
  %142 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %tobool487.not = icmp eq i32 %143, 0
  br i1 %tobool487.not, label %cond.end475.cleanup_crit_edge, label %cond.end475.cleanup.sink.split_crit_edge

cond.end475.cleanup.sink.split_crit_edge:         ; preds = %cond.end475
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cond.end475.cleanup_crit_edge:                    ; preds = %cond.end475
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end504:                                        ; preds = %if.end
  %144 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %private, align 4
  %xor506 = xor i32 %145, 8
  store i32 %xor506, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !208
  tail call void @arm_heavy_mb() #6
  %146 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %private, align 4
  %conv511 = trunc i32 %147 to i8
  %148 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port, align 4
  %add513 = add i32 %149, 2
  %and514 = and i32 %add513, 1048575
  %add515 = or i32 %and514, -18874368
  %150 = inttoptr i32 %add515 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 %conv511) #6, !srcloc !55
  %151 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool518.not = icmp eq i32 %152, 0
  br i1 %tobool518.not, label %if.end504.do.body535_crit_edge, label %cond.false530

if.end504.do.body535_crit_edge:                   ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body535

cond.false530:                                    ; preds = %if.end504
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %153(i32 noundef %152) #6
  br label %do.body535

do.body535:                                       ; preds = %cond.false530, %if.end504.do.body535_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !209
  tail call void @arm_heavy_mb() #6
  %154 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %port, align 4
  %and540 = and i32 %155, 1048575
  %add541 = or i32 %and540, -18874368
  %156 = inttoptr i32 %add541 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %156, i8 0) #6, !srcloc !55
  %157 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool544.not = icmp eq i32 %158, 0
  br i1 %tobool544.not, label %do.body535.cond.end560_crit_edge, label %cond.false556

do.body535.cond.end560_crit_edge:                 ; preds = %do.body535
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end560

cond.false556:                                    ; preds = %do.body535
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %159 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %159(i32 noundef %158) #6
  br label %cond.end560

cond.end560:                                      ; preds = %cond.false556, %do.body535.cond.end560_crit_edge
  %160 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %private, align 4
  %xor562 = xor i32 %161, 2
  store i32 %xor562, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !210
  tail call void @arm_heavy_mb() #6
  %162 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %private, align 4
  %conv567 = trunc i32 %163 to i8
  %164 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %port, align 4
  %add569 = add i32 %165, 2
  %and570 = and i32 %add569, 1048575
  %add571 = or i32 %and570, -18874368
  %166 = inttoptr i32 %add571 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %166, i8 %conv567) #6, !srcloc !55
  %167 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %168)
  %tobool574.not = icmp eq i32 %168, 0
  br i1 %tobool574.not, label %cond.end560.do.body591_crit_edge, label %cond.false586

cond.end560.do.body591_crit_edge:                 ; preds = %cond.end560
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body591

cond.false586:                                    ; preds = %cond.end560
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %169 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %169(i32 noundef %168) #6
  br label %do.body591

do.body591:                                       ; preds = %cond.false586, %cond.end560.do.body591_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !211
  tail call void @arm_heavy_mb() #6
  %170 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %port, align 4
  %add595 = add i32 %171, 2
  %and596 = and i32 %add595, 1048575
  %add597 = or i32 %and596, -18874368
  %172 = inttoptr i32 %add597 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %172, i8 76) #6, !srcloc !55
  %173 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool600.not = icmp eq i32 %174, 0
  br i1 %tobool600.not, label %do.body591.cond.end616_crit_edge, label %cond.false612

do.body591.cond.end616_crit_edge:                 ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end616

cond.false612:                                    ; preds = %do.body591
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %175 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %175(i32 noundef %174) #6
  br label %cond.end616

cond.end616:                                      ; preds = %cond.false612, %do.body591.cond.end616_crit_edge
  %176 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 76, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !212
  tail call void @arm_heavy_mb() #6
  %177 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %port, align 4
  %and624 = and i32 %178, 1048575
  %add625 = or i32 %and624, -18874368
  %179 = inttoptr i32 %add625 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %179, i8 %46) #6, !srcloc !55
  %180 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %181)
  %tobool628.not = icmp eq i32 %181, 0
  br i1 %tobool628.not, label %cond.end616.cleanup_crit_edge, label %cond.end616.cleanup.sink.split_crit_edge

cond.end616.cleanup.sink.split_crit_edge:         ; preds = %cond.end616
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.sink.split

cond.end616.cleanup_crit_edge:                    ; preds = %cond.end616
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup.sink.split:                               ; preds = %cond.end616.cleanup.sink.split_crit_edge, %cond.end475.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ %143, %cond.end475.cleanup.sink.split_crit_edge ], [ %181, %cond.end616.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %cond.end475.cleanup.sink.split_crit_edge ], [ 1, %cond.end616.cleanup.sink.split_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %182 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %182(i32 noundef %.sink) #6
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %cond.end616.cleanup_crit_edge, %cond.end475.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %cond.end475.cleanup_crit_edge ], [ 1, %cond.end616.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpck_test_proto(ptr noundef %pi, ptr nocapture noundef readnone %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  %buf = alloca [16 x i8], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf) #6
  %0 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i8], ptr %buf, i32 0, i32 15
  %15 = call ptr @memset(ptr %buf, i32 255, i32 16)
  tail call fastcc void @bpck_force_spp(ptr noundef %pi)
  %mode = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %16 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mode, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %17, label %entry.sw.epilog709_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb163
    i32 2, label %entry.sw.bb377_crit_edge
    i32 3, label %entry.sw.bb377_crit_edge1012
    i32 4, label %entry.sw.bb377_crit_edge1013
  ]

entry.sw.bb377_crit_edge1013:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb377

entry.sw.bb377_crit_edge1012:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb377

entry.sw.bb377_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb377

entry.sw.epilog709_crit_edge:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog709

sw.bb:                                            ; preds = %entry
  tail call void @bpck_connect(ptr noundef %pi)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 19, i32 noundef 127)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !213
  tail call void @arm_heavy_mb() #6
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %19 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %port, align 4
  %and = and i32 %20, 1048575
  %add1 = or i32 %and, -18874368
  %21 = inttoptr i32 %add1 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %21, i8 19) #6, !srcloc !55
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %22 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.not = icmp eq i32 %23, 0
  br i1 %tobool.not, label %sw.bb.cond.end11_crit_edge, label %cond.false7

sw.bb.cond.end11_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end11

cond.false7:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %24(i32 noundef %23) #6
  br label %cond.end11

cond.end11:                                       ; preds = %cond.false7, %sw.bb.cond.end11_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %25 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %private, align 4
  %xor = xor i32 %26, 2
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !214
  tail call void @arm_heavy_mb() #6
  %27 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %private, align 4
  %conv = trunc i32 %28 to i8
  %29 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %port, align 4
  %add17 = add i32 %30, 2
  %and18 = and i32 %add17, 1048575
  %add19 = or i32 %and18, -18874368
  %31 = inttoptr i32 %add19 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %31, i8 %conv) #6, !srcloc !55
  %32 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool22.not = icmp eq i32 %33, 0
  br i1 %tobool22.not, label %cond.end11.for.body.preheader_crit_edge, label %cond.false34

cond.end11.for.body.preheader_crit_edge:          ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.preheader

cond.false34:                                     ; preds = %cond.end11
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %34(i32 noundef %33) #6
  br label %for.body.preheader

for.body.preheader:                               ; preds = %cond.false34, %cond.end11.for.body.preheader_crit_edge
  br label %for.body

for.body:                                         ; preds = %cond.end144.for.body_crit_edge, %for.body.preheader
  %i.0998 = phi i32 [ %inc, %cond.end144.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %private, align 4
  %xor42 = xor i32 %36, 4
  store i32 %xor42, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !215
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %private, align 4
  %conv47 = trunc i32 %38 to i8
  %39 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %port, align 4
  %add49 = add i32 %40, 2
  %and50 = and i32 %add49, 1048575
  %add51 = or i32 %and50, -18874368
  %41 = inttoptr i32 %add51 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %41, i8 %conv47) #6, !srcloc !55
  %42 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool54.not = icmp eq i32 %43, 0
  br i1 %tobool54.not, label %for.body.cond.end88_crit_edge, label %cond.false66

for.body.cond.end88_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end88

cond.false66:                                     ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %44(i32 noundef %43) #6
  %45 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool72.not = icmp eq i32 %.pr, 0
  br i1 %tobool72.not, label %cond.false66.cond.end88_crit_edge, label %cond.false84

cond.false66.cond.end88_crit_edge:                ; preds = %cond.false66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end88

cond.false84:                                     ; preds = %cond.false66
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %46 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %46(i32 noundef %.pr) #6
  br label %cond.end88

cond.end88:                                       ; preds = %cond.false84, %cond.false66.cond.end88_crit_edge, %for.body.cond.end88_crit_edge
  %47 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %port, align 4
  %add90 = add i32 %48, 1
  %and91 = and i32 %add90, 1048575
  %add92 = or i32 %and91, -18874368
  %49 = inttoptr i32 %add92 to ptr
  %50 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %49) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !216
  %51 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %private, align 4
  %xor98 = xor i32 %52, 4
  store i32 %xor98, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !217
  tail call void @arm_heavy_mb() #6
  %53 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %private, align 4
  %conv103 = trunc i32 %54 to i8
  %55 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %port, align 4
  %add105 = add i32 %56, 2
  %and106 = and i32 %add105, 1048575
  %add107 = or i32 %and106, -18874368
  %57 = inttoptr i32 %add107 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %57, i8 %conv103) #6, !srcloc !55
  %58 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool110.not = icmp eq i32 %59, 0
  br i1 %tobool110.not, label %cond.end88.cond.end144_crit_edge, label %cond.false122

cond.end88.cond.end144_crit_edge:                 ; preds = %cond.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end144

cond.false122:                                    ; preds = %cond.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %60 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %60(i32 noundef %59) #6
  %61 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %61)
  %.pr988 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr988)
  %tobool128.not = icmp eq i32 %.pr988, 0
  br i1 %tobool128.not, label %cond.false122.cond.end144_crit_edge, label %cond.false140

cond.false122.cond.end144_crit_edge:              ; preds = %cond.false122
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end144

cond.false140:                                    ; preds = %cond.false122
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %62 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %62(i32 noundef %.pr988) #6
  br label %cond.end144

cond.end144:                                      ; preds = %cond.false140, %cond.false122.cond.end144_crit_edge, %cond.end88.cond.end144_crit_edge
  %63 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %port, align 4
  %add147 = add i32 %64, 1
  %and148 = and i32 %add147, 1048575
  %add149 = or i32 %and148, -18874368
  %65 = inttoptr i32 %add149 to ptr
  %66 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %65) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !218
  %67 = lshr i8 %50, 3
  %and155 = and i8 %67, 7
  %68 = lshr i8 %50, 4
  %and157 = and i8 %68, 8
  %or = or i8 %and155, %and157
  %shl = shl i8 %66, 1
  %and158 = and i8 %shl, 112
  %and160 = and i8 %66, -128
  %or159 = or i8 %or, %and160
  %or161 = or i8 %or159, %and158
  %arrayidx = getelementptr [16 x i8], ptr %buf, i32 0, i32 %i.0998
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %69)
  store i8 %or161, ptr %arrayidx, align 1
  %inc = add nuw nsw i32 %i.0998, 1
  %exitcond1006.not = icmp eq i32 %inc, 16
  br i1 %exitcond1006.not, label %cond.end144.sw.epilog709.sink.split_crit_edge, label %cond.end144.for.body_crit_edge

cond.end144.for.body_crit_edge:                   ; preds = %cond.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end144.sw.epilog709.sink.split_crit_edge:    ; preds = %cond.end144
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog709.sink.split

sw.bb163:                                         ; preds = %entry
  tail call void @bpck_connect(ptr noundef %pi)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 19, i32 noundef 127)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !219
  tail call void @arm_heavy_mb() #6
  %port167 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %70 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %port167, align 4
  %and169 = and i32 %71, 1048575
  %add170 = or i32 %and169, -18874368
  %72 = inttoptr i32 %add170 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %72, i8 19) #6, !srcloc !55
  %delay172 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %73 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool173.not = icmp eq i32 %74, 0
  br i1 %tobool173.not, label %sw.bb163.cond.end189_crit_edge, label %cond.false185

sw.bb163.cond.end189_crit_edge:                   ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end189

cond.false185:                                    ; preds = %sw.bb163
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %75(i32 noundef %74) #6
  br label %cond.end189

cond.end189:                                      ; preds = %cond.false185, %sw.bb163.cond.end189_crit_edge
  %private190 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %76 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %private190, align 4
  %xor191 = xor i32 %77, 2
  store i32 %xor191, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !220
  tail call void @arm_heavy_mb() #6
  %78 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %private190, align 4
  %conv196 = trunc i32 %79 to i8
  %80 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %port167, align 4
  %add198 = add i32 %81, 2
  %and199 = and i32 %add198, 1048575
  %add200 = or i32 %and199, -18874368
  %82 = inttoptr i32 %add200 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %82, i8 %conv196) #6, !srcloc !55
  %83 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool203.not = icmp eq i32 %84, 0
  br i1 %tobool203.not, label %cond.end189.cond.end219_crit_edge, label %cond.false215

cond.end189.cond.end219_crit_edge:                ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end219

cond.false215:                                    ; preds = %cond.end189
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %85 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %85(i32 noundef %84) #6
  br label %cond.end219

cond.end219:                                      ; preds = %cond.false215, %cond.end189.cond.end219_crit_edge
  %86 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %private190, align 4
  %xor221 = xor i32 %87, 32
  store i32 %xor221, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !221
  tail call void @arm_heavy_mb() #6
  %88 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %private190, align 4
  %conv226 = trunc i32 %89 to i8
  %90 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %port167, align 4
  %add228 = add i32 %91, 2
  %and229 = and i32 %add228, 1048575
  %add230 = or i32 %and229, -18874368
  %92 = inttoptr i32 %add230 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %92, i8 %conv226) #6, !srcloc !55
  %93 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool233.not = icmp eq i32 %94, 0
  br i1 %tobool233.not, label %cond.end219.for.body253.preheader_crit_edge, label %cond.false245

cond.end219.for.body253.preheader_crit_edge:      ; preds = %cond.end219
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body253.preheader

cond.false245:                                    ; preds = %cond.end219
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %95(i32 noundef %94) #6
  br label %for.body253.preheader

for.body253.preheader:                            ; preds = %cond.false245, %cond.end219.for.body253.preheader_crit_edge
  br label %for.body253

for.body253:                                      ; preds = %cond.end301.for.body253_crit_edge, %for.body253.preheader
  %i.1997 = phi i32 [ %inc315, %cond.end301.for.body253_crit_edge ], [ 0, %for.body253.preheader ]
  %96 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %private190, align 4
  %xor255 = xor i32 %97, 4
  store i32 %xor255, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !222
  tail call void @arm_heavy_mb() #6
  %98 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %private190, align 4
  %conv260 = trunc i32 %99 to i8
  %100 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %port167, align 4
  %add262 = add i32 %101, 2
  %and263 = and i32 %add262, 1048575
  %add264 = or i32 %and263, -18874368
  %102 = inttoptr i32 %add264 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %102, i8 %conv260) #6, !srcloc !55
  %103 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %104)
  %tobool267.not = icmp eq i32 %104, 0
  br i1 %tobool267.not, label %for.body253.cond.end301_crit_edge, label %cond.false279

for.body253.cond.end301_crit_edge:                ; preds = %for.body253
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end301

cond.false279:                                    ; preds = %for.body253
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %105 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %105(i32 noundef %104) #6
  %106 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %106)
  %.pr990 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr990)
  %tobool285.not = icmp eq i32 %.pr990, 0
  br i1 %tobool285.not, label %cond.false279.cond.end301_crit_edge, label %cond.false297

cond.false279.cond.end301_crit_edge:              ; preds = %cond.false279
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end301

cond.false297:                                    ; preds = %cond.false279
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %.pr990) #6
  br label %cond.end301

cond.end301:                                      ; preds = %cond.false297, %cond.false279.cond.end301_crit_edge, %for.body253.cond.end301_crit_edge
  %108 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %port167, align 4
  %and305 = and i32 %109, 1048575
  %add306 = or i32 %and305, -18874368
  %110 = inttoptr i32 %add306 to ptr
  %111 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %110) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !223
  %arrayidx313 = getelementptr [16 x i8], ptr %buf, i32 0, i32 %i.1997
  %112 = ptrtoint ptr %arrayidx313 to i32
  call void @__asan_store1_noabort(i32 %112)
  store i8 %111, ptr %arrayidx313, align 1
  %inc315 = add nuw nsw i32 %i.1997, 1
  %exitcond1005.not = icmp eq i32 %inc315, 16
  br i1 %exitcond1005.not, label %for.end316, label %cond.end301.for.body253_crit_edge

cond.end301.for.body253_crit_edge:                ; preds = %cond.end301
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body253

for.end316:                                       ; preds = %cond.end301
  %113 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %private190, align 4
  %xor318 = xor i32 %114, 1
  store i32 %xor318, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !224
  tail call void @arm_heavy_mb() #6
  %115 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %private190, align 4
  %conv323 = trunc i32 %116 to i8
  %117 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %port167, align 4
  %add325 = add i32 %118, 2
  %and326 = and i32 %add325, 1048575
  %add327 = or i32 %and326, -18874368
  %119 = inttoptr i32 %add327 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %119, i8 %conv323) #6, !srcloc !55
  %120 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool330.not = icmp eq i32 %121, 0
  br i1 %tobool330.not, label %for.end316.cond.end346_crit_edge, label %cond.false342

for.end316.cond.end346_crit_edge:                 ; preds = %for.end316
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end346

cond.false342:                                    ; preds = %for.end316
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %122 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %122(i32 noundef %121) #6
  br label %cond.end346

cond.end346:                                      ; preds = %cond.false342, %for.end316.cond.end346_crit_edge
  %123 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %private190, align 4
  %xor348 = xor i32 %124, 32
  store i32 %xor348, ptr %private190, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !225
  tail call void @arm_heavy_mb() #6
  %125 = ptrtoint ptr %private190 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %private190, align 4
  %conv353 = trunc i32 %126 to i8
  %127 = ptrtoint ptr %port167 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %port167, align 4
  %add355 = add i32 %128, 2
  %and356 = and i32 %add355, 1048575
  %add357 = or i32 %and356, -18874368
  %129 = inttoptr i32 %add357 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %129, i8 %conv353) #6, !srcloc !55
  %130 = ptrtoint ptr %delay172 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %delay172, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %131)
  %tobool360.not = icmp eq i32 %131, 0
  br i1 %tobool360.not, label %cond.end346.sw.epilog709.sink.split_crit_edge, label %cond.false372

cond.end346.sw.epilog709.sink.split_crit_edge:    ; preds = %cond.end346
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog709.sink.split

cond.false372:                                    ; preds = %cond.end346
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %132 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %132(i32 noundef %131) #6
  br label %sw.epilog709.sink.split

sw.bb377:                                         ; preds = %entry.sw.bb377_crit_edge, %entry.sw.bb377_crit_edge1012, %entry.sw.bb377_crit_edge1013
  %133 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 0, ptr %mode, align 4
  tail call void @bpck_connect(ptr noundef %pi)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 7, i32 noundef 3)
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 8)
  tail call void @bpck_disconnect(ptr noundef %pi)
  %134 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %17, ptr %mode, align 4
  tail call void @bpck_connect(ptr noundef %pi)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !226
  tail call void @arm_heavy_mb() #6
  %port384 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %135 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %port384, align 4
  %and386 = and i32 %136, 1048575
  %add387 = or i32 %and386, -18874368
  %137 = inttoptr i32 %add387 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %137, i8 19) #6, !srcloc !55
  %delay389 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %138 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool390.not = icmp eq i32 %139, 0
  br i1 %tobool390.not, label %sw.bb377.do.body407_crit_edge, label %cond.false402

sw.bb377.do.body407_crit_edge:                    ; preds = %sw.bb377
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body407

cond.false402:                                    ; preds = %sw.bb377
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %140 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %140(i32 noundef %139) #6
  br label %do.body407

do.body407:                                       ; preds = %cond.false402, %sw.bb377.do.body407_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !227
  tail call void @arm_heavy_mb() #6
  %141 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %port384, align 4
  %add411 = add i32 %142, 2
  %and412 = and i32 %add411, 1048575
  %add413 = or i32 %and412, -18874368
  %143 = inttoptr i32 %add413 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %143, i8 9) #6, !srcloc !55
  %144 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %tobool416.not = icmp eq i32 %145, 0
  br i1 %tobool416.not, label %do.body407.cond.end432_crit_edge, label %cond.false428

do.body407.cond.end432_crit_edge:                 ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end432

cond.false428:                                    ; preds = %do.body407
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %146 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %146(i32 noundef %145) #6
  br label %cond.end432

cond.end432:                                      ; preds = %cond.false428, %do.body407.cond.end432_crit_edge
  %private433 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %147 = ptrtoint ptr %private433 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 9, ptr %private433, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !228
  tail call void @arm_heavy_mb() #6
  %148 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %port384, align 4
  %add438 = add i32 %149, 2
  %and439 = and i32 %add438, 1048575
  %add440 = or i32 %and439, -18874368
  %150 = inttoptr i32 %add440 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %150, i8 1) #6, !srcloc !55
  %151 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %152)
  %tobool443.not = icmp eq i32 %152, 0
  br i1 %tobool443.not, label %cond.end432.cond.end459_crit_edge, label %cond.false455

cond.end432.cond.end459_crit_edge:                ; preds = %cond.end432
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end459

cond.false455:                                    ; preds = %cond.end432
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %153 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %153(i32 noundef %152) #6
  br label %cond.end459

cond.end459:                                      ; preds = %cond.false455, %cond.end432.cond.end459_crit_edge
  %154 = ptrtoint ptr %private433 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 1, ptr %private433, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !229
  tail call void @arm_heavy_mb() #6
  %155 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %port384, align 4
  %and466 = and i32 %156, 1048575
  %add467 = or i32 %and466, -18874368
  %157 = inttoptr i32 %add467 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %157, i8 0) #6, !srcloc !55
  %158 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %159)
  %tobool470.not = icmp eq i32 %159, 0
  br i1 %tobool470.not, label %cond.end459.do.body487_crit_edge, label %cond.false482

cond.end459.do.body487_crit_edge:                 ; preds = %cond.end459
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body487

cond.false482:                                    ; preds = %cond.end459
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %160 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %160(i32 noundef %159) #6
  br label %do.body487

do.body487:                                       ; preds = %cond.false482, %cond.end459.do.body487_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !230
  tail call void @arm_heavy_mb() #6
  %161 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %port384, align 4
  %add491 = add i32 %162, 2
  %and492 = and i32 %add491, 1048575
  %add493 = or i32 %and492, -18874368
  %163 = inttoptr i32 %add493 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %163, i8 3) #6, !srcloc !55
  %164 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %165)
  %tobool496.not = icmp eq i32 %165, 0
  br i1 %tobool496.not, label %do.body487.cond.end512_crit_edge, label %cond.false508

do.body487.cond.end512_crit_edge:                 ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end512

cond.false508:                                    ; preds = %do.body487
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %166 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %166(i32 noundef %165) #6
  br label %cond.end512

cond.end512:                                      ; preds = %cond.false508, %do.body487.cond.end512_crit_edge
  %167 = ptrtoint ptr %private433 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 3, ptr %private433, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !231
  tail call void @arm_heavy_mb() #6
  %168 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %port384, align 4
  %add518 = add i32 %169, 2
  %and519 = and i32 %add518, 1048575
  %add520 = or i32 %and519, -18874368
  %170 = inttoptr i32 %add520 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %170, i8 0) #6, !srcloc !55
  %171 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %172)
  %tobool523.not = icmp eq i32 %172, 0
  br i1 %tobool523.not, label %cond.end512.cond.end539_crit_edge, label %cond.false535

cond.end512.cond.end539_crit_edge:                ; preds = %cond.end512
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end539

cond.false535:                                    ; preds = %cond.end512
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %173 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %173(i32 noundef %172) #6
  br label %cond.end539

cond.end539:                                      ; preds = %cond.false535, %cond.end512.cond.end539_crit_edge
  %174 = ptrtoint ptr %private433 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 0, ptr %private433, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !232
  tail call void @arm_heavy_mb() #6
  %175 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %port384, align 4
  %add545 = add i32 %176, 2
  %and546 = and i32 %add545, 1048575
  %add547 = or i32 %and546, -18874368
  %177 = inttoptr i32 %add547 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %177, i8 -32) #6, !srcloc !55
  %178 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %179)
  %tobool550.not = icmp eq i32 %179, 0
  br i1 %tobool550.not, label %cond.end539.cond.end566_crit_edge, label %cond.false562

cond.end539.cond.end566_crit_edge:                ; preds = %cond.end539
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end566

cond.false562:                                    ; preds = %cond.end539
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %180 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %180(i32 noundef %179) #6
  br label %cond.end566

cond.end566:                                      ; preds = %cond.false562, %cond.end539.cond.end566_crit_edge
  %181 = ptrtoint ptr %private433 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 224, ptr %private433, align 4
  %182 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %mode, align 4
  %184 = zext i32 %183 to i64
  call void @__sanitizer_cov_trace_switch(i64 %184, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %183, label %cond.end566.do.body682_crit_edge [
    i32 2, label %cond.end566.for.body573_crit_edge
    i32 3, label %cond.end566.for.body611_crit_edge
    i32 4, label %for.body649.preheader
  ]

cond.end566.for.body611_crit_edge:                ; preds = %cond.end566
  br label %for.body611

cond.end566.for.body573_crit_edge:                ; preds = %cond.end566
  br label %for.body573

cond.end566.do.body682_crit_edge:                 ; preds = %cond.end566
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body682

for.body649.preheader:                            ; preds = %cond.end566
  %185 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool651.not = icmp eq i32 %186, 0
  br i1 %tobool651.not, label %for.body649.preheader.cond.end667_crit_edge, label %cond.false663

for.body649.preheader.cond.end667_crit_edge:      ; preds = %for.body649.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end667

for.body573:                                      ; preds = %cond.end591.for.body573_crit_edge, %cond.end566.for.body573_crit_edge
  %i.2996 = phi i32 [ %inc605, %cond.end591.for.body573_crit_edge ], [ 0, %cond.end566.for.body573_crit_edge ]
  %187 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %188)
  %tobool575.not = icmp eq i32 %188, 0
  br i1 %tobool575.not, label %for.body573.cond.end591_crit_edge, label %cond.false587

for.body573.cond.end591_crit_edge:                ; preds = %for.body573
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end591

cond.false587:                                    ; preds = %for.body573
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %189 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %189(i32 noundef %188) #6
  br label %cond.end591

cond.end591:                                      ; preds = %cond.false587, %for.body573.cond.end591_crit_edge
  %190 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %port384, align 4
  %add594 = add i32 %191, 4
  %and595 = and i32 %add594, 1048575
  %add596 = or i32 %and595, -18874368
  %192 = inttoptr i32 %add596 to ptr
  %193 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %192) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !233
  %arrayidx603 = getelementptr [16 x i8], ptr %buf, i32 0, i32 %i.2996
  %194 = ptrtoint ptr %arrayidx603 to i32
  call void @__asan_store1_noabort(i32 %194)
  store i8 %193, ptr %arrayidx603, align 1
  %inc605 = add nuw nsw i32 %i.2996, 1
  %exitcond1004.not = icmp eq i32 %inc605, 16
  br i1 %exitcond1004.not, label %cond.end591.do.body682_crit_edge, label %cond.end591.for.body573_crit_edge

cond.end591.for.body573_crit_edge:                ; preds = %cond.end591
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body573

cond.end591.do.body682_crit_edge:                 ; preds = %cond.end591
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body682

for.body611:                                      ; preds = %cond.end629.for.body611_crit_edge, %cond.end566.for.body611_crit_edge
  %i.3995 = phi i32 [ %inc643, %cond.end629.for.body611_crit_edge ], [ 0, %cond.end566.for.body611_crit_edge ]
  %195 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %196)
  %tobool613.not = icmp eq i32 %196, 0
  br i1 %tobool613.not, label %for.body611.cond.end629_crit_edge, label %cond.false625

for.body611.cond.end629_crit_edge:                ; preds = %for.body611
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end629

cond.false625:                                    ; preds = %for.body611
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %197 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %197(i32 noundef %196) #6
  br label %cond.end629

cond.end629:                                      ; preds = %cond.false625, %for.body611.cond.end629_crit_edge
  %198 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load i32, ptr %port384, align 4
  %add632 = add i32 %199, 4
  %and633 = and i32 %add632, 1048575
  %add634 = or i32 %and633, -18874368
  %200 = inttoptr i32 %add634 to ptr
  %201 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr nonnull elementtype(i16) %200) #6, !srcloc !144
  %202 = tail call i16 @llvm.bswap.i16(i16 %201)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !234
  %arrayidx641 = getelementptr i16, ptr %buf, i32 %i.3995
  %203 = ptrtoint ptr %arrayidx641 to i32
  call void @__asan_store2_noabort(i32 %203)
  store i16 %202, ptr %arrayidx641, align 2
  %inc643 = add nuw nsw i32 %i.3995, 1
  %exitcond.not = icmp eq i32 %inc643, 8
  br i1 %exitcond.not, label %cond.end629.do.body682_crit_edge, label %cond.end629.for.body611_crit_edge

cond.end629.for.body611_crit_edge:                ; preds = %cond.end629
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body611

cond.end629.do.body682_crit_edge:                 ; preds = %cond.end629
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body682

cond.false663:                                    ; preds = %for.body649.preheader
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %204 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %204(i32 noundef %186) #6
  br label %cond.end667

cond.end667:                                      ; preds = %cond.false663, %for.body649.preheader.cond.end667_crit_edge
  %205 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %port384, align 4
  %add670 = add i32 %206, 4
  %and671 = and i32 %add670, 1048575
  %add672 = or i32 %and671, -18874368
  %207 = inttoptr i32 %add672 to ptr
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %207) #6, !srcloc !151
  %209 = tail call i32 @llvm.bswap.i32(i32 %208)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %210 = ptrtoint ptr %buf to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 %209, ptr %buf, align 4
  %211 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %212)
  %tobool651.not.1 = icmp eq i32 %212, 0
  br i1 %tobool651.not.1, label %cond.end667.cond.end667.1_crit_edge, label %cond.false663.1

cond.end667.cond.end667.1_crit_edge:              ; preds = %cond.end667
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end667.1

cond.false663.1:                                  ; preds = %cond.end667
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %213 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %213(i32 noundef %212) #6
  br label %cond.end667.1

cond.end667.1:                                    ; preds = %cond.false663.1, %cond.end667.cond.end667.1_crit_edge
  %214 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %port384, align 4
  %add670.1 = add i32 %215, 4
  %and671.1 = and i32 %add670.1, 1048575
  %add672.1 = or i32 %and671.1, -18874368
  %216 = inttoptr i32 %add672.1 to ptr
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %216) #6, !srcloc !151
  %218 = tail call i32 @llvm.bswap.i32(i32 %217)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %219 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %218, ptr %3, align 4
  %220 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %221)
  %tobool651.not.2 = icmp eq i32 %221, 0
  br i1 %tobool651.not.2, label %cond.end667.1.cond.end667.2_crit_edge, label %cond.false663.2

cond.end667.1.cond.end667.2_crit_edge:            ; preds = %cond.end667.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end667.2

cond.false663.2:                                  ; preds = %cond.end667.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %222 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %222(i32 noundef %221) #6
  br label %cond.end667.2

cond.end667.2:                                    ; preds = %cond.false663.2, %cond.end667.1.cond.end667.2_crit_edge
  %223 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %port384, align 4
  %add670.2 = add i32 %224, 4
  %and671.2 = and i32 %add670.2, 1048575
  %add672.2 = or i32 %and671.2, -18874368
  %225 = inttoptr i32 %add672.2 to ptr
  %226 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %225) #6, !srcloc !151
  %227 = tail call i32 @llvm.bswap.i32(i32 %226)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %228 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %228)
  store i32 %227, ptr %7, align 4
  %229 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %230)
  %tobool651.not.3 = icmp eq i32 %230, 0
  br i1 %tobool651.not.3, label %cond.end667.2.cond.end667.3_crit_edge, label %cond.false663.3

cond.end667.2.cond.end667.3_crit_edge:            ; preds = %cond.end667.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end667.3

cond.false663.3:                                  ; preds = %cond.end667.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %231 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %231(i32 noundef %230) #6
  br label %cond.end667.3

cond.end667.3:                                    ; preds = %cond.false663.3, %cond.end667.2.cond.end667.3_crit_edge
  %232 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %port384, align 4
  %add670.3 = add i32 %233, 4
  %and671.3 = and i32 %add670.3, 1048575
  %add672.3 = or i32 %and671.3, -18874368
  %234 = inttoptr i32 %add672.3 to ptr
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) %234) #6, !srcloc !151
  %236 = tail call i32 @llvm.bswap.i32(i32 %235)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !235
  %237 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 %236, ptr %11, align 4
  br label %do.body682

do.body682:                                       ; preds = %cond.end667.3, %cond.end629.do.body682_crit_edge, %cond.end591.do.body682_crit_edge, %cond.end566.do.body682_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !236
  tail call void @arm_heavy_mb() #6
  %238 = ptrtoint ptr %port384 to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %port384, align 4
  %add686 = add i32 %239, 2
  %and687 = and i32 %add686, 1048575
  %add688 = or i32 %and687, -18874368
  %240 = inttoptr i32 %add688 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %240, i8 0) #6, !srcloc !55
  %241 = ptrtoint ptr %delay389 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %delay389, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %242)
  %tobool691.not = icmp eq i32 %242, 0
  br i1 %tobool691.not, label %do.body682.cond.end707_crit_edge, label %cond.false703

do.body682.cond.end707_crit_edge:                 ; preds = %do.body682
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end707

cond.false703:                                    ; preds = %do.body682
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %243 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %243(i32 noundef %242) #6
  br label %cond.end707

cond.end707:                                      ; preds = %cond.false703, %do.body682.cond.end707_crit_edge
  %244 = ptrtoint ptr %private433 to i32
  call void @__asan_store4_noabort(i32 %244)
  store i32 0, ptr %private433, align 4
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 7, i32 noundef 0)
  br label %sw.epilog709.sink.split

sw.epilog709.sink.split:                          ; preds = %cond.end707, %cond.false372, %cond.end346.sw.epilog709.sink.split_crit_edge, %cond.end144.sw.epilog709.sink.split_crit_edge
  tail call void @bpck_disconnect(ptr noundef %pi)
  br label %sw.epilog709

sw.epilog709:                                     ; preds = %sw.epilog709.sink.split, %entry.sw.epilog709_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %verbose)
  %tobool710.not = icmp eq i32 %verbose, 0
  br i1 %tobool710.not, label %sw.epilog709.if.end_crit_edge, label %do.end713

sw.epilog709.if.end_crit_edge:                    ; preds = %sw.epilog709
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

do.end713:                                        ; preds = %sw.epilog709
  call void @__sanitizer_cov_trace_pc() #8
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %245 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %device, align 4
  %port715 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %247 = ptrtoint ptr %port715 to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %port715, align 4
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %249 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %unit, align 4
  %251 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %mode, align 4
  %call717 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %246, i32 noundef %248, i32 noundef %250, i32 noundef %252) #9
  %253 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %253)
  %254 = load i8, ptr %buf, align 4
  %conv727 = zext i8 %254 to i32
  %call728 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727) #9
  %255 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %255)
  %256 = load i8, ptr %0, align 1
  %conv727.1 = zext i8 %256 to i32
  %call728.1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.1) #9
  %257 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %257)
  %258 = load i8, ptr %1, align 2
  %conv727.2 = zext i8 %258 to i32
  %call728.2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.2) #9
  %259 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %2, align 1
  %conv727.3 = zext i8 %260 to i32
  %call728.3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.3) #9
  %261 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %261)
  %262 = load i8, ptr %3, align 4
  %conv727.4 = zext i8 %262 to i32
  %call728.4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.4) #9
  %263 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %263)
  %264 = load i8, ptr %4, align 1
  %conv727.5 = zext i8 %264 to i32
  %call728.5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.5) #9
  %265 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %265)
  %266 = load i8, ptr %5, align 2
  %conv727.6 = zext i8 %266 to i32
  %call728.6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.6) #9
  %267 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %267)
  %268 = load i8, ptr %6, align 1
  %conv727.7 = zext i8 %268 to i32
  %call728.7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.7) #9
  %269 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %269)
  %270 = load i8, ptr %7, align 4
  %conv727.8 = zext i8 %270 to i32
  %call728.8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.8) #9
  %271 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %271)
  %272 = load i8, ptr %8, align 1
  %conv727.9 = zext i8 %272 to i32
  %call728.9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.9) #9
  %273 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %273)
  %274 = load i8, ptr %9, align 2
  %conv727.10 = zext i8 %274 to i32
  %call728.10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.10) #9
  %275 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %275)
  %276 = load i8, ptr %10, align 1
  %conv727.11 = zext i8 %276 to i32
  %call728.11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.11) #9
  %277 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %277)
  %278 = load i8, ptr %11, align 4
  %conv727.12 = zext i8 %278 to i32
  %call728.12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.12) #9
  %279 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %279)
  %280 = load i8, ptr %12, align 1
  %conv727.13 = zext i8 %280 to i32
  %call728.13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.13) #9
  %281 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %281)
  %282 = load i8, ptr %13, align 2
  %conv727.14 = zext i8 %282 to i32
  %call728.14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.14) #9
  %283 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %283)
  %284 = load i8, ptr %14, align 1
  %conv727.15 = zext i8 %284 to i32
  %call728.15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %conv727.15) #9
  %call736 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  br label %if.end

if.end:                                           ; preds = %do.end713, %sw.epilog709.if.end_crit_edge
  %285 = ptrtoint ptr %buf to i32
  call void @__asan_load1_noabort(i32 %285)
  %286 = load i8, ptr %buf, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %286)
  %cmp744.not = icmp ne i8 %286, 1
  %inc747 = zext i1 %cmp744.not to i32
  %287 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %287)
  %288 = load i8, ptr %0, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %288)
  %cmp744.not.1 = icmp ne i8 %288, 2
  %inc747.1 = zext i1 %cmp744.not.1 to i32
  %spec.select.1 = add nuw nsw i32 %inc747, %inc747.1
  %289 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %289)
  %290 = load i8, ptr %1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %290)
  %cmp744.not.2 = icmp ne i8 %290, 3
  %inc747.2 = zext i1 %cmp744.not.2 to i32
  %spec.select.2 = add nuw nsw i32 %spec.select.1, %inc747.2
  %291 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %291)
  %292 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %292)
  %cmp744.not.3 = icmp ne i8 %292, 4
  %inc747.3 = zext i1 %cmp744.not.3 to i32
  %spec.select.3 = add nuw nsw i32 %spec.select.2, %inc747.3
  %293 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %293)
  %294 = load i8, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %294)
  %cmp744.not.4 = icmp ne i8 %294, 5
  %inc747.4 = zext i1 %cmp744.not.4 to i32
  %spec.select.4 = add nuw nsw i32 %spec.select.3, %inc747.4
  %295 = ptrtoint ptr %4 to i32
  call void @__asan_load1_noabort(i32 %295)
  %296 = load i8, ptr %4, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %296)
  %cmp744.not.5 = icmp ne i8 %296, 6
  %inc747.5 = zext i1 %cmp744.not.5 to i32
  %spec.select.5 = add nuw nsw i32 %spec.select.4, %inc747.5
  %297 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %297)
  %298 = load i8, ptr %5, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 7, i8 %298)
  %cmp744.not.6 = icmp ne i8 %298, 7
  %inc747.6 = zext i1 %cmp744.not.6 to i32
  %spec.select.6 = add nuw nsw i32 %spec.select.5, %inc747.6
  %299 = ptrtoint ptr %6 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %6, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %300)
  %cmp744.not.7 = icmp ne i8 %300, 8
  %inc747.7 = zext i1 %cmp744.not.7 to i32
  %spec.select.7 = add nuw nsw i32 %spec.select.6, %inc747.7
  %301 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %301)
  %302 = load i8, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 9, i8 %302)
  %cmp744.not.8 = icmp ne i8 %302, 9
  %inc747.8 = zext i1 %cmp744.not.8 to i32
  %spec.select.8 = add nuw nsw i32 %spec.select.7, %inc747.8
  %303 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %303)
  %304 = load i8, ptr %8, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %304)
  %cmp744.not.9 = icmp ne i8 %304, 10
  %inc747.9 = zext i1 %cmp744.not.9 to i32
  %spec.select.9 = add nuw nsw i32 %spec.select.8, %inc747.9
  %305 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %305)
  %306 = load i8, ptr %9, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 11, i8 %306)
  %cmp744.not.10 = icmp ne i8 %306, 11
  %inc747.10 = zext i1 %cmp744.not.10 to i32
  %spec.select.10 = add nuw nsw i32 %spec.select.9, %inc747.10
  %307 = ptrtoint ptr %10 to i32
  call void @__asan_load1_noabort(i32 %307)
  %308 = load i8, ptr %10, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 12, i8 %308)
  %cmp744.not.11 = icmp ne i8 %308, 12
  %inc747.11 = zext i1 %cmp744.not.11 to i32
  %spec.select.11 = add nuw nsw i32 %spec.select.10, %inc747.11
  %309 = ptrtoint ptr %11 to i32
  call void @__asan_load1_noabort(i32 %309)
  %310 = load i8, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 13, i8 %310)
  %cmp744.not.12 = icmp ne i8 %310, 13
  %inc747.12 = zext i1 %cmp744.not.12 to i32
  %spec.select.12 = add nuw nsw i32 %spec.select.11, %inc747.12
  %311 = ptrtoint ptr %12 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %12, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 14, i8 %312)
  %cmp744.not.13 = icmp ne i8 %312, 14
  %inc747.13 = zext i1 %cmp744.not.13 to i32
  %spec.select.13 = add nuw nsw i32 %spec.select.12, %inc747.13
  %313 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %13, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 15, i8 %314)
  %cmp744.not.14 = icmp ne i8 %314, 15
  %inc747.14 = zext i1 %cmp744.not.14 to i32
  %spec.select.14 = add nuw nsw i32 %spec.select.13, %inc747.14
  %315 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %316)
  %cmp744.not.15 = icmp ne i8 %316, 16
  %inc747.15 = zext i1 %cmp744.not.15 to i32
  %spec.select.15 = add nuw nsw i32 %spec.select.14, %inc747.15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf) #6
  ret i32 %spec.select.15
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bpck_log_adapter(ptr noundef %pi, ptr noundef %scratch, i32 noundef %verbose) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @bpck_force_spp(ptr noundef %pi) #6
  %mode.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 2
  %0 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mode.i, align 4
  %delay.i = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %2 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay.i, align 4
  store i32 0, ptr %mode.i, align 4
  store i32 6, ptr %delay.i, align 4
  tail call void @bpck_connect(ptr noundef %pi) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 0) #6
  br label %for.body.i

for.body.i:                                       ; preds = %for.end24.1.i.for.body.i_crit_edge, %entry
  %i.082.i = phi i32 [ 0, %entry ], [ %inc32.i, %for.end24.1.i.for.body.i_crit_edge ]
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 8) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 12) #6
  %add.i = add nuw nsw i32 %i.082.i, 384
  br label %for.body5.i

for.cond10.preheader.i:                           ; preds = %for.body5.i
  %mul26.i = shl nuw i32 %i.082.i, 1
  br label %for.body17.i

for.body5.i:                                      ; preds = %for.body5.i.for.body5.i_crit_edge, %for.body.i
  %p.078.i = phi i32 [ 256, %for.body.i ], [ %4, %for.body5.i.for.body5.i_crit_edge ]
  %k.077.i = phi i32 [ 0, %for.body.i ], [ %inc.i, %for.body5.i.for.body5.i_crit_edge ]
  %and.i = and i32 %p.078.i, %add.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.not.i = icmp eq i32 %and.i, 0
  %mul.i = select i1 %cmp6.not.i, i32 0, i32 2
  %add7.i = or i32 %mul.i, 12
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef %add7.i) #6
  %add8.i = or i32 %mul.i, 13
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef %add8.i) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef %add7.i) #6
  %4 = lshr i32 %p.078.i, 1
  %inc.i = add nuw nsw i32 %k.077.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 9
  br i1 %exitcond.not.i, label %for.cond10.preheader.i, label %for.body5.i.for.body5.i_crit_edge

for.body5.i.for.body5.i_crit_edge:                ; preds = %for.body5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body5.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.cond10.preheader.i
  %v.080.i = phi i32 [ 0, %for.cond10.preheader.i ], [ %add21.i, %for.body17.i.for.body17.i_crit_edge ]
  %k.179.i = phi i32 [ 0, %for.cond10.preheader.i ], [ %inc23.i, %for.body17.i.for.body17.i_crit_edge ]
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 12) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 13) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 12) #6
  %call.i = tail call i32 @bpck_read_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 0) #6
  %mul18.i = shl i32 %v.080.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %call.i)
  %cmp19.i = icmp eq i32 %call.i, 132
  %conv20.i = zext i1 %cmp19.i to i32
  %add21.i = or i32 %mul18.i, %conv20.i
  %inc23.i = add nuw nsw i32 %k.179.i, 1
  %exitcond83.not.i = icmp eq i32 %inc23.i, 8
  br i1 %exitcond83.not.i, label %for.end24.i, label %for.body17.i.for.body17.i_crit_edge

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.i

for.end24.i:                                      ; preds = %for.body17.i
  %add27.i = or i32 %mul26.i, 1
  %conv25.i = trunc i32 %add21.i to i8
  %arrayidx.i = getelementptr i8, ptr %scratch, i32 %add27.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv25.i, ptr %arrayidx.i, align 1
  br label %for.body17.1.i

for.body17.1.i:                                   ; preds = %for.body17.1.i.for.body17.1.i_crit_edge, %for.end24.i
  %v.080.1.i = phi i32 [ 0, %for.end24.i ], [ %add21.1.i, %for.body17.1.i.for.body17.1.i_crit_edge ]
  %k.179.1.i = phi i32 [ 0, %for.end24.i ], [ %inc23.1.i, %for.body17.1.i.for.body17.1.i_crit_edge ]
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 12) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 13) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 12) #6
  %call.1.i = tail call i32 @bpck_read_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 0) #6
  %mul18.1.i = shl i32 %v.080.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 132, i32 %call.1.i)
  %cmp19.1.i = icmp eq i32 %call.1.i, 132
  %conv20.1.i = zext i1 %cmp19.1.i to i32
  %add21.1.i = or i32 %mul18.1.i, %conv20.1.i
  %inc23.1.i = add nuw nsw i32 %k.179.1.i, 1
  %exitcond83.1.not.i = icmp eq i32 %inc23.1.i, 8
  br i1 %exitcond83.1.not.i, label %for.end24.1.i, label %for.body17.1.i.for.body17.1.i_crit_edge

for.body17.1.i.for.body17.1.i_crit_edge:          ; preds = %for.body17.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17.1.i

for.end24.1.i:                                    ; preds = %for.body17.1.i
  %conv25.1.i = trunc i32 %add21.1.i to i8
  %arrayidx.1.i = getelementptr i8, ptr %scratch, i32 %mul26.i
  %6 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv25.1.i, ptr %arrayidx.1.i, align 1
  %inc32.i = add nuw nsw i32 %i.082.i, 1
  %exitcond85.not.i = icmp eq i32 %inc32.i, 64
  br i1 %exitcond85.not.i, label %for.end33.i, label %for.end24.1.i.for.body.i_crit_edge

for.end24.1.i.for.body.i_crit_edge:               ; preds = %for.end24.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.end33.i:                                      ; preds = %for.end24.1.i
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 8) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 6, i32 noundef 0) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 5, i32 noundef 8) #6
  tail call void @bpck_disconnect(ptr noundef %pi) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp34.i = icmp sgt i32 %1, 1
  br i1 %cmp34.i, label %if.then.i, label %for.end33.i.bpck_read_eeprom.exit_crit_edge

for.end33.i.bpck_read_eeprom.exit_crit_edge:      ; preds = %for.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %bpck_read_eeprom.exit

if.then.i:                                        ; preds = %for.end33.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @bpck_connect(ptr noundef %pi) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 7, i32 noundef 3) #6
  tail call void @bpck_write_regr(ptr noundef %pi, i32 noundef 2, i32 noundef 4, i32 noundef 8) #6
  tail call void @bpck_disconnect(ptr noundef %pi) #6
  br label %bpck_read_eeprom.exit

bpck_read_eeprom.exit:                            ; preds = %if.then.i, %for.end33.i.bpck_read_eeprom.exit_crit_edge
  %7 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %1, ptr %mode.i, align 4
  %8 = ptrtoint ptr %delay.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %3, ptr %delay.i, align 4
  %device = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 5
  %9 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %device, align 4
  %arrayidx = getelementptr i8, ptr %scratch, i32 110
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %11 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %unit, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef %10, ptr noundef nonnull @.str.16, ptr noundef %arrayidx, i32 noundef %12) #9
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %13 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %port, align 4
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode.i, align 4
  %arrayidx6 = getelementptr [5 x ptr], ptr @__const.bpck_log_adapter.mode_string, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx6, align 4
  %19 = ptrtoint ptr %delay.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %delay.i, align 4
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, i32 noundef %14, i32 noundef %16, ptr noundef %18, i32 noundef %20) #9
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bpck_force_spp(ptr noundef %pi) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %delay = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 3
  %0 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cond.end10_crit_edge, label %cond.false6

entry.cond.end10_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end10

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %2(i32 noundef %1) #6
  br label %cond.end10

cond.end10:                                       ; preds = %cond.false6, %entry.cond.end10_crit_edge
  %port = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 1
  %3 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %port, align 4
  %and = and i32 %4, 1048575
  %add11 = or i32 %and, -18874368
  %5 = inttoptr i32 %add11 to ptr
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr nonnull elementtype(i8) %5) #6, !srcloc !72
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !237
  %conv = zext i8 %6 to i32
  %saved_r0 = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 7
  %7 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %conv, ptr %saved_r0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !238
  tail call void @arm_heavy_mb() #6
  %unit = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 6
  %8 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %unit, align 4
  %10 = trunc i32 %9 to i8
  %conv14 = xor i8 %10, -1
  %11 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %port, align 4
  %and17 = and i32 %12, 1048575
  %add18 = or i32 %and17, -18874368
  %13 = inttoptr i32 %add18 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %13, i8 %conv14) #6, !srcloc !55
  %14 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool21.not = icmp eq i32 %15, 0
  br i1 %tobool21.not, label %cond.end10.do.body38_crit_edge, label %cond.false33

cond.end10.do.body38_crit_edge:                   ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body38

cond.false33:                                     ; preds = %cond.end10
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %16(i32 noundef %15) #6
  br label %do.body38

do.body38:                                        ; preds = %cond.false33, %cond.end10.do.body38_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !239
  tail call void @arm_heavy_mb() #6
  %17 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %port, align 4
  %add41 = add i32 %18, 2
  %and42 = and i32 %add41, 1048575
  %add43 = or i32 %and42, -18874368
  %19 = inttoptr i32 %add43 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %19, i8 4) #6, !srcloc !55
  %20 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool46.not = icmp eq i32 %21, 0
  br i1 %tobool46.not, label %do.body38.cond.end62_crit_edge, label %cond.false58

do.body38.cond.end62_crit_edge:                   ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end62

cond.false58:                                     ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %22(i32 noundef %21) #6
  br label %cond.end62

cond.end62:                                       ; preds = %cond.false58, %do.body38.cond.end62_crit_edge
  %private = getelementptr inbounds %struct.pi_adapter, ptr %pi, i32 0, i32 10
  %23 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 4, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !240
  tail call void @arm_heavy_mb() #6
  %24 = ptrtoint ptr %unit to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %unit, align 4
  %conv66 = trunc i32 %25 to i8
  %26 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %port, align 4
  %and69 = and i32 %27, 1048575
  %add70 = or i32 %and69, -18874368
  %28 = inttoptr i32 %add70 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %28, i8 %conv66) #6, !srcloc !55
  %29 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool73.not = icmp eq i32 %30, 0
  br i1 %tobool73.not, label %cond.end62.cond.end89_crit_edge, label %cond.false85

cond.end62.cond.end89_crit_edge:                  ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end89

cond.false85:                                     ; preds = %cond.end62
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %31(i32 noundef %30) #6
  br label %cond.end89

cond.end89:                                       ; preds = %cond.false85, %cond.end62.cond.end89_crit_edge
  %32 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %private, align 4
  %xor = xor i32 %33, 8
  store i32 %xor, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !241
  tail call void @arm_heavy_mb() #6
  %34 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %private, align 4
  %conv94 = trunc i32 %35 to i8
  %36 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %port, align 4
  %add96 = add i32 %37, 2
  %and97 = and i32 %add96, 1048575
  %add98 = or i32 %and97, -18874368
  %38 = inttoptr i32 %add98 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %38, i8 %conv94) #6, !srcloc !55
  %39 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool101.not = icmp eq i32 %40, 0
  br i1 %tobool101.not, label %cond.end89.cond.end117_crit_edge, label %cond.false113

cond.end89.cond.end117_crit_edge:                 ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end117

cond.false113:                                    ; preds = %cond.end89
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %41(i32 noundef %40) #6
  br label %cond.end117

cond.end117:                                      ; preds = %cond.false113, %cond.end89.cond.end117_crit_edge
  %42 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %private, align 4
  %xor119 = xor i32 %43, 8
  store i32 %xor119, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !242
  tail call void @arm_heavy_mb() #6
  %44 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %private, align 4
  %conv123 = trunc i32 %45 to i8
  %46 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %port, align 4
  %add125 = add i32 %47, 2
  %and126 = and i32 %add125, 1048575
  %add127 = or i32 %and126, -18874368
  %48 = inttoptr i32 %add127 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %48, i8 %conv123) #6, !srcloc !55
  %49 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool130.not = icmp eq i32 %50, 0
  br i1 %tobool130.not, label %cond.end117.cond.end146_crit_edge, label %cond.false142

cond.end117.cond.end146_crit_edge:                ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end146

cond.false142:                                    ; preds = %cond.end117
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %51(i32 noundef %50) #6
  br label %cond.end146

cond.end146:                                      ; preds = %cond.false142, %cond.end117.cond.end146_crit_edge
  %52 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %private, align 4
  %xor148 = xor i32 %53, 8
  store i32 %xor148, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !243
  tail call void @arm_heavy_mb() #6
  %54 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %private, align 4
  %conv152 = trunc i32 %55 to i8
  %56 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %port, align 4
  %add154 = add i32 %57, 2
  %and155 = and i32 %add154, 1048575
  %add156 = or i32 %and155, -18874368
  %58 = inttoptr i32 %add156 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %58, i8 %conv152) #6, !srcloc !55
  %59 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool159.not = icmp eq i32 %60, 0
  br i1 %tobool159.not, label %cond.end146.cond.end175_crit_edge, label %cond.false171

cond.end146.cond.end175_crit_edge:                ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end175

cond.false171:                                    ; preds = %cond.end146
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %61 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %61(i32 noundef %60) #6
  br label %cond.end175

cond.end175:                                      ; preds = %cond.false171, %cond.end146.cond.end175_crit_edge
  %62 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %private, align 4
  %xor177 = xor i32 %63, 2
  store i32 %xor177, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !244
  tail call void @arm_heavy_mb() #6
  %64 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %private, align 4
  %conv181 = trunc i32 %65 to i8
  %66 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %port, align 4
  %add183 = add i32 %67, 2
  %and184 = and i32 %add183, 1048575
  %add185 = or i32 %and184, -18874368
  %68 = inttoptr i32 %add185 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %68, i8 %conv181) #6, !srcloc !55
  %69 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool188.not = icmp eq i32 %70, 0
  br i1 %tobool188.not, label %cond.end175.cond.end204_crit_edge, label %cond.false200

cond.end175.cond.end204_crit_edge:                ; preds = %cond.end175
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end204

cond.false200:                                    ; preds = %cond.end175
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %71 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %71(i32 noundef %70) #6
  br label %cond.end204

cond.end204:                                      ; preds = %cond.false200, %cond.end175.cond.end204_crit_edge
  %72 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %private, align 4
  %xor206 = xor i32 %73, 2
  store i32 %xor206, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !245
  tail call void @arm_heavy_mb() #6
  %74 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %private, align 4
  %conv210 = trunc i32 %75 to i8
  %76 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %port, align 4
  %add212 = add i32 %77, 2
  %and213 = and i32 %add212, 1048575
  %add214 = or i32 %and213, -18874368
  %78 = inttoptr i32 %add214 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %78, i8 %conv210) #6, !srcloc !55
  %79 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool217.not = icmp eq i32 %80, 0
  br i1 %tobool217.not, label %cond.end204.do.body234_crit_edge, label %cond.false229

cond.end204.do.body234_crit_edge:                 ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body234

cond.false229:                                    ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %81 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %81(i32 noundef %80) #6
  br label %do.body234

do.body234:                                       ; preds = %cond.false229, %cond.end204.do.body234_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !246
  tail call void @arm_heavy_mb() #6
  %82 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %port, align 4
  %add237 = add i32 %83, 2
  %and238 = and i32 %add237, 1048575
  %add239 = or i32 %and238, -18874368
  %84 = inttoptr i32 %add239 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %84, i8 0) #6, !srcloc !55
  %85 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %tobool242.not = icmp eq i32 %86, 0
  br i1 %tobool242.not, label %do.body234.cond.end258_crit_edge, label %cond.false254

do.body234.cond.end258_crit_edge:                 ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end258

cond.false254:                                    ; preds = %do.body234
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %87 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %87(i32 noundef %86) #6
  br label %cond.end258

cond.end258:                                      ; preds = %cond.false254, %do.body234.cond.end258_crit_edge
  %88 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !247
  tail call void @arm_heavy_mb() #6
  %89 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %port, align 4
  %and264 = and i32 %90, 1048575
  %add265 = or i32 %and264, -18874368
  %91 = inttoptr i32 %add265 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %91, i8 4) #6, !srcloc !55
  %92 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool268.not = icmp eq i32 %93, 0
  br i1 %tobool268.not, label %cond.end258.do.body285_crit_edge, label %cond.false280

cond.end258.do.body285_crit_edge:                 ; preds = %cond.end258
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body285

cond.false280:                                    ; preds = %cond.end258
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %94 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %94(i32 noundef %93) #6
  br label %do.body285

do.body285:                                       ; preds = %cond.false280, %cond.end258.do.body285_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !248
  tail call void @arm_heavy_mb() #6
  %95 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %port, align 4
  %add288 = add i32 %96, 2
  %and289 = and i32 %add288, 1048575
  %add290 = or i32 %and289, -18874368
  %97 = inttoptr i32 %add290 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %97, i8 9) #6, !srcloc !55
  %98 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %99)
  %tobool293.not = icmp eq i32 %99, 0
  br i1 %tobool293.not, label %do.body285.cond.end309_crit_edge, label %cond.false305

do.body285.cond.end309_crit_edge:                 ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end309

cond.false305:                                    ; preds = %do.body285
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %100 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %100(i32 noundef %99) #6
  br label %cond.end309

cond.end309:                                      ; preds = %cond.false305, %do.body285.cond.end309_crit_edge
  %101 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 9, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !249
  tail call void @arm_heavy_mb() #6
  %102 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %port, align 4
  %add314 = add i32 %103, 2
  %and315 = and i32 %add314, 1048575
  %add316 = or i32 %and315, -18874368
  %104 = inttoptr i32 %add316 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %104, i8 0) #6, !srcloc !55
  %105 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool319.not = icmp eq i32 %106, 0
  br i1 %tobool319.not, label %cond.end309.cond.end335_crit_edge, label %cond.false331

cond.end309.cond.end335_crit_edge:                ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end335

cond.false331:                                    ; preds = %cond.end309
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %107 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %107(i32 noundef %106) #6
  br label %cond.end335

cond.end335:                                      ; preds = %cond.false331, %cond.end309.cond.end335_crit_edge
  %108 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !250
  tail call void @arm_heavy_mb() #6
  %109 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %port, align 4
  %and341 = and i32 %110, 1048575
  %add342 = or i32 %and341, -18874368
  %111 = inttoptr i32 %add342 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %111, i8 0) #6, !srcloc !55
  %112 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %113)
  %tobool345.not = icmp eq i32 %113, 0
  br i1 %tobool345.not, label %cond.end335.do.body362_crit_edge, label %cond.false357

cond.end335.do.body362_crit_edge:                 ; preds = %cond.end335
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body362

cond.false357:                                    ; preds = %cond.end335
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %114 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %114(i32 noundef %113) #6
  br label %do.body362

do.body362:                                       ; preds = %cond.false357, %cond.end335.do.body362_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !251
  tail call void @arm_heavy_mb() #6
  %115 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %port, align 4
  %add365 = add i32 %116, 2
  %and366 = and i32 %add365, 1048575
  %add367 = or i32 %and366, -18874368
  %117 = inttoptr i32 %add367 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %117, i8 1) #6, !srcloc !55
  %118 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %119)
  %tobool370.not = icmp eq i32 %119, 0
  br i1 %tobool370.not, label %do.body362.cond.end386_crit_edge, label %cond.false382

do.body362.cond.end386_crit_edge:                 ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end386

cond.false382:                                    ; preds = %do.body362
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %120 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %120(i32 noundef %119) #6
  br label %cond.end386

cond.end386:                                      ; preds = %cond.false382, %do.body362.cond.end386_crit_edge
  %121 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 1, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !252
  tail call void @arm_heavy_mb() #6
  %122 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %port, align 4
  %add391 = add i32 %123, 2
  %and392 = and i32 %add391, 1048575
  %add393 = or i32 %and392, -18874368
  %124 = inttoptr i32 %add393 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %124, i8 3) #6, !srcloc !55
  %125 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool396.not = icmp eq i32 %126, 0
  br i1 %tobool396.not, label %cond.end386.cond.end412_crit_edge, label %cond.false408

cond.end386.cond.end412_crit_edge:                ; preds = %cond.end386
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end412

cond.false408:                                    ; preds = %cond.end386
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %127 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %127(i32 noundef %126) #6
  br label %cond.end412

cond.end412:                                      ; preds = %cond.false408, %cond.end386.cond.end412_crit_edge
  %128 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 3, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !253
  tail call void @arm_heavy_mb() #6
  %129 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %port, align 4
  %add417 = add i32 %130, 2
  %and418 = and i32 %add417, 1048575
  %add419 = or i32 %and418, -18874368
  %131 = inttoptr i32 %add419 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %131, i8 0) #6, !srcloc !55
  %132 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool422.not = icmp eq i32 %133, 0
  br i1 %tobool422.not, label %cond.end412.cond.end438_crit_edge, label %cond.false434

cond.end412.cond.end438_crit_edge:                ; preds = %cond.end412
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end438

cond.false434:                                    ; preds = %cond.end412
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %134 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %134(i32 noundef %133) #6
  br label %cond.end438

cond.end438:                                      ; preds = %cond.false434, %cond.end412.cond.end438_crit_edge
  %135 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !254
  tail call void @arm_heavy_mb() #6
  %136 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %port, align 4
  %and444 = and i32 %137, 1048575
  %add445 = or i32 %and444, -18874368
  %138 = inttoptr i32 %add445 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %138, i8 0) #6, !srcloc !55
  %139 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %140)
  %tobool448.not = icmp eq i32 %140, 0
  br i1 %tobool448.not, label %cond.end438.do.body465_crit_edge, label %cond.false460

cond.end438.do.body465_crit_edge:                 ; preds = %cond.end438
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body465

cond.false460:                                    ; preds = %cond.end438
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %141 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %141(i32 noundef %140) #6
  br label %do.body465

do.body465:                                       ; preds = %cond.false460, %cond.end438.do.body465_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !255
  tail call void @arm_heavy_mb() #6
  %142 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %port, align 4
  %add468 = add i32 %143, 2
  %and469 = and i32 %add468, 1048575
  %add470 = or i32 %and469, -18874368
  %144 = inttoptr i32 %add470 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %144, i8 9) #6, !srcloc !55
  %145 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %146)
  %tobool473.not = icmp eq i32 %146, 0
  br i1 %tobool473.not, label %do.body465.cond.end489_crit_edge, label %cond.false485

do.body465.cond.end489_crit_edge:                 ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end489

cond.false485:                                    ; preds = %do.body465
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %147 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %147(i32 noundef %146) #6
  br label %cond.end489

cond.end489:                                      ; preds = %cond.false485, %do.body465.cond.end489_crit_edge
  %148 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 9, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !256
  tail call void @arm_heavy_mb() #6
  %149 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %port, align 4
  %add494 = add i32 %150, 2
  %and495 = and i32 %add494, 1048575
  %add496 = or i32 %and495, -18874368
  %151 = inttoptr i32 %add496 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %151, i8 0) #6, !srcloc !55
  %152 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %153)
  %tobool499.not = icmp eq i32 %153, 0
  br i1 %tobool499.not, label %cond.end489.cond.end515_crit_edge, label %cond.false511

cond.end489.cond.end515_crit_edge:                ; preds = %cond.end489
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end515

cond.false511:                                    ; preds = %cond.end489
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %154 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %154(i32 noundef %153) #6
  br label %cond.end515

cond.end515:                                      ; preds = %cond.false511, %cond.end489.cond.end515_crit_edge
  %155 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !257
  tail call void @arm_heavy_mb() #6
  %156 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %port, align 4
  %add520 = add i32 %157, 2
  %and521 = and i32 %add520, 1048575
  %add522 = or i32 %and521, -18874368
  %158 = inttoptr i32 %add522 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %158, i8 76) #6, !srcloc !55
  %159 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %160)
  %tobool525.not = icmp eq i32 %160, 0
  br i1 %tobool525.not, label %cond.end515.cond.end541_crit_edge, label %cond.false537

cond.end515.cond.end541_crit_edge:                ; preds = %cond.end515
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end541

cond.false537:                                    ; preds = %cond.end515
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %161 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %161(i32 noundef %160) #6
  br label %cond.end541

cond.end541:                                      ; preds = %cond.false537, %cond.end515.cond.end541_crit_edge
  %162 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 76, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !258
  tail call void @arm_heavy_mb() #6
  %163 = ptrtoint ptr %saved_r0 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %saved_r0, align 4
  %conv546 = trunc i32 %164 to i8
  %165 = ptrtoint ptr %port to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %port, align 4
  %and549 = and i32 %166, 1048575
  %add550 = or i32 %and549, -18874368
  %167 = inttoptr i32 %add550 to ptr
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr nonnull elementtype(i8) %167, i8 %conv546) #6, !srcloc !55
  %168 = ptrtoint ptr %delay to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %delay, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %169)
  %tobool553.not = icmp eq i32 %169, 0
  br i1 %tobool553.not, label %cond.end541.cond.end569_crit_edge, label %cond.false565

cond.end541.cond.end569_crit_edge:                ; preds = %cond.end541
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end569

cond.false565:                                    ; preds = %cond.end541
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2) to i32))
  %170 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 2), align 4
  tail call void %170(i32 noundef %169) #6
  br label %cond.end569

cond.end569:                                      ; preds = %cond.false565, %cond.end541.cond.end569_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @paride_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !38, !39, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @__UNIQUE_ID_file160, !1, !"__UNIQUE_ID_file160", i1 false, i1 false}
!1 = !{!"../drivers/block/paride/bpck.c", i32 475, i32 1}
!2 = !{ptr @__UNIQUE_ID_license161, !1, !"__UNIQUE_ID_license161", i1 false, i1 false}
!3 = !{ptr @__initcall__kmod_bpck__162_476_bpck_init6, !4, !"__initcall__kmod_bpck__162_476_bpck_init6", i1 false, i1 false}
!4 = !{!"../drivers/block/paride/bpck.c", i32 476, i32 1}
!5 = !{ptr @__exitcall_bpck_exit, !6, !"__exitcall_bpck_exit", i1 false, i1 false}
!6 = !{!"../drivers/block/paride/bpck.c", i32 477, i32 1}
!7 = !{ptr @bpck, !8, !"bpck", i1 false, i1 false}
!8 = !{!"../drivers/block/paride/bpck.c", i32 446, i32 27}
!9 = !{ptr @cont_map, !10, !"cont_map", i1 false, i1 false}
!10 = !{!"../drivers/block/paride/bpck.c", i32 47, i32 13}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/block/paride/bpck.c", i32 338, i32 6}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @bpck_test_proto._entry, !12, !"_entry", i1 false, i1 false}
!16 = !{ptr @bpck_test_proto._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/block/paride/bpck.c", i32 340, i32 31}
!19 = !{ptr @bpck_test_proto._entry.3, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @bpck_test_proto._entry_ptr.5, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/block/paride/bpck.c", i32 341, i32 6}
!23 = !{ptr @bpck_test_proto._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bpck_test_proto._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.9, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/block/paride/bpck.c", i32 421, i32 28}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/block/paride/bpck.c", i32 421, i32 36}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/block/paride/bpck.c", i32 421, i32 44}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/block/paride/bpck.c", i32 422, i32 9}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/block/paride/bpck.c", i32 422, i32 18}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/block/paride/bpck.c", i32 440, i32 2}
!37 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @bpck_log_adapter._entry, !36, !"_entry", i1 false, i1 false}
!39 = !{ptr @bpck_log_adapter._entry_ptr, !36, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/block/paride/bpck.c", i32 442, i32 2}
!43 = !{ptr @bpck_log_adapter._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bpck_log_adapter._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{i64 2152131730}
!55 = !{i64 4537734}
!56 = !{i64 2152132793}
!57 = !{i64 2152133809}
!58 = !{i64 2152134868}
!59 = !{i64 2152135931}
!60 = !{i64 2152136994}
!61 = !{i64 2152138004}
!62 = !{i64 2152139027}
!63 = !{i64 2152140062}
!64 = !{i64 2152141090}
!65 = !{i64 2152142113}
!66 = !{i64 2152143148}
!67 = !{i64 2152148244}
!68 = !{i64 2152109067}
!69 = !{i64 2152110077}
!70 = !{i64 2152111140}
!71 = !{i64 2152112203}
!72 = !{i64 4538129}
!73 = !{i64 2152113898}
!74 = !{i64 2152114219}
!75 = !{i64 2152115914}
!76 = !{i64 2152116259}
!77 = !{i64 2152117269}
!78 = !{i64 2152118332}
!79 = !{i64 2152119394}
!80 = !{i64 2152120460}
!81 = !{i64 2152121523}
!82 = !{i64 2152123218}
!83 = !{i64 2152123539}
!84 = !{i64 2152124605}
!85 = !{i64 2152125615}
!86 = !{i64 2152126638}
!87 = !{i64 2152127673}
!88 = !{i64 2152128720}
!89 = !{i64 2152130427}
!90 = !{i64 2152130708}
!91 = !{i64 2152149308}
!92 = !{i64 2152150371}
!93 = !{i64 2152151434}
!94 = !{i64 2152152459}
!95 = !{i64 2152153522}
!96 = !{i64 2152154604}
!97 = !{i64 2152155667}
!98 = !{i64 2152156730}
!99 = !{i64 2152157755}
!100 = !{i64 2152158818}
!101 = !{i64 2152159903}
!102 = !{i64 2152160926}
!103 = !{i64 2152161961}
!104 = !{i64 2152162996}
!105 = !{i64 2152164033}
!106 = !{i64 2152165056}
!107 = !{i64 2152166150}
!108 = !{i64 2152167173}
!109 = !{i64 2152168208}
!110 = !{i64 2152169243}
!111 = !{i64 2152170306}
!112 = !{i64 4537311}
!113 = !{i64 2152171447}
!114 = !{i64 2152172541}
!115 = !{i64 2152173564}
!116 = !{i64 2152174599}
!117 = !{i64 2152175634}
!118 = !{i64 2152176697}
!119 = !{i64 4537931}
!120 = !{i64 2152177838}
!121 = !{i64 2152178932}
!122 = !{i64 2152179995}
!123 = !{i64 2152181058}
!124 = !{i64 2152182753}
!125 = !{i64 2152183074}
!126 = !{i64 2152184769}
!127 = !{i64 2152185168}
!128 = !{i64 2152186231}
!129 = !{i64 2152187297}
!130 = !{i64 2152188360}
!131 = !{i64 2152190055}
!132 = !{i64 2152190376}
!133 = !{i64 2152191442}
!134 = !{i64 2152192527}
!135 = !{i64 2152193550}
!136 = !{i64 2152194585}
!137 = !{i64 2152195632}
!138 = !{i64 2152197339}
!139 = !{i64 2152197620}
!140 = !{i64 2152198714}
!141 = !{i64 2152199737}
!142 = !{i64 2152200772}
!143 = !{i64 2152201819}
!144 = !{i64 4537511}
!145 = !{i64 2152203878}
!146 = !{i64 2152204159}
!147 = !{i64 2152205253}
!148 = !{i64 2152206276}
!149 = !{i64 2152207311}
!150 = !{i64 2152208358}
!151 = !{i64 4538349}
!152 = !{i64 2152210421}
!153 = !{i64 2152210702}
!154 = !{i64 2152236006}
!155 = !{i64 2152236310}
!156 = !{i64 2152237333}
!157 = !{i64 2152238376}
!158 = !{i64 2152239439}
!159 = !{i64 2152240502}
!160 = !{i64 2152241565}
!161 = !{i64 2152242628}
!162 = !{i64 2152243691}
!163 = !{i64 2152244754}
!164 = !{i64 2152245847}
!165 = !{i64 2152246903}
!166 = !{i64 2152248197}
!167 = !{i64 2152249220}
!168 = !{i64 2152250255}
!169 = !{i64 2152251330}
!170 = !{i64 2152252365}
!171 = !{i64 2152253420}
!172 = !{i64 2152307030}
!173 = !{i64 2152308737}
!174 = !{i64 2152309017}
!175 = !{i64 2152310712}
!176 = !{i64 2152310980}
!177 = !{i64 2152312011}
!178 = !{i64 2152313718}
!179 = !{i64 2152313998}
!180 = !{i64 2152315693}
!181 = !{i64 2152315961}
!182 = !{i64 2152316984}
!183 = !{i64 2152318027}
!184 = !{i64 2152319734}
!185 = !{i64 2152320011}
!186 = !{i64 2152321021}
!187 = !{i64 2152322040}
!188 = !{i64 2152323075}
!189 = !{i64 2152324118}
!190 = !{i64 2152211767}
!191 = !{i64 2152212810}
!192 = !{i64 2152214534}
!193 = !{i64 2152214855}
!194 = !{i64 2152216550}
!195 = !{i64 2152217503}
!196 = !{i64 2152217786}
!197 = !{i64 2152218809}
!198 = !{i64 2152219834}
!199 = !{i64 2152220897}
!200 = !{i64 2152221960}
!201 = !{i64 2152223023}
!202 = !{i64 2152224086}
!203 = !{i64 2152225781}
!204 = !{i64 2152226102}
!205 = !{i64 2152227797}
!206 = !{i64 2152228090}
!207 = !{i64 2152229115}
!208 = !{i64 2152230178}
!209 = !{i64 2152231188}
!210 = !{i64 2152232251}
!211 = !{i64 2152233286}
!212 = !{i64 2152234311}
!213 = !{i64 2152277258}
!214 = !{i64 2152278321}
!215 = !{i64 2152279387}
!216 = !{i64 2152281082}
!217 = !{i64 2152281403}
!218 = !{i64 2152283098}
!219 = !{i64 2152283470}
!220 = !{i64 2152284533}
!221 = !{i64 2152285599}
!222 = !{i64 2152286665}
!223 = !{i64 2152288360}
!224 = !{i64 2152288681}
!225 = !{i64 2152289747}
!226 = !{i64 2152290826}
!227 = !{i64 2152291849}
!228 = !{i64 2152292884}
!229 = !{i64 2152293906}
!230 = !{i64 2152294929}
!231 = !{i64 2152295964}
!232 = !{i64 2152297011}
!233 = !{i64 2152298721}
!234 = !{i64 2152300029}
!235 = !{i64 2152301341}
!236 = !{i64 2152301622}
!237 = !{i64 2152255115}
!238 = !{i64 2152255419}
!239 = !{i64 2152256442}
!240 = !{i64 2152257485}
!241 = !{i64 2152258548}
!242 = !{i64 2152259611}
!243 = !{i64 2152260674}
!244 = !{i64 2152261737}
!245 = !{i64 2152262800}
!246 = !{i64 2152263823}
!247 = !{i64 2152264845}
!248 = !{i64 2152265868}
!249 = !{i64 2152266903}
!250 = !{i64 2152267925}
!251 = !{i64 2152268948}
!252 = !{i64 2152269983}
!253 = !{i64 2152271018}
!254 = !{i64 2152272040}
!255 = !{i64 2152273063}
!256 = !{i64 2152274098}
!257 = !{i64 2152275145}
!258 = !{i64 2152276200}
